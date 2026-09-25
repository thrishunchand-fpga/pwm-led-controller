# PWM LED Controller — share copy

## Title (50 chars)
50% PWM at ~488 kHz: dimming an LED with an FPGA counter

## Description (for YouTube / LinkedIn / X)
Brightness without a DAC. This 50-second explainer shows the `pwm_led` + `top_pwm` design: a free-running 8-bit counter compared against fixed `duty = 128`, so LED0 is high for 128 of 256 counts — a clean 50% PWM at ~488 kHz (125 MHz / 256). Too fast to see blinking, so the eye reads half brightness. Pins: clk H16, BTN0 reset D19, LED0 R14. Program it and LED0 glows at half brightness; a scope on R14 shows the ~50% square wave. Next step: switch-controlled duty plus a duty-measuring testbench.

## Chapters
00:00 Fixed-duty PWM brightness driver
00:10 Count, compare, drive
00:20 50% at ~488 kHz
00:30 Pins + RTL (H16 / D19 / R14)
00:40 Half glow, square wave

## Hashtags
#FPGA #Verilog #PWM #PYNQZ2 #DigitalDesign

## Assets
- Video: `assets/demo/pwm-demo.mp4` (1920x1080, 50.0s, h264)
- Poster: `assets/demo/pwm-poster.png`
- Source: `pwm_led_controller.srcs/sources_1/new/pwm_led.v`, `top_pwm.v`, `constrs_1/new/pwm_led.xdc`
