---
defaults:
- '""'
flags:
- map
- svg
minimums: []
title: edgeURL
types:
- escString
used_by: E
description: The link for the non-label parts of an edge
---

`edgeURL` overrides any [`URL`]({{< relref "URL.md" >}}) defined for the edge.

Also, `edgeURL` is used near the head or tail node unless overridden
by [`headURL`]({{< relref "headURL.md" >}}) or [`tailURL`]({{< relref "tailURL.md" >}}), respectively.

See [limitation]({{< relref "_index.md#undir_note" >}}).

See also:

- [`edgehref`]({{< relref "edgehref.md" >}}), [`edgeURL`]({{< relref "edgeURL.md" >}})
- [`headhref`]({{< relref "headhref.md" >}}), [`headURL`]({{< relref "headURL.md" >}})
- [`labelhref`]({{< relref "labelhref.md" >}}), [`labelURL`]({{< relref "labelURL.md" >}})
- [`tailhref`]({{< relref "tailhref.md" >}}), [`tailURL`]({{< relref "tailURL.md" >}})
- [`href`]({{< relref "href.md" >}}), [`URL`]({{< relref "URL.md" >}})
