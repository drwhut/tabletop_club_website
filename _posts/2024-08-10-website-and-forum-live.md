---
layout: post
title: "Announcement: Website and forum are now live!"
image: /assets/images/posts/2024-08-10/thumbnail.jpg
---
Hey everyone! We live in an age where your digital footprint matters, SEO reigns
supreme, and I have an unhealthy obsession over lasagne. With this in mind, I'm
happy to announce that the official Tabletop Club website and forums are now
live! 🥳 ... and that I've decided to have lasagne for dinner tonight.

## New Website

As you may already know from previous devlogs, I am currently knee-deep into
re-writing the entire codebase for Tabletop Club for the first major update of
the game, v0.2.0. And since I'm treating the update as a semi-reboot of sorts,
I also wanted to take the opportunity to finally publish a full-on website for
the game. So, after some blood, sweat, and tears, and maybe one or two ritual
sacrifices, the website is actually, for-realsies, live for all to see!

{% include figure.html image="posts/2024-08-10/website.jpg" alt="The Tabletop Club Website" caption='<a href="https://tabletopclub.net">https://tabletopclub.net</a>' %}

It's got all the cool things you expect from a website nowadays, like a fancy
home page showing off what the game offers, a
[download page](https://tabletopclub.net/downloads), a
[news page](https://tabletopclub.net/news) with all of the blogs that I've made,
as well as a new [community page](https://tabletopclub.net/community) with links
to all of the official community channels! I think I'm also legally obliged to
tell you that there's now also a
[privacy policy](https://tabletopclub.net/privacy-policy), if that's your
favourite flavour of jam.

To be honest, I put off making a website for the game for a good while for one
particular reason - I don't entirely vibe with the state of front-end web
development at the moment. At least, compared to when the internet really
got going, there's so many things to consider like different screen sizes, about
a million different CSS stylesheets to choose from, and any number of
"frameworks" to actually create the website...
Luckily, after looking around for a while I ended up finding a framework that I
actually kind of like - [Jekyll](https://jekyllrb.com/). Unlike more complicated
frameworks like Django or React which have all sorts of features and models,
Jekyll goes back to the old days of just mostly writing your own HTML, but with
a lot of tools to help you re-use certain sections of code, as well as neat
in-built features for things like blogging (which is being used right now!).
At the end of the day, it's a static website generator with a bit of scripting,
which is exactly what I was looking for!

If you're interested in how the website is made, like everything else in the
project, the code is available on
[GitHub](https://github.com/drwhut/tabletop_club_website). And as always, if you
come across an issue with the website, please don't hesitate to
[open an issue](https://github.com/drwhut/tabletop_club_website/issues) and let
me know what's wrong! If however, the issue is about the website's *security*,
then please email me instead, at <drwhut@gmail.com>.

## New Forum

Since I decided that I was going to make a website for Tabletop Club, I also
wanted to make a dedicated forum for it as well. There's already an official
[Discord](https://discord.gg/GqYkGV4WwX) server, as well as an official
open source [Matrix](https://matrix.to/#/#tabletop-club:matrix.org) server, but
the main issue that kept bugging me was that these forums were not available on
the open internet. That is, you have to have either a Discord or Matrix account
to join, or specifically join as an anonymous user. Either way, Google's web
crawlers aren't gonna be visiting either of these any time soon.

With this in mind, I wanted to get two birds with one stone: not only did I want
to have a community forum that was accessible to the open public (that in turn,
would be picked up by web crawlers and subsequently be shown on search engines),
but I also wanted to have a place where anyone could download asset packs made
by the community. Since I had already decided that a dedicated asset pack
database was not going to happen for v0.2.0, my solution was (*drum roll
please*)... **The Tabletop Club Forum!**

{% include figure.html image="posts/2024-08-10/forum.jpg" alt="The Tabletop Club Forum" caption='<a href="https://forum.tabletopclub.net">https://forum.tabletopclub.net</a>' %}

It uses the open source platform [Discourse](https://www.discourse.org/) (slight
side tangent, the documentation is awesome by the way, thanks guys!), and it's
been set up with a number of categories to start off with:

- [Announcements](https://forum.tabletopclub.net/c/announcements), which is
  essentially just a copy of the website's news, but you guys can reply!
- [Asset Packs](https://forum.tabletopclub.net/c/asset-packs), where you can
  download and share your custom asset packs!
- [Help](https://forum.tabletopclub.net/c/help), where you can get support for
  the game, whether it's playing it, or importing custom assets.
- [Forum Feedback](https://forum.tabletopclub.net/c/forum-feedback), where you
  can share feedback... about the forum. This one's pretty self-explanitory.
- [General](https://forum.tabletopclub.net/c/general), for everything else!

If you think there should be more categories, feel free to let me know in Forum
Feedback!

I also wanted to mention as well, this is my first time setting up a dedicated
email for anything, ever. I've tested this new email with multiple methods, and
I *think* I've set up everything correctly, but either way, **if you try to
create an account, and you do not receive a verification email, please let me
know!** Make sure to also check your spam folder as well, just in case.

## Flatpak Update

A big part of the reason why I've gone through this whole setting-up-a-website
stuff is actually because of the Flatpak version of the game! How are the two
related, you may ask? Well, I'll tell you!

Back in the olden days of last year, I knew I wanted to publish the game as a
Flatpak so Linux users could very easily download the game from their distro's
software centre, and have it automatically update.
But in order to do that, I needed to come up with an app ID that would uniquely
identify my game amongst all the other cool apps on Flathub, like Blender and
Inkscape! So at the time, I decided to go with `io.itch.drwhut.TabletopClub`,
since I had published the game on my `itch.io` page. I could have also gone with
`io.github.drwhut.TabletopClub`, since the source code for Tabletop Club is
hosted on GitHub, and to be frank, I wish I went for the latter. Why? Because of
**verification**.

One fateful day long after I had published the game to Flathub, I noticed
something strange... a great big "Unverified" alert by the game! The mere
presence of that alert shook me to my very core, and I was distraught... It was
also a problem since new users would probably not be comfortable downloading the
Flatpak anymore, and for good reason. So I set out on a mission to get my app
verified - and crashed and burnt at the first hurdle.

In order to verify your app on Flathub, you need to put a file with a specific
token on the website whose domain is represented in your app's ID. So for the
ID that I was using, `io.itch.drwhut.TabletopClub`, I needed to somehow create
a text file under the `drwhut.itch.io` domain. The thing is, as you may have
already figured out, I do not own the `itch.io` domain. So I can't put the file
there. Therefore, I can't verify my app. Ever.

So, my only course of action was to rename the app ID. Luckily, Flathub have
added a semi-easy way to do this, but it's not 100% seamless from the user's
point of view. Just to really, absolutely, positively make sure that the app ID
would never need to change again, I decided to make the new app ID
`net.tabletopclub.TabletopClub`! Now, since I own the `tabletopclub.net` domain
in its entirety, I can place the special file there and prove to Flathub that it
is actually me publishing the app, meaning the app is now verified!

{% include figure.html image="posts/2024-08-10/flathub.jpg" alt="Tabletop Club by Benjamin Beddows, tabletopclub.net" caption="Tabletop Club on Flathub, with a fancy new verified tick!" %}

What does this mean for you guys? If you haven't downloaded the Flatpak version
of the game before, not much, except for the fact that the link to the Flathub
page is now [here](https://flathub.org/apps/net.tabletopclub.TabletopClub).

However, **if you currently have the `io.itch.drwhut.TabletopClub` Flatpak
installed on your system, you will need to update it.** Hopefully, your distro's
update manager should handle this automatically for you, but if you come across
an issue updating the app, then you will probably need to run the `flatpak`
command manually in the terminal:

```bash
flatpak update
```

It'll say that `io.itch.drwhut.TabletopClub` has reached end-of-life (which is
kind of a morbid way of putting it, to be honest...), and that it has been
rebased to `net.tabletopclub.TabletopClub`. It'll then ask for confirmation that
you want to uninstall the old app and install the new one, enter "y" on this.

This process will convert the app on your system from the old, unverified
version to the new, verified one. It *should* also carry over your old settings
and notebook contents.

## Future Plans

So with the website, forum, and verified Flatpak now published, what's next on
the agenda? As you can tell I've been in a server-side sort of mood lately, so
after this announcement is posted, I'll get back to re-writing the lobby server,
which you can read a bit about in the
[last devlog]({% post_url 2024-04-29-devlog-3-happy-birthday %}) that I posted!

After the new lobby server goes live, I'll be back to working on the v0.2.0
update, in which I'll be starting work on the brand new, way-more-intuitive
objects menu! Once that is complete, as well as a couple of other revamps, I'll
be sure to write a devlog to update you all on the progress I've made, and to
get your feedback on the changes.

In the long term, there's a medium-sized elephant that I would like to address,
which is [GodotCon 2024](https://conference.godotengine.org/2024/)! For those
that don't know, it's the annual conference for the
[Godot Engine](https://godotengine.org/), which is the free and open source game
engine that powers Tabletop Club, and this year it's being held in Berlin,
Germany in October.

{% include figure.html image="posts/2024-08-10/godotcon.jpg" alt="GodotCon '24 12th + 13th of October - Berlin, Germany" caption='<a href="https://conference.godotengine.org/2024/">GodotCon 2024 Website</a>' %}

Now, I don't know about you, and I may be a little bit biased when I say this,
but I personally think that Godot is an OK piece of software. I'm joking - it's
bloody amazing. And I know for a fact I'm not the only one that thinks this.
So, to satiate my need to nerd out about Godot, game development, and open
source software in general to others who also like those things, and as an
excuse to exacuate England for a bit (if you know, you know...), **I shall be
attending GodotCon this year!**

Because I'm attending this year, I really want to have at least something from
the v0.2.0 re-write to show off on the show floor. I don't usually do this,
because I, like many other game developers, am absolutely rubbish at deciding
deadlines and sticking to them, but I make this promise to you:

**Before GodotCon starts on the 12th October, I shall try my absolute hardest
to release, at the very least, one pre-release version of v0.2.0.**

Now, I know enough about myself to know that there is a 100% chance that I will
*not* be able to release v0.2.0 fully before GodotCon, that's just an
unrealistic expectation. However, I think I can get a functioning alpha or beta
version of the update released before then - it probably won't be feature
complete, and it'll have some bugs for sure, but that's why I make pre-release
versions of the game, so that you guys can test it and find the issues that I
couldn't.

It'll also be a really good opportunity for you all to give your feedback on the
re-write, and to let me know what you think of the new UI and controls.
I've been working on this update since late last year, and I'm super proud of
what I've done so far - so I'm absolutely determined to get it in a playable
state, and I'm super excited for you guys to try it, hopefully, in October!

## Donate

You knew this plug had to be somewhere in here, right? 😉

Although, I feel like I have a pretty good excuse for plugging my Ko-Fi here!
Since I needed to purchase not only a domain, but also a virtual private server
(VPS) as well as an email service for the forum, all of these things are coming
at a new monthly cost for me.

So if you like the project, and you would like to help contribute towards the
running costs of the new infrastructure, then please feel free to donate on my
Ko-Fi page! Any donations, no matter how big or small, are hugely appreciated.

{% include figure.html image="posts/2024-08-10/kofi_button.webp" alt="Support me on ko-fi" href="https://ko-fi.com/drwhut" %}

And with that, I bid you all adieu! If everything goes to plan, next time you
hear from me, I'll have some more things to show off from the v0.2.0 update!
