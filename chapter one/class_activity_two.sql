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
from inventory where QuantityOnHand between 1  and 10 ;

-- 2.31
select SKU,SKU_Description
from inventory where SKU_Description like "Half-dome%";

-- 2.32
select SKU, SKU_Description
from inventory where SKU_Description like "%Climb%";

-- 2.33
select SKU, SKU_Description
from inventory where SKU_Description like "__d%";

-- 2.34

-- 2.36
select warehouseID,
sum(QuantityOnHand) as TotalItemsOnHand
from inventory group by WarehouseID
order by TotalItemsOnHand desc;

-- 2.37
select warehouseID,
sum(QuantityOnHand) as TotalItemsOnHandLT3
from inventory where QuantityOnHand < 3
group by WarehouseID
order by TotalItemsOnHandLT3 desc;

-- 2.38
-- select warehouseId,
-- sum(QuantityOnHand) as TotalItemsOnHand
-- from inventory group by WarehouseID;

-- 2.40
select i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity, w.WarehouseState
 from inventory i join Warehouse w on i.WarehouseID = w.WarehouseID
where w.WarehouseCity = 'Atlanta' or w.WarehouseCity = 'Bangor' or w.WarehouseCity = 'Chicago';
    
-- 2.41
select i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity, w.WarehouseState
from inventory 
where w.WarehouseCity  in ("Atlanta" or "Bangor" or "Chicago");
    
-- 2.42
select SKU, SKU_Description, WarehouseID, WarehouseCity, WarehouseState
from inventory where 
	WarehouseCity = "Atlanta" or WarehouseCity = "Bangor" or WarehouseCity = "Chicago";

-- 2.43
select SKU, SKU_Description, WarehouseID, WarehouseCity, WarehouseState
from inventory where 
	WarehouseCity  not in ("Atlanta" or "Bangor" or "Chicago");
        
