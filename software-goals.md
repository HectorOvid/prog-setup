## Software Qualities
 - Functionality
 - Stability
 - Maintainability (Readability)
 - Compatibility
 - Usability
 - Portability
 - Efficiency (Resource consumption)

each require work and time investment to keep at a desired minimal level during
vs. Features and Optimization


## Efficiency Optimizations

### Reasonable Optimizations

Removing waste

- Removing not used code, or parts of interfaces we acutally do not use.
- forgotten leftover debugging prints or computations
- goroutines unstopped / threads
- excessive data duplication
- algorithm with too much checks
- Clean non-redundant interfaces



(Metaphor: removing a stone from our shoe does not require any prior analysis of if and how much better we could walk without it :) )


### Deliberate Optimizations (with trade-offs)

- inline assembly
- pre-comiled code
- loop unrolling
- bit-fielding

need more data, to justify
and explicit goals why we f.e. want to reduce network bandwith with more caching memory or sth.





## Efficiency aware Developement Flow (p102)
