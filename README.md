# HexSearcher
Version: 1.0.0  **The library has been deprecated**  
A terminal program to search for Elixir package from **hex.pm**  


## Installing
Fetch project dependency

```bash
$ mix deps.get
```

Build the executable file, it will build an executable file named **hex_searcher**

```bash
$ mix escript.build
```

## Usage
```bash
$ ./hex_searcher keyword
$ ./hex_searcher keyword page_number
```

## Examples

```bash
$ ./hex_searcher trot
```

```
+----------------------------------------------------------------------------------------------------------------------------+
|                                                        Hex Searcher                                                        |
+--------------+-------------------------------------------------+---------+------------------------------+------------------+
| Package Name |                   Description                   | Version |             Link             | Download Counter |
+--------------+-------------------------------------------------+---------+------------------------------+------------------+
|     trot     | A web micro-framework based on Plug and Cowboy. |  0.5.3  | https://hex.pm/packages/trot |        83        |
+--------------+-------------------------------------------------+---------+------------------------------+------------------+
```

```bash
$ ./hex_searcher table
```

```
+-----------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                 Hex Searcher                                                                  |
+------------------+----------------------------------------------------+---------+------------------------------------------+------------------+
|   Package Name   |                    Description                     | Version |                   Link                   | Download Counter |
+------------------+----------------------------------------------------+---------+------------------------------------------+------------------+
|     blanket      | Blanket covers your tables ! Don't loose your ETS  |  0.3.1  |     https://hex.pm/packages/blanket      |        51        |
|                  |                tables with Elixir.                 |         |                                          |                  |
|                  |                                                    |         |                                          |                  |
| butler_tableflip |         Butler Plugin for flipping tables.         |  0.0.2  | https://hex.pm/packages/butler_tableflip |        13        |
|                  |                                                    |         |                                          |                  |
|     coverex      | Coverex is an Elixir Coverage tool used by mix. It |  1.4.8  |     https://hex.pm/packages/coverex      |      13,493      |
|                  |    provides tables with overviews of module and    |         |                                          |                  |
|                  |    function coverage data, includings links ...    |         |                                          |                  |
|                  |                                                    |         |                                          |                  |
|     ets_map      | A Map-like Elixir data structure that is backed by |  0.0.1  |     https://hex.pm/packages/ets_map      |        2         |
|                  |                   an ETS table.                    |         |                                          |                  |
|                  |                                                    |         |                                          |                  |
|    ex_bitcask    | Elixir wrapper of Basho's Bitcask Key/Value store. |  0.1.0  |    https://hex.pm/packages/ex_bitcask    |        34        |
|                  |  Bitcask as a Log-Structured Hash Table for Fast   |         |                                          |                  |
|                  |                  Key/Value Data.                   |         |                                          |                  |
|                  |                                                    |         |                                          |                  |
|      table       |                ascii tables for cli                |  0.0.4  |      https://hex.pm/packages/table       |        15        |
|                  |                                                    |         |                                          |                  |
|    table_rex     |    Generate configurable text-based tables for     |  0.5.0  |    https://hex.pm/packages/table_rex     |        18        |
|                  |               display (ASCII & more)               |         |                                          |                  |
|                  |                                                    |         |                                          |                  |
+------------------+----------------------------------------------------+---------+------------------------------------------+------------------+
```

```bash
$ ./hex_searcher eli
```

```
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                        Hex Searcher                                                                         |
+-------------------------+----------------------------------------------------+---------+-------------------------------------------------+------------------+
|      Package Name       |                    Description                     | Version |                      Link                       | Download Counter |
+-------------------------+----------------------------------------------------+---------+-------------------------------------------------+------------------+
|      dotenv_elixir      |             A port of dotenv to Elixir             |  0.0.2  |      https://hex.pm/packages/dotenv_elixir      |        10        |
|                         |                                                    |         |                                                 |                  |
|        edeliver         |  Build and Deploy Elixir Applications and perform  |  1.1.1  |        https://hex.pm/packages/edeliver         |      2,226       |
|                         |      Hot-Code Upgrades and Schema Migrations       |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|        elistrix         |    A latency / fault tolerance library to help     |  0.0.5  |        https://hex.pm/packages/elistrix         |        59        |
|                         | isolate your applications from an uncertain world  |         |                                                 |                  |
|                         |            of slow or failed services.             |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|       elixilorem        |         A Lorem Ipsum generator for Elixir         |  0.0.1  |       https://hex.pm/packages/elixilorem        |       559        |
|                         |                                                    |         |                                                 |                  |
|       elixir_ale        |  Elixir access to hardware I/O interfaces such as  |  0.4.1  |       https://hex.pm/packages/elixir_ale        |      1,249       |
|                         |                GPIO, I2C, and SPI.                 |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|       elixir_ami        | Elixir client for the Asterisk AMI protocol. Find  |  0.0.3  |       https://hex.pm/packages/elixir_ami        |        27        |
|                         |       the user guide in the github repo at:        |         |                                                 |                  |
|                         |      https://github.com/marcelog/elixir_ami.       |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|   elixir_authorizenet   | Elixir client for the Authorize.Net merchant API.  |  0.2.1  |   https://hex.pm/packages/elixir_authorizenet   |        96        |
|                         |  This should help you integrate using the AIM. A   |         |                                                 |                  |
|                         |     nice number of features are implemente...      |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|     elixir_bencode      |        Bencode encoder / decoder in Elixir.        |  1.0.0  |     https://hex.pm/packages/elixir_bencode      |        80        |
|                         |                                                    |         |                                                 |                  |
|     elixir_drawille     |    Drawings using terminal braille characters.     |  0.0.3  |     https://hex.pm/packages/elixir_drawille     |        6         |
|                         |                                                    |         |                                                 |                  |
|       elixir_exif       |    Parse exif and thumbnail data from jpeg/tiff    |  0.1.0  |       https://hex.pm/packages/elixir_exif       |        15        |
|                         |                      images.                       |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|   elixir_feed_parser    |          An Elixir Atom/RSS2 feed parser.          |  0.9.0  |   https://hex.pm/packages/elixir_feed_parser    |        19        |
|                         |                                                    |         |                                                 |                  |
|    elixir_freshbooks    |           Elixir client for FreshBooks.            |  0.0.2  |    https://hex.pm/packages/elixir_freshbooks    |        21        |
|                         |                                                    |         |                                                 |                  |
|     elixir_ipfs_api     |     An elixir client library for the IPFS API      |  0.1.0  |     https://hex.pm/packages/elixir_ipfs_api     |        3         |
|                         |                                                    |         |                                                 |                  |
|      elixir_locker      |   Elixir wrapper for the locker Erlang library.    |  0.1.4  |      https://hex.pm/packages/elixir_locker      |        23        |
|                         |                                                    |         |                                                 |                  |
|       elixir_mbcs       |           Convert the character encoding           |  0.1.2  |       https://hex.pm/packages/elixir_mbcs       |        63        |
|                         |                                                    |         |                                                 |                  |
|    elixir_mod_event     |   Elixir client for FreeSWITCH mod_event_socket.   |  0.0.5  |    https://hex.pm/packages/elixir_mod_event     |       307        |
|                         |     Find the user guide in the github repo at:     |         |                                                 |                  |
|                         |   https://github.com/marcelog/elixir_mod_event.    |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|      elixir_radius      |           Decode & encode RADIUS packets           |  0.1.0  |      https://hex.pm/packages/elixir_radius      |        10        |
|                         |                                                    |         |                                                 |                  |
|      elixir_script      |  ElixirScript: compiles Elixir code to JavaScript  | 0.14.1  |      https://hex.pm/packages/elixir_script      |        67        |
|                         |                                                    |         |                                                 |                  |
|       elixir_talk       |   ElixirTalk is an Elixir client for beanstalkd.   |  1.0.1  |       https://hex.pm/packages/elixir_talk       |        21        |
|                         |                                                    |         |                                                 |                  |
|       elixir_tea        |  A TEA (Tiny Encryption Algorithm) implemented in  |  1.0.0  |       https://hex.pm/packages/elixir_tea        |        15        |
|                         |                    pure Elixir.                    |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|         elixlsx         |        a writer for XLSX spreadsheet files         |  0.0.1  |         https://hex.pm/packages/elixlsx         |        25        |
|                         |                                                    |         |                                                 |                  |
|       elixtagram        |        Instagram client library for Elixir.        |  0.2.5  |       https://hex.pm/packages/elixtagram        |       176        |
|                         |                                                    |         |                                                 |                  |
|   factory_girl_elixir   |  Minimal implementation of Ruby's factory_girl in  |  0.1.1  |   https://hex.pm/packages/factory_girl_elixir   |      1,519       |
|                         |                      Elixir.                       |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|      figaro_elixir      | Environmental variables manager and configuration  |  1.0.0  |      https://hex.pm/packages/figaro_elixir      |       499        |
|                         |                  management tool.                  |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|         ielixir         |                      IElixir                       |  0.9.0  |         https://hex.pm/packages/ielixir         |        5         |
|                         |                                                    |         |                                                 |                  |
|     intellij_elixir     |    IntellijElixir allows intellij-elixir to ask    |  0.1.2  |     https://hex.pm/packages/intellij_elixir     |        10        |
|                         | Elixir for the native quoted form of code to check |         |                                                 |                  |
|                         |    that intellij-elixir's quoted form matches.     |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|         obelisk         | obelisk is a static site generator for Elixir. It  | 0.10.0  |         https://hex.pm/packages/obelisk         |       416        |
|                         | is inspired by jekyll, with the goal of being fast |         |                                                 |                  |
|                         |           and simple to use and extend.            |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
| parabaikElixirConverter |  ParabaikElixirConverter is just a Elixir version  |  0.0.1  | https://hex.pm/packages/parabaikElixirConverter |        11        |
|                         | of Parabaik converter. It can convert from Unicode |         |                                                 |                  |
|                         |      to Zawgyi-One and Zawgyi-One to Unico...      |         |                                                 |                  |
|                         |                                                    |         |                                                 |                  |
|        parselix         |            A Parser Combinator Library             |  0.1.0  |        https://hex.pm/packages/parselix         |        7         |
|                         |                                                    |         |                                                 |                  |
|       pin_elixir        |       A library to wrap the Pin Payments API       |  0.0.1  |       https://hex.pm/packages/pin_elixir        |        7         |
|                         |                                                    |         |                                                 |                  |
+-------------------------+----------------------------------------------------+---------+-------------------------------------------------+------------------+
```


```bash
$ ./hex_searcher eli 2
```

```
+------------------------------------------------------------------------------------------------------------------------------------------+
|                                                               Hex Searcher                                                               |
+-----------------+-------------------------------------------------+---------+-----------------------------------------+------------------+
|  Package Name   |                   Description                   | Version |                  Link                   | Download Counter |
+-----------------+-------------------------------------------------+---------+-----------------------------------------+------------------+
|  rabbitElixir   |      Another Zawgyi <=> Unicode Converter       |  1.0.1  |  https://hex.pm/packages/rabbitElixir   |        23        |
|                 |                                                 |         |                                         |                  |
|     relief      |  A collection of Elixir Stream oriented relief  |  0.0.1  |     https://hex.pm/packages/relief      |        2         |
|                 |                   mechanisms.                   |         |                                         |                  |
|                 |                                                 |         |                                         |                  |
|     relisa      | Fast, simple, and composable deployment library |  0.1.0  |     https://hex.pm/packages/relisa      |       179        |
|                 |                   for Elixir.                   |         |                                         |                  |
|                 |                                                 |         |                                         |                  |
|   sass_elixir   |        A SASS plugin for elixir projects        |  0.0.1  |   https://hex.pm/packages/sass_elixir   |       205        |
|                 |                                                 |         |                                         |                  |
|   ssdb_elixir   |             SSDB client for Elixir              |  0.2.2  |   https://hex.pm/packages/ssdb_elixir   |        73        |
|                 |                                                 |         |                                         |                  |
| traitify_elixir |  An Elixir client library for the Traitify API  |  0.1.1  | https://hex.pm/packages/traitify_elixir |        24        |
|                 |                                                 |         |                                         |                  |
|   yaml_elixir   |  Yaml parser for Elixir based on native Erlang  |  1.0.0  |   https://hex.pm/packages/yaml_elixir   |       675        |
|                 |                 implementation.                 |         |                                         |                  |
|                 |                                                 |         |                                         |                  |
+-----------------+-------------------------------------------------+---------+-----------------------------------------+------------------+
```


