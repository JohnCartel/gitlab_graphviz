---
title: Download
aliases:
  # We need ".php.html" else the redirect page is downloaded to ~/Downloads/
  # rather than shown in browser. See:
  # https://github.com/jekyll/jekyll-redirect-from/issues/145#issuecomment-392277818
  - /Download.php.html
  - /Download..php.html
  - /Download_macos.php.html
  # We want to redirect from /Download_windows.php. We need ".php.html" else the
  # redirect page is downloaded to ~/Downloads/ rather than shown in browser. See:
  # https://github.com/jekyll/jekyll-redirect-from/issues/145#issuecomment-392277818
  - /Download_windows.php.html
  - /_pages/Download/Download_windows.html
weight: 2
menu:
  main:
    weight: 10
    pre: "<i class='fas fa-download'></i>"
type: docs
---

## Source Code

[Source code packages](/download/source/) for the latest stable and
development versions of Graphviz are available, along with instructions for anonymous
access to the sources using [Git](http://git-scm.com/).

## Executable Packages

Packages marked with an asterisk(*) are provided by outside parties.
We list them for convenience, but disclaim responsibility for the contents of these packages.

### Linux

Precompiled binaries are available attached to releases on Gitlab,
https://gitlab.com/graphviz/graphviz/-/releases.
You may also find it useful to try one of the following third-party sites.

* [Debian](http://packages.debian.org/search?suite=all&amp;searchon=names&amp;keywords=graphviz)\*, [Ubuntu](https://packages.ubuntu.com/search?keywords=graphviz&searchon=names)\*

  ```bash
  sudo apt install graphviz
  ```

* [Fedora project](https://apps.fedoraproject.org/packages/graphviz)\*, Rocky Linux, [Redhat Enterprise Linux, or CentOS](http://rpmfind.net/linux/rpm2html/search.php?query=graphviz)\*

  ```bash
  sudo dnf install graphviz
  ```

### Windows

* Stable Windows install packages, built with Microsoft Visual Studio 16 2019:

  {{< windows >}}

  * [Prior to 2.46 series](https://www2.graphviz.org/Packages/stable/windows)
* Development Windows install packages
  * [2.46.0 and newer](https://gitlab.com/graphviz/graphviz/-/packages)
  * [Prior to 2.46.0](https://www2.graphviz.org/Packages/development/windows)
* [Cygwin Ports](http://sourceware.org/cygwinports/)* provides a port of Graphviz to Cygwin.
* [WinGraphviz](http://wingraphviz.sourceforge.net/wingraphviz/)* Win32/COM object (dot/neato library for Visual Basic and ASP).
* [Chocolatey packages Graphviz for Windows](https://chocolatey.org/packages/Graphviz).

  ```
  choco install graphviz
  ```

* [Windows Package Manager](https://docs.microsoft.com/en-gb/windows/package-manager/) provides
  [Graphviz Windows packages](https://winget.run/pkg/Graphviz/Graphviz).

  ```
  winget install graphviz
  ```

Mostly correct notes for building Graphviz on Windows can be found
[here](/doc/winbuild.html).


### Mac

* [MacPorts](https://www.macports.org/)* provides both stable and development versions of
  Graphviz and the Mac GUI Graphviz.app. These can be obtained via the ports
  [graphviz](https://ports.macports.org/port/graphviz/),
  [graphviz-devel](https://ports.macports.org/port/graphviz-devel/),
  [graphviz-gui](https://ports.macports.org/port/graphviz-gui/)
  and [graphviz-gui-devel](https://ports.macports.org/port/graphviz-gui-devel/).

  ```bash
  sudo port install graphviz
  ```

* [Homebrew](https://brew.sh/)* [has a Graphviz port](https://formulae.brew.sh/formula/graphviz).

  ```bash
  brew install graphviz
  ```

We need help with macOS, if you would like to volunteer.

We would appreciate if someone donates a script to
run pkgbuild or productbuild to automatically generate macOS installers.
[Packaging for Apple Administrators](https://itunes.apple.com/us/book/packaging-for-apple-administrators/id1173928620?mt=11&ign-mpt=uo%3D4)
could be a good reference. Note graphviz needs postinstall actions, at least `dot -c`; also `fc-cache` if Graphviz has freetype/cairopango drivers.

### Solaris

For Solaris, please use the graphviz stable releases [here](http://www.opencsw.org/packages/). These are
maintained by Laurent Blume / John Ellson. Currently available packages are:

<table>
     <tr>
       <td><a href="https://www.opencsw.org/packages/CSWgraphviz/">graphviz</a></td>
       <td>Graph Visualization Tools</td></tr>
     <tr>
       <td><a href="https://www.opencsw.org/packages/CSWgraphviz-dev/">graphviz_dev</a></td>
       <td>Graphviz headers etc. for development</td>
     </tr>
     <tr>
       <td><a href="https://www.opencsw.org/packages/CSWgraphvizdoc/">graphvizdoc</a></td>
       <td>Graphviz documentation</td>
     </tr>
     <tr><td>graphvizgd</td><td>Graphviz renderers using gd</td></tr>
     <tr><td>graphvizgraphs</td><td>Graphviz example graphs</td></tr>
     <tr><td>graphvizguile</td><td>Graphviz language binding for guile</td></tr>
     <tr><td>graphvizperl</td><td>Graphviz language binding for perl</td></tr>
     <tr><td>graphvizpython</td><td>Graphviz language binding for python</td></tr>
     <tr><td>graphvizruby</td><td>Graphviz language binding for ruby</td></tr>
     <tr><td>graphvizsharp</td><td>Graphviz language binding for C#</td></tr>
     <tr><td>graphviztcl</td><td>Graphviz language binding for tcl</td></tr>
</table>

Minimally, graphviz and graphvizgd should be installed.

### Other Unix

* [DragonFly BSD](https://ftp.icm.edu.pl/packages/dragonflybsd/dports/dragonfly:6.6:x86:64/LATEST/All/)*
* [FreeBSD](http://www.freshports.org/graphics/graphviz/)*
* [NetBSD](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/graphics/graphviz/)*
* [OpenBSD](https://github.com/openbsd/ports/tree/master/math/graphviz)*
