jmp >var_t_newlexer_15_end
:var_t_newlexer_15
:fld_t_newlexer_15_id
:var_t_newlexer_15_end
set reg0 123
wmem >fld_t_newlexer_15_id reg0
rmem reg0 >fld_t_newlexer_15_id
set reg1 123
eq reg0 reg0 reg1
jf reg0 >end__newlexer_18
set reg0 10
out reg0
set reg0 10
out reg0
set reg0 10
out reg0
:end__newlexer_18
halt

:subtract
add reg0 reg0 32767
add reg1 reg1 32767
jt reg1 >subtract
ret


:not
jf reg0 >not_isfalse
:not_istrue
set reg0 0
ret
:not_isfalse
set reg0 1
ret


:divide
set reg3 0
set reg2 reg1
:divide_loop
set reg1 reg2
gt reg4 reg0 reg1
eq reg5 reg0 reg1
or reg4 reg4 reg5
jf reg4 >divide_loop_end
call >subtract
add reg3 reg3 1
call >divide_loop
:divide_loop_end
set reg0 reg3
ret


:and
jf reg0 >and_isfalse
jf reg1 >and_isfalse
:and_istrue
set reg0 1
ret
:and_isfalse
set reg0 0
ret


:or
jt reg0 >or_istrue
jt reg1 >or_istrue
:or_isfalse
set reg0 0
ret
:or_istrue
set reg0 1
ret

