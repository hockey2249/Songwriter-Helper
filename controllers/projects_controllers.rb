class SongwriterHelper < Sinatra::Base

  # RESTful Project Controller Actions
  # index

get '/project' do
    @projects = Project.all
    erb(:"projects/index")
  end

  # new
  get '/project/new' do
    @project = Project.new
    erb(:"projects/new")
  end

  # create
  post '/projects' do
    @project = Project.new(params[:project])
    if @project.save
      redirect("/projects/#{@project.id}")
    else
      erb(:"projects/new")
    end
  end