use emergency;

delete from reason ; -- 啟動原因
ALTER TABLE reason AUTO_INCREMENT = 1;

delete from message ; -- 訊息
ALTER TABLE message AUTO_INCREMENT = 1;

delete from messagelog; -- 備註 log
ALTER TABLE messagelog AUTO_INCREMENT = 1;


delete from thing; -- 多個單一物品
ALTER TABLE thing AUTO_INCREMENT = 1;


Update thingnumber set actual_number = NULL,account=null,thingnumber_created_at_date=NULL,
thingnumber_created_at_time=NULL;
-- 物品清單

Update task set status = NULL,account=null,mission_created_at_time=null,mission_created_at_date=null;
-- 任務執掌

Update chiefassignment set name = NULL,account=null; -- 人員分配


delete from peoplereturn; -- 人力召回 護理人員	行政人員
ALTER TABLE peoplereturn AUTO_INCREMENT = 1;
	
delete from stage; -- 簡訊發送回覆狀況 第一階段	
ALTER TABLES stage AUTO_INCREMENT = 1;

delete from reason; -- 災難原因
ALTER TABLE reason AUTO_INCREMENT = 1;

delete from bloodnumber; -- 血型
ALTER TABLE  bloodnumber AUTO_INCREMENT = 1;
