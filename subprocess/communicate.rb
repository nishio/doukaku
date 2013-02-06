puts IO.popen('wc', 'r+'){|x| x.print('a b c'); x.close_write; x.read}
