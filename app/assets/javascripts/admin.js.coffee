@import jquery
@import jquery_ujs
@import /lib

$ ->
  RemoteEvents.start(document)

  $(document).delegate '[data-action="remove"]', 'click', ->
    $(this).slideUp 'fast', -> $(this).remove()

  $(document).delegate 'li', 'remote:destroy', ->
    $(this).remove()
