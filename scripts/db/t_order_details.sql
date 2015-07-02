/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 192.168.59.103
 Source Server Version : 90305
 Source Host           : 192.168.59.103
 Source Database       : nodeshop
 Source Schema         : public

 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/02/2015 23:21:11 PM
*/

-- ----------------------------
--  Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_details";
CREATE TABLE "public"."t_order_details" (
	"id" int4 NOT NULL DEFAULT nextval('t_order_details_id_seq'::regclass),
	"order_id" int4 NOT NULL,
	"product_id" int4 NOT NULL,
	"price" numeric(2,0) NOT NULL,
	"createdAt" timestamp(6) NOT NULL,
	"updatedAt" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."t_order_details" OWNER TO "test";

-- ----------------------------
--  Primary key structure for table t_order_details
-- ----------------------------
ALTER TABLE "public"."t_order_details" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

