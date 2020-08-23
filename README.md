# The Weather Box

The Weather Box is a light gadget that displays weather patterns in motion while responding to movement. By holding the device in different ways, the user could see rain, snow and lightning in different perspectives.

Made with Processing and Raspberry Pi.

Demo - https://vimeo.com/307826619

## Concept

The project started with the idea of giving light some sort of form that makes it feel tangible and corporeal. There are some precedent projects that make the interaction with light really fun, like <a href="http://www.espadaysantacruz.com/projects/light-kinetics" target="_blank">Light Kinetic by Espadaysantacruz Studio</a>, <a href="http://www.nipek.jp/interactive-x-light.html" target="_blank">The Play of Brilliants by Nipek</a>, and <a href="https://learn.adafruit.com/matrix-led-sand" target="_blank">LED Matrix Sand Toy by Ruiz Brothers</a>.

Inspired by these projects, I started designing a light box that responds to motion. I chose weather patterns to be the subject of the animation because our familiarity with them would make the light animation recognizable but refreshing to our senses. They also lend themselves to having views from different perspectives, which would make the connection between the display and the movement of the device very natural.


## Process

After some research on digital electronic devices, I decided to use a Raspberry Pi and connect a 32x32 LED matrix and a 6-axis accelerometer/gyroscope to it. It was my first time using a Raspberry Pi so it took me some effort to set it up. I started writing Processing sketches for the weather animations and displayed the graphics on the LED matrix using the <a href="https://github.com/hzeller/rpi-rgb-led-matrix">LED-matrix library</a> created by Henner Zeller. Then I used the MPU6050 accelerometer/gyroscope to gather the orientation and rotation data. Integrating the code for the animation and the measurement, I was able to associate the change of the animation with the movement of the device.
