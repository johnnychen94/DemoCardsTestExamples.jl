#---
#cover: assets/cameraman.png
#---

using TestImages
using ImageShow #hide

img = testimage("cameraman")

using FileIO #src
mkpath("assets") #src
save("assets/cameraman.png", img) #src

