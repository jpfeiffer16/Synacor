set reg0 0
wmem 100 reg0
:begin_while_34
rmem reg0 100
set reg1 10
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_while_34
rmem reg0 100
set reg1 48
add reg0 reg0 reg1
out reg0
rmem reg0 100
set reg1 1
add reg0 reg0 reg1
wmem 100 reg0
jmp >begin_while_34
:end_while_34
:not
jf reg0 >isfalse
:istrue
set reg0 0
ret
:isfalse
set reg0 1
ret
:subtract
add reg0 reg0 32767
add reg1 reg1 32767
jt reg1 >subtract
ret