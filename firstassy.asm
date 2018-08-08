// This is the program from page 65 of the book, documented
// Set sights to i. The next command controls what happens there.
@i
// Set the value at i to be 1.
M = 1
// Set sights to sum. The next command controls what happens there.
@sum
// Set the value at sum to be 0.
M = 0
// Begin a loop.
(LOOP)
	// Set sights to i.
	@i
	// Let D be whatever is currently in i.
	D=M
	// Set the A instruction's value to 100.
	@100
	// Whatever D is, subtract 100 from it.
	// Remember that we last set D to be equal
	// to whatever i was at the beginning of the loop.
	D=D-A
	// End the actions of the A register.
	@END
	// If (i-100) > 0, go to the end of the loop.
	D;JGT
	// These last lines have set up the equivalence
	// in C of ( i=1, i<=100, not i++ )
	// Now, sights back to i.
	@i
	// D = i.
	D=M
	// Sights to sum.
	@sum
	// Whatever sum was before, add i to it.
	M=D+M
	// Now let's change back to i and increment it.
	@i
	M=M+1
	@LOOP
	// Let's go back to the beginning of the loop.
	// This will only happen if we haven't added up the
	// first 100 numbers.
	0;JMP
(END)
	@END
	0;JMP
