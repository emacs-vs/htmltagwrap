[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![MELPA](https://melpa.org/packages/htmltagwrap-badge.svg)](https://melpa.org/#/htmltagwrap)
[![MELPA Stable](https://stable.melpa.org/packages/htmltagwrap-badge.svg)](https://stable.melpa.org/#/htmltagwrap)

# htmltagwrap
> Wraps a chunk of HTML code in tags.

[![CI](https://github.com/jcs-elpa/htmltagwrap/actions/workflows/test.yml/badge.svg)](https://github.com/jcs-elpa/htmltagwrap/actions/workflows/test.yml)

<p align="center">
  <img src="./etc/htmltagwrap-demo.gif" width="600" height="203"/>
</p>

## Configurations

The default tag is `p`, by setting `htmltagwrap-tag` you can change the
default tag to something else you want.

```el
(setq htmltagwrap-tag "p")
```

Ident the region after wrapping.

```el
(setq htmltagwrap-indent-region-after-wrap t)
```

Make newline when wrap if the region is not on the same line.

```el
(setq htmltagwrap-indie-tag-wrap-not-inline t)
```

## Key Bindings

This plugin does not have a default keybindings, just simply binds
`htmltagwrap-tag-wrap` function to the keymap you want.

```el
(define-key global-map (kbd "M-w") #htmltagwrap-tag-wrap)
```

## Contribution

If you would like to contribute to this project, you may either 
clone and make pull requests to this repository. Or you can 
clone the project and establish your own branch of this tool. 
Any methods are welcome!
