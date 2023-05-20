# Naming

If you are having trouble naming something,
it probably means something needs to be restructured.

In general try to tell your **intention** with the thing you are naming,
NOT just telling what it is.
Small (maybe a bit silly) example:
Instead of "void compute() { ... val integer: Int = _ ... }"
use "void compute() { ... val average: Int = _ ... }" if you want to compute the average :)

## Don't abbreviate names
Never abbreviate, since this always needs context.
Somembody else reading your code might not have this context, even you might
have forgotten the context in a couple of months.

**Remember we always spend more time reading code, than writing code!**

The days where we had tiny screens are over :)
No need to have false economy.

### Single letter variables
Single letter variables should only be used
if you intentionally want to say that this variable is not important,
like only in a very small scope, temporary, closure argument or only an index.
** Single letter variable => SHORT lived only. **
Can be good if the same thing is used a couple of times, in the same line, too.


## Don't put types in variable names
That is why we use typed languages.



## Add units to names of variables unless the type tells you 
- "void execute(int delaySeconds)" 
- or even BETTER use a type instead: "void execute(TimeSpan delay) { ... delay.seconds ... }"



## Avoid types in your names (for typed things)
Like IX for interface X, AbstractX, BaseX

### Prefix Letters to show type (type inside name)
Does IInterface prefix I really make the code clearer?
A user most likely just cares for what methods he can call,
and it should make no difference for the user if he uses an interface,
an abstract class or even a class.

What happens if you want to change an interface to an abstract class? => much work.

### However
Bad code style is always better than no code style.
Having conventions can make it easier to identify that you actually only creating code
that uses interfaces only from for example a dependency. So there can be some merit to it.
Ok and when having an interface IRobot you can have a default implementation Robot : IRobot.

## Refactor inseatd of generic Utils collection
Don't name code Utils and put all methods into it you think do not belong nowhere else.

Better move "helper" functions towards their types, aka. the types they are using.
Or create a separate class for a method but then use a name that really describes what is happening.
  (For example when having a static function that changes string encoding, move it from your StringUtils into
  its own Encoder class)

## Try finding a verb for function names
Functions are the best way of documenting what happens in your code.
Henc,e refactor out small code blocks and try telling what your intention with it is.

# Nesting

"If you need more than 3 levels of inentation, you are screwed anyway and should fix your program" - Linus Torvald
=> extract methods or invert returns (ealry return error cases)
