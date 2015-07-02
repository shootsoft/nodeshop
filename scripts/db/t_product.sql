/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 192.168.59.103
 Source Server Version : 90305
 Source Host           : 192.168.59.103
 Source Database       : nodeshop
 Source Schema         : public

 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/03/2015 01:38:19 AM
*/

-- ----------------------------
--  Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product";
CREATE TABLE "public"."t_product" (
	"id" int4 NOT NULL DEFAULT nextval('t_product_id_seq'::regclass),
	"name" varchar(500) COLLATE "default",
	"image" varchar(1024) COLLATE "default",
	"desc" text COLLATE "default",
	"createdAt" timestamp(6) NULL,
	"updatedAt" timestamp(6) NULL,
	"price" numeric(2,0)
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."t_product" OWNER TO "test";

-- ----------------------------
--  Primary key structure for table t_product
-- ----------------------------
ALTER TABLE "public"."t_product" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

