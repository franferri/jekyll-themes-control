# Jekyll Themes Control

Jekyll plugin for building Jekyll sites using themes stored locally in a folder, not in .gem files

Read https://jekyllrb.com/docs/themes/ to get more familiar with the themes in Jekyll

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)


## Usage

1. Add the following to your Gemfile

  ```ruby
  gem "jekyll-themes-control"
  ```

  and run `bundle install` to install the plugin

2. Add the following to your site's `_config.yml` to activate the plugin

  ```yml
  plugins:
    - jekyll-themes-control
  ```
  Note: If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

3. Add the following to your site's `_config.yml` to choose your theme. Remove the theme line you currently have

  ```yml
  themes_control: minima
  ```

4. Put your theme files in the folder `_themes`

Extract the files from your locally installed .gem

```
open $(bundle info --path minima)
```
Then create the folder ```minima``` in ```_themes``` and copy the files inside

or

Clone the theme folder from the git repository

```
git clone https://github.com/jekyll/minima
```
Move the ```minima``` folder inside the ```_themes``` folder

## Debugging

Adding `--verbose` to the `build` or `serve` command may provide additional information.


## Inspiration

* https://github.com/jekyll/jekyll/issues/8185
* https://github.com/jekyll/jekyll/issues/6199
* https://github.com/benbalter/jekyll-remote-theme
