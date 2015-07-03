/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 192.168.59.103
 Source Server Version : 90305
 Source Host           : 192.168.59.103
 Source Database       : nodeshop
 Source Schema         : public

 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/03/2015 16:47:24 PM
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
--  Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_order" VALUES ('2', '2015-07-03 05:37:07.576', '2015-07-03 05:37:07.576', '1', '0', '1', '0');
INSERT INTO "public"."t_order" VALUES ('3', '2015-07-03 05:39:07.599', '2015-07-03 05:39:07.599', '1', '0', '1', '0');
INSERT INTO "public"."t_order" VALUES ('4', '2015-07-03 05:45:36.459', '2015-07-03 05:45:36.459', '1', '0', '2', '0');
INSERT INTO "public"."t_order" VALUES ('5', '2015-07-03 05:50:47.36', '2015-07-03 05:50:47.36', '1', '0', '2', '0');
INSERT INTO "public"."t_order" VALUES ('6', '2015-07-03 05:52:51.57', '2015-07-03 05:52:51.57', '1', '0', '1', '0');
INSERT INTO "public"."t_order" VALUES ('7', '2015-07-03 05:54:15.492', '2015-07-03 05:54:15.492', '1', '0', '2', '0');
INSERT INTO "public"."t_order" VALUES ('8', '2015-07-03 05:55:28.799', '2015-07-03 05:55:28.799', '1', '0', '1', '0');
INSERT INTO "public"."t_order" VALUES ('9', '2015-07-03 05:56:30.389', '2015-07-03 05:56:30.389', '1', '0', '1', '0');
INSERT INTO "public"."t_order" VALUES ('10', '2015-07-03 06:12:42.641', '2015-07-03 06:12:42.641', '2', '0', '2', '0');
COMMIT;

-- ----------------------------
--  Primary key structure for table t_order
-- ----------------------------
ALTER TABLE "public"."t_order" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

