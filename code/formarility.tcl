source rm_setup/shared_setup.tcl
set search_path "$search_path $ADDITIONAL_SEARCH_PATH"
set target_library $TARGET_LIBRARY_FILES
set synopsys_auto_setup true 
set_svf ./mips.svf
read_db -tech $target_library
read_verilog -r ./rtl/mips.v
set_top mips
read_ddc -i ./mapped/MIPS.ddc
set_top mips
match
verify
report_guidance -summary
