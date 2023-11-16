# A [Redmine](https://www.redmine.org/) [plugin](https://www.redmine.org/projects/redmine/wiki/Plugins) for [KaTeX](https://katex.org/)

This repository implements a very simple
[Redmine](https://www.redmine.org/)
[plugin](https://www.redmine.org/projects/redmine/wiki/Plugins) which
installs [KaTeX](https://katex.org/) into a Redmine instance.

## Usage

To *USE* KaTeX... in any text that you enter into Redmine, (for example a
wiki article, a Project or issue description or note), simply wrap the
mathematics you want displayed in one of the following pairs of KaTeX
delimiters.

For "displayed" mathematics (i.e. mathematics displayed on its own line)
you can use:

| Left Delimiter      | Right Delimiter   |
|---------------------|-------------------|
| `$$`                | `$$`              |
| `\\begin{equation}` | `\\end{equation}` |
| `\\begin{align}`    | `\\end{align}`    |
| `\\begin{alignat}`  | `\\end{alignat}`  |
| `\\begin{gather}`   | `\\end{gather}`   |
| `\\begin{CD}`       | `\\end{CD}`       |
| `\\[`               | `\\]`             |

For "inline" mathematics (i.e. mathematics displayed in the surrounding
text) you can use:

| Left Delimiter | Right Delimiter |
|----------------|-----------------|
| `\\(`          | `\\)`           |

*NOTE: you must use the `\\` prefix!*

For official details of which delimiters you can use consult the
[auto-render API](https://katex.org/docs/autorender#api) documentation.

For details on the meaning of the `equation`, `align`, `alignat`, and
`gather` LaTeX (like) environments consult the documentation for the
[`amsmath` package](https://ctan.org/pkg/amsmath)

For details on the meaning of the `CD` LaTeX (like) environments consult
the documentation for the [`amscd` package](https://ctan.org/pkg/amscd).

## Installation

To install this Redmine plugin `cd` to your redmine instance directory
(such as /usr/src/redmine in the Docker image) and then type the following
commands:

```shell
  git clone --depth=1 https://github.com/stephengaito/redmine_plugin_katex.git plugins/katex
  cd plugins/katex
  ./getKaTeX
```

Once you have done the above, you *will* need to reboot/restart your
Redmine server.

## Implementation

We used the documentation on writing a [Redmine
Plugin](https://www.redmine.org/projects/redmine/wiki/Guide#Plugin-development).

We used the documentation on using [KaTeX in a
browser](https://katex.org/docs/browser).

