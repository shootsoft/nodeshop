/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 192.168.59.103
 Source Server Version : 90305
 Source Host           : 192.168.59.103
 Source Database       : nodeshop
 Source Schema         : public

 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/02/2015 23:21:04 PM
*/

-- ----------------------------
--  Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order";
CREATE TABLE "public"."t_order" (
	"id" int4 NOT NULL DEFAULT nextval('t_order_id_seq'::regclass),
	"createdAt" timestamp(6) NOT NULL,
	"updatedAt" timestamp(6) NOT NULL,
	"user_id" int4 NOT NULL,
	"total_price" numeric(2,0) NOT NULL,
	"item_count" int4 NOT NULL,
	"status" int2 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."t_order" OWNER TO "test";

-- ----------------------------
--  Primary key structure for table t_order
-- ----------------------------
ALTER TABLE "public"."t_order" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

