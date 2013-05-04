$ ->
  aspect =
    width: 16
    height: 9

  transition_end = 'webkitTransitionEnd transitionend'
  transition_start = 'webkitTransitionStart transitionstart'
  tap = 'click touchend'

  init = () ->
    setBodySize()
    setVideoSize()

  getRatio = () -> aspect.width / aspect.height
  getHeight = (w) -> w / getRatio()
  getWidth = (h) -> h * getRatio()
  tooTall = (h) -> ( h <= window.innerHeight )?
  sidebarOpened = () -> ( $('body').hasClass('sidebar-open') is true )

  setVideoSize = () ->
    video = $('video')
    height = getHeight video.width()
    height = window.innerHeight unless sidebarOpened()

    setTimeout ->
      video.height height
    , 1

  toggleSidebar = (e) ->
    e?.preventDefault()
    $('body').toggleClass 'sidebar-open'

  setBodySize = () ->
    $('body').height(window.innerHeight).width(window.innerWidth)


  $toggle = $('#toggle-sidebar')
    .on tap, () ->
      toggleSidebar()
      setVideoSize()

  $(document).on 'touchstart touchmove', false

  $video = $('#video')
    .on tap, () ->
      @play() if @paused or @ended
      toggleSidebar() unless sidebarOpened()
      setVideoSize()

  init()

  return
