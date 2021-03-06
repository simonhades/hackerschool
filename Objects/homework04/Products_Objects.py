Button_woman = "class=sf-with-ul"
Loader_not_visible = "//ul[@class='product_list grid row' and contains(@style,'opacity: 1')]"
Sort_by_dropdown = "id=selectProductSort"
Remove_filter = "//*[contains(@class, 'icon-remove')]"       
Product = "//*[contains(@class, 'product-container')]"

Product_price = "(//div[@class='right-block']//span[@itemprop='price'])[1]"      
Product_price_2 = "(//div[@class='right-block']//span[@itemprop='price'])[2]"
Product_price_3 = "(//div[@class='right-block']//span[@itemprop='price'])[3]"  
Product_price_4 = "(//div[@class='right-block']//span[@itemprop='price'])[4]"  
Product_price_5 = "(//div[@class='right-block']//span[@itemprop='price'])[5]"  
Product_price_6 = "(//div[@class='right-block']//span[@itemprop='price'])[6]"  
Product_price_7 = "(//div[@class='right-block']//span[@itemprop='price'])[7]"
 
Product_name = "(//*[(@class='right-block')]//a[(@class='product-name')])[1]"
Product_name_2 = "(//*[(@class='right-block')]//a[(@class='product-name')])[2]"
Product_name_3 = "(//*[(@class='right-block')]//a[(@class='product-name')])[3]"
Product_name_4 = "(//*[(@class='right-block')]//a[(@class='product-name')])[4]"
Product_name_5 = "(//*[(@class='right-block')]//a[(@class='product-name')])[5]"
Product_name_6 = "(//*[(@class='right-block')]//a[(@class='product-name')])[6]"
Product_name_7 = "(//*[(@class='right-block')]//a[(@class='product-name')])[7]"
    
filters = {
		   'categories_tops': "//input[contains(@name, 'layered_category_4')]",
		   'categories_dresses': "//input[contains(@name, 'layered_category_8')]",
		   'size_s': "//input[contains(@name, 'layered_category_4')]",
		   'size_m': "//input[contains(@name, 'layered_category_4')]",
		   'size_l': "//input[contains(@name, 'layered_category_4')]",
           'color_beige': "//input[contains(@name, 'layered_id_attribute_group_7')]",
           'color_white': "//input[contains(@name, 'layered_id_attribute_group_8')]",
           'color_black': "//input[contains(@name, 'layered_id_attribute_group_11')]",
           'color_orange': "//input[contains(@name, 'layered_id_attribute_group_13')]",
           'color_blue': "//input[contains(@name, 'layered_id_attribute_group_14')]",
           'color_green': "//input[contains(@name, 'layered_id_attribute_group_15')]",
           'color_yellow': "//input[contains(@name, 'layered_id_attribute_group_16')]",
           'color_pink': "//input[contains(@name, 'layered_id_attribute_group_24')]",           
           'compositions_cotton': "//input[contains(@name, 'layered_id_feature_5')]",
           'compositions_polyester': "//input[contains(@name, 'layered_id_feature_1')]",
           'compositions_viscose': "//input[contains(@name, 'layered_id_feature_3')]",                  
           'styles_casual': "//input[contains(@name, 'layered_id_feature_11')]",
           'styles_dressy': "//input[contains(@name, 'layered_id_feature_16')]",
           'styles_girly': "//input[contains(@name, 'layered_id_feature_13')]",
           'properties_colorful_dress': "//input[contains(@name, 'layered_id_feature_18')]",
           'properties_maxi_dress': "//input[contains(@name, 'layered_id_feature_21')]",
           'properties_midi_dress': "//input[contains(@name, 'layered_id_feature_20')]",
           'properties_short_dress': "//input[contains(@name, 'layered_id_feature_19')]",
           'properties_short_sleeve': "//input[contains(@name, 'layered_id_feature_17')]",
           'availability_in_stock': "//input[contains(@name, 'layered_quantity_1')]",
           'manufacturer_fashion_manufacturer': "//input[contains(@name, 'layered_manufacturer_1')]",
           'condition_new': "//input[contains(@name, 'layered_condition_new')]",
           }
           
