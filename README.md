# PWM LED Controller on PYNQ-Z2

Fixed-duty PWM brightness driver in clean Verilog. Good starter for motor/LED dimming before adding AXI-controlled duty.

## What it does
- Free-running 8-bit counter vs fixed `duty = 128` → 50% PWM on LED0.
- Effective PWM rate ~488 kHz at 125 MHz clock (counter overflow rate).
- BTN0 reset.

## Files
| File | Purpose |
|---|---|
| `sources_1/new/pwm_led.v` | Counter-compare PWM core |
| `sources_1/new/top_pwm.v` | Top wrapper |
| `constrs_1/new/pwm_led.xdc` | PYNQ-Z2 pins |
| `pwm_led_controller.xpr` | Vivado project |

## Pin map (LVCMOS33)
| Signal | Pin |
|---|---|
| clk 125 MHz | H16 |
| rst (BTN0) | D19 |
| led (LED0) | R14 |

## Test → expected result
Program → LED0 glows at half brightness (50% duty; too fast to see blinking). Scope on R14 shows ~50% square wave.

## Build
Vivado → open `.xpr` → Generate Bitstream → program.

## Status
- Completed: RTL, XDC, on-board dimming verified.
- Planned: variable duty via switches + testbench measuring duty cycle.
