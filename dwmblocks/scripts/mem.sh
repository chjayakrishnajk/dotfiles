free --mebi | sed -n '2{p;q}' | awk '{printf ("%2.2f%", ( $3*100 / $2), ($3 / 1024))}'
