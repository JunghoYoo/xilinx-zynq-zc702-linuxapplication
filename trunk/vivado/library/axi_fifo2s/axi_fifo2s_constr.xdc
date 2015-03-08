
set_false_path -from [get_cells *dma_* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}] \
  -to [get_cells *axi_*_m* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}]
set_false_path -from [get_cells *axi_* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}] \
  -to [get_cells *dma_*_m* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}]

set_false_path -from [get_cells *adc_* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}] \
  -to [get_cells *axi_*_m* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}]
set_false_path -from [get_cells *axi_* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}] \
  -to [get_cells *adc_*_m* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}]

set_false_path -from [get_cells *d_xfer_* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}] \
  -to [get_cells *up_* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}]
set_false_path -from [get_cells *adc_rel_waddr* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}] \
  -to [get_cells *axi_rel_waddr* -hierarchical -filter {PRIMITIVE_SUBGROUP == flop}]

