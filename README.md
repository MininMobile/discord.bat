# discord.bat
the BEST discord lib

# Examples
```batch
:: this is not the library you're looking for
```

# How?
The way discord.bat works is you "code" in batch and it connects in discord.net, when it recieves a message/evemt it sends it to `eventManager.bat` with 2 arguments, the type of event and info about the event, so a message event would be `eventManager.bat message "$ping"` then it sends the event info into the message event function which checks for the prefix, then if it finds the prefix, removes it and sends it forward to `commands.bat` which you code in the Config folder and has all the code that you'll be writing. It just calls the function blindly like `call:ping` which (if you have it written in) calls the ping function, in the function, you have `call s.bat sendMessage "Pong!"` which calls the sendMessage function in the s.bat file, and tells it to write Pong! somehow in the channel.

# Social
- [Discord](https://discord.gg/Fhaa72f)
