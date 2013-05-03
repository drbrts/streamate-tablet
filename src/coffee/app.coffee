$ ->
  aspect =
    width: 16
    height: 9

  transition_end = 'webkitTransitionEnd transitionend'
  tap = 'click touchend'

  getRatio = () -> aspect.width / aspect.height
  getHeight = (w) -> w / getRatio()
  getWidth = (h) -> h * getRatio()
  tooTall = (h) -> ( h <= window.innerHeight )?
  sidebarOpened = () -> ( $('body').hasClass('sidebar-open') is true )

  setVideoSize = () ->
    video = $('video')
    height = getHeight video.width()
    height = window.innerHeight unless sidebarOpened()
    video.height height

    # video.height(getHeight video.width())

  setVideoSize()

  toggleSidebar = (e) ->
    e?.preventDefault()
    $('body').toggleClass 'sidebar-open'
    $('#toggle-sidebar').one transition_end, () ->
      setVideoSize() unless sidebarOpened()


  $('#toggle-sidebar').on tap, toggleSidebar

  setBodySize = () ->
    $('body').height(window.innerHeight).width(window.innerWidth)
    return

  setBodySize()

  $(document).on 'touchstart touchmove', false
  $('#video').on tap, () ->
    @play() if @paused or @ended
    toggleSidebar() unless sidebarOpened()
  return
