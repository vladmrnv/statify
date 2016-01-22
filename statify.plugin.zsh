function bc_convert {
  echo "$@" | bc -l
}
alias calc="bc_convert" 
