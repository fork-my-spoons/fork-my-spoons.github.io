---
layout: default
title: spotify search and play
nav_order: 2
parent: Spotify
---
# Spotify Search and Play

<p align="center">
   <a href="https://github.com/fork-my-spoons/spotify-search-and-play.spoon/issues">
    <img alt="GitHub issues" src="https://img.shields.io/github/issues/fork-my-spoons/spotify-search-and-play.spoon">
  </a>
  <a href="https://github.com/fork-my-spoons/github-activity.spoon/releases">
    <img alt="GitHub all releases" src="https://img.shields.io/github/downloads/fork-my-spoons/spotify-search-and-play.spoon/total">
  </a>
  <a href="https://github.com/fork-my-spoons/spotify-search-and-play.spoon/releases">
   <img alt="GitHub release (latest by date)" src="https://img.shields.io/github/v/release/fork-my-spoons/spotify-search-and-play.spoon">
  </a>
</p>

A spotlight-like search for spotify, allows searching albums, artists, playlists and tracks and playing the selected item on Spotify client for macOS:

<img alt="screenrecord" src="https://github.com/fork-my-spoons/spotify-search-and-play.spoon/raw/main/screenshots/screenrecord.gif">

# Installation

This app uses Spotify's search API, so you need to create a developer account in order to use it, go to [Developer Dashboard](https://developer.spotify.com/dashboard/) and register, then create a client id and a secret.

 - install [Hammerspoon](http://www.hammerspoon.org/) - a powerfull automation tool for OS X
   - Manually:

      Download the [latest release](hhttps://github.com/Hammerspoon/hammerspoon/releases/latest), and drag Hammerspoon.app from your Downloads folder to Applications.
   - Homebrew:

      ```brew install hammerspoon --cask```

 - download [spotify-search-and-play.spoon](https://github.com/fork-my-spoons/spotify-search-and-play.spoon/releases/latest/download/spotify-search-and-play.spoon.zip), unzip and double click on a .spoon file. It will be installed under `~/.hammerspoon/Spoons` folder.
 
 - open ~/.hammerspoon/init.lua and add the following snippet, adding your parameters:

```lua
-- Spotify search and play
hs.loadSpoon("spotify-search-and-play")
spoon['spotify-search-and-play']:setup({
  client_id = '<your client id>',
  secret = '<your secret>'
})
spoon['spotify-search-and-play']:bindHotkeys({
    show={ {"alt"}, "S"}}
)
```

The above config will set up <kbd>⌥</kbd> + <kbd>s</kbd> to open the app. 
