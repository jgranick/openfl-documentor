OpenFL Documentation Generator
===========================

This tool can be used to fetch the open-source Apache Flex SDK documentation and apply it to the OpenFL source code, as a starting point for a full-fledged OpenFL documentation.

How to make it work
-------------------

- Build it with `haxe -cp src -neko openfldocumentor.n -main Main`
- Run it with `neko openfldocumentor.n` with the following arguments:
 - `-in <path to the 'openfl' folder in OpenFL source>`
 - `-out <path to the output folder>`
 - `-verbose` (optional)
 - `-proxy <host>:<port>` (optional, no proxy by default)
 - `-locale <locale>` (optional, default `en_US`, also supported `de_DE`, `fr_FR`, `ja_JP`, `ru_RU` and `zh_CN`)

What it does
------------

- Fetches the full Flex SDK documentation from the Flex SDK SVN;
- Parse that documentation and extract meaningful data;
- Goes through the whole `openfl` package in the OpenFL source code, and apply the documentation to a copy of that directory.

What it don't
-------------

- It doesn't remove any existing OpenFL documentation, which can lead to some stuff being documented twice (but as of now, it seems that only a couple of classes are already documented).
- It doesn't update the text content to speak about OpenFL where Flash or AIR is mentioned.
- It doesn't handle images and tables. Instead, those are removed.
- It doesn't document what isn't documented in the Flex SDK.

Why?
----

This tool helps starting a whole OpenFL documentation by using the fact that the OpenFL API mirrors the Flash API. It would be best used only once, and then proofread and merged in OpenFL itself, but it can also be used locally.
