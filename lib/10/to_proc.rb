reverse_proc = Proc.new { |s| s.reverse}

p ['Ruby', 'Java', 'Perl'].map(&reverse_proc)