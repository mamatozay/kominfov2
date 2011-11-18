require 'fileutils'

class DropboxController < ApplicationController
  def index
    @filebox = Filebox.new
  end       

  def authorize
    if params[:oauth_token] then
      dropbox_session = Dropbox::Session.deserialize(session[:dropbox_session])
      dropbox_session.authorize(params)
      session[:dropbox_session] = dropbox_session.serialize # re-serialize the authenticated session       

      redirect_to :action => 'upload'
    else
      dropbox_session = Dropbox::Session.new('sfrhsuq7g2cjcsy', 'f3y2b6c94rxwii6')
      session[:dropbox_session] = dropbox_session.serialize
      redirect_to dropbox_session.authorize_url(:oauth_callback => url_for(:action => 'authorize'))
    end
  end

  def upload
    return redirect_to(:action => 'authorize') unless session[:dropbox_session]
    dropbox_session = Dropbox::Session.deserialize(session[:dropbox_session])
    return redirect_to(:action => 'authorize') unless dropbox_session.authorized?

    if request.method == 'POST' then
      dropbox_session.mode = :dropbox
      File.copy("/" + params[:file].tempfile.path, '~/Documents/dropbox/' + params[:file].original_filename)
      params[:file].tempfile.unlink
      dropbox_session.upload '~/Documents/dropbox/' + params[:file].original_filename, 'RCase'
      render :text => 'Uploaded OK'
    else
      redirect_to(:action => 'index', :notice => 'Upload Fail')
    end
  end
end