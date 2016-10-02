from i3pystatus import Status

bar = Status()



#status.register("alsa",on_upscroll = ["decrease_volume", 2],on_downscroll = ["increase_volume", 2])

bar.register("clock", format = "%a %-d, %X",on_leftclick =["exec zenity --calendar"])

bar.register("load")
#bar.register("temp", format = "{temp:.0f}°C")
#bar.register("weather")
#status.register('weather',format='{condition} {current_temp}{temp_unit}{icon}[ Hi: {high_temp}] Lo: {low_temp}'colorize=True, backend=weathercom.Weathercom(location_code='94107:4:US', units='imperial'))
bar.run()
