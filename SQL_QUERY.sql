CREATE TABLE F1 (
  item varchar(255),
  item_ID varchar(255)
);

INSERT INTO F1 (item, item_ID)
SELECT DISTINCT item, item_id FROM fabrication;

select * from F1;

CREATE TABLE F2 (
  item varchar(255) PRIMARY KEY,
  raw_material varchar(255)
);


INSERT INTO F2 (item, raw_material)
SELECT DISTINCT item, raw_material FROM fabrication
ON DUPLICATE KEY UPDATE raw_material = VALUES(raw_material);

DELETE FROM F2
WHERE item IS NULL OR item = '';

Select * from F2;

CREATE TABLE F3 (
  item_ID varchar(255),
  quantity varchar(255),
  in_date varchar(255),
  out_date varchar(255)
);

INSERT INTO F3 (item_id, quantity, in_date, out_date)
SELECT DISTINCT item_id, quantity, in_date, out_date FROM fabrication;

select * from F3;


ALTER TABLE subassembly
ADD key_ID VARCHAR(255);

select * from subassembly;

UPDATE subassembly
SET key_ID = CONCAT(Assembly_ID, '_', Machine_ID)
WHERE Assembly_ID = Assembly_ID;

select * from subassembly;


DELETE FROM subassembly
WHERE Machine_ID IS NULL OR Machine_ID = '';

select * from subassembly;


SELECT  F2.raw_material, F1.item_ID, F1.item
FROM F1, F2 WHERE F2.item = F1.item;


SELECT F1.item_ID, F2.raw_material, F2.item, F3.quantity, F3.in_date, F3.out_date
FROM F1
JOIN F2 ON F1.item = F2.item
JOIN F3 ON F1.item_ID = F3.item_ID;


SELECT F1.item_ID, F2.raw_material, F2.item, F3.quantity, F3.in_date, F3.out_date, subassembly.Assembly_ID, subassembly.End_Date, subassembly.key_ID, 
subassembly.Machine_ID, subassembly.Process, subassembly.Start_Date
FROM F1
JOIN F2 ON F1.item = F2.item
JOIN F3 ON F1.item_ID = F3.item_ID
JOIN subassembly ON F1.item_ID = subassembly.Item_ID;


SELECT F1.item_ID, F2.raw_material, F2.item, F3.quantity, F3.in_date, F3.out_date, subassembly.Assembly_ID, subassembly.End_Date, subassembly.key_ID, 
subassembly.Machine_ID, subassembly.Process, subassembly.Start_Date
FROM F1
JOIN F2 ON F1.item = F2.item
JOIN F3 ON F1.item_ID = F3.item_ID
JOIN subassembly ON F1.item_ID = subassembly.Item_ID
JOIN assembly on assembly.Process_ID  = subassembly.key_ID;


CREATE TABLE fabrication_new (
    Item text,
    Item_ID text,
    raw_material text,
    Quantity text,
    In_date text,
    Out_date text
);

INSERT INTO fabrication_NEW (Item_ID, raw_material, Item, Quantity, In_date, Out_date)
SELECT F1.item_ID, F2.raw_material, F2.item, F3.quantity, F3.in_date, F3.out_date
FROM F1
JOIN F2 ON F1.item = F2.item
JOIN F3 ON F1.item_ID = F3.item_ID;

select * from fabrication_new;

select * from F1;
select * from F2;
select * from F3;