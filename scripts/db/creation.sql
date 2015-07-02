-- Database: nodeshop

-- DROP DATABASE nodeshop;

CREATE DATABASE nodeshop
  WITH OWNER = test
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF-8'
       LC_CTYPE = 'en_US.UTF-8'
       CONNECTION LIMIT = -1;

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

