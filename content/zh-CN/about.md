---
title: 关于
aliases:
  # We want to redirect from /About.php. We need ".php.html" else the
  # redirect page is downloaded to ~/Downloads/ rather than shown in browser. See:
  # https://github.com/jekyll/jekyll-redirect-from/issues/145#issuecomment-392277818
  - /About.php.html
  - /News.php.html
weight: 1
type: docs
---
         
         
## 图形可视化

图形可视化是将结构信息表示为抽象图形和网络的图表的一种方式。
自动绘图在软件工程、数据库和网页设计、网络以及许多其他领域的可视化界面中有许多重要的应用。

Graphviz 是开源图形可视化软件。
它有几个主要的图形布局程序。
参阅 [Gallery](/gallery) 查看一些示例布局。
它还有网络和交互式图形界面，以及辅助工具、库和语言绑定。

The [Mac OS X edition of Graphviz](http://www.pixelglow.com/graphviz/), by
Glen Low, won two 2004 Apple Design Awards.

Graphviz 布局程序采用简单的文本语言对图形进行描述，并以多种有用的格式制作图表，例如用于网页的图像和 SVG、用于包含在 PDF 或其他文档中的 Postscript；或在交互式图形浏览器中显示。（Graphviz还支持 GXL，一种 XML 方言。）
Graphviz 为具体图表提供了许多有用的功能，例如颜色、字体、表格节点布局、线条样式、超链接和自定义形状的选项。

实际上，图表通常是从外部数据源生成的，但也可以作为原始文本文件或在图形编辑器中手动创建和编辑。
（Graphviz 并不打算成为 Visio 的替代品，因此尝试以这种方式使用它可能会令人沮丧。）

## 查看器

* **任何网络浏览器**都可以打开 Graphviz 生成的 SVG 或 PDF
* gvedit 是 Graphviz 中用 Qt 编写的简单查看器和编辑器
* **Mac OS X Graphviz.app**（即将重新发布）
* **graphviz Web 沙箱**编辑器，例如 [graphviz 可视化编辑器](http://magjac.com/graphviz-visual-editor/) 和 [Graphviz Online](https://dreampuf.github.io/GraphvizOnline/ ）
## Filters

* [**gvpr**](/docs/cli/gvpr/) 是一个通用图形流编辑器，本着 [`awk`](https://en.wikipedia.org/wiki/AWK) 的精神). ) 和 [`sed`] (https://en.wikipedia.org/wiki/Sed)（或者如果您不知道这些，请考虑 [Perl](https://www.perl.org/) ）。

## 示例应用程序

* 软件文档：自动生成的漂亮图表[doxygen](https://www.doxygen.org/) 和点。
* WWW Graph Server：有关 Graphviz 的 WWW 应用程序，请参阅 [Webdot](https://gitlab.com/graphviz/webdot)。
* [Canviz](http://code.google.com/p/canviz/)，一个 HTML5 画布 Javascript 库。


