---
defaults:
- '0.0'
flags:
- neato
minimums: []
title: levelsgap
types:
- double
used_by: G
description: strictness of neato level constraints
---
Specifies strictness of level constraints in [`neato`](/docs/layouts/neato/) when
<code>[mode]({{< relref "mode.md" >}})="ipsep"</code> or <code>[mode]({{< relref "mode.md" >}})=hier</code>.

Larger positive values mean stricter constraints, which demand more
separation between levels. On the other hand, negative values will relax the
constraints by allowing some overlap between the levels.
