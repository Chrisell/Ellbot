$('document').ready ->
  trigger = $('#hamburger')
  nav = $('nav')
  isClosed = false

  burgerTime = ->
    nav.toggleClass 'hidden', isClosed
    if isClosed == true
      trigger.removeClass 'is-open'
      trigger.addClass 'is-closed'
      nav.css('top', -300)
      isClosed = false
    else
      trigger.removeClass 'is-closed'
      trigger.addClass 'is-open'
      nav.css('top', $('header').outerHeight())
      isClosed = true

  trigger.click ->
    burgerTime()
  $( window ).resize ->
    nav.css('top', $('header').outerHeight()) unless nav.hasClass('hidden')
