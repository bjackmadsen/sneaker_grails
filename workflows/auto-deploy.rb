listen 'github::repos::push', repo:'bjackmadsen/sneaker_grails' do |repo|
  run 'heroku::deploy', app:'sneaker-grails', content:repo.content do |deploy|
    success "Deploy complete"
  end
end