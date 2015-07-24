Ruby implementation of the light controller:

## DSL

```
irb -r ./client
> all_off
> all_on(RED)
> all_of
> all_on(GREEN, DOWN)
```

## NO DSL

```
irb -r ./client
> 1.upto(140) { |n| lights(target: 0, i: n, r: 255, g: 0, b: 0) }
```
