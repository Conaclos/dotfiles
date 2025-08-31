
# Firefox settings

This is a reminder of my personal Firefox configurations.

To set any setting go to `about:config`.


## Performance

### Exclusively use memory

Have you a few extra Gigabytes in memory?

Disable `browser.cache.disk.enable` and create an `integer` fieled named
 `browser.cache.memory.capacity` set to `-1`. `-1` means unlimited.


## Ergonomics

### Disable header hiding on fullscreen

If you use a tiling winfows mananger such as [i3](https://i3wm.org), you can be 
 annoyed by the automatic hiding of the header when you turn on fullscreen mode.

Disable `browser.fullscreen.autohide`


### Disable Firefox Sync

If you don't use Firefox sync service, you can disbale UI-related elemnts.

Disable `identity.fxaccounts.enabled`


### Disable permission requests

Are you annoyed about these websites asking for your location, your micro?
I am...

Disable location request: set `permissions.default.geo` to `2`

Disable camera request: set `permissions.default.camera` to `2`

Disable microphone request: set `permissions.default.microphone` to `2`

Disable desktop notification request: set `permissions.default.desktop-notification` to `2`

These options can also be set in Firefox preferences.
Go to **Privacy** -> **Permissions**.
You can also add exceptions.


### Mitigate this damn Ctrl-q

Another yet annoying thing is to accidentatlly press Ctrl-q. Firefox
 immediately shutdowns, regardless the number of opened tabs,
 without any warning!

The best solution (without extensions) I found is to set a setting to warn the
 user when ctrl-q is pressed.

Enable `browser.showQuitWarning`


### Disable Go back on pressing of middle mouse

Did you already notice that pressing your middle mouse, out of an hyperlink,
 loads a previous page?

I have encontred this behavior too many times...

Let's disable `middlemouse.contentLoadURL`


### Prompt for auto refresh

Would you like take the control over your browser?

Enable `accessibility.blockautorefresh`


### Disable AI chat

Tired of the AI hype?

Disable `browser.ml.chat.enabled` and `browser.ml.enabled`.


### Windows without URL bar

Enable `dom.disable_window_open_feature.location`.

This enables to open windows without the URL bar.
For example you can add this kind of bookmark to open a webapp:

`javascript:{window.open("webapp-url","_blank","menubar=no,location=no,toolbar=no,scrollbars=yes,left=150,top=50)}`



## Privacy and security

### Isolate cookies by domain

Separate cookies by domain. This prevents advertisers to aggregate data over
 distinct websites in a single cookie.

Enable `privacy.firstparty.isolate`

Disable `privacy.firstparty.isolate.restrict_opener_access` to relax the policy.
 This reduces the number of brocken websites.


### Referer policy

Instead of sending the entire URI, you can remove the query string.
Thus, the referer includes only the scheme, the host, the port, and the path.

Set `network.http.referer.trimmingPolicy` to `1`

The following settings enables to strip the path component when the origin is
different:

Set `network.http.referer.XOriginTrimmingPolicy` to `2`


### Strip tracking URLs' parameters

Some sites add tracking parameters to links to track users across sites.

The following settings enables to strip these paramters.
Navigational events across the same site are not processed.

Enable `privacy.query_stripping.enabled`

Note that Tracking Protection must be set to `Strict` in order to
use this feature.


### Fingerprint mitigation

Enable `privacy.resistFingerprinting`

Note that this fakes the exposed browser version. This may prevent the
 installation of extensions.


### Remove session data, except some cookie

Go to **Privacy** tab of Firefox preferences and set the following options:

**history**

Firefox will: `Use custom settings for history`

- [ ] Always use private browsing mode
  - [ ] Remember my browsing and download history
  - [ ] Remember search and form history
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

