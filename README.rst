Bitwig Studio on Flatpak
========================
Just me trying to make this thing work on Flatpak; which rules.

Instructions
============
* Install flatpak and flatpak-builder.
* Setup flathub (for dependencies): https://flatpak.org/setup/.
* Install development tools: https://www.ostechnix.com/install-development-tools-linux/.
* Use the make file to build and install: ``make; make install``. You can use <tab> <tab> to check out what is available. Also, you
  can check the Makefile to see what it does.
* Create `$HOME/.BitwigStudio/jack-config` with the following contents:

.. code:: bash

   DEVICE=hw:USB
   RATE=48000
   PERIOD=128
   NUMBER_OF_PERIODS=2

Where:

DEVICE:
   This is the hardware device you will use with jack. If you have jack2 dbus installed, you can see the list of devices with:
   `jack_control dpd device`.
RATE:
   This is the sample rate in Hz. Do not use kHz.
PERIOD:
   The buffer size jack will use or, in their own words: "... number of frames between jack process()". This one should be a power
   of 2.
NUMBER_OF_PERIODS:
   The number of periods of playback latency. The minimum value (and the default) is 2.

The man page for jackd offers much better explanations. Please, read it.

If you're not planing on using jack, just touch the file:

.. code:: bash

   touch ~/.BitwigStudio/jack-config

Realtime
--------
If you want to use realtime, I had to set my limits like this:

.. code:: bash

   # /etc/security/limits.d/95-jack.conf
   # Default limits for users of jack-audio-connection-kit

   @jackuser - rtprio 70
   @jackuser - memlock 4194304

   @pulse-rt - rtprio 20
   @pulse-rt - nice -20

And make myself member of the jackuser and pulse-rt groups:

.. code:: bash

   # become root
   su -

   # add myself to groups
   usermod -aG jackuser,pulse-rt renich

Then, just logout and back in.

Help me!
========
Help me improve this:

* write better instructions
* better flatpack file
