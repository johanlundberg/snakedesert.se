---
title: Dota 2 autoexec.cfg Reborn
layout: simple_wide_page 
pager: true
date: 2015-07-25
author: Johan
tags:
 - dota 2
---

If you want to load your autoexec.cfg in the Dota 2 Reborn client follow these steps.
{.lead}

See an earlier [blog post] if you need some help with a autoexec.cfg file.

[blog post]: https://snakedesert.se/blog/autoexec_cfg.html

Put the file named `autoexec.cfg` in `path\to\Steam\SteamApps\common\dota 2 beta\game\dota\cfg\`.

Edit the file `path\to\Steam\SteamApps\common\dota 2 beta\game\dota\cfg\game_convars.vcfg` and add `"exec"  "autoexec.cfg"` as the last line, like below.

```js
"config"
{
        "convars"
        {
                "mat_motion_blur_enabled"       "0"
                "snd_foliage_db_loss"   "0"
                "exec"  "autoexec.conf"
        }
}
```

Enjoy your custom Dota 2 settings!
