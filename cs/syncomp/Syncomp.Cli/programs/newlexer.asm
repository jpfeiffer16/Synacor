jmp >var_test_newlexer_2_end
:var_test_newlexer_2
:var_test_newlexer_2_end
jmp >function__newlexer_2_end
:function__newlexer_2
jmp >var_i_newlexer_2_end
:var_i_newlexer_2
:var_i_newlexer_2_end
wmem >var_i_newlexer_2 reg0
jmp >var__newlexer_4_end
:var__newlexer_4
0
:var__newlexer_4_end
wmem >var__newlexer_4 32
set reg0 >var__newlexer_4
ret
ret
:function__newlexer_2_end
set reg0 >function__newlexer_2
wmem >var_test_newlexer_2 reg0
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

