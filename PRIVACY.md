---
permalink: /privacy-policy/
layout: basic
title: Privacy Policy
last_updated: 2024-08-02
---
# Privacy Policy

*This document was last updated on {{ page.last_updated | date_to_long_string }}.
Updates to the privacy policy will be announced via [News](/news/) posts
([view updates](https://github.com/drwhut/tabletop_club_website/commits/master/PRIVACY.md)).*

This document describes in detail the personal information that is collected
when you use the Tabletop Club website or application, the manner in which it is
stored, how it is used during the operation of the website or application, who
has access to the information, and how long it is stored for.

We take your privacy seriously, which is why we only collect and store the
information that is necessary for both the website and application to function
properly.

If you have any questions or concerns about the way in which your personal
information is stored or used, or if you wish to have it deleted, then please
contact me (Benjamin Beddows) at <drwhut@gmail.com>.

## Website

### What information is collected?

When you visit a web page on either `tabletopclub.net` or `www.tabletopclub.net`,
the following information is logged on the server:

- Your IP address.
- Details about your device, including your operating system and platform.
  For example, `Linux x86_64`.
- Details about your web browser, including its version. For example,
  `Firefox/128.0`.

### How is this information used?

HTTP requests are logged on the server in order to help with the development of
the website, to help debug issues when attempting to access the website with
certain devices or web browsers, and for security purposes in order to block
malicious actors.

The information may also be used to collect anonymous statistics, such as the
number of times a release of the game has been downloaded.

### Who has access to this information?

Benjamin Beddows (<drwhut@gmail.com>) runs the server and has access to its logs.

The full logs containing personal information are not shared with anyone else.
However, logs with personal information removed may be shared with others in
order to aid with development or debugging.

### How long is the information kept for?

Logged HTTP requests are kept using a log rotation system. This means that any
particular log will be kept on the server for four weeks before it is deleted.

## Lobby Server

### What information is collected?

When you host or join a multiplayer lobby in Tabletop Club, your IP address is
stored by the lobby server (also known as the master server).

### How is this information used?

The lobby server only uses your IP address for security purposes: that is, to
ensure that not too many connections are established with the lobby server from
any given source IP address, and that connections are not being closed and
re-established in rapid succession from any given source IP address.

### Who has access to this information?

Your IP address is only stored in the lobby server's internal memory. It is not
accessible through any control panel or monitoring software, and it is not
included in the lobby server's logs.

### How long is the information kept for?

Your IP address is kept in the lobby server's internal memory for only a few
seconds after you have disconnected from the multiplayer lobby, no matter if the
connection was closed manually, or if it was lost due to a connection issue.

## Multiplayer

### What information is collected?

When you join an ongoing multiplayer lobby, or a new player connects to your
multiplayer lobby, your IP address will be sent over an encrypted web socket
connection through the lobby server to the other connected clients, or to the
new client respectively.

### How is this information used?

Your IP address is used to help establish a direct peer-to-peer connection to
the other clients using WebRTC technology, which is crucial for multiplayer
to function properly in Tabletop Club.

### Who has access to this information?

Your IP address will only be sent to clients that are also connected to your
multiplayer lobby.

Lobbies are identified using private tokens known as room codes. If a third
party connects to the lobby server using this room code, then they will have
access to your IP address. Therefore, **only share the room code with people you
trust**.

### How long is the information kept for?

Your IP address is only stored on official clients for as long as there is an
established, direct connection between your client and theirs. When you leave
the multiplayer lobby, or when there is a connection issue, this connection is
closed.

However, if another player in the lobby is using a modified client, then this is
not guaranteed, since they can take your IP address and store it separately.
Therefore, **only join multiplayer lobbies with people you trust**.
