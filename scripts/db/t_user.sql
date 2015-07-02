/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 192.168.59.103
 Source Server Version : 90305
 Source Host           : 192.168.59.103
 Source Database       : nodeshop
 Source Schema         : public

 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/02/2015 23:21:26 PM
*/

-- ----------------------------
--  Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_user";
CREATE TABLE "public"."t_user" (
	"id" int4 NOT NULL DEFAULT nextval('t_user_uid_seq'::regclass),
	"email" varchar(200) NOT NULL COLLATE "default",
	"password" varchar(200) NOT NULL COLLATE "default",
	"salt" varchar(200) NOT NULL COLLATE "default",
	"createdAt" timestamp(6) NULL,
	"updatedAt" timestamp(6) NULL,
	"role" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."t_user" OWNER TO "test";

-- ----------------------------
--  Primary key structure for table t_user
-- ----------------------------
ALTER TABLE "public"."t_user" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table t_user
-- ----------------------------
CREATE UNIQUE INDEX  "email" ON "public"."t_user" USING btree(email COLLATE "C.UTF-8" ASC NULLS LAST);

