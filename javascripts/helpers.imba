# extending all elements with a very simple requestAnimationFrame
# useful for many demos, but not part of the standard library atm.

extend tag htmlelement

	def schedule
		return self if @raf

		@raf = do
			tick
			window:requestAnimationFrame(@raf) if @raf

		@raf()

		return self

	def unschedule
		@raf = null
		self

	def tick
		render

# Imba does not listen to mousemove by default, but we use it
# in a few examples. So we need to tell Imba to listen to these
# events
Imba.Events.register('mousemove')

# disable scrolling of body on iOS
document.addEventListener('touchmove') do |e| e.preventDefault
