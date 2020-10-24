## Context free grammar for QUAT

* Legend
  * S is the startup string
  * E is the converted expression
  * N is the real number
  * Q is the quatern

S &#8594; E 

S &#8594; ε 

E &#8594; Q

E &#8594; E '+' E

E &#8594; '(' E ')'
E &#8594; E '/' E

E &#8594; E '*' E

E &#8594; E '-' E

E &#8594; ROTATION(N,Q)

E &#8594; N 'i'

E &#8594; N 'j'

E &#8594; N 'k'

E &#8594;'-' N 

E &#8594; N

E &#8594; '-' 'i'

E &#8594; '-' 'j'

E &#8594; '-' 'k'

N &#8594; NUMBER
