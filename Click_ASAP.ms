clear

Balloon = new Sprite

gfx.drawImage file.loadImage("/usr/Bg.png")
Balloon.image = file.loadImage("/sys/pics/Balloon.png")

Balloon.x = 600
Balloon.y = 500
Balloon.scale = 2
score = 0

text.print "Score: " + score

Balloon.localBounds = new Bounds
Balloon.localBounds.width = Balloon.image.width
Balloon.localBounds.height = Balloon.image.height

display(4).sprites.push Balloon

wasDown = false

while true
	isDown = mouse.button
	if Balloon.contains(mouse) then
		Balloon.tint = "#CCCCFF"
		if isDown and not wasDown then
			Balloon.x = rnd * 960
			Balloon.y = rnd * 640
			score += 1
			text.row = 25
			print "Score: " + score
		end if
	else
		Balloon.tint = color.white		
	end if
	wasDown = isDown
	yield	
end while
