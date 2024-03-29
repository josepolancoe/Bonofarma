
<div class="panel-heading">
    <div class="panel-control" style="float: left;">
        <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#full"><?php echo translate('full_invoice'); ?></a>
            </li>
            <?php
                if($this->crud_model->is_admin_in_sale($sale[0]['sale_id'])){
            ?>
            <li>
                <a data-toggle="tab" href="#quart"><?php echo translate('invoice_for'); ?>: <?php echo translate('admin'); ?></a>
            </li>
            <?php
                }
            ?>
            <?php
                $vendors = $this->crud_model->vendors_in_sale($sale[0]['sale_id']);
                foreach ($vendors as $ven) {
            ?>
            <li>
                <a data-toggle="tab" href="#half_<?php echo $ven; ?>"><?php echo translate('invoice_for'); ?>: <?php echo $this->crud_model->get_type_name_by_id('vendor', $ven, 'display_name'); ?> (<?php echo translate('vendor'); ?>)</a>
            </li>
            <?php
                }
            ?>
        </ul>
    </div>
</div>

<div class="panel-body ">
    <div class="tab-base"> 
        <?php
        	foreach($sale as $row){
                $info = json_decode($row['shipping_address'],true);
                //invoice and map
        ?>

        <div class="col-md-2"></div>
        <div class="col-md-8 bordered print">
            <div class="tab-content">
                <div id="full" class="tab-pane fade active in">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="col-lg-6 col-md-6 col-sm-6 pad-all">
                                <img class="img-responsive logo" src="<?php echo $this->crud_model->logo('home_top_logo'); ?>" alt="Active Super Shop" width="55%"><br><br>
                                <?php if($row['buyer'] == 'guest'){?>
                                <b class="pull-left">
                                    <?php echo translate('invoice_link:');?> <?php echo base_url() ?>home/guest_invoice/<?php echo $row['guest_id']; ?>  
                                </b>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 pad-all">
                                <?php if($row['buyer'] == 'guest'){?>
                                <b class="pull-right">
                                    <?php echo translate('guest_id:');?> :<?php echo $row['guest_id']; ?>  
                                </b>
                                <br>
                                <?php }?>
                                <b class="pull-right">
                                    <?php echo translate('invoice_no:');?> :<?php echo $row['sale_code']; ?>  
                                </b>
                                <br>
                                <?php }?>
                                <b class="pull-right">
                                    <?php echo translate('date_:');?> <?php echo date('d M, Y',$row['sale_datetime'] );?>
                                </b>
                            </div>
                        </div>
                        
                        <div class="col-lg-12 col-md-12 col-sm-12 pad-top">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                            <!--Panel heading-->
                                <div class="panel panel-bordered-grey shadow-none">
                                    <div class="panel-heading">
                                        <h1 class="panel-title"><?php echo translate('client_information');?></h1>
                                    </div>
                                    <!--List group-->
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td><b><?php echo translate('first_name');?></b></td>
                                                <td><?php echo $info['firstname']; ?></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('last_name');?></b></td>
                                                <td><?php echo $info['lastname']; ?></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('phone');?></b></td>
                                                <td><?php echo $info['phone']; ?>  </td>
                                            </tr>
                                        </tbody>
                                    </table>    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                            <!--Panel heading-->
                                <div class="panel panel-bordered-grey shadow-none">
                                    <div class="panel-heading">
                                        <h1 class="panel-title"><?php echo translate('payment_detail');?></h1>
                                    </div>
                                    <!--List group-->
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td><b><?php echo translate('payment_status');?></b></td>
                                                <td><i><?php echo translate($this->crud_model->sale_payment_status($row['sale_id'])); ?></i></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('payment_method');?></b></td>
                                                <td>
                                                    <?php if($info['payment_type'] == 'c2'){
                                                        echo 'TwoCheckout';
                                                    }else{
                                                        echo ucfirst(str_replace('_', ' ', $info['payment_type'])); 
                                                    }?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('payment_date');?></b></td>
                                                <td><?php echo date('d M, Y',$row['sale_datetime'] );?></td>
                                            </tr>
                                        </tbody>
                                    </table>    
                                </div>
                            </div>
                       </div>
                    </div>

                    <div class="panel-body" id="demo_s">
                        <div class="fff panel panel-bordered panel-dark shadow-none">
                            <div class="panel-heading">
                                <h1 class="panel-title"><?php echo translate('payment_invoice');?></h1>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo translate('no');?></th>
                                            <th><?php echo translate('item');?></th>
                                            <th><?php echo translate('options');?></th>
                                            <th><?php echo translate('quantity');?></th>
                                            <th><?php echo translate('unit_cost');?></th>
                                            <th><?php echo translate('total');?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $product_details = json_decode($row['product_details'], true);
                                            $i =0;
                                            $total = 0;
                                            foreach ($product_details as $row1) {
                                                $i++;
                                        ?>
                                        <tr>
                                            <td><?php echo $i; ?></td>
                                            <td><?php echo $row1['name']; ?></td>
                                            <td>
                                                <?php
                                                if ($this->db->get_where('product', array('product_id' => $row1['id']))->row()->is_bundle == 'yes') {
                                                ?>
                                                <div style="padding: 5px">
                                                    <b><?php echo translate('products_:');?></b> <br>
                                                    <?php
                                                        $products = $this->db->get_where('product', array('product_id' => $row1['id']))->row()->products;
                                                        $products = json_decode($products, true);
                                                        foreach ($products as $product) { ?>
                                                            <a style="font-size: 12px;">
                                                                <?php echo $this->db->get_where('product', array('product_id' => $product['product_id']))->row()->title . '<br>';?>
                                                            </a>
                                                    <?php
                                                        }
                                                    ?>
                                                </div>
                                                <?php
                                                }
                                                ?>
                                                <?php 
                                                    $all_o = json_decode($row1['option'],true);
                                                    $color = $all_o['color']['value'];
                                                        if($color){
                                                ?>
                                                <div style="background:<?php echo $color; ?>; height:25px; width:25px;" ></div>
                                                <?php
                                                    }
                                                ?>
                                                <?php
                                                    foreach ($all_o as $l => $op) {
                                                        if($l !== 'color' && $op['value'] !== '' && $op['value'] !== NULL){
                                                ?>
                                                    <?php echo $op['title'] ?> : 
                                                    <?php 
                                                        if(is_array($va = $op['value'])){ 
                                                            echo $va = join(', ',$va); 
                                                        } else {
                                                            echo $va;
                                                        }
                                                    ?>
                                                    <br>
                                                <?php
                                                        }
                                                    }
                                                ?>
                                            </td>
                                            <td><?php echo $row1['qty']; ?></td>
                                            <td><?php echo currency('','def').$this->cart->format_number($row1['price']); ?></td>
                                            <td><?php echo currency('','def').$this->cart->format_number($row1['subtotal']); $total += $row1['subtotal']; ?></td>
                                        </tr>
                                        <?php
                                            }
                                        ?>
                                    </tbody>
                                </table>
                                <div class="col-lg-6 col-md-6 col-sm-6 pull-right margin-top-20">
                                    <div class="panel panel-colorful panel-grey shadow-none">
                                        <table class="table" border="0">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('sub_total_amount');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($total); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('tax');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($row['vat']); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('shipping');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($row['shipping']); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('grand_total');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($row['grand_total']); ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div> 
                                </div>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <!--List group--> 
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <!--Panel heading-->
                                    <div class="panel panel-colorful panel-grey shadow-none">
                                        <div class="panel-heading">
                                            <h1 class="panel-title"><?php echo translate('client_information');?></h1>
                                        </div>
                                        <!--List group-->
                                        <table class="table" border="0">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('address_line_1');?></b></td>
                                                    <td><?php echo $info['address1']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('address_line_2');?></b></td>
                                                    <td><?php echo $info['address2']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('zipcode');?></b></td>
                                                    <td><?php echo $info['zip']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('phone');?></b></td>
                                                    <td><?php echo $info['phone']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('e-mail');?></b></td>
                                                    <td><?php echo $info['email']; ?></td>
                                                </tr>
                                            </tbody>
                                        </table>    
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <!--Panel heading-->
                                    <div class="panel panel-bordered-grey shadow-none">
                                        <div class="panel-heading">
                                            <h1 class="panel-title"><?php echo translate('payment_detail');?></h1>
                                        </div>
                                        <!--List group-->
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('payment_status');?></b></td>
                                                    <td><?php echo translate($this->crud_model->sale_payment_status($row['sale_id'])); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('payment_method');?></b></td>
                                                    <td>
                                                        <?php if($info['payment_type'] == 'c2'){
                                                            echo 'TwoCheckout';
                                                        }else{
                                                            echo ucfirst(str_replace('_', ' ', $info['payment_type'])); 
                                                        }?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('payment_date');?></b></td>
                                                    <td><?php echo date('d M, Y',$row['sale_datetime'] );?></td>
                                                </tr>
                                            </tbody>
                                        </table>    
                                    </div>
                                </div>
                           </div>
                        </div>
                    </div>
                </div>


                <?php
                    foreach ($vendors as $ven) {
                ?>
                <div id="half_<?php echo $ven; ?>" class="tab-pane fade">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-lg-6 col-md-6 col-sm-6 pad-all">
                                <img src="<?php echo $this->crud_model->logo('home_top_logo'); ?>" alt="Active Super Shop" width="55%">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 pad-all">
                                <b class="pull-right">
                                    <?php echo translate('invoice_no:');?> :<?php echo $row['sale_code']; ?>/<?php echo $ven; ?> 
                                </b>
                                <br>
                                <b class="pull-right">
                                    <?php echo translate('date_:');?> <?php echo date('d M, Y',$row['sale_datetime'] );?>
                                </b>
                            </div>
                        </div>
                        
                        <div class="col-md-12 pad-top">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                            <!--Panel heading-->
                                <div class="panel panel-bordered-grey shadow-none">
                                    <div class="panel-heading">
                                        <h1 class="panel-title"><?php echo translate('client_information');?></h1>
                                    </div>
                                    <!--List group-->
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td><b><?php echo translate('first_name');?></b></td>
                                                <td><?php echo $info['firstname']; ?></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('last_name');?></b></td>
                                                <td><?php echo $info['lastname']; ?></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('phone');?></b></td>
                                                <td><?php echo $info['phone']; ?>  </td>
                                            </tr>
                                        </tbody>
                                    </table>    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                            <!--Panel heading-->
                                <div class="panel panel-bordered-grey shadow-none">
                                    <div class="panel-heading">
                                        <h1 class="panel-title"><?php echo translate('payment_detail');?></h1>
                                    </div>
                                    <!--List group-->
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td><b><?php echo translate('payment_status');?></b></td>
                                                <td><i><?php echo translate($this->crud_model->sale_payment_status($row['sale_id'],'vendor',$ven)); ?></i></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('payment_method');?></b></td>
                                                <td>
                                                    <?php if($info['payment_type'] == 'c2'){
                                                        echo 'TwoCheckout';
                                                    }else{
                                                        echo ucfirst(str_replace('_', ' ', $info['payment_type'])); 
                                                    }?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('payment_date');?></b></td>
                                                <td><?php echo date('d M, Y',$row['sale_datetime'] );?></td>
                                            </tr>
                                        </tbody>
                                    </table>    
                                </div>
                            </div>
                       </div>
                    </div>

                    <div class="panel-body" id="demo_s">
                        <div class="panel panel-bordered panel-dark shadow-none">
                            <div class="panel-heading">
                                <h1 class="panel-title"><?php echo translate('payment_invoice');?></h1>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo translate('no');?></th>
                                            <th><?php echo translate('item');?></th>
                                            <th><?php echo translate('options');?></th>
                                            <th><?php echo translate('quantity');?></th>
                                            <th><?php echo translate('unit_cost');?></th>
                                            <th><?php echo translate('total');?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $product_details = json_decode($row['product_details'], true);
                                            $i =0;
                                            $total = 0;
                                            $vat = 0;
                                            $shipping = 0;
                                            foreach ($product_details as $row1) {
                                                if($this->crud_model->is_added_by('product',$row1['id'],$ven)){
                                                $i++;
                                        ?>
                                        <tr>
                                            <td><?php echo $i; ?></td>
                                            <td><?php echo $row1['name']; ?></td>
                                            <td>
                                                <?php 
                                                    $all_o = json_decode($row1['option'],true);
                                                    $color = $all_o['color']['value'];
                                                        if($color){
                                                ?>
                                                <div style="background:<?php echo $color; ?>; height:25px; width:25px;" ></div>
                                                <?php
                                                    }
                                                ?>
                                                <?php
                                                    foreach ($all_o as $l => $op) {
                                                        if($l !== 'color' && $op['value'] !== '' && $op['value'] !== NULL){
                                                ?>
                                                    <?php echo $op['title'] ?> : 
                                                    <?php 
                                                        if(is_array($va = $op['value'])){ 
                                                            echo $va = join(', ',$va); 
                                                        } else {
                                                            echo $va;
                                                        }
                                                    ?>
                                                    <br>
                                                <?php
                                                        }
                                                    }
                                                ?>
                                            </td>
                                            <td><?php echo $row1['qty']; ?></td>
                                            <td><?php echo currency('','def').$this->cart->format_number($row1['price']); ?></td>
                                            <td><?php echo currency('','def').$this->cart->format_number($row1['subtotal']); $total += $row1['subtotal']; ?></td>
                                            <?php
                                                $vat += $row1['tax'];
                                                $shipping += $row1['shipping'];
                                            ?>
                                        </tr>
                                        <?php
                                                }
                                            }
                                        ?>
                                    </tbody>
                                </table>
                                <div class="col-lg-6 col-md-6 col-sm-6 pull-right margin-top-20">
                                    <div class="panel panel-colorful panel-grey shadow-none">
                                        <table class="table" border="0">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('sub_total_amount');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($total); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('tax');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($vat); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('shipping');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($shipping); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('grand_total');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($total+$vat+$shipping); ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div> 
                                </div>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <!--List group--> 
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <!--Panel heading-->
                                    <div class="panel panel-colorful panel-grey shadow-none">
                                        <div class="panel-heading">
                                            <h1 class="panel-title"><?php echo translate('client_information');?></h1>
                                        </div>
                                        <!--List group-->
                                        <table class="table" border="0">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('address_line_1');?></b></td>
                                                    <td><?php echo $info['address1']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('address_line_2');?></b></td>
                                                    <td><?php echo $info['address2']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('zipcode');?></b></td>
                                                    <td><?php echo $info['zip']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('phone');?></b></td>
                                                    <td><?php echo $info['phone']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('e-mail');?></b></td>
                                                    <td><?php echo $info['email']; ?></td>
                                                </tr>
                                            </tbody>
                                        </table>    
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <!--Panel heading-->
                                    <div class="panel panel-bordered-grey shadow-none">
                                        <div class="panel-heading">
                                            <h1 class="panel-title"><?php echo translate('payment_detail');?></h1>
                                        </div>
                                        <!--List group-->
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('payment_status');?></b></td>
                                                    <td><?php echo translate($this->crud_model->sale_payment_status($row['sale_id'],'vendor',$ven)); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('payment_method');?></b></td>
                                                    <td>
                                                        <?php if($info['payment_type'] == 'c2'){
                                                            echo 'TwoCheckout';
                                                        }else{
                                                            echo ucfirst(str_replace('_', ' ', $info['payment_type'])); 
                                                        }?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('payment_date');?></b></td>
                                                    <td><?php echo date('d M, Y',$row['sale_datetime'] );?></td>
                                                </tr>
                                            </tbody>
                                        </table>    
                                    </div>
                                </div>
                           </div>
                        </div>
                    </div>
                </div>
                <?php
                    }
                ?>


                <div id="quart" class="tab-pane fade">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-lg-6 col-md-6 col-sm-6 pad-all">
                                <img src="<?php echo $this->crud_model->logo('home_top_logo'); ?>" alt="Active Super Shop" width="55%">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 pad-all">
                                <b class="pull-right">
                                    <?php echo translate('invoice_no:');?> : <?php echo $row['sale_code']; ?> / A
                                </b>
                                <br>
                                <b class="pull-right">
                                    <?php echo translate('date_:');?> <?php echo date('d M, Y',$row['sale_datetime'] );?>
                                </b>
                            </div>
                        </div>
                        
                        <div class="col-md-12 pad-top">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                            <!--Panel heading-->
                                <div class="panel panel-bordered-grey shadow-none">
                                    <div class="panel-heading">
                                        <h1 class="panel-title"><?php echo translate('client_information');?></h1>
                                    </div>
                                    <!--List group-->
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td><b><?php echo translate('first_name');?></b></td>
                                                <td><?php echo $info['firstname']; ?></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('last_name');?></b></td>
                                                <td><?php echo $info['lastname']; ?></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('phone');?></b></td>
                                                <td><?php echo $info['phone']; ?></td>
                                            </tr>
                                        </tbody>
                                    </table>    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                            <!--Panel heading-->
                                <div class="panel panel-bordered-grey shadow-none">
                                    <div class="panel-heading">
                                        <h1 class="panel-title"><?php echo translate('payment_detail');?></h1>
                                    </div>
                                    <!--List group-->
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td><b><?php echo translate('payment_status');?></b></td>
                                                <td><i><?php echo translate($this->crud_model->sale_payment_status($row['sale_id'],'admin')); ?></i></td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('payment_method');?></b></td>
                                                <td>
                                                    <?php if($info['payment_type'] == 'c2'){
                                                        echo 'TwoCheckout';
                                                    }else{
                                                        echo ucfirst(str_replace('_', ' ', $info['payment_type'])); 
                                                    }?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><?php echo translate('payment_date');?></b></td>
                                                <td><?php echo date('d M, Y',$row['sale_datetime'] );?></td>
                                            </tr>
                                        </tbody>
                                    </table>    
                                </div>
                            </div>
                       </div>
                    </div>

                    <div class="panel-body" id="demo_s">
                        <div class="panel panel-bordered panel-dark shadow-none">
                            <div class="panel-heading">
                                <h1 class="panel-title"><?php echo translate('payment_invoice');?></h1>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo translate('no');?></th>
                                            <th><?php echo translate('item');?></th>
                                            <th><?php echo translate('options');?></th>
                                            <th><?php echo translate('quantity');?></th>
                                            <th><?php echo translate('unit_cost');?></th>
                                            <th><?php echo translate('total');?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $product_details = json_decode($row['product_details'], true);
                                            $i =0;
                                            $total = 0;
                                            $vat = 0;
                                            $shipping = 0;
                                            foreach ($product_details as $row1) {
                                                if($this->crud_model->is_added_by('product',$row1['id'],0,'admin')){
                                                $i++;
                                        ?>
                                        <tr>
                                            <td><?php echo $i; ?></td>
                                            <td><?php echo $row1['name']; ?></td>
                                            <td>
                                                <?php 
                                                    $all_o = json_decode($row1['option'],true);
                                                    $color = $all_o['color']['value'];
                                                        if($color){
                                                ?>
                                                <div style="background:<?php echo $color; ?>; height:25px; width:25px;" ></div>
                                                <?php
                                                    }
                                                ?>
                                                <?php
                                                    foreach ($all_o as $l => $op) {
                                                        if($l !== 'color' && $op['value'] !== '' && $op['value'] !== NULL){
                                                ?>
                                                    <?php echo $op['title'] ?> : 
                                                    <?php 
                                                        if(is_array($va = $op['value'])){ 
                                                            echo $va = join(', ',$va); 
                                                        } else {
                                                            echo $va;
                                                        }
                                                    ?>
                                                    <br>
                                                <?php
                                                        }
                                                    }
                                                ?>
                                            </td>
                                            <td><?php echo $row1['qty']; ?></td>
                                            <td><?php echo currency('','def').$this->cart->format_number($row1['price']); ?></td>
                                            <td><?php echo currency('','def').$this->cart->format_number($row1['subtotal']); $total += $row1['subtotal']; ?></td>
                                            <?php
                                                $vat += $row1['tax'];
                                                $shipping += $row1['shipping'];
                                            ?>
                                        </tr>
                                        <?php
                                                }
                                            }
                                        ?>
                                    </tbody>
                                </table>
                                <div class="col-lg-6 col-md-6 col-sm-6 pull-right margin-top-20">
                                    <div class="panel panel-colorful panel-grey shadow-none">
                                        <table class="table" border="0">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('sub_total_amount');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($total); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('tax');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($vat); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('shipping');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($shipping); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('grand_total');?></b></td>
                                                    <td><?php echo currency('','def').$this->cart->format_number($total+$vat+$shipping); ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div> 
                                </div>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <!--List group--> 
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <!--Panel heading-->
                                    <div class="panel panel-colorful panel-grey shadow-none">
                                        <div class="panel-heading">
                                            <h1 class="panel-title"><?php echo translate('client_information');?></h1>
                                        </div>
                                        <!--List group-->
                                        <table class="table" border="0">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('address_line_1');?></b></td>
                                                    <td><?php echo $info['address1']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('address_line_2');?></b></td>
                                                    <td><?php echo $info['address2']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('zipcode');?></b></td>
                                                    <td><?php echo $info['zip']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('phone');?></b></td>
                                                    <td><?php echo $info['phone']; ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('e-mail');?></b></td>
                                                    <td><?php echo $info['email']; ?></td>
                                                </tr>
                                            </tbody>
                                        </table>    
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <!--Panel heading-->
                                    <div class="panel panel-bordered-grey shadow-none">
                                        <div class="panel-heading">
                                            <h1 class="panel-title"><?php echo translate('payment_detail');?></h1>
                                        </div>
                                        <!--List group-->
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td><b><?php echo translate('payment_status');?></b></td>
                                                    <td><?php echo translate($this->crud_model->sale_payment_status($row['sale_id'],'admin')); ?></td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('payment_method');?></b></td>
                                                    <td>
                                                        <?php if($info['payment_type'] == 'c2'){
                                                            echo 'TwoCheckout';
                                                        }else{
                                                            echo ucfirst(str_replace('_', ' ', $info['payment_type'])); 
                                                        }?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b><?php echo translate('payment_date');?></b></td>
                                                    <td><?php echo date('d M, Y',$row['sale_datetime'] );?></td>
                                                </tr>
                                            </tbody>
                                        </table>    
                                    </div>
                                </div>
                           </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row" style="height:300px;" id="mapa"></div>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2 print_btn">
            <span class="btn btn-success pull-right btn-md btn-labeled fa fa-reply margin-top-10"
                onclick="print()" >
                    <?php echo translate('print');?>
            </span>
        </div>
    </div>
</div>
<!--End Invoice Footer-->
<?php
    $position = explode(',',str_replace('(', '', str_replace(')', '',$info['langlat'])));
?>
        
<script>
	$.getScript("http://maps.google.com/maps/api/js?v=3.exp&signed_in=true&callback=MapApiLoaded&key=AIzaSyCKhUGmHgFJ-hPY_QbyG6wcBJMDQnXiPEg", function () {});
	function MapApiLoaded() {
		var map;
		function initialize() {
		  var mapOptions = {
			zoom: 16,
			center: {lat: <?php echo $position[0]; ?>, lng: <?php echo $position[1]; ?>}
		  };
		  map = new google.maps.Map(document.getElementById('mapa'),
			  mapOptions);
	
		  var marker = new google.maps.Marker({
			position: {lat: <?php echo $position[0]; ?>, lng: <?php echo $position[1]; ?>},
			map: map
		  });
	
		  var infowindow = new google.maps.InfoWindow({
			content: '<p><?php echo translate('marker_location'); ?>:</p><p><?php echo $info['address1']; ?> </p><p><?php echo $info['address2']; ?> </p><p><?php echo translate('city'); ?>: <?php echo $info['city']; ?> </p><p><?php echo translate('ZIP'); ?>: <?php echo $info['zip']; ?> </p>'
		  });
		  google.maps.event.addListener(marker, 'click', function() {
			infowindow.open(map, marker);
		  });
		}
		initialize();
	}
</script>

<?php
	}
?>
<style>
@media print {
	.print_btn{
		display:none;	
	}
    #navbar-container{
        display: none;
    }
    #page-title{
        display: none;
    }
	#mapa{
		display: none;
	}
	.panel-heading{
		display: none;
	}
    .print{
        width: 100%;
    }
    .col-md-6{
        width: 50%;
        float: left;
    }
}
</style>
