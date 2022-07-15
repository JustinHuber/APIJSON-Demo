DROP TABLE IF EXISTS `Document`;
CREATE TABLE `Document` (`date` timestamp, `id` bigint, `debug` tinyint, `userId` bigint, `testAccountId` bigint, `version` tinyint, `name` nchar(100));
ALTER TABLE `Document` ADD COLUMN `type` nchar(5); 
ALTER TABLE `Document` ADD COLUMN `url` nchar(250); 
ALTER TABLE `Document` ADD COLUMN `request`  nchar(1000); 
ALTER TABLE `Document` ADD COLUMN `apijson`  nchar(1000); 
ALTER TABLE `Document` ADD COLUMN `standard`  nchar(4000); 
ALTER TABLE `Document` ADD COLUMN `header` nchar(1000); 
ALTER TABLE `Document` ADD COLUMN `detail` nchar(500);
INSERT INTO `Document` (`id`, `debug`, `userId`, `testAccountId`, `version`, `name`, `type`, `url`, `request`, `apijson`, `standard`, `header`, `date`, `detail`) VALUES (1,0,82001,82001,1,'登录','JSON','/login','{\n    \"type\": 0,\n    \"phone\": \"13000082001\",\n    \"password\": \"123456\",\n    \"version\": 1,\n    \"remember\": false\n}',NULL,'{\n    \"notnull\": true,\n    \"type\": \"object\",\n    \"valueLevel\": 0,\n    \"values\": [\n        {\n            \"type\": {\n                \"notnull\": true,\n                \"type\": \"integer\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    0\n                ],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    1\n                ],\n                \"comment\": \"请求方式 0-密码 1-验证码\",\n                \"trend\": {\n                    \"top\": 3\n                }\n            },\n            \"phone\": {\n                \"notnull\": true,\n                \"type\": \"string\",\n                \"valueLevel\": 3,\n                \"values\": [],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    11\n                ],\n                \"comment\": \"手机号\"\n            },\n            \"password\": {\n                \"notnull\": true,\n                \"type\": \"string\",\n                \"valueLevel\": 3,\n                \"values\": [],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    6\n                ],\n                \"comment\": \"登录密码或验证码\"\n            },\n            \"version\": {\n                \"notnull\": true,\n                \"type\": \"integer\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    1\n                ],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    1\n                ],\n                \"comment\": \"版本号\",\n                \"trend\": {\n                    \"top\": 3\n                }\n            },\n            \"remember\": {\n                \"notnull\": true,\n                \"type\": \"boolean\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    false\n                ],\n                \"lengthLevel\": 1,\n                \"lengths\": [],\n                \"comment\": \"是否记住登录\"\n            }\n        }\n    ]\n}','','2017-11-26 07:35:19',NULL),(2,0,82001,0,1,'注册(先获取验证码type:1)','JSON','/register','{\n    \"Privacy\": {\n        \"phone\": 13000083333,\n        \"_password\": \"123456\"\n    },\n    \"User\": {\n        \"name\": \"APIJSONUser\"\n    },\n    \"verify\": \"6840\"\n}',NULL,'{\n    \"notnull\": true,\n    \"type\": \"object\",\n    \"valueLevel\": 0,\n    \"values\": [\n        {\n            \"Privacy\": {\n                \"notnull\": true,\n                \"type\": \"object\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    {\n                        \"phone\": {\n                            \"notnull\": true,\n                            \"type\": \"integer\",\n                            \"valueLevel\": 3,\n                            \"values\": [],\n                            \"lengthLevel\": 1,\n                            \"lengths\": [\n                                11\n                            ],\n                            \"comment\": \"手机号\"\n                        },\n                        \"_password\": {\n                            \"notnull\": true,\n                            \"type\": \"string\",\n                            \"valueLevel\": 3,\n                            \"values\": [],\n                            \"lengthLevel\": 1,\n                            \"lengths\": [\n                                6\n                            ]\n                        }\n                    }\n                ],\n                \"comment\": \"用户隐私信息\"\n            },\n            \"User\": {\n                \"notnull\": true,\n                \"type\": \"object\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    {\n                        \"name\": {\n                            \"notnull\": true,\n                            \"type\": \"string\",\n                            \"valueLevel\": 3,\n                            \"values\": [],\n                            \"lengthLevel\": 1,\n                            \"lengths\": [\n                                11\n                            ]\n                        }\n                    }\n                ],\n                \"comment\": \"用户常规信息\"\n            },\n            \"verify\": {\n                \"notnull\": true,\n                \"type\": \"string\",\n                \"valueLevel\": 3,\n                \"values\": [],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    4\n                ],\n                \"comment\": \"验证码，需要先调用接口 /post/verify\"\n            }\n        }\n    ]\n}','','2017-11-26 07:35:19',NULL),(3,0,82001,0,1,'退出登录','JSON','/logout','{}',NULL,NULL,NULL,'2017-11-26 09:56:10',NULL),(1511689914599,0,82001,0,1,'获取用户隐私信息','JSON','/gets','{\"tag\": \"Privacy\", \"Privacy\": {\"id\": 82001}}',NULL,NULL,NULL,'2017-11-26 09:51:54',NULL),(1511796155276,0,82001,0,1,'获取验证码','JSON','/post/verify','{\n    \"type\": 0,\n    \"phone\": \"13000082001\"\n}',NULL,'{\n    \"notnull\": true,\n    \"type\": \"object\",\n    \"valueLevel\": 0,\n    \"values\": [\n        {\n            \"type\": {\n                \"notnull\": true,\n                \"type\": \"integer\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    0\n                ],\n                \"lengthLevel\": 1,\n                \"lengths\": [],\n                \"comment\": \"类型: 0-登录 1-注册 2-修改登录密码 3-修改支付密码\"\n            },\n            \"phone\": {\n                \"notnull\": true,\n                \"type\": \"string\",\n                \"valueLevel\": 3,\n                \"values\": [],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    11\n                ],\n                \"comment\": \"手机号\"\n            }\n        }\n    ]\n}','','2017-11-27 15:23:28',NULL),(1511796208671,0,82001,0,1,'检查验证码是否存在','JSON','/heads/verify','{\n    \"type\": 0,\n    \"phone\": \"13000082001\"\n}',NULL,'{\n    \"notnull\": true,\n    \"type\": \"object\",\n    \"valueLevel\": 0,\n    \"values\": [\n        {\n            \"type\": {\n                \"notnull\": true,\n                \"type\": \"integer\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    0\n                ],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    1\n                ],\n                \"comment\": \"类型: 0-登录 1-注册 2-修改登录密码 3-修改支付密码\"\n            },\n            \"phone\": {\n                \"notnull\": true,\n                \"type\": \"string\",\n                \"valueLevel\": 3,\n                \"values\": [],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    11\n                ],\n                \"comment\": \"手机号\"\n            }\n        }\n    ]\n}','','2017-11-27 15:23:28',NULL),(1511796589078,0,82001,82001,1,'修改登录密码(先获取验证码type:2)-手机号+验证码','JSON','/put/password','{\n    \"verify\": \"10322\",\n    \"Privacy\": {\n        \"phone\": \"13000082001\",\n        \"_password\": \"666666\"\n    }\n}',NULL,'{\n    \"notnull\": true,\n    \"type\": \"object\",\n    \"valueLevel\": 0,\n    \"values\": [\n        {\n            \"verify\": {\n                \"notnull\": true,\n                \"type\": \"string\",\n                \"valueLevel\": 3,\n                \"values\": [],\n                \"lengthLevel\": 1,\n                \"lengths\": [\n                    5\n                ],\n                \"comment\": \"验证码，需要先调用接口 /post/verify\"\n            },\n            \"Privacy\": {\n                \"notnull\": true,\n                \"type\": \"object\",\n                \"valueLevel\": 0,\n                \"values\": [\n                    {\n                        \"phone\": {\n                            \"notnull\": true,\n                            \"type\": \"string\",\n                            \"valueLevel\": 3,\n                            \"values\": [],\n                            \"lengthLevel\": 1,\n                            \"lengths\": [\n                                11\n                            ]\n                        },\n                        \"_password\": {\n                            \"notnull\": true,\n                            \"type\": \"string\",\n                            \"valueLevel\": 3,\n                            \"values\": [],\n                            \"lengthLevel\": 1,\n                            \"lengths\": [\n                                6\n                            ]\n                        }\n                    }\n                ]\n            }\n        }\n    ]\n}','','2017-11-27 15:23:28',NULL),(1511796882184,0,82001,82001,1,'充值(需要支付密码)/提现','JSON','/put/balance','{\"tag\": \"Privacy\", \"Privacy\": {\"id\": 82001, \"balance+\": 100.15, \"_payPassword\": \"123456\"}}',NULL,NULL,NULL,'2017-11-27 15:34:42',NULL),(1511969417633,0,82001,82001,1,'点赞/取消点赞','JSON','/put','{\n    \"Moment\": {\n        \"id\": 15,\n        \"praiseUserIdList-\": [\n            82001\n        ]\n    },\n    \"tag\": \"Moment\"\n}',NULL,NULL,NULL,'2017-11-29 15:30:17',NULL),(1511969630372,0,82001,82001,1,'新增评论','JSON','/post','{     \"Comment\": {         \"momentId\": 15,         \"content\": \"测试新增评论\"     },     \"tag\": \"Comment\" }',NULL,NULL,NULL,'2017-11-29 15:33:50',NULL);