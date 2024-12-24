---
title: VSCode
parent: Software and Computation
nav_order: 5
---

# Visual Studio Code

Visual Studio Code (also VSCode) is a widely used *Integrated Development Environment* (IDE), like RStudio, but better. It allows you to write and run code using different languages and frameworks. It is a very flexible tool used by many developers, but that also means that it has a lot of bells and whistles. We would recommend you to learn the basics and then jump to VSCode. 

## Extensions
One of the most powerful elements of VSCode is their vast ecosystem of
extensions. Each extension allow the VSCode user to use different languages,
but also to add new functionalities, such as syntax highlighting and syntax
correction *on-the-fly*. We recommend some extensions for this class: 

 - [Python][2]
 - [R][3] (this is a way better alternative than RStudio or anything made by Posit)
 - [Ruff][4] 

## Github Copilot

VSCode makes the use of large language models fine-tuned for coding tasks
fairly easy. Copilot does direct inference on your codebase and includes your
code into context to make suggestions. This tool is very powerful, but also can
be dangerous if you're a beginner programmer as not often the recommendations
Copilot does will yield the results you expect and is hard to debug the
suggestions without good background knowledge. You can install the [Copilot
extension][5], but be aware of the limitations of LLMs and of your own learning
path. 

If you use Copilot, we recommend to always prompt the model asking with an
explanation of its reasoning (also called chain of thought), and ask for
simpler alternatives. 

[1]: https://code.visualstudio.com/Download
[2]: https://code.visualstudio.com/docs/languages/python
[3]: https://code.visualstudio.com/docs/languages/r
[4]: https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff
[5]: https://code.visualstudio.com/docs/copilot/overview
