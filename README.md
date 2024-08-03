# [tabletopclub.net](https://tabletopclub.net)

The official website for the free and open source board game simulator,
[Tabletop Club](https://github.com/drwhut/tabletop-club/).

This is a static website generated using [Jekyll](https://jekyllrb.com).


## Installation

1. Install [Jekyll](https://jekyllrb.com/docs/installation/).

2. Clone the repository:

   ```bash
   git clone https://github.com/drwhut/tabletop_club_website.git
   cd tabletop_club_website
   ```

3. Install the Ruby Gems required by the project:

   ```bash
   bundle install
   ```

4. Either build the website, and host with the server software of your choice:

   ```bash
   bundle exec jekyll build
   ```

   Or, use Jekyll to serve the website on a local HTTP server:

   ```bash
   bundle exec jekyll serve
   ```


## Release Files

Due to their size, the downloads for each version of Tabletop Club are not
included in this repository. Therefore, *download buttons on the website will
not work by default*.

This is the structure in which the website expects the releases to be placed:

```
downloads/
└── releases
    ├── prerelease
    │   ├── v0.1.0-beta2
    │   │   ├── TabletopClub_v0.1.0-beta2_Linux_32.zip
    │   │   ├── TabletopClub_v0.1.0-beta2_Linux_64.zip
    │   │   ├── TabletopClub_v0.1.0-beta2_OSX_Universal.zip
    │   │   ├── TabletopClub_v0.1.0-beta2_SHA512.txt
    │   │   ├── TabletopClub_v0.1.0-beta2_Windows_32.zip
    │   │   └── TabletopClub_v0.1.0-beta2_Windows_64.zip
    │   ├── v0.1.0-rc1
    │   │   ├── TabletopClub_v0.1.0-rc1_Linux_32.zip
    │   │   ├── TabletopClub_v0.1.0-rc1_Linux_64.zip
    │   │   ├── TabletopClub_v0.1.0-rc1_OSX_Universal.zip
    │   │   ├── TabletopClub_v0.1.0-rc1_SHA512.txt
    │   │   ├── TabletopClub_v0.1.0-rc1_Windows_32.zip
    │   │   └── TabletopClub_v0.1.0-rc1_Windows_64.zip
    └── stable
        └── v0.1.2
            ├── TabletopClub_v0.1.2_Linux_32.zip
            ├── TabletopClub_v0.1.2_Linux_64.zip
            ├── TabletopClub_v0.1.2_OSX_Universal.zip
            ├── TabletopClub_v0.1.2_SHA512.txt
            ├── TabletopClub_v0.1.2_Windows_32.zip
            └── TabletopClub_v0.1.2_Windows_64.zip
```

Once these files are in place for all releases, you can then use the provided
`build.sh` script to automatically pull the latest commit, install the correct
gems, check for errors, and build a production version of the website.

**NOTE:** Future releases can be added simply by inserting the following YAML to
the **top** of `_data/releases.yml`:

```yml
- version: v0.10.0
  nickname: The Big 1-0
  post: 2023-04-01-release-v0.10.0.html
  date: 2029-04-01
  type: stable
  has_windows_32: true
  has_linux_32: true
```


## Licenses

This project uses files distributed under multiple different licenses.

**Code:** Benjamin 'drwhut' Beddows, [MIT License](LICENSE).

**Content:** Benjamin 'drwhut' Beddows,
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**Screenshots:** `screenshot_0.jpg`, `screenshot_1.jpg`, `screenshot_2.jpg`,
and `screenshot_3.jpg` by Samantha Johnson,
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**Hero Background:** `hero_background.jpg` by Samantha Johnson, modified by
Benjamin 'drwhut' Beddows,
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**Logo:** `tabletop_club_icon.png`, `tabletop_club_title.svg`, and
`thumbnail.jpg` by Unknown, modified by traverseda and Benjamin 'drwhut' Beddows,
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**CSS Framework:** [Bulma](https://bulma.io/) by Jeremy Thomas,
[MIT License](https://github.com/jgthms/bulma/blob/main/LICENSE).

**Icons:** [Font Awesome](https://fontawesome.com/icons),
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
