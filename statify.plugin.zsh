# This is the basic calculator function
# $ calc 2 + 1 = 3
# $ calc 2 - 1 = 1
# $ calc 5 / 2 = 2.500'
# $ calc 4 % 2 = 2
# $ calc "5 * 10" = 50 (You need the " " because * is the wildcard in UNIX )
# Essentially anything that 'bc' can do, so can you, however it must be like
# the example above, surrounded in " ", ex: $ calc "sqrt(16)" >>> 4
function bc_convert {
  echo "$@" | bc
}

# Median function
# Probably best to keep with Odd numbers
# $ median 5 7 3 4 9
# >>> 5
function median {
  echo  $@ | xargs -n1 | sort -n | sed -n $((($#+1)/2))p
}

# Mean function
function pytest {
  test=$(python -c "print 2+2")
  echo $test
}

alias calc="bc_convert"
