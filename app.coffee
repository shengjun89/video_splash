{Adapt} = require "adapt/Adapt"
# Preview on a mobile device
Adapt.picker.enable()

n = Screen.width/375
r = Screen.width/Screen.height

Screen.backgroundColor = "#FFF"
# skip.z = 2
# skip.x = Align.right(-12*n)
# skip.y = Align.bottom(-160)
# skip.originY = 1
# skip.originX = 1
# skip.scale = n
	
# audio = new Layer
# 	width: 50*n
# 	height: 50*n
# 	image: "images/audio.png"
# 	z: 3
# 	x: 0
# 	y: Align.bottom(-150)
# 	scale: 0.6
# 
# text.z = 2
# text.y = 50*n
# text.x = Align.right(-12*n)
# text.originX = 1
# text.scale = n



ad = new Layer
	width: Screen.width
	height: Screen.height-150
	clip: true

if r < 0.66

	layerA = new VideoLayer
		parent: ad
		originY: 0
		y: Align.top()
		width: 375*n
		height: Screen.height-150*n
		video: "media/splash_movie.mp4"
		backgroundColor: "#000"
		scale: Screen.height/(Screen.height-150*n)
# 	print layerA.width	

	bottom = new Layer
		y: Align.bottom()
		z: 2
		width: 375*n
		height: 150

		backgroundColor: "#FFF"	
		
	logo = new Layer
		parent: bottom
		y: Align.center
		x: Align.center
		width: 180*n
		height: 80*n
	# 	height: 135*n
		backgroundColor: null
		image: "images/slogan.png"
# 	layerA.player.autoplay = true
else
	skip.y = Align.bottom(-10*n)
	audio.y = Align.bottom()
	ad.height = Screen.height
	layerA = new VideoLayer	
		parent: ad
		originY: 0
		y: Align.top()
		width: 375*n
		height: Screen.height
		video: "media/splash_movie.mp4"
		backgroundColor: null
		scale: 667*n/Screen.height
		
		
# # print r
	bottom = new Layer
		y: Align.bottom()
		z: 2
		width: 375*n
		height: 0
		backgroundColor: "null"	

layerA.player.autoplay = true