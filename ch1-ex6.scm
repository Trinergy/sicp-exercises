To evaluate an if expression,
the interpreter starts by evaluating the <predicate> part of the expression.
If the <predicate> evaluates to a true value, the interpreter then
evaluates the <consequent> and returns its value.
Otherwise it evaluates the <alternative> and returns its value.
This only evaluates the alternative 

Conditional expressions are evaluated as follows.
The predicate <p1> is evaluated first. If its value is false, then <p2>
is evaluated. If <p2>'s value is also false, then <p3> is evaluated.
This process continues until a predicate is found whose value is true,
in which case the interpreter returns the value of the corresponding
consequent expression <e> of the clause as the value of the conditional expression.
If none of the <p>'s is found to be true, the value of the cond is undefined.
This CAN evaluate all the <p> expressions
