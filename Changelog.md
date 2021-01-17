## Changelog 

### v1.3 [2021-01-17]
* fixed missing sfx (signpost spin, shield, ring-monitor jingle)

### v1.2 [2021-01-15]
* fixed wrong sound track being played between bgm, speed-shoes and invincibility relation

### v1.1 [2021-01-14]
* fixed 1up-fanfare sound when triggered from monitors or +100 rings when amount was coming from a 10-ring-monitor

### v1.0 [2021-01-14]
* changed source-ROM to the No-Intro release (thanks to [birdybro](https://github.com/birdybro))
* fixed SoundTest to play MSU tracks
* fixed sound when returning from demo scenes, both timed and returns on button-presses
* fixed 1up sound to resume bgm tracks (due to this 1up is played as sfx instead of MSU)
* fixed romsize to 8MBit, checksum and header
* fixed timeout on title-screen to compliment the soundtrack
* disabled start-button input on the sega logo for the benefit of non-interrupted sound playback
* fixed sound speedup when having super-sneakers and collecting an invincibility item
* implemented lockout screen for both non-cd-hardware and non-60Hz