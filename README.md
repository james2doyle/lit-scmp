Lit scmp
========

> safe, constant-time string comparison

This was modified from the node.js version at [freewil/scmp](https://github.com/freewil/scmp).

### Install

```sh
$ lit install james2doyle/scmp
```

### Usage

```lua
local scmp = require("scmp")

assert(scmp('a', 'a'))
assert(scmp('abc', 'abc'))
assert(scmp('e727d1464ae12436e899a726da5b2f11d8381b26', 'e727d1464ae12436e899a726da5b2f11d8381b26'))

-- numbers are converted to strings
assert(scmp(0192873923, 0192873923))

-- the following 2 examples will fail
assert(scmp('shouldfail', 'dontpass'), "this should fail")

assert(scmp({0192873923, "something else"}, {0192873923, "something else"}))
```
