/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 192.168.59.103
 Source Server Version : 90305
 Source Host           : 192.168.59.103
 Source Database       : nodeshop
 Source Schema         : public

 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/03/2015 16:47:32 PM
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
--  Records of t_order_details
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_order_details" VALUES ('5', '9', '7', '0', '2015-07-03 05:56:30.389', '2015-07-03 05:56:30.389');
INSERT INTO "public"."t_order_details" VALUES ('6', '10', '7', '0', '2015-07-03 06:12:42.641', '2015-07-03 06:12:42.641');
INSERT INTO "public"."t_order_details" VALUES ('7', '10', '2', '0', '2015-07-03 06:12:42.641', '2015-07-03 06:12:42.641');
COMMIT;

-- ----------------------------
--  Primary key structure for table t_order_details
-- ----------------------------
ALTER TABLE "public"."t_order_details" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

