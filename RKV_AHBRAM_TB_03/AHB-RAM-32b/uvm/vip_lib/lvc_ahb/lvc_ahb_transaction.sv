`ifndef LVC_AHB_TRANSACTION_SV
`define LVC_AHB_TRANSACTION_SV


class lvc_ahb_transaction extends uvm_sequence_item;

  // wdata or rdata from bus
  rand bit [`LVC_AHB_MAX_DATA_WIDTH - 1:0] data[];
  rand bit [`LVC_AHB_MAX_ADDR_WIDTH - 1 : 0] addr = 0;

  // Represents the burst size of a transaction
  rand burst_size_enum burst_size = BURST_SIZE_8BIT;

  // Represents the burst type of a transaction
  rand burst_type_enum burst_type = SINGLE ;

  // Represents the transaction type of a transaction
  rand xact_type_enum xact_type = IDLE_XACT;

  // Response from the slave.
  rand response_type_enum response_type  = OKAY;

  //************************************************
  // NOTE:: members possibly to be applied later
  //************************************************
  // Indicates the type of the current transfer, which can be 
  trans_type_enum trans_type;
  // This array variable stores the responses for all the completed beats of transaction. Following are the possible response types
  response_type_enum all_beat_response[];
  // Indicates the beat number of the current transfer
  int current_data_beat_num;  
  //  Represents the current status of the transaction
  status_enum status = INITIAL;
  //  aborted_xact_status_enum aborted_xact_status = NOT_ABORTED; 


  // Represents the hwrite signal value when 
  rand bit idle_xact_hwrite = 1;

  `uvm_object_utils_begin(lvc_ahb_transaction)
  `uvm_object_utils_end

  function new(string name = "lvc_ahb_transaction");
    super.new(name);
  endfunction


endclass

`endif // LVC_AHB_TRANSACTION_SV
