#---
#cover: assets/mri-stack.gif
#---

using TestImages
using ImageCore, ImageTransformations
using ImageShow #hide

img = RGB.(testimage("mri-stack"))
img = imresize(img, (200, 200, size(img, 3)))
mosaicview(img; nrow=3, rowmajor=true)

using FileIO #src
mkpath("assets") #src
save("assets/mri-stack.gif", img; fps=5) #src

