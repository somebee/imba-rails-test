
# Commented out this line since this is not needed in a rails app
# require './helpers' # <- tap to see required file


extend tag htmlelement

	# creating a transform setter for all tags
	def transform= v
		css('transform',@transform = v) if v != @transform
		return self

tag sample

	def build
		@x = @y = 0
		schedule

	def onmousemove e
		@x = e.x
		@y = e.y

	def ontouchstart e # mobile support
		self

	def ontouchupdate e # mobile support
		@x = e.x
		@y = e.y

	def offset
		parseFloat(@offset and @offset.value or 0)

	def render
		<self.maximize.hw.pad>
			<input@offset type='number' placeholder='offset blue left'>
			<h3> "Pointer is at {@x},{@y}"

			<div.circle.red transform="translate3d({@x}px,{@y}px,0px)"> "xy"
			<div.circle.blue transform="translate3d({offset + @y}px,{@x}px,0px)"> "yx"
			if @y > 150
				<h3.red> "Pointer is more than 150 ({@y}) from top"
			if 260 > @y > 250 and 300 > @x > 290
				<h3.green> "That's the spot!"

$$(body).append <sample>
