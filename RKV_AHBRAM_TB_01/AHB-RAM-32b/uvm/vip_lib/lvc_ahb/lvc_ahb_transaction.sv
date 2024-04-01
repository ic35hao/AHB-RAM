`ifndef LVC_AHB_TRANSACTION_SV
`define LVC_AHB_TRANSACTION_SV


class lvc_ahb_transaction extends uvm_sequence_item;
  `uvm_object_utils_begin(lvc_ahb_transaction)
  `uvm_object_utils_end

  function new(string name = "lvc_ahb_transaction");
    super.new(name);
  endfunction


endclass

`endif // LVC_AHB_TRANSACTION_SV
