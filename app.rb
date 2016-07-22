class SongwriterHelper < Sinatra::Base

	set :method_override, true

  get '/about' do
    erb :about
  end

  get '/project' do
    @projects = Project.all
    erb(:"projects/index")
  end


  # # new
  # get '/project/new' do
  #   @project = Project.new
  #   erb(:"projects/new")
  # end

get '/project/:id' do
	@project = Project.find(params[:id])
	@stanzas = @project.stanzas
	erb(:"projects/show")
end

	# get '/stanzas' do

	# 	erb(:"stanzas/index")
	# end

  # create
  post '/project' do
  	puts params[:project]
    @project = Project.new(params[:project])
    if @project.save
      redirect("/project")
    else
      erb(:"projects/new")
    end
  end

  post '/project/:id/stanzas' do
  	@project = Project.find(params[:id])
  	@stanza = Stanza.new
  	@stanza.chord = params[:stanza][:chord]
  	@stanza.lyrics = params[:stanza][:lyrics]
  	@stanza.section = params[:stanza][:section]
  	@stanza.project = @project
  	@stanza.save
    redirect("/project/#{@project.id}")
  end

  get '/stanza/:id/edit' do
  	@stanza = Stanza.find(params[:id])
  	erb(:"stanza/edit")
  end

  put '/stanza/:id' do
  	@stanza = Stanza.find(params[:id])
  	@stanza.chord = params[:stanza][:chord]
  	@stanza.lyrics = params[:stanza][:lyrics]
  	@stanza.section = params[:stanza][:section]
  	@stanza.save
  	@project = @stanza.project
  	redirect("/project/#{@project.id}")
  end





  #delete
  delete '/project/:id' do
  	@project = Project.find(params[:id])
  	if @project.destroy
  		redirect('/project')
  	else
  		redirect("/project/#{@project.id}")
  	end
  end

 end
