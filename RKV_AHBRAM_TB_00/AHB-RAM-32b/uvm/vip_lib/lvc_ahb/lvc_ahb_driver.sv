`ifndef LVC_AHB_DRIVER_SV
`define LVC_AHB_DRIVER_SV

class lvc_ahb_driver #(type REQ = lvc_ahb_transaction, type RSP = REQ) extends uvm_driver #(REQ, RSP);
  `uvm_component_utils(lvc_ahb_driver)

  function new(string name = "lvc_ahb_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
  endfunction

  task run_phase(uvm_phase phase);
    super.run_phase(phase);
  endtask

endclass


`endif // LVC_AHB_DRIVER_SV
