return {
  VERSION = { major=0, minor=1, revision=1, },
 
  LrSdkVersion = 9.0,
  LrSdkMinimumVersion = 4.0,
 
  LrToolkitIdentifier = "net.knowing.coco2lr",
  LrPluginName = "Coco2Lightroom",
  LrPluginInfoUrl="https://github.com/lobrien/COCO2Tag-LRPlugin/",
  LrLibraryMenuItems = {
    {
      title = "Categorize From COCO file",
      file = "Categorize.lua",
    }
  },  
}