
function atrium.init()
  --[[
    This function will be called at two separate occasions:
    1. when the application starts
    2. when the application is instructed to reload the lua code
  ]]
  print('Lua: init')
end

function atrium.frame(delta_t)
  --[[
    This function will be called for each frame
    delta_t is a fraction of a second, that is the delta time between
    the last frame and the current.
  ]]
end
