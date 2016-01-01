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

## Example

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


