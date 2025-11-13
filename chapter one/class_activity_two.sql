use cape_codd;

-- 2.17
select SKU_Description, SKU
from inventory;

-- 2.18
select SKU, SKU_Description
from inventory;

-- 2.19
select warehouseID
from inventory;

-- 2.20
select distinct warehouseID
from inventory;

-- 2.21
select  warehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
from inventory;

-- 2.22
select *
from inventory;

-- 2.23
select *
from inventory WHERE  QuantityOnHand > 0;

-- 2.24
select SKU,SKU_Description 
from inventory where QuantityOnHand = 0;

-- 2.25
select SKU,SKU_Description, warehouseID
from inventory where QuantityOnHand = 0
order by WarehouseID asc;

-- 2.26
select SKU,SKU_Description, warehouseID
from inventory where QuantityOnHand > 0
order by WarehouseID desc, SKU asc;

-- 2.27
select SKU,SKU_Description, warehouseID
from inventory where QuantityOnHand = 0 and QuantityOnOrder > 0
order by WarehouseID desc, SKU asc;

-- 2.28
select SKU,SKU_Description, warehouseID
from inventory where QuantityOnHand = 0 or QuantityOnOrder = 0
order by WarehouseID desc, SKU asc;

-- 2.29
select SKU,SKU_Description, warehouseID, QuantityOnHand
from inventory where QuantityOnHand > 1 and QuantityOnHand < 10 ;

-- 2.30
select SKU,SKU_Description, warehouseID, QuantityOnHand
from inventory where QuantityOnHand between 1  and 10 

-- 2.31
select SKU,SKU_Description, warehouseID, QuantityOnHand
from inventory where SKU_Description = "Half-dome";




