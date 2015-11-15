local scmp = require("./init")

assert(scmp('a', 'a'))
assert(scmp('abc', 'abc'))
assert(scmp('e727d1464ae12436e899a726da5b2f11d8381b26', 'e727d1464ae12436e899a726da5b2f11d8381b26'))

-- numbers are converted to strings
assert(scmp(0192873923, 0192873923))

-- failing tests
assert(scmp('shouldfail', 'dontpass'), "this should fail")

assert(scmp({0192873923, "something else"}, {0192873923, "something else"}))