name := 'Bob'
assert name.len == 3       // will print 3
assert name[0] == u8(66) // indexing gives a byte, u8(66) == `B`
assert name[1..3] == 'ob'  // slicing gives a string 'ob'

// escape codes
windows_newline := '\r\n'      // escape special characters like in C
assert windows_newline.len == 2

// arbitrary bytes can be directly specified using `\x##` notation where `#` is
// a hex digit aardvark_str := '\x61ardvark' assert aardvark_str == 'aardvark'
assert '\xc0'[0] == u8(0xc0)

// or using octal escape `\###` notation where `#` is an octal digit
aardvark_str2 := '\141ardvark'
assert aardvark_str2 == 'aardvark'

// Unicode can be specified directly as `\u####` where # is a hex digit
// and will be converted internally to its UTF-8 representation
star_str := '\u2605' // ★
assert star_str == '★'
assert star_str == '\xe2\x98\x85' // UTF-8 can be specified this way too.

println(star_str)

// In V, a string is a read-only array of bytes. All Unicode characters are encoded using UTF-8:
s := 'hello 🌎' // emoji takes 4 bytes
assert s.len == 10

arr := s.bytes() // convert `string` to `[]u8`
assert arr.len == 10

s2 := arr.bytestr() // convert `[]byte` to `string`
assert s2 == s

println(s)
println(arr)
println(s2)

// String values are immutable. You cannot mutate elements:
// mut s3 := 'hello 🌎'
// s3[0] = `H` // not allowed

// println(s3)

// to convert the byte to a string, use the .ascii_str() method on the byte:
country := 'Netherlands'
println(country[0]) // Output: 78
println(country[0].ascii_str()) // Output: N


// Escape handling is not done for raw strings:
s4 := r'hello\nworld' // the `\n` will be preserved as two characters
println(s4) // "hello\nworld"


// Strings can be easily converted to integers:
s5 := '42'
n := s5.int() // 42

// all int literals are supported
assert '0xc3'.int() == 195
assert '0o10'.int() == 8
assert '0b1111_0000_1010'.int() == 3850
assert '-0b1111_0000_1010'.int() == -3850

println(s5)
println(n)
