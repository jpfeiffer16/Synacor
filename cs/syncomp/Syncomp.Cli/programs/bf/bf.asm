jmp >var_symbol_plus_symbols_1_end
:var_symbol_plus_symbols_1
:var_symbol_plus_symbols_1_end
jmp >var__symbols_1_end
:var__symbols_1
0
:var__symbols_1_end
wmem >var__symbols_1 &+
set reg0 >var__symbols_1
rmem reg0 reg0
wmem >var_symbol_plus_symbols_1 reg0
jmp >var_symbol_minus_symbols_2_end
:var_symbol_minus_symbols_2
:var_symbol_minus_symbols_2_end
jmp >var__symbols_2_end
:var__symbols_2
0
:var__symbols_2_end
wmem >var__symbols_2 &-
set reg0 >var__symbols_2
rmem reg0 reg0
wmem >var_symbol_minus_symbols_2 reg0
jmp >var_symbol_left_bracket_symbols_3_end
:var_symbol_left_bracket_symbols_3
:var_symbol_left_bracket_symbols_3_end
jmp >var__symbols_3_end
:var__symbols_3
0
:var__symbols_3_end
wmem >var__symbols_3 &[
set reg0 >var__symbols_3
rmem reg0 reg0
wmem >var_symbol_left_bracket_symbols_3 reg0
jmp >var_symbol_right_bracket_symbols_4_end
:var_symbol_right_bracket_symbols_4
:var_symbol_right_bracket_symbols_4_end
jmp >var__symbols_4_end
:var__symbols_4
0
:var__symbols_4_end
wmem >var__symbols_4 &]
set reg0 >var__symbols_4
rmem reg0 reg0
wmem >var_symbol_right_bracket_symbols_4 reg0
jmp >var_symbol_less_than_symbols_5_end
:var_symbol_less_than_symbols_5
:var_symbol_less_than_symbols_5_end
jmp >var__symbols_5_end
:var__symbols_5
0
:var__symbols_5_end
wmem >var__symbols_5 &<
set reg0 >var__symbols_5
rmem reg0 reg0
wmem >var_symbol_less_than_symbols_5 reg0
jmp >var_symbol_greater_than_symbols_6_end
:var_symbol_greater_than_symbols_6
:var_symbol_greater_than_symbols_6_end
jmp >var__symbols_6_end
:var__symbols_6
0
:var__symbols_6_end
wmem >var__symbols_6 &>
set reg0 >var__symbols_6
rmem reg0 reg0
wmem >var_symbol_greater_than_symbols_6 reg0
jmp >var_symbol_input_symbols_7_end
:var_symbol_input_symbols_7
:var_symbol_input_symbols_7_end
jmp >var__symbols_7_end
:var__symbols_7
0
:var__symbols_7_end
wmem >var__symbols_7 &,
set reg0 >var__symbols_7
rmem reg0 reg0
wmem >var_symbol_input_symbols_7 reg0
jmp >var_symbol_output_symbols_8_end
:var_symbol_output_symbols_8
:var_symbol_output_symbols_8_end
jmp >var__symbols_8_end
:var__symbols_8
0
:var__symbols_8_end
wmem >var__symbols_8 &.
set reg0 >var__symbols_8
rmem reg0 reg0
wmem >var_symbol_output_symbols_8 reg0
jmp >str_len_end
:str_len
jmp >var_str_stdlib_1_end
:var_str_stdlib_1
:var_str_stdlib_1_end
wmem >var_str_stdlib_1 reg0
jmp >var_str_ptr_stdlib_2_end
:var_str_ptr_stdlib_2
:var_str_ptr_stdlib_2_end
rmem reg0 >var_str_stdlib_1
wmem >var_str_ptr_stdlib_2 reg0
jmp >var_length_stdlib_3_end
:var_length_stdlib_3
:var_length_stdlib_3_end
set reg0 0
wmem >var_length_stdlib_3 reg0
:while__stdlib_4_begin
rmem reg0 >var_str_ptr_stdlib_2
rmem reg0 reg0
jf reg0 >while__stdlib_4_end
rmem reg0 >var_str_ptr_stdlib_2
add reg0 reg0 1
wmem >var_str_ptr_stdlib_2 reg0
rmem reg0 >var_length_stdlib_3
add reg0 reg0 1
wmem >var_length_stdlib_3 reg0
jmp >while__stdlib_4_begin
:while__stdlib_4_end
rmem reg0 >var_length_stdlib_3
ret
ret
:str_len_end
set reg0 >str_len
jmp >print_end
:print
jmp >var_str_stdlib_11_end
:var_str_stdlib_11
:var_str_stdlib_11_end
wmem >var_str_stdlib_11 reg0
jmp >var_str_ptr_stdlib_12_end
:var_str_ptr_stdlib_12
:var_str_ptr_stdlib_12_end
rmem reg0 >var_str_stdlib_11
wmem >var_str_ptr_stdlib_12 reg0
:while__stdlib_13_begin
rmem reg0 >var_str_ptr_stdlib_12
rmem reg0 reg0
jf reg0 >while__stdlib_13_end
rmem reg0 >var_str_ptr_stdlib_12
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_12
add reg0 reg0 1
wmem >var_str_ptr_stdlib_12 reg0
jmp >while__stdlib_13_begin
:while__stdlib_13_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_str_ptr_stdlib_19_end
:var_str_ptr_stdlib_19
:var_str_ptr_stdlib_19_end
wmem >var_str_ptr_stdlib_19 reg0
rmem reg0 >var_str_ptr_stdlib_19
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >str_equal_end
:str_equal
jmp >var_str_a_stdlib_24_end
:var_str_a_stdlib_24
:var_str_a_stdlib_24_end
jmp >var_str_b_stdlib_24_end
:var_str_b_stdlib_24
:var_str_b_stdlib_24_end
wmem >var_str_a_stdlib_24 reg0
wmem >var_str_b_stdlib_24 reg1
jmp >var_a_len_stdlib_25_end
:var_a_len_stdlib_25
:var_a_len_stdlib_25_end
rmem reg0 >var_str_a_stdlib_24
call >str_len
wmem >var_a_len_stdlib_25 reg0
jmp >var_b_len_stdlib_26_end
:var_b_len_stdlib_26
:var_b_len_stdlib_26_end
rmem reg0 >var_str_b_stdlib_24
call >str_len
wmem >var_b_len_stdlib_26 reg0
rmem reg0 >var_a_len_stdlib_25
rmem reg1 >var_b_len_stdlib_26
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_27
set reg0 0
ret
:end__stdlib_27
jmp >var_i_stdlib_30_end
:var_i_stdlib_30
:var_i_stdlib_30_end
set reg0 0
wmem >var_i_stdlib_30 reg0
:for__stdlib_30_begin
rmem reg0 >var_i_stdlib_30
rmem reg1 >var_a_len_stdlib_25
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_30_end
jmp >var_a_val_stdlib_31_end
:var_a_val_stdlib_31
:var_a_val_stdlib_31_end
rmem reg0 >var_str_a_stdlib_24
rmem reg1 >var_i_stdlib_30
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_31 reg0
jmp >var_b_val_stdlib_32_end
:var_b_val_stdlib_32
:var_b_val_stdlib_32_end
rmem reg0 >var_str_b_stdlib_24
rmem reg1 >var_i_stdlib_30
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_32 reg0
rmem reg0 >var_a_val_stdlib_31
rmem reg1 >var_b_val_stdlib_32
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_33
set reg0 0
ret
:end__stdlib_33
rmem reg0 >var_i_stdlib_30
add reg0 reg0 1
wmem >var_i_stdlib_30 reg0
jmp >for__stdlib_30_begin
:for__stdlib_30_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_data_index_stdlib_41_end
:var_data_index_stdlib_41
:var_data_index_stdlib_41_end
set reg0 16382
wmem >var_data_index_stdlib_41 reg0
:while__stdlib_42_begin
rmem reg0 >var_data_index_stdlib_41
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_42_end
rmem reg0 >var_data_index_stdlib_41
set reg1 1
call >subtract
wmem >var_data_index_stdlib_41 reg0
jmp >while__stdlib_42_begin
:while__stdlib_42_end
rmem reg0 >var_data_index_stdlib_41
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_41 reg0
rmem reg0 >var_data_index_stdlib_41
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_length_stdlib_49_end
:var_length_stdlib_49
:var_length_stdlib_49_end
wmem >var_length_stdlib_49 reg0
jmp >var_pointer_stdlib_50_end
:var_pointer_stdlib_50
:var_pointer_stdlib_50_end
call >alloc
wmem >var_pointer_stdlib_50 reg0
jmp >var_dest_ptr_stdlib_51_end
:var_dest_ptr_stdlib_51
:var_dest_ptr_stdlib_51_end
rmem reg0 >var_pointer_stdlib_50
rmem reg1 >var_length_stdlib_49
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_51 reg0
rmem reg0 >var_dest_ptr_stdlib_51
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_pointer_stdlib_50
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_s_ptr_stdlib_56_end
:var_s_ptr_stdlib_56
:var_s_ptr_stdlib_56_end
jmp >var_d_ptr_stdlib_56_end
:var_d_ptr_stdlib_56
:var_d_ptr_stdlib_56_end
jmp >var_len_stdlib_56_end
:var_len_stdlib_56
:var_len_stdlib_56_end
wmem >var_s_ptr_stdlib_56 reg0
wmem >var_d_ptr_stdlib_56 reg1
wmem >var_len_stdlib_56 reg2
jmp >var_current_byte_stdlib_57_end
:var_current_byte_stdlib_57
:var_current_byte_stdlib_57_end
set reg0 0
wmem >var_current_byte_stdlib_57 reg0
:while__stdlib_58_begin
rmem reg0 >var_current_byte_stdlib_57
rmem reg1 >var_len_stdlib_56
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_58_end
jmp >var_byte_to_write_ptr_stdlib_59_end
:var_byte_to_write_ptr_stdlib_59
:var_byte_to_write_ptr_stdlib_59_end
rmem reg0 >var_s_ptr_stdlib_56
rmem reg1 >var_current_byte_stdlib_57
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_59 reg0
jmp >var_dest_ptr_stdlib_60_end
:var_dest_ptr_stdlib_60
:var_dest_ptr_stdlib_60_end
rmem reg0 >var_d_ptr_stdlib_56
rmem reg1 >var_current_byte_stdlib_57
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_60 reg0
rmem reg0 >var_dest_ptr_stdlib_60
rmem reg1 >var_byte_to_write_ptr_stdlib_59
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_57
add reg0 reg0 1
wmem >var_current_byte_stdlib_57 reg0
jmp >while__stdlib_58_begin
:while__stdlib_58_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_str_a_stdlib_66_end
:var_str_a_stdlib_66
:var_str_a_stdlib_66_end
jmp >var_str_b_stdlib_66_end
:var_str_b_stdlib_66
:var_str_b_stdlib_66_end
wmem >var_str_a_stdlib_66 reg0
wmem >var_str_b_stdlib_66 reg1
jmp >var_a_len_stdlib_67_end
:var_a_len_stdlib_67
:var_a_len_stdlib_67_end
rmem reg0 >var_str_a_stdlib_66
call >str_len
wmem >var_a_len_stdlib_67 reg0
jmp >var_b_len_stdlib_68_end
:var_b_len_stdlib_68
:var_b_len_stdlib_68_end
rmem reg0 >var_str_b_stdlib_66
call >str_len
wmem >var_b_len_stdlib_68 reg0
jmp >var_alloc_ptr_stdlib_69_end
:var_alloc_ptr_stdlib_69
:var_alloc_ptr_stdlib_69_end
call >alloc
wmem >var_alloc_ptr_stdlib_69 reg0
rmem reg0 >var_str_a_stdlib_66
rmem reg1 >var_alloc_ptr_stdlib_69
rmem reg2 >var_a_len_stdlib_67
call >mem_cp
jmp >var_end_address_stdlib_71_end
:var_end_address_stdlib_71
:var_end_address_stdlib_71_end
rmem reg0 >var_alloc_ptr_stdlib_69
rmem reg1 >var_a_len_stdlib_67
add reg0 reg0 reg1
wmem >var_end_address_stdlib_71 reg0
rmem reg0 >var_b_len_stdlib_68
add reg0 reg0 1
wmem >var_b_len_stdlib_68 reg0
rmem reg0 >var_str_b_stdlib_66
rmem reg1 >var_end_address_stdlib_71
rmem reg2 >var_b_len_stdlib_68
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_69
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_str_ptr_stdlib_77_end
:var_str_ptr_stdlib_77
:var_str_ptr_stdlib_77_end
wmem >var_str_ptr_stdlib_77 reg0
jmp >var_alloc_ptr_stdlib_78_end
:var_alloc_ptr_stdlib_78
:var_alloc_ptr_stdlib_78_end
call >alloc
wmem >var_alloc_ptr_stdlib_78 reg0
jmp >var_len_stdlib_79_end
:var_len_stdlib_79
:var_len_stdlib_79_end
rmem reg0 >var_str_ptr_stdlib_77
call >str_len
wmem >var_len_stdlib_79 reg0
jmp >var_index_stdlib_80_end
:var_index_stdlib_80
:var_index_stdlib_80_end
set reg0 0
wmem >var_index_stdlib_80 reg0
:while__stdlib_81_begin
rmem reg0 >var_index_stdlib_80
rmem reg1 >var_len_stdlib_79
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_81_end
jmp >var_source_index_stdlib_82_end
:var_source_index_stdlib_82
:var_source_index_stdlib_82_end
rmem reg0 >var_str_ptr_stdlib_77
rmem reg1 >var_index_stdlib_80
add reg0 reg0 reg1
wmem >var_source_index_stdlib_82 reg0
rmem reg0 >var_source_index_stdlib_82
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_82
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_80
add reg0 reg0 1
wmem >var_index_stdlib_80 reg0
jmp >while__stdlib_81_begin
:while__stdlib_81_end
jmp >var_current_byte_stdlib_87_end
:var_current_byte_stdlib_87
:var_current_byte_stdlib_87_end
pop reg0
wmem >var_current_byte_stdlib_87 reg0
set reg0 0
wmem >var_index_stdlib_80 reg0
:while__stdlib_89_begin
rmem reg0 >var_index_stdlib_80
rmem reg1 >var_len_stdlib_79
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_89_end
jmp >var_dest_index_stdlib_90_end
:var_dest_index_stdlib_90
:var_dest_index_stdlib_90_end
rmem reg0 >var_alloc_ptr_stdlib_78
rmem reg1 >var_index_stdlib_80
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_90 reg0
rmem reg0 >var_dest_index_stdlib_90
rmem reg1 >var_current_byte_stdlib_87
wmem reg0 reg1
rmem reg0 >var_index_stdlib_80
add reg0 reg0 1
wmem >var_index_stdlib_80 reg0
pop reg0
wmem >var_current_byte_stdlib_87 reg0
jmp >while__stdlib_89_begin
:while__stdlib_89_end
rmem reg0 >var_current_byte_stdlib_87
rmem reg0 >var_current_byte_stdlib_87
push reg0
rmem reg0 >var_alloc_ptr_stdlib_78
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_data_index_stdlib_102_end
:var_data_index_stdlib_102
:var_data_index_stdlib_102_end
set reg0 16384
wmem >var_data_index_stdlib_102 reg0
jmp >var_in_char_stdlib_103_end
:var_in_char_stdlib_103
:var_in_char_stdlib_103_end
in reg0
wmem >var_in_char_stdlib_103 reg0
jmp >var_is_newline_stdlib_104_end
:var_is_newline_stdlib_104
:var_is_newline_stdlib_104_end
rmem reg0 >var_in_char_stdlib_103
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104 reg0
:while__stdlib_105_begin
rmem reg0 >var_is_newline_stdlib_104
rmem reg1 >var_in_char_stdlib_103
call >and
call >not
jf reg0 >while__stdlib_105_end
rmem reg0 >var_data_index_stdlib_102
rmem reg1 >var_in_char_stdlib_103
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_102
add reg0 reg0 1
wmem >var_data_index_stdlib_102 reg0
in reg0
wmem >var_in_char_stdlib_103 reg0
rmem reg0 >var_in_char_stdlib_103
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104 reg0
jmp >while__stdlib_105_begin
:while__stdlib_105_end
rmem reg0 >var_data_index_stdlib_102
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_112_end
:var_alloc_ptr_stdlib_112
:var_alloc_ptr_stdlib_112_end
call >alloc
wmem >var_alloc_ptr_stdlib_112 reg0
jmp >var_length_stdlib_113_end
:var_length_stdlib_113
:var_length_stdlib_113_end
set reg0 16384
call >str_len
wmem >var_length_stdlib_113 reg0
set reg0 16384
rmem reg1 >var_alloc_ptr_stdlib_112
rmem reg2 >var_length_stdlib_113
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_112
ret
ret
:input_end
set reg0 >input
jmp >int_end
:int
jmp >var_str_stdlib_118_end
:var_str_stdlib_118
:var_str_stdlib_118_end
wmem >var_str_stdlib_118 reg0
jmp >var_len_stdlib_119_end
:var_len_stdlib_119
:var_len_stdlib_119_end
rmem reg0 >var_str_stdlib_118
call >str_len
wmem >var_len_stdlib_119 reg0
jmp >var_index_stdlib_120_end
:var_index_stdlib_120
:var_index_stdlib_120_end
set reg0 0
wmem >var_index_stdlib_120 reg0
jmp >var_accumulation_stdlib_121_end
:var_accumulation_stdlib_121
:var_accumulation_stdlib_121_end
set reg0 0
wmem >var_accumulation_stdlib_121 reg0
:for__stdlib_122_begin
rmem reg0 >var_len_stdlib_119
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_122_end
jmp >var_tens_place_stdlib_124_end
:var_tens_place_stdlib_124
:var_tens_place_stdlib_124_end
set reg0 1
set reg1 10
rmem reg2 >var_len_stdlib_119
set reg3 1
push reg0
push reg1
set reg0 reg2
set reg1 reg3
call >subtract
pop reg1
set reg2 reg0
pop reg0
mult reg1 reg1 reg2
rmem reg1 >var_len_stdlib_119
set reg2 1
push reg0
push reg1
set reg0 reg1
set reg1 reg2
call >subtract
pop reg1
set reg1 reg0
pop reg0
mult reg0 reg0 reg1
wmem >var_tens_place_stdlib_124 reg0
jmp >var_diget_stdlib_125_end
:var_diget_stdlib_125
:var_diget_stdlib_125_end
rmem reg0 >var_str_stdlib_118
rmem reg1 >var_index_stdlib_120
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_diget_stdlib_125 reg0
rmem reg0 >var_diget_stdlib_125
set reg1 48
call >subtract
wmem >var_diget_stdlib_125 reg0
:for__stdlib_127_begin
rmem reg0 >var_tens_place_stdlib_124
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_127_end
rmem reg0 >var_diget_stdlib_125
set reg1 10
mult reg0 reg0 reg1
wmem >var_diget_stdlib_125 reg0
rmem reg0 >var_tens_place_stdlib_124
set reg1 1
call >subtract
wmem >var_tens_place_stdlib_124 reg0
jmp >for__stdlib_127_begin
:for__stdlib_127_end
rmem reg0 >var_accumulation_stdlib_121
rmem reg1 >var_diget_stdlib_125
add reg0 reg0 reg1
wmem >var_accumulation_stdlib_121 reg0
rmem reg0 >var_index_stdlib_120
add reg0 reg0 1
wmem >var_index_stdlib_120 reg0
rmem reg0 >var_len_stdlib_119
set reg1 1
call >subtract
wmem >var_len_stdlib_119 reg0
jmp >for__stdlib_122_begin
:for__stdlib_122_end
rmem reg0 >var_accumulation_stdlib_121
ret
ret
:int_end
set reg0 >int
jmp >string_end
:string
jmp >var_num_stdlib_138_end
:var_num_stdlib_138
:var_num_stdlib_138_end
wmem >var_num_stdlib_138 reg0
jmp >var_charNum_stdlib_139_end
:var_charNum_stdlib_139
:var_charNum_stdlib_139_end
jmp >var_length_stdlib_140_end
:var_length_stdlib_140
:var_length_stdlib_140_end
set reg0 0
wmem >var_length_stdlib_140 reg0
:while__stdlib_141_begin
rmem reg0 >var_num_stdlib_138
set reg1 9
gt reg0 reg0 reg1
jf reg0 >while__stdlib_141_end
rmem reg0 >var_num_stdlib_138
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139 reg0
rmem reg0 >var_charNum_stdlib_139
rmem reg0 >var_charNum_stdlib_139
push reg0
rmem reg0 >var_length_stdlib_140
add reg0 reg0 1
wmem >var_length_stdlib_140 reg0
rmem reg0 >var_num_stdlib_138
set reg1 10
call >divide
wmem >var_num_stdlib_138 reg0
jmp >while__stdlib_141_begin
:while__stdlib_141_end
rmem reg0 >var_num_stdlib_138
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139 reg0
rmem reg0 >var_charNum_stdlib_139
rmem reg0 >var_charNum_stdlib_139
push reg0
rmem reg0 >var_length_stdlib_140
add reg0 reg0 1
wmem >var_length_stdlib_140 reg0
jmp >var_stack_index_stdlib_152_end
:var_stack_index_stdlib_152
:var_stack_index_stdlib_152_end
set reg0 0
wmem >var_stack_index_stdlib_152 reg0
jmp >var_dest_ptr_stdlib_153_end
:var_dest_ptr_stdlib_153
:var_dest_ptr_stdlib_153_end
call >alloc
wmem >var_dest_ptr_stdlib_153 reg0
:while__stdlib_155_begin
rmem reg0 >var_stack_index_stdlib_152
rmem reg1 >var_length_stdlib_140
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_155_end
rmem reg0 >var_dest_ptr_stdlib_153
rmem reg1 >var_stack_index_stdlib_152
add reg0 reg0 reg1
pop reg1
set reg2 48
add reg1 reg1 reg2
wmem reg0 reg1
rmem reg0 >var_stack_index_stdlib_152
set reg1 1
add reg0 reg0 reg1
wmem >var_stack_index_stdlib_152 reg0
jmp >while__stdlib_155_begin
:while__stdlib_155_end
rmem reg0 >var_dest_ptr_stdlib_153
rmem reg1 >var_stack_index_stdlib_152
add reg0 reg0 reg1
set reg1 0
wmem reg0 reg1
rmem reg0 >var_dest_ptr_stdlib_153
ret
ret
:string_end
set reg0 >string
jmp >print_number_end
:print_number
jmp >var_num_stdlib_164_end
:var_num_stdlib_164
:var_num_stdlib_164_end
wmem >var_num_stdlib_164 reg0
rmem reg0 >var_num_stdlib_164
call >string
call >print
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_i_stdlib_170_end
:var_i_stdlib_170
:var_i_stdlib_170_end
set reg0 0
wmem >var_i_stdlib_170 reg0
:while__stdlib_172_begin
rmem reg0 >var_i_stdlib_170
rmem reg0 reg0
jf reg0 >while__stdlib_172_end
rmem reg0 >var_i_stdlib_170
add reg0 reg0 1
wmem >var_i_stdlib_170 reg0
rmem reg0 >var_i_stdlib_170
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_172_begin
:while__stdlib_172_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >jump_back_end
:jump_back
jmp >var_code_bf_5_end
:var_code_bf_5
:var_code_bf_5_end
jmp >var_index_bf_5_end
:var_index_bf_5
:var_index_bf_5_end
wmem >var_code_bf_5 reg0
wmem >var_index_bf_5 reg1
jmp >var_nesting_level_bf_7_end
:var_nesting_level_bf_7
:var_nesting_level_bf_7_end
set reg0 1
wmem >var_nesting_level_bf_7 reg0
:while__bf_8_begin
rmem reg0 >var_nesting_level_bf_7
set reg1 0
gt reg0 reg0 reg1
jf reg0 >while__bf_8_end
rmem reg0 >var_index_bf_5
set reg1 1
call >subtract
wmem >var_index_bf_5 reg0
jmp >var_char_bf_11_end
:var_char_bf_11
:var_char_bf_11_end
rmem reg0 >var_code_bf_5
rmem reg1 >var_index_bf_5
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_char_bf_11 reg0
rmem reg0 >var_char_bf_11
rmem reg1 >var_symbol_right_bracket_symbols_4
eq reg0 reg0 reg1
jf reg0 >end__bf_12
rmem reg0 >var_nesting_level_bf_7
add reg0 reg0 1
wmem >var_nesting_level_bf_7 reg0
:end__bf_12
rmem reg0 >var_char_bf_11
rmem reg1 >var_symbol_left_bracket_symbols_3
eq reg0 reg0 reg1
jf reg0 >end__bf_16
rmem reg0 >var_nesting_level_bf_7
set reg1 1
call >subtract
wmem >var_nesting_level_bf_7 reg0
:end__bf_16
jmp >while__bf_8_begin
:while__bf_8_end
rmem reg0 >var_index_bf_5
ret
ret
:jump_back_end
set reg0 >jump_back
jmp >interpret_end
:interpret
jmp >var_code_bf_24_end
:var_code_bf_24
:var_code_bf_24_end
wmem >var_code_bf_24 reg0
jmp >var_stack_pointer_bf_26_end
:var_stack_pointer_bf_26
:var_stack_pointer_bf_26_end
set reg0 4000
wmem >var_stack_pointer_bf_26 reg0
jmp >var_code_len_bf_27_end
:var_code_len_bf_27
:var_code_len_bf_27_end
rmem reg0 >var_code_bf_24
call >str_len
wmem >var_code_len_bf_27 reg0
jmp >var_i_bf_29_end
:var_i_bf_29
:var_i_bf_29_end
set reg0 0
wmem >var_i_bf_29 reg0
:for__bf_29_begin
rmem reg0 >var_i_bf_29
rmem reg1 >var_code_len_bf_27
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__bf_29_end
jmp >var_char_bf_31_end
:var_char_bf_31
:var_char_bf_31_end
rmem reg0 >var_code_bf_24
rmem reg1 >var_i_bf_29
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_char_bf_31 reg0
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_plus_symbols_1
eq reg0 reg0 reg1
jf reg0 >end__bf_32
jmp >var_cur_val_bf_34_end
:var_cur_val_bf_34
:var_cur_val_bf_34_end
rmem reg0 >var_stack_pointer_bf_26
rmem reg0 reg0
wmem >var_cur_val_bf_34 reg0
rmem reg0 >var_cur_val_bf_34
add reg0 reg0 1
wmem >var_cur_val_bf_34 reg0
rmem reg0 >var_stack_pointer_bf_26
rmem reg1 >var_cur_val_bf_34
wmem reg0 reg1
:end__bf_32
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_minus_symbols_2
eq reg0 reg0 reg1
jf reg0 >end__bf_38
jmp >var_cur_val_bf_40_end
:var_cur_val_bf_40
:var_cur_val_bf_40_end
rmem reg0 >var_stack_pointer_bf_26
rmem reg0 reg0
wmem >var_cur_val_bf_34 reg0
rmem reg0 >var_cur_val_bf_34
set reg1 1
call >subtract
wmem >var_cur_val_bf_34 reg0
rmem reg0 >var_stack_pointer_bf_26
rmem reg1 >var_cur_val_bf_34
wmem reg0 reg1
:end__bf_38
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_greater_than_symbols_6
eq reg0 reg0 reg1
jf reg0 >end__bf_44
rmem reg0 >var_stack_pointer_bf_26
add reg0 reg0 1
wmem >var_stack_pointer_bf_26 reg0
:end__bf_44
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_less_than_symbols_5
eq reg0 reg0 reg1
jf reg0 >end__bf_48
rmem reg0 >var_stack_pointer_bf_26
set reg1 1
call >subtract
wmem >var_stack_pointer_bf_26 reg0
:end__bf_48
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_input_symbols_7
eq reg0 reg0 reg1
jf reg0 >end__bf_52
rmem reg0 >var_stack_pointer_bf_26
in reg0
wmem reg0 reg1
:end__bf_52
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_output_symbols_8
eq reg0 reg0 reg1
jf reg0 >end__bf_56
rmem reg0 >var_stack_pointer_bf_26
rmem reg0 reg0
out reg0
:end__bf_56
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_left_bracket_symbols_3
eq reg0 reg0 reg1
jf reg0 >end__bf_60
:end__bf_60
rmem reg0 >var_char_bf_31
rmem reg1 >var_symbol_right_bracket_symbols_4
eq reg0 reg0 reg1
jf reg0 >end__bf_64
rmem reg0 >var_stack_pointer_bf_26
rmem reg0 reg0
jf reg0 >end__bf_66
rmem reg0 >var_code_bf_24
rmem reg1 >var_i_bf_29
call >jump_back
wmem >var_i_bf_29 reg0
:end__bf_66
:end__bf_64
rmem reg0 >var_i_bf_29
add reg0 reg0 1
wmem >var_i_bf_29 reg0
jmp >for__bf_29_begin
:for__bf_29_end
ret
:interpret_end
set reg0 >interpret
jmp >compile_end
:compile
jmp >var_code_bf_76_end
:var_code_bf_76
:var_code_bf_76_end
wmem >var_code_bf_76 reg0
jmp >var_code_len_bf_78_end
:var_code_len_bf_78
:var_code_len_bf_78_end
rmem reg0 >var_code_bf_76
call >str_len
wmem >var_code_len_bf_78 reg0
jmp >var_i_bf_79_end
:var_i_bf_79
:var_i_bf_79_end
set reg0 0
wmem >var_i_bf_79 reg0
:for__bf_79_begin
rmem reg0 >var_i_bf_79
rmem reg1 >var_code_len_bf_78
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__bf_79_end
jmp >var_char_bf_80_end
:var_char_bf_80
:var_char_bf_80_end
rmem reg0 >var_code_bf_76
rmem reg1 >var_i_bf_79
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_char_bf_80 reg0
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_plus_symbols_1
eq reg0 reg0 reg1
jf reg0 >end__bf_82
jmp >var__bf_83_end
:var__bf_83
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var__bf_83_end
wmem >var__bf_83 &r
set reg0 >var__bf_83
call >println
jmp >var__bf_84_end
:var__bf_84
&m
&e
&m
32
&r
&e
&g
&1
32
&r
&e
&g
&0
0
:var__bf_84_end
wmem >var__bf_84 &r
set reg0 >var__bf_84
call >println
jmp >var__bf_85_end
:var__bf_85
&d
&d
32
&r
&e
&g
&1
32
&1
0
:var__bf_85_end
wmem >var__bf_85 &a
set reg0 >var__bf_85
call >println
jmp >var__bf_86_end
:var__bf_86
&m
&e
&m
32
&r
&e
&g
&0
32
&r
&e
&g
&1
0
:var__bf_86_end
wmem >var__bf_86 &w
set reg0 >var__bf_86
call >println
:end__bf_82
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_minus_symbols_2
eq reg0 reg0 reg1
jf reg0 >end__bf_89
jmp >var__bf_90_end
:var__bf_90
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var__bf_90_end
wmem >var__bf_90 &r
set reg0 >var__bf_90
call >println
jmp >var__bf_91_end
:var__bf_91
&m
&e
&m
32
&r
&e
&g
&1
32
&r
&e
&g
&0
0
:var__bf_91_end
wmem >var__bf_91 &r
set reg0 >var__bf_91
call >println
jmp >var__bf_92_end
:var__bf_92
&d
&d
32
&r
&e
&g
&1
32
&3
&2
&7
&6
&7
0
:var__bf_92_end
wmem >var__bf_92 &a
set reg0 >var__bf_92
call >println
jmp >var__bf_93_end
:var__bf_93
&m
&e
&m
32
&r
&e
&g
&0
32
&r
&e
&g
&1
0
:var__bf_93_end
wmem >var__bf_93 &w
set reg0 >var__bf_93
call >println
:end__bf_89
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_left_bracket_symbols_3
eq reg0 reg0 reg1
jf reg0 >end__bf_96
jmp >var__bf_97_end
:var__bf_97
&e
&f
&t
32
&b
&r
&a
&c
&k
&e
&t
0
:var__bf_97_end
wmem >var__bf_97 &l
set reg0 >var__bf_97
call >println
:end__bf_96
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_right_bracket_symbols_4
eq reg0 reg0 reg1
jf reg0 >end__bf_100
jmp >var__bf_101_end
:var__bf_101
&i
&g
&h
&t
32
&b
&r
&a
&c
&k
&e
&t
0
:var__bf_101_end
wmem >var__bf_101 &r
set reg0 >var__bf_101
call >println
:end__bf_100
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_less_than_symbols_5
eq reg0 reg0 reg1
jf reg0 >end__bf_104
jmp >var__bf_105_end
:var__bf_105
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var__bf_105_end
wmem >var__bf_105 &r
set reg0 >var__bf_105
call >println
jmp >var__bf_106_end
:var__bf_106
&d
&d
32
&r
&e
&g
&0
32
&3
&2
&7
&6
&7
0
:var__bf_106_end
wmem >var__bf_106 &a
set reg0 >var__bf_106
call >println
jmp >var__bf_107_end
:var__bf_107
&m
&e
&m
32
&1
&6
&3
&8
&3
32
&r
&e
&g
&0
0
:var__bf_107_end
wmem >var__bf_107 &w
set reg0 >var__bf_107
call >println
:end__bf_104
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_greater_than_symbols_6
eq reg0 reg0 reg1
jf reg0 >end__bf_110
jmp >var__bf_111_end
:var__bf_111
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var__bf_111_end
wmem >var__bf_111 &r
set reg0 >var__bf_111
call >println
jmp >var__bf_112_end
:var__bf_112
&d
&d
32
&r
&e
&g
&0
32
&1
0
:var__bf_112_end
wmem >var__bf_112 &a
set reg0 >var__bf_112
call >println
jmp >var__bf_113_end
:var__bf_113
&m
&e
&m
32
&1
&6
&3
&8
&3
32
&r
&e
&g
&0
0
:var__bf_113_end
wmem >var__bf_113 &w
set reg0 >var__bf_113
call >println
:end__bf_110
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_input_symbols_7
eq reg0 reg0 reg1
jf reg0 >end__bf_116
jmp >var__bf_117_end
:var__bf_117
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var__bf_117_end
wmem >var__bf_117 &r
set reg0 >var__bf_117
call >println
jmp >var__bf_118_end
:var__bf_118
&n
32
&r
&e
&g
&1
0
:var__bf_118_end
wmem >var__bf_118 &i
set reg0 >var__bf_118
call >println
jmp >var__bf_119_end
:var__bf_119
&m
&e
&m
32
&r
&e
&g
&0
32
&r
&e
&g
&1
0
:var__bf_119_end
wmem >var__bf_119 &w
set reg0 >var__bf_119
call >println
:end__bf_116
rmem reg0 >var_char_bf_80
rmem reg1 >var_symbol_output_symbols_8
eq reg0 reg0 reg1
jf reg0 >end__bf_122
jmp >var__bf_123_end
:var__bf_123
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var__bf_123_end
wmem >var__bf_123 &r
set reg0 >var__bf_123
call >println
jmp >var__bf_124_end
:var__bf_124
&m
&e
&m
32
&r
&e
&g
&1
32
&r
&e
&g
&0
0
:var__bf_124_end
wmem >var__bf_124 &r
set reg0 >var__bf_124
call >println
jmp >var__bf_125_end
:var__bf_125
&u
&t
32
&r
&e
&g
&1
0
:var__bf_125_end
wmem >var__bf_125 &o
set reg0 >var__bf_125
call >println
:end__bf_122
rmem reg0 >var_i_bf_79
add reg0 reg0 1
wmem >var_i_bf_79 reg0
jmp >for__bf_79_begin
:for__bf_79_end
ret
:compile_end
set reg0 >compile
jmp >var__bf_130_end
:var__bf_130
&i
&n
&i
&m
&a
&l
32
&b
&r
&a
&i
&n
&f
&*
&c
&k
32
&e
&n
&v
&i
&r
&o
&n
&m
&e
&n
&t
&.
0
:var__bf_130_end
wmem >var__bf_130 &M
set reg0 >var__bf_130
call >println
jmp >var__bf_131_end
:var__bf_131
&y
&p
&e
32
&c
&o
&d
&e
32
&a
&n
&d
32
&h
&i
&t
32
&e
&n
&t
&e
&r
32
&t
&o
32
&r
&u
&n
0
:var__bf_131_end
wmem >var__bf_131 &T
set reg0 >var__bf_131
call >println
jmp >var__bf_132_end
:var__bf_132
0
:var__bf_132_end
wmem >var__bf_132 &$
set reg0 >var__bf_132
call >print
jmp >var_code_bf_133_end
:var_code_bf_133
:var_code_bf_133_end
call >input
wmem >var_code_bf_133 reg0
rmem reg0 >var_code_bf_133
call >interpret
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

