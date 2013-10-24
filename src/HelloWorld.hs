{-

We're going to begin with a simple introduction to Haskell syntax,
and introduce some basics of FP Haskell Center, the IDE you're using.

The first bit of syntax you've probably noticed is multiline comments.
Unlike most C-style languages, however, Haskell allows multiline comments
to nest. So I can {- add more comments -} inside my comment.

Haskell also supports single line comments, which are indicated by
using double dashes. We'll see some of those below.

OK, onto some real code. Let's introduce our new module, called HelloWorld.

-}
module HelloWorld where

-- Now, let's define a value.
phrase = "Hello World"

{-

Go ahead and click on the world phrase. In the messages window below,
FP Haskell Center will tell you the type of phrase:

    phrase :: [Char]

In Haskell, the double colons mean "is of type". Like most language,
Char represents a single character. In Haskell, all type names start
with a capital letter; we'll see why this is convenient a bit later.
By wrapping Char in square brackets, we're saying "a list of." A list
of characters is also known as a String. Let's try being more explicit
about that:

-}

phrase2 :: String
phrase2 = "Hello World"

{-

In Haskell, we can put explicit type signatures to make it clear what
type we expect a value to have. This can be useful as a documentation
technique for other developers, or as a debugging technique to be more
explicit to the compiler about your intentions. However, due to type
inference, such signatures are optional.

Let's finish off this example correctly, and actually implement Hello World.
We need to write a main function. We'll use the putStrLn function, which means
"put out a string plus a new line."

-}

main = putStrLn "Hello World"

{-

Notice that the syntax for declaring our function is the same as for declaring
a value above. That's not a mistake. In functional programming, functions *are*
values. In other words, functions are first class citizens of the language.
Combined with closures, this introduces whole new approaches to writing code.
But we'll have to save that for later.

For now, let's go ahead and run this example. To do so, find the target module
drop-down menu in the top menubar (to the right of the "play" triangle). Select
the HelloWorld module and then click play. If everything goes as expected,
the bottom bar will switch to the "Console" tab and say "Hello World".

* * *

Exercises:

1. Rewrite the main function to use the phrase value instead of including the
   "Hello World" string literal.

2. Ask FP Haskell Center to tell you the type of the main function by clicking
   on the word main, and then add an explicit type signature. Don't worry if
   that signature is confusing right now, we'll explain it in an upcoming lesson.

3. Find the Git menu on the top bar, click on it, and then click Reset to undo
   your changes and reset the lesson to its original contents.

Congratulations, you've completed lesson 1. To continue with the tutorial, please
open the next module, FIXME.

-}