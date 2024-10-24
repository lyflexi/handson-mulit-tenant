-- `multi-tenant-platform`.tenants definition

CREATE TABLE `tenants` (
  `id` varchar(32) NOT NULL COMMENT '租户id',
  `name` varchar(100) DEFAULT NULL COMMENT '租户名称',
  `code` varchar(50) DEFAULT NULL COMMENT '只能输入小写字母和数字,不能以数字开头,不能是纯数字，暂未使用；不可重复',
  `type` int(11) DEFAULT NULL COMMENT '租户类型0:普通租户 1:受限租户',
  `status` int(11) DEFAULT NULL COMMENT '租户状态 -1：未初始化，0：停用，1：启用',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `active` int(11) DEFAULT NULL COMMENT '执行状态',
  `serial_no` int(11) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `multi-tenant-platform`.tenants (id,name,code,`type`,status,created_time,updated_time,created_by,updated_by,description,active,serial_no) VALUES
	 ('1844926438923849731','测试租户1','lyflexi1',NULL,1,'2024-10-12 10:21:55.0','2024-10-12 10:21:55.0','admin','admin','lyflexi测试租户1',0,NULL),
	 ('1844926438923849732','测试租户2','lyflexi2',NULL,1,'2024-10-12 10:21:55.0','2024-10-12 10:21:55.0','admin','admin','lyflexi测试租户2',0,NULL);
