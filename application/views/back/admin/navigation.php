<?php
$physical_check = $this->crud_model->get_type_name_by_id('general_settings','68','value');
$digital_check = $this->crud_model->get_type_name_by_id('general_settings','69','value');
$bundle_check = $this->crud_model->get_type_name_by_id('general_settings','82','value');
$customer_product_check = $this->crud_model->get_type_name_by_id('general_settings','83','value');
?>
<nav id="mainnav-container">
    <div id="mainnav">
        <!--Menu-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content" style="overflow-x:auto;">
                    <ul id="mainnav-menu" class="list-group">
                        <!--Category name-->
                        <li class="list-header"></li>
                        <!--Menu list item-->
                        <li <?php if($page_name=="dashboard"){?> class="active-link" <?php } ?> 
                        	style="border-top:1px solid rgba(69, 74, 84, 0.7);">
                            <a href="<?php echo base_url(); ?>admin/">
                                <i class="fa fa-tachometer"></i>
                                <span class="menu-title">
									<?php echo translate('dashboard');?>
                                </span>
                            </a>
                        </li>
                        <?php
						if($physical_check == 'ok' && $digital_check == 'ok'){
							if($this->crud_model->admin_permission('category') ||
                                    $this->crud_model->admin_permission('sub_category') ||
										$this->crud_model->admin_permission('brand') || 
                                        	$this->crud_model->admin_permission('product') || 
                                            	$this->crud_model->admin_permission('stock') ||
                                                    $this->crud_model->admin_permission('product_bundle') ||
													   $this->crud_model->admin_permission('category_digital') ||
                                    					   $this->crud_model->admin_permission('sub_category_digital') ||
                                        					       $this->crud_model->admin_permission('digital') ){
						?>
                        <li <?php if($page_name=="category" || 
                                        $page_name=="sub_category" || 
                                            $page_name=="product" || 
                                                $page_name=="stock" ||
                                                    $page_name=="product_bundle" ||
													    $page_name=="category_digital" || 
                                        				    $page_name=="sub_category_digital"||
                                           					        $page_name=="digital" ){?>
                                                     			class="active-sub" 
                                                       				<?php } ?> >
                            <a href="#">
                                <i class="fa fa-shopping-cart"></i>
                                    <span class="menu-title">
                                        <?php echo translate('products');?>
                                    </span>
                                	<i class="fa arrow"></i>
                            </a>
            
                            <!--PRODUCT------------------>
                            <ul class="collapse <?php if($page_name=="category" || 
                                                            $page_name=="sub_category" ||  
                                                                $page_name=="product" ||
                                                                    $page_name=="brand" ||
                                                                        $page_name=="stock" ||
                                                                            $page_name=="product_bundle" ||
                                                                                $page_name=="category_digital" || 
                                                                                    $page_name=="sub_category_digital" ||
                                                                                        
                                                                                            $page_name=="digital" ){?>
                                                                             		in
                                                                                		<?php } ?> >" >
							<?php
                                if($this->crud_model->admin_permission('category') ||
                                    $this->crud_model->admin_permission('sub_category') ||
										$this->crud_model->admin_permission('brand') || 
                                            $this->crud_model->admin_permission('product') || 
                                                $this->crud_model->admin_permission('stock') ||
                                                    $this->crud_model->admin_permission('product_bundle')){
                            ?>
                            <!--Menu list item-->
                                <li <?php if($page_name=="category" || 
                                                $page_name=="sub_category" || 
													$page_name=="brand" ||
                                                    $page_name=="product" || 
                                                            $page_name=="stock" ||
                                                                $page_name=="product_bundle"){?>
                                                                class="active-sub" 
                                                                    <?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-list"></i>
                                            <span class="menu-title">
                                                <?php echo translate('physical_products');?>
                                            </span>
                                            <i class="fa arrow"></i>
                                    </a>
                    
                                    <!--PRODUCT------------------>
                                    <ul class="collapse <?php if($page_name=="category" || 
                                                                    $page_name=="sub_category" ||  
                                                                        $page_name=="product" || 
                                                                            $page_name=="brand" ||
                                                                                $page_name=="stock" ||
                                                                                    $page_name=="product_bundle"){?>
                                                                                     in
                                                                                        <?php } ?> " >
                                        
                                        <?php
                                            if($this->crud_model->admin_permission('category')){
                                        ?>                                            
                                            <li <?php if($page_name=="category"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/category">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('category');?>
                                                </a>
                                            </li>
										<?php
                                        	} if($this->crud_model->admin_permission('brand')){
                                        ?>
                                            <li <?php if($page_name=="brand"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/brand">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('brands');?>
                                                </a>
                                            </li>
                                        <?php
                                            } if($this->crud_model->admin_permission('sub_category')){
                                        ?>
                                            <li <?php if($page_name=="sub_category"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/sub_category">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('sub-category');?>
                                                </a>
                                            </li>
                                        <?php
                                        } if($this->crud_model->admin_permission('product')){
                                            ?>
                                            <li <?php if($page_name=="product"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/product">
                                                    <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('all_products');?>
                                                </a>
                                            </li>                                        
                                        <?php
                                            } if($this->crud_model->admin_permission('stock')){
                                        ?>
                                            <li <?php if($page_name=="stock"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/stock">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('product_stock');?>
                                                </a>
                                            </li>
                                        <?php
                                            } if($this->crud_model->admin_permission('product_bundle') && $bundle_check == 'ok'){
                                        ?>
                                            <li <?php if($page_name=="product_bundle"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/product_bundle">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('product_bundle');?>
                                                </a>
                                            </li>
                                        <?php
                                            }
                                        ?>
                                    </ul>
                                </li>
                          
                            <?php
                                }
                            ?>
                            
                            <?php
                                if($this->crud_model->admin_permission('category_digital') ||
                                    $this->crud_model->admin_permission('sub_category_digital') || 
                                            $this->crud_model->admin_permission('digital') ){
                            ?>
                            <!--Menu list item-->
                                <li <?php if($page_name=="category_digital" || 
                                                $page_name=="sub_category_digital" ||
                                                     
                                                        $page_name=="digital" ){?>
                                                             class="active-sub" 
                                                                <?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-list-ul"></i>
                                            <span class="menu-title">
                                                <?php echo translate('digital_products');?>
                                            </span>
                                            <i class="fa arrow"></i>
                                    </a>
                                    <!--digital------------------>
                                    <ul class="collapse <?php if($page_name=="category_digital" || 
                                                                    $page_name=="sub_category_digital" ||
                                                                          
                                                                            $page_name=="digital" ){?>
                                                                                     in
                                                                                        <?php } ?> >" >
                                        
                                        <?php
                                            if($this->crud_model->admin_permission('category')){
                                        ?>                                            
                                            <li <?php if($page_name=="category_digital"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/category_digital">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('category');?>
                                                </a>
                                            </li>
                                        <?php
                                            } if($this->crud_model->admin_permission('sub_category')){
                                        ?>
                                            <li <?php if($page_name=="sub_category_digital"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/sub_category_digital">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('sub-category');?>
                                                </a>
                                            </li>
                                        <?php
                                            } if($this->crud_model->admin_permission('digital')){
                                        ?>
                                            <li <?php if($page_name=="digital"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/digital">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('all_digitals');?>
                                                </a>
                                            </li>
                                        <?php
                                            } ?>
                                    </ul>
                                </li>
                          
                            <?php
                                }
                            ?>
                            </ul>
                        </li>
                        <?php
							}
						}
						?>
                        <?php
						if($physical_check == 'ok' && $digital_check !== 'ok'){
							if($this->crud_model->admin_permission('category') ||
								$this->crud_model->admin_permission('sub_category') ||
									$this->crud_model->admin_permission('brand') || 
									$this->crud_model->admin_permission('product') || 
										$this->crud_model->admin_permission('product_bundle') ||
                                        $this->crud_model->admin_permission('stock') ){
						?>
						<!--Menu list item-->
							<li <?php if($page_name=="category" || 
											$page_name=="sub_category" || 
												$page_name=="brand" ||
                                                $page_name=="product" || 
												        $page_name=="product_bundle" || 
													        $page_name=="stock" ){?>
														        class="active-sub" 
															     <?php } ?> >
								<a href="#">
									<i class="fa fa-list"></i>
										<span class="menu-title">
											<?php echo translate('products');?>
										</span>
										<i class="fa arrow"></i>
								</a>
				
								<!--PRODUCT------------------>
								<ul class="collapse <?php if($page_name=="category" || 
																$page_name=="sub_category" ||  
																	$page_name=="product" ||
																		    $page_name=="brand" ||
                                                                                $page_name=="product_bundle" ||
																			        $page_name=="stock" ){?>
																				        in
																					        <?php } ?> " >
									
									<?php
										if($this->crud_model->admin_permission('category')){
									?>                                            
										<li <?php if($page_name=="category"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/category">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('category');?>
											</a>
										</li>
									<?php
										} if($this->crud_model->admin_permission('brand')){
									?>
										<li <?php if($page_name=="brand"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/brand">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('brands');?>
											</a>
										</li>
									<?php
										} if($this->crud_model->admin_permission('sub_category')){
									?>
										<li <?php if($page_name=="sub_category"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/sub_category">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('sub-category');?>
											</a>
										</li>
									<?php
										} if($this->crud_model->admin_permission('product')){
									?>
										<li <?php if($page_name=="product"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/product">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('all_products');?>
											</a>
										</li>
    									<?php
										} if($this->crud_model->admin_permission('product_bundle') && $bundle_check == 'ok'){
                                        ?>
                                            <li <?php if($page_name=="product_bundle"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/product_bundle">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('product_bundle');?>
                                                </a>
                                            </li>
                                        <?php
                                            } if($this->crud_model->admin_permission('stock')){
									?>
										<li <?php if($page_name=="stock"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/stock">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('product_stock');?>
											</a>
										</li>
									<?php
										}
									?>
								</ul>
							</li>
					  
						<?php
							}
						}
						?>
                        <?php
						if($physical_check !== 'ok' && $digital_check == 'ok'){
							if($this->crud_model->admin_permission('category_digital') ||
								$this->crud_model->admin_permission('sub_category_digital') || 
									$this->crud_model->admin_permission('digital') ){
						?>
						<!--Menu list item-->
							<li <?php if($page_name=="category_digital" || 
											$page_name=="sub_category_digital" || 
												$page_name=="digital" ){?>
														 class="active-sub" 
															<?php } ?> >
								<a href="#">
									<i class="fa fa-list-ul"></i>
										<span class="menu-title">
											<?php echo translate('products');?>
										</span>
										<i class="fa arrow"></i>
								</a>
								<!--digital------------------>
								<ul class="collapse <?php if($page_name=="category_digital" || 
																$page_name=="sub_category_digital" ||  
																	$page_name=="digital" ){?>
																				 in
																					<?php } ?> >" >
									
									<?php
										if($this->crud_model->admin_permission('category')){
									?>                                            
										<li <?php if($page_name=="category_digital"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/category_digital">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('category');?>
											</a>
										</li>
									<?php
										} if($this->crud_model->admin_permission('sub_category')){
									?>
										<li <?php if($page_name=="sub_category_digital"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/sub_category_digital">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('sub-category');?>
											</a>
										</li>
									<?php
										} if($this->crud_model->admin_permission('digital')){
									?>
										<li <?php if($page_name=="digital"){?> class="active-link" <?php } ?> >
											<a href="<?php echo base_url(); ?>admin/digital">
												<i class="fa fa-circle fs_i"></i>
													<?php echo translate('all_products');?>
											</a>
										</li>
									<?php
										}
									?>
								</ul>
							</li>
					  
						<?php
							}
						}
						?>
                        <!--SALE-------------------->
                        <?php
                            if($this->crud_model->admin_permission('customer_products') && $customer_product_check == 'ok'){
                        ?>
                        <li <?php if($page_name=="customer_products"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>admin/customer_products/">
                                <i class="fa fa-shopping-cart"></i>
                                    <span class="menu-title">
                                        <?php echo translate('classified_products');?>
                                    </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('delete_all_categories') ||
                                $this->crud_model->admin_permission('delete_all_products') || 
                                        $this->crud_model->admin_permission('delete_all_brands') ){
                        ?>
                        <!--Menu list item-->
                            <li <?php if($page_name=="delete_all_categories" || 
                                            $page_name=="delete_all_products" ||
                                                $page_name=="delete_all_brands"){?>
                                                         class="active-sub" 
                                                            <?php } ?> >
                                <a href="#">
                                    <i class="fa fa-trash"></i>
                                        <span class="menu-title">
                                            <?php echo translate('delete_contents');?>
                                        </span>
                                        <i class="fa arrow"></i>
                                </a>
                                <!--digital------------------>
                                <ul class="collapse <?php if($page_name=="delete_all_categories" || 
                                                                $page_name=="delete_all_products" ||
                                                                    $page_name=="delete_all_brands"){?>
                                                                                 in
                                                                                    <?php } ?> >" >
                                    
                                    <?php
                                        if($this->crud_model->admin_permission('category')){
                                    ?>                                            
                                        <li <?php if($page_name=="delete_all_categories"){?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/delete_all_categories">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('delete_all_categories');?>
                                            </a>
                                        </li>
                                    <?php
                                        } if($this->crud_model->admin_permission('sub_category')){
                                    ?>
                                        <li <?php if($page_name=="delete_all_products"){?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/delete_all_products">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('delete_all_products');?>
                                            </a>
                                        </li>
                                    <?php
                                        } if($this->crud_model->admin_permission('delete_all_brands')){
                                    ?>
                                        <li <?php if($page_name=="delete_all_brands"){?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/delete_all_brands">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('delete_all_brands');?>
                                            </a>
                                        </li>
                                    
                                    <?php
                                        } ?>
                                </ul>
                            </li>
                      
                        <?php
                            }
                        ?> 
                        <?php
                            if($this->crud_model->admin_permission('package_payment') && $customer_product_check == 'ok'){
                        ?>
                        <li <?php if($page_name=="package_payment"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>admin/package_payment/">
                                <i class="fa fa-gift"></i>
                                    <span class="menu-title">
                                        <?php echo translate('customer_package_payments');?>
                                    </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
						<?php
							if($this->crud_model->admin_permission('sale')){
						?>
                        <li <?php if($page_name=="sales"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>admin/sales/">
                                <i class="fa fa-usd"></i>
                                    <span class="menu-title">
                                		<?php echo translate('sale');?>
                                    </span>
                            </a>
                        </li>
                        <?php
							}
						?>
                        <?php
							if($this->crud_model->admin_permission('ticket')){
						?>
                        <li <?php if($page_name=="ticket"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>admin/ticket/">
                                <i class="fa fa-life-ring"></i>
                                    <span class="menu-title">
                                		<?php echo translate('ticket');?>
                                    </span>
                            </a>
                        </li>
                        <?php
							}
						?>
                        <?php
							if($this->crud_model->admin_permission('report')){
						?>
                        <li <?php if($page_name=="report_stock"){?>
                                                     class="active-sub" 
                                                        <?php } ?>>
                            <a href="#">
                                <i class="fa fa-file-text"></i>
                                    <span class="menu-title">
                                		<?php echo translate('reports');?>
                                    </span>
                                		<i class="fa arrow"></i>
                            </a>
                            
                            <!--REPORT-------------------->
                            <ul class="collapse <?php if($page_name=="report_stock"){?>
                                                                             in
                                                                                <?php } ?> ">
                                
                                <?php
                                if($physical_check=='ok'){
								?>
                                <li <?php if($page_name=="report_stock"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/report_stock/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('product_stock');?>
                                    </a>
                                </li>
                                <?php
								}
								?>
                            </ul>
                        </li>
                        <?php
							}
						?>
                        <?php
						if($this->crud_model->get_type_name_by_id('general_settings','58','value') == 'ok'){
                            if($this->crud_model->admin_permission('vendor') ||
                                $this->crud_model->admin_permission('membership_payment') ||
                                    $this->crud_model->admin_permission('membership')){
                        ?>
                        <li <?php if($page_name=="vendor" || 
                                    $page_name=="vendor_commission" ||
                                        $page_name=="membership_payment" ||
											$page_name=="slides_vendor" ||
                                            	$page_name=="membership" ){?>
                                                     class="active-sub" 
                                                        <?php } ?>>
                            <a href="#">
                                <i class="fa fa-user-plus"></i>
                                    <span class="menu-title">
                                        <?php echo translate('vendors');?>
                                    </span>
                                        <i class="fa arrow"></i>
                            </a>
                            
                            <!--REPORT-------------------->
                            <ul class="collapse <?php if($page_name=="vendor" || 
                                                        $page_name=="vendor_commission" ||
                                                            $page_name=="membership_payment" ||
																$page_name=="pay_to_vendor" ||
																	$page_name=="slides_vendor" ||
                                                                		$page_name=="membership" ){?>
                                                                             in
                                                                                <?php } ?> ">
                                <li <?php if($page_name=="vendor"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/vendor/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('vendor_list');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="pay_to_vendor"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/pay_to_vendor/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('pay_to_vendor');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="membership_payment"){?> class="active-link" <?php } ?> >
                                    <?php if($this->db->get_where('business_settings', array('type' => 'commission_set'))->row()->value == 'no'){?>
                                    <a href="<?php echo base_url(); ?>admin/membership_payment/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('package_payments');?>
                                    </a>
                                    <?php }?>
                                </li>
                                <li <?php if($page_name=="membership"){?> class="active-link" <?php } ?> >
                                    <?php if($this->db->get_where('business_settings', array('type' => 'commission_set'))->row()->value == 'no'){?>
                                    <a href="<?php echo base_url(); ?>admin/membership/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('vendor_packages');?>
                                    </a>
                                    <?php }?>
                                </li>
                                <li <?php if($page_name=="vendor_commission"){?> class="active-link" <?php } ?> >
                                    <?php if($this->db->get_where('business_settings', array('type' => 'commission_set'))->row()->value == 'yes'){?>
                                    <a href="<?php echo base_url(); ?>admin/vendor_commission/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('vendor_commission');?>
                                    </a>
                                    <?php }?>
                                </li>
                                <li <?php if($page_name=="slides_vendor"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/slides/vendor">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('vendor\'s_slides');?>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <?php
                            }
						}
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('user') ){
                        ?>
                        <li <?php if($page_name=="user" || 
                                        $page_name=="wallet_load" ||
                                            $page_name=="package"){?>
                                             class="active-sub" 
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span class="menu-title">
                                    <?php echo translate('customers');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="user" || 
                                                            $page_name=="wallet_load" || $page_name=="package"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
                                <?php
                                    if($this->crud_model->admin_permission('user')){
                                ?>
                                <li <?php if($page_name=="user"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/user">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('customers');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->crud_model->admin_permission('user') && $this->crud_model->get_type_name_by_id('general_settings','84','value') == 'ok'){
                                ?>
                                <li <?php if($page_name=="wallet_load"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/wallet_load">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('wallet_loads');?>
                                    </a>
                                </li>
                                <?php
                                }
                                if ($this->crud_model->admin_permission('package') && $customer_product_check == 'ok') {
                                ?>
                                 <li <?php if($page_name=="package"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/package">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('premium_package');?>
                                    </a>
                                </li>
                                <?php } ?>
                            </ul>
                        </li>
                        <?php
                            }
                        ?>
            			
            			<?php
                        	if($this->crud_model->admin_permission('role') ||
								$this->crud_model->admin_permission('admin') ){
						?>
                        <li <?php if($page_name=="role" || 
                                        $page_name=="admin" ){?>
                                             class="active-sub" 
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">
                                	<?php echo translate('staffs');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="admin" || 
															$page_name=="role"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
								<?php
                                    if($this->crud_model->admin_permission('admin')){
                                ?>
                                <li <?php if($page_name=="admin"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/admins/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('all_staffs');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->crud_model->admin_permission('role')){
                                ?>
                                <!--Menu list item-->
                                <li <?php if($page_name=="role"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/role/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('staff_permissions');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>
                        <li <?php if($page_name=="manage_admin"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>admin/manage_admin/">
                                <i class="fa fa-lock"></i>
                                <span class="menu-title">
                                	<?php echo translate('manage_admin_profile');?>
                                </span>
                            </a>
                        </li>
                </div>
            </div>
        </div>
    </div>
</nav>
<style>
.activate_bar{
border-left: 3px solid #1ACFFC;	
transition: all .6s ease-in-out;
}
.activate_bar:hover{
border-bottom: 3px solid #1ACFFC;
transition: all .6s ease-in-out;
background:#1ACFFC !important;
color:#000 !important;	
}
ul ul ul li a{
	padding-left:80px !important;
}
ul ul ul li a:hover{
	background:#2f343b !important;
}
</style>