local LrApplication = import 'LrApplication'
local LrDialogs = import 'LrDialogs'
local LrTasks = import 'LrTasks'
local LrLogger = import 'LrLogger'
local KwUtils = require 'KwUtils'

LrTasks.startAsyncTask(function ()
  local catalog = LrApplication.activeCatalog()
 
  -- This is the string that would come out of the COCO Json file
  local fname = "whalesharks256/whalesharks_256x256/775cd014-a56d-41b0-9c97-28849f2a2004.jpg"
  local category_id = 8
  local category_str = "Port_Full"

  local photo = catalog:getTargetPhoto()
  if photo == nil then
    LrDialogs.message("Hello World", "Please select a photo")
    return
  end

  -- local allKeys = KwUtils.getAllKeywords(catalog)
  --catalog:withWriteAccessDo('createKeyword', function(context) 
  --  catalog:createKeyword(category_str, {}, true, nil, true)
  --end )
  catalog:withWriteAccessDo('addToPhoto', function(context) 
    local keyword = catalog:createKeyword(category_str, {}, true, nil, true)
    photo:addKeyword(keyword)
  end )

end)