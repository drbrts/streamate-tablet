$ ->
  hammertime = $(document).hammer();

  $toggle = $('#toggle')
  $sidebar = $('#sidebar')
  $video = $('#video')
  $html = $('html')

  toggleFullScreen = () ->
    $html.toggleClass('fullscreen')

  toggleInfo = () ->
    $html.toggleClass('info-hidden')

  toggleGold = () ->
    $html.toggleClass('gold-shown')

  $video.on 'tap', toggleFullScreen
  $('#toggle').on 'tap', toggleFullScreen
  $('#toggle-info').on 'tap', toggleInfo
  $('#toggle-gold').on 'tap', toggleGold

  return

###
  aspect =
    width: 16
    height: 9

  tap = 'click touchend'

  init = () ->
    setBodySize()
    setVideoSize()

  getRatio = () -> aspect.width / aspect.height
  getHeight = (w) -> w / getRatio()
  getWidth = (h) -> h * getRatio()
  tooTall = (h) -> ( h <= window.innerHeight )?
  sidebarClosed = () -> ( $('body').hasClass('sidebar-closed') is true )

  setVideoSize = () ->
    video = $('video')
    height = getHeight video.width()
    height = window.innerHeight if sidebarClosed()

    setTimeout ->
      video.height height
    , 1

  toggleSidebar = (e) ->
    e?.preventDefault()
    $body = $('body').toggleClass 'sidebar-closed'

  setBodySize = () ->
    $('body').height(window.innerHeight).width(window.innerWidth)


  $toggle = $('#toggle-sidebar')
    .on tap, (e) ->
      e.preventDefault()
      toggleSidebar()
      setVideoSize()

  $(document).on 'touchstart', false

  $video = $('#video')
    .on tap, (e) ->
      e.preventDefault()
      @play() if @paused or @ended
      toggleSidebar() unless sidebarOpened()
      setVideoSize()

  # init()

  return

  video:
    landscape:
      width: 100%
      height: 100%

      sidebar-in:
        width: 100% * scale-width
        height: width * ratio


    portrait:
      width: 100%
      height: 100%


  gold-info / room-topic:
    landscape:
      width: 100%
      height:
        16x9: ( windowHeight - videoHeight ) / 2
        3x4: windowHeight - videoHeight

    landscape:
      width: 100%
      height: auto

  model-info
    landscape:
      width: 100%
      height:
        16x9: ( windowHeight - videoHeight ) / 2
        3x4: 0

    portrait: none


###













