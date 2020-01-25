


def to_hex(r, g, b)
    [r, g, b].inject('#')do | hex, n |
    hex += n.to_s(16).rjust(2, '0')
    end
end

<<<<<<< HEAD

#リファクタリングする。要はコードの簡略化。

def to_ints(hex)
    hex.scan(/\w\w/).map(&:hex)
end

#コードを書いたら満足せずにどこかリファクタリングできないか研究することを心がける

=======
>>>>>>> master
