---
title: layerRange
description: A list of layers defined by the [`layers`]({{< relref "/docs/attrs/layers" >}}) attribute
---

It consists of a list of layer intervals separated by any collection of
characters from the [layerlistsep]({{< relref "/docs/attrs/layerlistsep.md" >}}) attribute. Each layer
interval is specified as either a layerId or a layerId**s**layerId, where
layerId = `"all"`, a decimal integer or a [`layer`]({{< relref "/docs/attrs/layer.md" >}}) name. (An integer i
corresponds to layer i, layers being numbered from 1.)

The string **s** consists of 1 or more separator characters specified by the
[`layersep`]({{< relref "/docs/attrs/layersep.md" >}}) attribute.

Thus, assuming the default values for [layersep]({{< relref "/docs/attrs/layersep.md" >}}) and
[layerlistsep]({{< relref "/docs/attrs/layerlistsep.md" >}}), if `layers="a:b:c:d:e:f:g:h"`, the
layerRange string `layers="a:b,d,f:all"` would denote the layers `a b d f g
h`.
