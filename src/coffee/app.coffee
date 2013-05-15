$ ->

  toggleModelInfo = () ->
    $html.toggleClass 'modelinfo-hidden'

  videoIsHD = () ->
    ($video.src is '/poster_wide.jpg')?

  toggleHD = () ->
    $html.toggleClass 'hd-video'

  init = () ->
    toggleHD() if videoIsHD()

  $video = $('#video')
  $html = $('html')

  $video.hammer().on 'tap', toggleModelInfo

  init()

  # $toggle = $('#toggle')
  # $sidebar = $('#sidebar')
  # $video = $('#video')
  # $html = $('html')

  # toggleFullScreen = () ->
  #   $html.toggleClass('fullscreen')

  # toggleInfoBar = () ->
  #   $html.toggleClass('info-hidden')

  # Hammer($toggle[0]).on 'tap', toggleFullScreen
  # Hammer($sidebar[0]).on 'swiperight', toggleFullScreen
  # Hammer($video[0]).on 'tap', toggleInfoBar
  # return

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
