---
defaults:
- <none>
flags:
- map
- svg
minimums: []
title: tailtarget
types:
- escString
used_by: E
description: Browser window to use for the [`tailURL`](/docs/attrs/tailURL) link
---
If the edge has a [`tailURL`]({{< relref "tailURL.md" >}}), `tailtarget` determines which
window of the browser is used for the URL.

Setting `tailtarget=_graphviz` will open a new window if it doesn't already
exist, or reuse it if it does.

If undefined, the value of the [`target`]({{< relref "target.md" >}}) is used.
