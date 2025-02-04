---
title: Command Line
url: /doc/info/command.html
weight: 2
cascade:
  type: cli
description: DOT rendering programs and utilities.
---
All Graphviz programs have a similar invocation:

<pre><i>cmd</i> [ <i>flags</i> ] [ <i>input files</i> ]</pre>

For example:

```
$ dot -Tsvg input.dot
```

If no input files are supplied, the program reads from **stdin**. For example:

```
$ echo 'digraph { a -> b }' | dot -Tsvg > output.svg
```

Generates:

<img src="/doc/info/stdin.svg">

## Flags

### `-G`_name_\[=_value_\] {#-G}

Set a graph attribute, with default _value_ = `true`

For example,

```
$ echo 'digraph { a -> b }' | dot -Tsvg -Gfontcolor=red -Glabel="My favorite letters"
```

Overrides the default `fontcolor` and `label` attributes of the graph, producing a red legend:

<img src="/doc/info/-G.svg">

### `-N`_name_\[=_value_\] {#-N}

Set a default node attribute, with default _value_ = `true`.

For example,

```
$ echo 'digraph { a -> b }' | dot -Tsvg -Nfontcolor=red -Nshape=rect
```

Overrides the default node `fontcolor` and `shape` attributes, producing rectangular nodes with red text:

<img src="/doc/info/-N.svg">

### `-E`_name_\[=_value_\] {#-E}

Set a default edge attribute, with default _value_ = `true`.

For example,

```
$ echo 'digraph { a -> b }' | dot -Tsvg -Ecolor=red -Earrowhead=diamond
```

Overrides the default edge `color` and `arrowhead` attributes, producing red edges with a diamond arrowhead:

<img src="/doc/info/-E.svg">

### `-K`_layout_ {#-K}

Specifies which default [layout engine]({{< relref "/docs/layouts/_index.md" >}}) to use, overriding the default from the command name. For example, running
`dot -Kneato` is equivalent to running `neato`.

### `-T`_format_\[:_renderer_\[:_formatter_\]\] {#-T}

Set output language to one of the [supported formats](/doc/info/output.html).
By default, [attributed dot](/docs/outputs/canon/) is produced.

Depending on how Graphviz was built, there may be multiple renderers for
generating a particular output format, and multiple formatters for 
creating the final output. For example, a typical installation
can produce [PNG](/docs/outputs/png/)
output using either the Cairo or GD library. The desired rendering engine
can be specified after a colon. If there are multiple formatting engines
available, the desired one can be specified in a similar fashion after
the rendering engine. Thus, `-Tpng:cairo` specifies PNG
output produced by Cairo (using the Cairo's default formatter), and 
`-Tpng:cairo:gd` specifies PNG
output produced by Cairo formatted using the GD library.

If no renderer is specified, or a renderer but no formatter, the default one
is invoked. The flag <code>-T<I>format</I>:</code> produces a list of all
of the renderers available for the specified _format_, the first one
listed with a prefix matching _format_ being the default.
Using the `-v` flag, described below, will print which format,
renderer, and formatter are actually used.

### `-V` {#-V}

Emit version information and exit. For example:

```
$ dot -V
dot - graphviz version 2.47.1 (20210417.1919)
```

### `-l`_library_ {#-l}

User-supplied, device-dependent library text. Multiple flags may
be given. These strings are passed to the code generator at the
beginning of output. 

For PostScript output, they are treated as file names
whose content will be included in the preamble after the standard preamble.
If _library_ is the empty string `""`, the standard preamble
is not emitted.

### `-n`\[_num_\] {#-n}

Sets no-op flag in **neato**.
If set, **neato** assumes nodes have already been 
positioned and all nodes have a [pos]({{< relref "/docs/attrs/pos.md" >}})
attribute giving
the positions. It then performs an optional adjustment to remove node-node
overlap, depending on the value of the 
[overlap]({{< relref "/docs/attrs/overlap.md" >}}) attribute, computes the edge
layouts, depending on the value of the 
[splines]({{< relref "/docs/attrs/splines.md" >}}) attribute, and
emits the graph in the appropriate format. If _num_ is supplied,
the following actions occur:

<I>num</I> = 1
: Equivalent to `-n`.

<I>num</I> > 1
: Use node positions as specified, with no adjustment to
remove node-node overlaps, and use any edge layouts already specified
by the [pos]({{< relref "/docs/attrs/pos.md" >}}) attribute. **neato**
computes an edge layout for any edge that does not have a **pos** attribute.
As usual, edge layout is guided by the 
[splines]({{< relref "/docs/attrs/splines.md" >}}) attribute.

### `-o`_outfile_ {#-o}

Write output to file <I>outfile</I>. For example,

```
$ echo 'digraph { a -> b }' | dot -Tsvg -o output.svg
```

Generates `output.svg`:

<img src="/doc/info/stdin.svg">

By default, output goes to **stdout**.

### `-O` {#-O}

Automatically generate output file names based on the input
file name and the various output formats specified by the **-T**
flags.

For example,

```
$ dot -Tsvg -O ~/family.dot ~/debug.dot
```

Generates `~/family.dot.svg` and `~/debug.dot.svg` files.

### `-P` {#-P}

Automatically generate a graph that shows the plugin configuration of
the current executable. e.g.

```
$ dot -P -Tsvg -o plugins.svg
```

### `-q` {#-q}

Suppress warning messages.

### `-s`\[_scale_\] {#-s}
Set input scale to _scale_. If this value is omitted,
72.0 is used. This number is used to convert the point coordinate
units used in the [pos]({{< relref "/docs/attrs/pos.md" >}}) attribute
into inches, which is what is expected by neato and fdp. 
Thus, feeding the output of a graph laid out by one program into
neato or fdp almost always requires this flag.
Ignored if the `-n` flag is used.

### `-v` {#-v}

Verbose mode

### `-x` {#-x}

In **neato**, on input, prune isolated nodes and peninsulas.
This removes uninteresting graph structure and produces a less cluttered
drawing.

### `-y` {#-y}

By default, the coordinate system used in generic output formats, 
such as [attributed dot](/docs/outputs/canon/#dot--gv),
[extended dot](/docs/outputs/canon/#xdot),
[plain](/docs/outputs/plain/) and
[plain-ext](/docs/outputs/plain/),
is the standard cartesian system with the origin in the lower left corner, 
and with increasing y coordinates as points move from bottom to top.
If the `-y` flag is used, the coordinate system is inverted,
so that increasing values of y correspond to movement from top to bottom.

### `-?` {id="-?"}

Print usage information, then exit.

If multiple `-T` flags are given, drawings of the graph
are emitted in each of the specified formats. Multiple `-o`
flags can be used to specify the output file for each format. If there
are more formats than files, the remaining formats are written to
**stdout**.

Note that the `-G`,
`-N` and
`-E` flags override any initial attribute declarations
in the input graph,
i.e., those attribute statements appearing before any node, edge or
subgraph definitions.
In addition, these flags cause the related attributes to be permanently
attached to the graph. Thus, if attributed dot is used for
output, the graph will have these attributes.

## Environment Variables

### `GDFONTPATH`

List of pathnames giving directories which a program should search for fonts.
Overridden by [DOTFONTPATH](#DOTFONTPATH).
_Used only if Graphviz is not built with the `fontconfig` library_

### `DOTFONTPATH` {#DOTFONTPATH}

List of pathnames giving directories which a program should search for fonts.
Overridden by [**fontpath**]({{< relref "/docs/attrs/fontpath.md" >}}).
_Used only if Graphviz is not built with the `fontconfig` library_

### `SERVER_NAME` {id="d:SERVER_NAME"}

If defined, this indicates that the software is running as a web application,
which restricts access to image files.

### `GVBINDIR` {id="d:GVBINDIR"}

Indicates which directory contains the Graphviz config file and
plug-in libraries. If it is defined, the value overrides any other
mechanism for finding this directory. If Graphviz is properly installed,
it should not be needed, though it can be useful for relocation on
platforms not running Linux or Windows.
