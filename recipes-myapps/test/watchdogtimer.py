import time
import asyncio
import gpiod

class WatchdogTimer:
    def __init__(self, gpio, name="MyWatchdog", period=1):
        self.name = name
        self.period = period
        self.running = False
        self.gpio = gpio

    async def clock(self):
        while self.running:
            self.tick()
            await asyncio.sleep(self.period)

    def tick(self):
        print(f"------Pet at {time.strftime('%H:%M:%S')}------")
        self.gpio.pulse()  # Pulse GPIO each tick

    def run(self):
        loop = asyncio.get_event_loop()
        try:
            self.running = True
            loop.run_until_complete(self.clock())
        except KeyboardInterrupt:
            print("WatchdogTimer stopped.")
        finally:
            loop.close()

    def stop(self):
        print("Stopping WatchdogTimer...")
        self.running = False
        asyncio.get_event_loop().close()

class GPIO_toggle:
    def __init__(self, pin, default_duration=0.5):
        self.pin = pin
        self.default_duration = default_duration
        self.gpio_chip = gpiod.Chip("gpiochip0")
        self.line = self.gpio_chip.get_line(self.pin)
        self.line.request(consumer="watchdog", type=gpiod.LINE_REQ_DIR_OUT)

    def toggle(self):
        current_value = self.line.get_value()
        self.line.set_value(not current_value)

    def pulse(self, duration=None):
        if duration is None:
            duration = self.default_duration
        print("Set GPIO HIGH")
        self.line.set_value(1)
        time.sleep(duration)
        self.line.set_value(0)
        print("Set GPIO LOW")

#----------------------------------------------------------------

def main():
    gpio = GPIO_toggle(pin=30, default_duration=1.0)
    wd_timer = WatchdogTimer(gpio=gpio)
    wd_timer.run()

if __name__ == "__main__":
    main()