# Buffer Overflow 0

## Challenge

>Let's start off simple, can you overflow the right buffer in this [program](./vuln) to get the flag? You can also find it in /problems/buffer-overflow-0_0_6461b382721ccca2318b1d981d363924 on the shell server. [Source](./vuln.c).

## HINT
>How can you trigger the flag to print?

If you try to do the math by hand, maybe try and add a few more characters. Sometimes there are things you aren't expecting.

## SOLUTION

>this program takes an input without actually checking for the size of the input(gets) so if we exceed the input size for the 16, which is the expected length of `char buf` we'll have ourself an overflow.

## USE
```
./vuln aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
```
And this will give the flag as follows

>`FLAG - picoCTF{ov3rfl0ws_ar3nt_that_bad_a54b012c}`
