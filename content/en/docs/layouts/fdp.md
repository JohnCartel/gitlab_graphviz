---
title: fdp
weight: 3
description: >
  stands for [Force-Directed Placement](https://en.wikipedia.org/wiki/Force-directed_graph_drawing).
---

[spring model](https://en.wikipedia.org/wiki/Spring_system)
layouts similar to those of [neato]({{< relref "neato.md" >}}), but
does this by reducing forces rather than working with energy.

`fdp` implements the Fruchterman-Reingold heuristic[^1] including a multigrid solver
that handles larger graphs and clustered undirected graphs.

- [PDF Manual](/pdf/dot.1.pdf)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/tree/main/lib/fdpgen)

<p style="text-align: center;">
  <a href="/Gallery/undirected/fdpclust.html">
    <img src="/Gallery/undirected/fdpclust.svg">
  </a>
</p>

<h2>Attributes for fdp features</h2>
<ul>
{{< partial attr-li "dim">}}
{{< partial attr-li "dimen">}}
{{< partial attr-li "inputscale">}}
{{< partial attr-li "K">}}
{{< partial attr-li "len">}}
{{< partial attr-li "maxiter">}}
{{< partial attr-li "normalize">}}
{{< partial attr-li "overlap_scaling">}}
{{< partial attr-li "pin">}}
{{< partial attr-li "pos">}}
{{< partial attr-li "sep">}}
{{< partial attr-li "start">}}
</ul>
<br/>

[^1]: [Fruchterman, T.M.J. and Reingold, E.M. (1991), Graph drawing by force-directed placement. Softw: Pract. Exper., 21: 1129-1164.](https://doi.org/10.1002/spe.4380211102)
