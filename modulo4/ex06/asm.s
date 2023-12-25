.section .text
	.globl test_different

test_different:
	# Parameters:
	# char *a in %rdi
	# char *b in %rsi

	# Compare characters in a and b
compare_characters:
	movzbq (%rdi), %rax   # Load a character into %rax, zero-extend to 64 bits
	movzbq (%rsi), %rcx   # Load b character into %rbx, zero-extend to 64 bits
	cmp %rax, %rcx        # Compare characters
	jne strings_different  # Jump to strings_different if characters are not equal

	# Move to the next characters in a and b
	inc %rdi
	inc %rsi

	# Check if the end of strings is reached
	test %rax, %rax        # Test if the current character in a is null
	jz check_b_null        # Jump to check_b_null if a is null

	jmp compare_characters  # Continue comparing characters

check_b_null:
	test %rcx, %rcx        # Test if the current character in b is null
	jnz strings_different  # Jump to strings_different if b is not null

	# Strings are equal
	mov $0, %eax
	ret

strings_different:
	# Strings are different
	mov $1, %eax
	ret
