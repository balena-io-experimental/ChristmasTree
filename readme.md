# Circuit Board Christmas Tree

> Oh PCB, Oh PCB
>
> How festive are your diodes

![tree](media/tree.jpg)

## Materials

### Hardware

My usage, and so the photo, shows some different components.  In all honesty I've got several half-finished starter boxes that I keep pulling bits out of for projects.  I think that the list is complete enough - but also welcome Pull Requests if not.

* [A 3D Xmas Tree for Raspberry Pi](https://thepihut.com/products/3d-xmas-tree-for-raspberry-pi) - bought specially, obviously!
* [A Zebra Zero Raspberry Pi Zero Case - Wood](https://thepihut.com/collections/raspberry-pi-cases/products/zebra-zero-for-raspberry-pi-zero-wood) - I liked the mix of materials with the wooden layers.
* [A Raspberry Pi Zero W](https://thepihut.com/collections/raspberry-pi/products/raspberry-pi-zero-w)
* [A Micro SD Card](https://thepihut.com/collections/raspberry-pi-sd-cards-and-adapters/products/pimame-preinstalled-sd-card)
* [40-pin 2x20 HAT Dual Male Headers](https://thepihut.com/collections/raspberry-pi-accessories/products/40-pin-2x20-hat-dual-male-headers)
* [Micro USB Power Supply for the Raspberry Pi](https://thepihut.com/collections/raspberry-pi-accessories/products/micro-usb-power-supply-for-the-raspberry-pi)

### Software

* [resin.io](https://resin.io) - of course!
* [this repo](https://github.com/resin-io-playground/ChristmasTree)

## Installation

### Hardware

1) Solder the headers onto the Pi
1) Put the Pi into the case
1) Snip out the PCB and push the largest panel onto the Pi
1) Push the other two panels onto the PCB

### Software

1) Create a new app in your resin.io account
1) Download and etch the resinOS for this app
1) Replicate this repo into that app, git has several ways to do this
1) Insert the microSD and power up

## Expected behaviour

1) As the device boots all of the lights ought to shine for a second or two, as a hardware test (`Leds.init()`)
1) Then a number of lights equal to the number of days through advent should flicker (`Leds.step()`)
