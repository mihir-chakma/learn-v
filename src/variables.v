name := "Mihir"
age := 25
large_number := i64(9999999999)
println(name)
println(age)
println(large_number)

// Mutable Variables
mut age1 := 20
println(age1)
age1 = 21
println(age1)

// Initialization vs assignment
/* 

    age := 21
	age = 21 

*/

// swapping values 
mut a := 0
mut b := 1
println('${a}, ${b}')
a, b = b, a
println('${a}, ${b}')
