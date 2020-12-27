.TL
Groff & Troff
.AU
Minhaj Uddin Ahmad

.NH
This article will have basic syntax of groff
.PP
This one right here is how you start a PP paragraph.

.NH 2
This one is like a level two heading.

.SH
Sub headings don't have numbers associated.
.LP
This one right here is how you start a LP paragraph.
This one right here is how you start a paragraph.
This one right here is how you start a paragraph.

.QS
This portion here is quoted. maybe helpful to have when you have something to
hightlight from the rest of the text, like a centered block or something.
.QE

.IP \[bu]
IP is used to make a list, I can have multiple type of bullets
.IP -
By using different options or escape code or sthn
.IP - 3
The number three i have in the source determines  the level of indentation.
.RS
This line (or block or paragraph or whatever) is extra indented due to the use of RS RE
This line (or block or paragraph or whatever) is extra indented due to the use of RS RE
This line (or block or paragraph or whatever) is extra indented due to the use of RS RE
.RE
.PP
This is one pp paragraph.
.LP
This is LP AFTER THAT
NOW I WILL START 'in'

.in 0
.in 3
in is another way of start indentation. it will continue until you reset it with another in or something.
one thing in am  noticing is, it starts indentation from the previous level.
this one is without any micro. we don't need that if we are going to use MS macros.
.in 0

.bp

.NH 2
We are going to work with fonts here.
.LP
In this line \f[I]Italics\f[] I takes it to italics and empty brackets for normal.

we can also do this \fIitalics\fP without brackets and with P for previous.

Here we do \f[B]b for BOLD\f[]

We do codeblocks with \f[CW]constant width\f[] like this.

.LP

now we will do a basic groff request again.
.ft B
this is a base groff way of doing bold
.ft P

going back to normal

.B "this  bold here is  the MS  macro way of doing it"

.\" This line commented out.

.B1
Start of a box. Minhaj in the box.
.B2

.BX "Basically same thing using BX"
.UL "Underlined"

this is \*{superscript\*}
