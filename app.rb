require("bundler/setup")
Bundler.require(:default, :test)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/bands') do
  @bands = Band.all()
  erb(:bands)
end

post('/bands') do
  name = params.fetch('name')
  @band = Band.create({:name => name})
  @bands = Band.all()
  erb(:bands)
end

get('/bands/:id/edit') do
  @band = Band.find(params['id'].to_i)
  erb(:band_edit)
end

patch('/bands') do
  name = params.fetch('name')
  id = params.fetch('id').to_i()
  band = Band.find(id)
  band.update({:name => name})
  @bands = Band.all()
  erb(:bands)
end
