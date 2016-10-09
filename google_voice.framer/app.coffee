# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "nava teja"
	twitter: ""
	description: ""


blue_dot = new Layer
	width: 50
	height: 50
	backgroundColor: "#4285F4"
	borderRadius: 100
	x: 60
	y: 200

blue_dot.states.add
	scale:
		height: 150

red_dot = new Layer
	width: 50
	height: 50
	backgroundColor: "#DB4437"
	borderRadius: 100
	x: 140
	y: 200

yellow_dot = new Layer
	width: 50
	height: 50
	backgroundColor: "#F4B400"
	borderRadius: 100
	x: 220
	y: 200

green_dot = new Layer
	width: 50
	height: 50
	backgroundColor: "#0F9D58"
	borderRadius: 100
	x: 300
	y: 200

# dots animations
blue_dot_animation = new Animation
	layer: blue_dot
	properties: 
		y: 180
	time: 0.5
	curve: "ease-in-out"

blue_dot_pulse = (i) ->
	blue_dot_animation.start()
	blue_dot_animation.onAnimationEnd ->
		blue_dot_animation = blue_dot_animation.reverse()
		if i > 0
			i = i - 1
			blue_dot_pulse(i)

red_dot_animation = new Animation
	layer: red_dot
	properties: 
		y: 190
	time: 0.5
	curve: "ease-in-out"

red_dot_pulse = (i) ->
	red_dot_animation.start()
	red_dot_animation.onAnimationEnd ->
		red_dot_animation = red_dot_animation.reverse()
		if i > 0
			i = i - 1
			red_dot_pulse(i)

yellow_dot_animation = new Animation
	layer: yellow_dot
	properties: 
		y: 180
	time: 0.5
	curve: "ease-in-out"
	
yellow_dot_pulse = (i) ->
	yellow_dot_animation.start()
	yellow_dot_animation.onAnimationEnd ->
		yellow_dot_animation = yellow_dot_animation.reverse()
		if i > 0
			i = i - 1
			yellow_dot_pulse(i)

green_dot_animation = new Animation
	layer: green_dot
	properties: 
		y: 190
	time: 0.5
	curve: "ease-in-out"
	
green_dot_pulse = (i) ->
	green_dot_animation.start()
	green_dot_animation.onAnimationEnd ->
		green_dot_animation = green_dot_animation.reverse()
		if i > 0
			i = i - 1
			green_dot_pulse(i)
		else
			run_stick_animations()

run_pulses = ->
	blue_dot_pulse(5)
	red_dot_pulse(4)
	yellow_dot_pulse(3)
	green_dot_pulse(5)	

run_pulses()

blue_stick_animation = new Animation
	layer: blue_dot
	properties: 
		height: 200
		y: 100
	time: 0.3

blue_stick_pulse = (i) ->
	blue_stick_animation.start()
	blue_stick_animation.onAnimationEnd ->
		blue_stick_animation =  blue_stick_animation.reverse()
		if i > 0 
			i = i - 1
			blue_stick_pulse(i)

red_stick_animation = new Animation
	layer: red_dot
	properties: 
		height: 100
		y: 160
	time: 0.3

red_stick_pulse = (i) ->
	red_stick_animation.start()
	red_stick_animation.onAnimationEnd ->
		red_stick_animation =  red_stick_animation.reverse()
		if i > 0 
			i = i - 1
			red_stick_pulse(i)

yellow_stick_animation = new Animation
	layer: yellow_dot
	properties: 
		height: 200
		y: 100
	time: 0.3

yellow_stick_pulse = (i) ->
	yellow_stick_animation.start()
	yellow_stick_animation.onAnimationEnd ->
		yellow_stick_animation =  yellow_stick_animation.reverse()
		if i > 0 
			i = i - 1
			yellow_stick_pulse(i)

green_stick_animation = new Animation
	layer: green_dot
	properties: 
		height: 100
		y: 160
	time: 0.3

green_stick_pulse = (i) ->
	green_stick_animation.start()
	green_stick_animation.onAnimationEnd ->
		green_stick_animation =  green_stick_animation.reverse()
		if i > 0 
			i = i - 1
			green_stick_pulse(i)
		else
			blue_dot.height = 50
			red_dot.height = 50
			yellow_dot.height = 50
			green_dot.height = 50
			run_pulses()

run_stick_animations = ->
	blue_stick_pulse(4)
	red_stick_pulse(4)
	yellow_stick_pulse(4)
	green_stick_pulse(4)