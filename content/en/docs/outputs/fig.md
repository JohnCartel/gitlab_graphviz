---
title: FIG
description: Xfig
format:
- fig
---
Outputs graphs in the [FIG graphics language](https://en.wikipedia.org/wiki/Xfig).


{{< card code=true header="Example outputs of a simple graph with two nodes connected with an edge:">}}
$ echo 'digraph { a->b }' | dot -Tfig
#FIG 3.2
# Generated by graphviz version 2.47.1 (20210417.1919)
# Title: %3
# Pages: 1
Portrait
Center
Inches
Letter
100.00
Single
-2
1200 2
0 32 #d3d3d3
0 33 #fffffe
2 3 0 1 33 7 2 0 20 0.0 0 0 0 0 0 5
 0 2320 0 0 1240 0 1240 2320 0 2320
# a
1 1 0 1 0 7 1 0 -1 0.000 0 0.0000 620 440 540 -360 620 440 1160 80
4 1 0 1 0 0 14.0 0.0000 6 14.0 4.7 620 498 a\001
# b
1 1 0 1 0 7 1 0 -1 0.000 0 0.0000 620 1880 540 -360 620 1880 1160 1520
4 1 0 1 0 0 14.0 0.0000 6 14.0 4.7 620 1938 b\001
# a->b
3 4 0 1 0 0 0 0 -1 0.0 0 0 0 7
  620 806 620 886 620 969 620 1055 620 1143 620 1231 620 1318
 0 1 1 1 1 1 0
2 3 0 1 0 0 0 0 20 0.0 0 0 0 0 0 4
 690 1318 620 1518 550 1318 690 1318
# end of FIG file
{{</ card >}}
