<?php
 
 header("Content-type: application/vnd-ms-excel");
 
 header("Content-Disposition: attachment; filename=$title.xls");
 
 header("Pragma: no-cache");
 
 header("Expires: 0");
 
 ?>
 
 <table border="0" width="100%">
 
      <thead>
 
           <!-- <tr>
 
                <th>Bank Name</th>
                <th>Bank Address</th>
                <th>City</th>
 				<th>Bank Code</th>
 				<th>Account Name</th>
 				<th>Account Number</th>
 				<th>Currency</th>
 				<th>Nominal</th>
 				<th>Description 1</th>
 				<th>Description 2</th>
 				<th>Transaction Type</th>
 				<th>Resident Status</th>
 				<th>Citizen Status</th>
           </tr> -->
 
      </thead>
 
      <tbody>
 
           <?php $i=1; foreach($tbl_payment_v as $data) { ?>
 
           <tr>
                <td width="100"><?php echo $data->bank_name; ?></td>
                <td width="100"><?php echo $data->address_bank; ?></td>
                <td width="100"><?php echo $data->bank_city; ?></td>
                <td width="100"><?php echo $data->bank_code; ?></td>
                <td width="100"><?php echo $data->account_name; ?></td>
                <td width="100"><?php echo "'".$data->account_number.""; ?></td>
                <td width="100"><?php echo $data->currency; ?></td>
                <td width="100"><?php echo $data->amount_payment; ?></td>
 			 <td width="100"><?php echo $data->description; ?></td>
 			 <td width="100"><?php echo $data->description2; ?></td>
 			 <td width="100"><?php echo $data->transaction_type; ?></td>
 			 <td width="100"><?php echo $data->resident_status; ?></td>
 			 <td width="100"><?php echo $data->citizen_status; ?></td>
           </tr>
 
           <?php $i++; } ?>
 
      </tbody>
 
 </table>