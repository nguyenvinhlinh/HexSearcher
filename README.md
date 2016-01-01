# HexSearcher
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
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                              Hex Searcher                                                                                                               |
+------------------+----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------------------+------------------+
|   Package Name   |                                                                 Description                                                                  | Version |                   Link                   | Download Counter |
+------------------+----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------------------+------------------+
|     blanket      |                                    Blanket covers your tables ! Don't loose your ETS tables with Elixir.                                     |  0.3.1  |     https://hex.pm/packages/blanket      |        51        |
| butler_tableflip |                                                      Butler Plugin for flipping tables.                                                      |  0.0.2  | https://hex.pm/packages/butler_tableflip |        13        |
|     coverex      | Coverex is an Elixir Coverage tool used by mix. It provides tables with overviews of module and function coverage data, includings links ... |  1.4.8  |     https://hex.pm/packages/coverex      |      13,115      |
|     ets_map      |                                       A Map-like Elixir data structure that is backed by an ETS table.                                       |  0.0.1  |     https://hex.pm/packages/ets_map      |        2         |
|    ex_bitcask    |              Elixir wrapper of Basho's Bitcask Key/Value store. Bitcask as a Log-Structured Hash Table for Fast Key/Value Data.              |  0.1.0  |    https://hex.pm/packages/ex_bitcask    |        34        |
|      table       |                                                             ascii tables for cli                                                             |  0.0.3  |      https://hex.pm/packages/table       |        14        |
|    table_rex     |                                      Generate configurable text-based tables for display (ASCII & more)                                      |  0.5.0  |    https://hex.pm/packages/table_rex     |        13        |
+------------------+----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------------------+------------------+
```
