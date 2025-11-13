# Load built-in dataset
data(volcano)

# Create x and y coordinates
x <- 10 * (1:nrow(volcano))
y <- 10 * (1:ncol(volcano))

# Compute colors for shading
z <- volcano
zlim <- range(z)
color <- terrain.colors(100)
zfacet <- (z[-1, -1] + z[-1, -ncol(z)] + z[-nrow(z), -1] + z[-nrow(z), -ncol(z)]) / 4
facetcol <- color[cut(zfacet, 100)]

# Create a 3D surface plot
persp(x, y, z,
      col = facetcol,          # add color
      theta = 45, phi = 25,    # viewing angles (change for different perspectives)
      expand = 0.5,            # scaling in z-direction
      shade = 0.5,             # add shading effect
      ltheta = 120,            # light direction
      ticktype = "detailed",   # detailed axis ticks
      xlab = "X coordinate",
      ylab = "Y coordinate",
      zlab = "Height",
      main = "3D Surface Plot of Volcano Dataset")
