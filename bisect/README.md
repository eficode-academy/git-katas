# Bisect

Its broken again, I hate when this happens. If it wasn't for that this happens all the time I would just fix it and let it slide. But this seams like a team problem.

I would like to know what commit introduced the test failure. But it seams that its to hard to figure out by hand, the test is complicated and there are so many commits to go through and no one changed the test script.

Let's try to use `git bisect` to find what commit broke the build.

Luckely I added a tag `initial-commit` when the project started which we can use to start searching for the bug.

To get help on how to use bisect I can always run `git bisect --help`.

To run the tests I can execute the test script:
```
$ ./test.sh
```


# Verify

When I'm done I may test the solution with the verify script

```
$ cd ..
$ ./verify.sh
```

# If I get stuck

I found this manual that I can use if I get stuck:


```
$ git bisect start
$ git bisect bad
$ git bisect good initial-commit
$ git bisect run './test.sh'
```
