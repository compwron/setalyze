[![Twitter: @compiledwrong](https://img.shields.io/badge/contact-@compiledwrong-blue.svg?style=flat)](https://twitter.com/compiledwrong)
[![Code Climate](https://codeclimate.com/github/compwron/setalyze/badges/gpa.svg)](https://codeclimate.com/github/compwron/setalyze)
[![Test Coverage](https://codeclimate.com/github/compwron/setalyze/badges/coverage.svg)](https://codeclimate.com/github/compwron/setalyze)
[![Build Status](https://travis-ci.org/compwron/setalyze.svg)](https://travis-ci.org/compwron/setalyze)
[![Dependency Status](https://gemnasium.com/compwron/setalyze.png)](https://gemnasium.com/compwron/setalyze)



Status:
====
In pieces

Goal:
====

* Rewrite Set with a simpler design this time

Disclaimers:
====

* My commit style on this project is very fragmented because I steal ten minutes here and there (at lunch, on a plane, in the morning before work) to write a test and make it pass (or not) ... on a production / team project, I would break fewer things and make more cohesive (and better-described) commits. 

Ideas / Inspiration:
====

* http://www.setgame.com/set/daily_puzzle
* http://smart-games.org/en/set/start/
* http://multiplayerset.com/
* http://tao-game.dimension17.com/
* http://www.math.rutgers.edu/~maclagan/papers/set.pdf


Play:
====
```
 ./bin/play                                                                                                                                     
Turn: 1
 Spread: 
2SStP 2DSoG 3OSoG 1SOpR
3DSoR 1OOpR 3SStR 1OStG
1SSoR 1DStG 2DSoP 1OStP
Your guess: 
3OSoG 1SSoR 2DSoP
1 turns played, 1 correct sets
Turn: 2
 Spread: 
2SStP 2DSoG 3OSoG 1SOpR
3DSoR 1OOpR 3SStR 1OStG
1SSoR 1DStG 2DSoP 1OStP
Your guess: 
done
```

To cheat:
```
 ./bin/solve "2SStP 2DSoG 3OSoG 1SOpR 
3DSoR 1OOpR 3SStR 1OStG               
1SSoR 1DStG 2DSoP 1OStP"              

3OSoG 1SSoR 2DSoP                      
```


Development:
====
```
rubocop -a
rspec
```