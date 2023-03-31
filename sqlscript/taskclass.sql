delete from emergency.taskclass ;

delete from emergency.departmemtno ;

delete from emergency.message_status ;

delete from emergency.item_status ;

delete from emergency.people_return_chart;

delete from emergency.stage_chart;

delete from emergency.chief_name_get;

INSERT INTO emergency.taskclass (task_no,task_class) VALUES ("a","準備待命");
INSERT INTO emergency.taskclass (task_no,task_class) VALUES ("b","狀況處理");
INSERT INTO emergency.taskclass (task_no,task_class) VALUES ("c","狀況解除");

INSERT INTO emergency.departmemtno (departmemt_no,departmemt_name) VALUES ("a","指揮");
INSERT INTO emergency.departmemtno (departmemt_no,departmemt_name) VALUES ("b","執行");
INSERT INTO emergency.departmemtno (departmemt_no,departmemt_name) VALUES ("c","計畫");
INSERT INTO emergency.departmemtno (departmemt_no,departmemt_name) VALUES ("d","後勤");

INSERT INTO emergency.message_status (status_no,status) VALUES (1,"正在處理");
INSERT INTO emergency.message_status (status_no,status) VALUES (2,"完成");
INSERT INTO emergency.message_status (status) VALUES ("未回覆");


INSERT INTO emergency.item_status (item_status_no,status) VALUES (0,"未請求");
INSERT INTO emergency.item_status (item_status_no,status) VALUES (1,"已請求");
INSERT INTO emergency.item_status (item_status_no,status) VALUES (2,"已送");
INSERT INTO emergency.item_status (item_status_no,status) VALUES (3,"已接收");


INSERT INTO emergency.people_return_chart (people_no,name) VALUES ("a","醫師");
INSERT INTO emergency.people_return_chart (people_no,name) VALUES ("b","護理人員");
INSERT INTO emergency.people_return_chart (people_no,name) VALUES ("c","醫技人員");
INSERT INTO emergency.people_return_chart (people_no,name) VALUES ("d","行政人員");
INSERT INTO emergency.people_return_chart (people_no,name) VALUES ("e","其他");

INSERT INTO emergency.stage_chart (stage_no,stage) VALUES ("a","第一階段");
INSERT INTO emergency.stage_chart (stage_no,stage) VALUES ("b","第二階段");
INSERT INTO emergency.stage_chart (stage_no,stage) VALUES ("c","第三階段");



INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("a","指揮官");
INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("b","醫療官");
INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("c","安全官");

INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("d","計畫部門");
INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("e","後勤部門");
INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("f","發言官");

INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("g","聯絡官");
INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("h","執行醫");
INSERT INTO emergency.chief_name_get (position,position_name) VALUES ("i","執行護");


