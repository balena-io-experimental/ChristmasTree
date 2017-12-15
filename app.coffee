_ = require('lodash')
pins = require('pi-pins')
moment = require('moment')

class Led
	constructor: (channel) ->
		@pin = pins.connect(channel)
		@pin.mode('out')
		@pin.value(false)

	light: =>
		if @interval?
			clearInterval(@interval)
			delete @interval
		@pin.value(true)

	dim: =>
		if @interval?
			clearInterval(@interval)
			delete @interval
		@pin.value(false)

	flicker: =>
		if not @interval?
			console.log('flickering')
			@light()
			@interval = setInterval =>
				if Math.random() > 0.95
					@pin.value(Math.random() > 0.3)
					console.log('flickered')
			, 100

class Leds
	constructor: ->
		@init()
		setInterval(@step, 2000)

	init: =>
		console.log('initialising')
		@leds = _.map _.range(2, 27), (channel) ->
			led = new Led(channel)
			led.light()
			led
		console.log('initialised')

	step: =>
		rightNow = moment()
		_.forEach @leds, (led, index) ->
			if rightNow.month() == 11 and rightNow.date() > index
				led.flicker()
			else
				led.dim()

new Leds()
