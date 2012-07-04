minispade.require 'app'

@reset = ->
  Travis.app.destroy() if Travis.app
  $('#content').remove()
  $('body').append('<div id="content"></div>')

@app = (url) ->
  reset()
  Em.run ->
    Travis.run(rootElement: $('#content'))
    Em.routes.set('location', url)

