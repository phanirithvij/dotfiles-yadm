function fb
  buku -o (buku -p -f 5 \
          | column -ts \t \
          | fzfalias buku-open -m \
          | cut -d' ' -f1 \
          | string split \n)
end
