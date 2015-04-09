# Find a winner

- An interesting game
- Accept number of players *n* - integer
- Accept difference *d* - integer
- Assume a circle consisting of all the players
- Name the players starting from *Player-1* to *Player-n*
- Move in the circle and start eliminating every player who is at the count of *d*. This has to be continued unless only one player remains in the circle. The remaining player is the winner.

For example, For n = 10 and d = 3

Players:
*Player-1....Player-10*

The players will be elimitatned in the following order:
- Player-3 (Because this player is at 3rd position from Player-1)
- Player-6
- Player-9
- Player-2
- Player-7
- Player-1
- Player-8
- Player-5
- Player-10

                            1   2
                        10        ~~3~~
                    9                   4
                        8           5
                            7   6

                            1   2
                        10        ~~3~~
                    9                   4
                        8           5
                            7 ~~6~~

                            1   2
                        10        ~~3~~
                  ~~9~~                 4
                        8           5
                            7 ~~6~~

                            1 ~~2~~
                        10        ~~3~~
                  ~~9~~                 4
                        8           5
                            7 ~~6~~

                            1 ~~2~~
                        10        ~~3~~
                  ~~9~~                 4
                        8           5
                          ~~7~~ ~~6~~

This continues until the last player remains.

To submit your solution,
- Rename your `.rb` file to `winner-subhash.txt`
- Create a `new branch from master` with branch name as `09042015-winner-subhash.master`
- Create a pull request with title as `09042015-winner-subhash`

**Please make sure that you don't push your file to `master` branch. Following all of the steps above is mandatory.**
