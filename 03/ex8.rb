#!/usr/bin/env ruby
require 'open-uri'


$dl_url = "https://web.sfc.keio.ac.jp/~t16440ss/words"


def downloadFromCNS()
    fname = File.basename($dl_url)

    open(fname, 'wb') { |output|
        open($dl_url) { |data|
            output.write(data.read)
        }
    }
end


unless FileTest.exist?('./words') then
    downloadFromCNS()
end



words = []

open("./words") { |f|
    f.each_line { |line|
        words[f.lineno - 1] = line
    }
}


puts words.max_by { |line|
    line.size
}
