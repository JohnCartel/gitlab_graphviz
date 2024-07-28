---
defaults:
- <none>
flags:
- map
- svg
minimums: []
title: labeltarget
types:
- escString
used_by: E
description: Browser window to open [`labelURL`](/docs/attrs/labelURL/) links in
---

If the edge has a [`URL`]({{< relref "URL.md" >}}) or [`labelURL`]({{< relref "labelURL.md" >}}) attribute, this
attribute determines which window of the browser is used for the URL attached
to the label.

Setting `labeltarget=_graphviz` will open a new window if it doesn't
already exist, or reuse it if it does.

If undefined, the value of the [`target`]({{< relref "target.md" >}}) is used.
