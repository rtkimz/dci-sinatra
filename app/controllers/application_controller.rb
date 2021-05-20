class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :bind, '0.0.0.0'
  end

  get '/' do
    @publishers = Publisher.all
    # @comics = Comic.joins(:title).where(title: {publisher_id: 1})
    erb :'index'
  end  

  get '/publisher/:id' do
    @comics = Comic.joins(:title).where(title: {publisher_id: params[:id]}).order(:name)
    @char_set = {}
    @comics.each do |comic|
      @char_set.store(comic.title.character.id, comic.title.character.name)
    end
    temp_array = @char_set.sort_by(&:last)
    @char_set = temp_array.to_h

    erb :'publisher/index'
  end  

  get '/character/:id' do
    @name = Character.find(params[:id]).name
    @titles = Title.joins(:publisher, :character).where(character_id: params[:id]).order(:name)
    erb :'character/index'
  end  

  get '/title' do
    @comics = Comic.joins(title: :publisher, title: :character)
    @titles = Title.joins(:publisher, :character)
    erb :'title/index'
  end  

  get '/title/:id' do
    @comics = Comic.where(title_id: params[:id]).order(:issue_number)
    @titles = Title.joins(:publisher, :character)
    erb :'title/index'
  end  

  get '/title/:id/edit' do
    @title = Title.find(params[:id])
    @publishers = Publisher.all
    @characters = Character.all
    erb :'title/edit'
  end

  patch "/title/:id" do
    title = Title.find(params[:id])
    title.update(publisher_id: params[:publisher_id], character_id: params[:character_id])
    redirect "/title/#{params[:id]}/edit"
  end

  helpers do

    def filesize(size)
      units = ['B', 'KiB', 'MiB', 'GiB', 'TiB', 'Pib', 'EiB']
    
      return '0.0 B' if size == 0
      exp = (Math.log(size) / Math.log(1024)).to_i
      exp += 1 if (size.to_f / 1024 ** exp >= 1024 - 0.05)
      exp = 6 if exp > 6 
    
      '%.1f %s' % [size.to_f / 1024 ** exp, units[exp]]
    end
  end	
  
end