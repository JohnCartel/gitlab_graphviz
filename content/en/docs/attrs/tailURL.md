---
defaults:
- '""'
flags:
- map
- svg
minimums: []
title: tailURL
types:
- escString
used_by: E
description: If defined, `tailURL` is output as part of the tail label of the edge
---
Also, this value is used near the tail node, overriding any
[`URL`]({{< relref "URL.md" >}}) value.

See [limitation]({{< relref "_index.md#undir_note" >}}).

See also:

- [`edgehref`]({{< relref "edgehref.md" >}}), [`edgeURL`]({{< relref "edgeURL.md" >}})
- [`headhref`]({{< relref "headhref.md" >}}), [`headURL`]({{< relref "headURL.md" >}})
- [`labelhref`]({{< relref "labelhref.md" >}}), [`labelURL`]({{< relref "labelURL.md" >}})
- [`tailhref`]({{< relref "tailhref.md" >}}), [`tailURL`]({{< relref "tailURL.md" >}})
- [`href`]({{< relref "href.md" >}}), [`URL`]({{< relref "URL.md" >}})
