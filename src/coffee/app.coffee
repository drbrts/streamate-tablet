$ ->
  $toggle = $('#toggle')
  $sidebar = $('#sidebar')

  Hammer($toggle[0]).on 'tap', () ->
    $('html').toggleClass('fullscreen')

  # aspect =
  #   width: 16
  #   height: 9

  # tap = 'click touchend'

  # init = () ->
  #   setBodySize()
  #   setVideoSize()

  # getRatio = () -> aspect.width / aspect.height
  # getHeight = (w) -> w / getRatio()
  # getWidth = (h) -> h * getRatio()
  # tooTall = (h) -> ( h <= window.innerHeight )?
  # sidebarClosed = () -> ( $('body').hasClass('sidebar-closed') is true )

  # setVideoSize = () ->
  #   video = $('video')
  #   height = getHeight video.width()
  #   height = window.innerHeight if sidebarClosed()

  #   setTimeout ->
  #     video.height height
  #   , 1

  # toggleSidebar = (e) ->
  #   e?.preventDefault()
  #   $body = $('body').toggleClass 'sidebar-closed'

  # setBodySize = () ->
  #   $('body').height(window.innerHeight).width(window.innerWidth)


  # $toggle = $('#toggle-sidebar')
  #   .on tap, (e) ->
  #     e.preventDefault()
  #     toggleSidebar()
  #     setVideoSize()

  # $(document).on 'touchstart', false

  # $video = $('#video')
  #   .on tap, (e) ->
  #     e.preventDefault()
  #     @play() if @paused or @ended
  #     toggleSidebar() unless sidebarOpened()
  #     setVideoSize()

  # # init()

  # return
