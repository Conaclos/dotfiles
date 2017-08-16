
# Firefox settings

This is a reminder of my personal Firefox configurations.

To set any setting go to `about:config`.


## Exclusively use memory

Have you a few extra Gigabytes in memory?

Disable `browser.cache.disk.enable` and create an `integer` fieled named
 `browser.cache.memory.capacity` set to `-1`. `-1` means unlimited.


## Disable header hiding on fullscreen

If you use a tiling winfows mananger such as [i3](https://i3wm.org), you can be 
 annoyed by the automatic hiding of the header when you turn on fullscreen mode.

Disable `browser.fullscreen.autohide`


## Mitigate this damn Ctrl-q

Another yet annoying thing is to accidentatlly press Ctrl-q. Firefox
 immediately shutdowns, regardless the number of opened tabs,
 without any warning!

The best solution (without extensions) I found is to set a setting to warn the
 user when ctrl-q is pressed.

Enable `browser.showQuitWarning`


## Disable Go back on pressing of middle mouse

Have you already noticed that pressing your middle mouse, out of an hyperlink,
 loads a previous page?

I have encontred this behavior too many times...

Let's disable `middlemouse.contentLoadURL`


## Prompt for auto refresh

Would you like take the control over your browser?

Enable `accessibility.blockautorefresh`


## Privacy fixes

Enable `privacy.donottrackheader.enable`

Enable `network.dns.disablePrefetch`

Disable `network.dns.prefetch-next`


### Remove session data, except some cookie

Go to **Privacy** tab of Firefox preferences and set the following options:

**history**

Firefox will: `Use custom settings for history`

- [ ] Always use private browsing mode
  - [x] Remember my browsing and download history
  - [x] Remember search and form history
  - [x] Accept cookies from sites
      - Accept third party cookies: `Never`
      - Keep until: `I close Firefox`
  - [x] Clear history when Firefox closes

In settings of `Clear history when Firefox closes` ensures that `Cookies` and
 `Site Preferences` are not checked. If `Site Preferences` is set, it removes
 every entered exceptions for cookies. `Keep until: I close Firefox` amkes
 all cookie, but exceptions, expirate when you close Firefox.

If you want to keep the cookies of a given website, enter its domain-s in
 `exception`. Do not forget to write the prootocl (e.g. https://domain.org).

See [here](https://support.mozilla.org/en-US/questions/954358) for more details.

