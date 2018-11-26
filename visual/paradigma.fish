begin
  set -l symbol '
   \/\/\/\/\                  /\/\/\/\/
    \/\/\/\/\                /\/\/\/\/
     \/\/\/\/\/\/\/\/\/\    /\/\/\/\/
      \/\/\/\/\/\/\/\/\/\  /\/\/\/\/
                          /\/\/
               /\        /\/\/
              /\/\      /\/\/
              \/\/\    /\/\/
               \/\/\  /\/\/
                \/\/\
                 \/\/\
                  \/\/\
                  /\/\/\
                 /\/\/\/\
                 \/\/\/\/
                  \/\/\/
                   \/\/
                    \/

            P A R A D I G M A
               hackerspace'
  set -l terminal_center (math $COLUMNS / 2)
  set -l symbol_width (math (string length (echo -e "$symbol"\n | sed -n 2p)) / 2)
  set -l padding (string repeat -Nn (math $terminal_center - $symbol_width) ' ')

  echo "$symbol" | while read -l line
    echo -n "$padding"
    for char in (string split '' "$line")
      echo -n "$char"
      string match -q "$char" ' '; or sleep 0.005
    end
    echo -n \n
  end
end
