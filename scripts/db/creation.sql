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

/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 192.168.59.103
 Source Server Version : 90305
 Source Host           : 192.168.59.103
 Source Database       : nodeshop
 Source Schema         : public

 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/03/2015 16:47:50 PM
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
	"price" float8
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."t_product" OWNER TO "test";

-- ----------------------------
--  Records of t_product
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_product" VALUES ('3', 'Vel Industries', null, '380-9517 Nisi. Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('4', 'Vulputate Risus A Ltd', null, 'Ap #184-8977 Nulla. Road', null, null, null);
INSERT INTO "public"."t_product" VALUES ('5', 'Ut Pharetra Foundation', null, '2673 Commodo Road', null, null, null);
INSERT INTO "public"."t_product" VALUES ('6', 'Sed Turpis Nec Company', null, 'Ap #779-8688 Morbi Road', null, null, null);
INSERT INTO "public"."t_product" VALUES ('7', 'Adipiscing Enim Limited', null, '982-1629 Morbi St.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('8', 'Ligula Institute', null, '7321 Ut Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('9', 'Fringilla Euismod Inc.', null, '821-9540 Etiam Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('10', 'Sagittis Limited', null, '2504 Dolor Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('11', 'Dui Fusce Diam Corporation', null, '854 Quisque St.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('12', 'Sed Company', null, '2979 Consectetuer Av.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('13', 'Suspendisse Aliquet Inc.', null, '8849 Sit Street', null, null, null);
INSERT INTO "public"."t_product" VALUES ('14', 'Purus Mauris Consulting', null, 'Ap #121-1496 Nisl Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('15', 'Metus Eu Erat Incorporated', null, '724-3439 Torquent Avenue', null, null, null);
INSERT INTO "public"."t_product" VALUES ('16', 'Tempor Foundation', null, '103 Elit, Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('17', 'Nulla At LLC', null, 'Ap #756-9969 Vehicula. St.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('18', 'Dui Foundation', null, 'Ap #217-8132 Phasellus St.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('19', 'Fringilla Est Mauris Incorporated', null, 'P.O. Box 138, 5755 Sociis St.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('20', 'Semper Company', null, 'P.O. Box 207, 8808 Amet Ave', null, null, null);
INSERT INTO "public"."t_product" VALUES ('21', 'Quisque Nonummy Ipsum Industries', null, '418-1072 Vitae Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('22', 'Est Limited', null, 'Ap #114-7747 Aliquet Rd.', null, null, null);
INSERT INTO "public"."t_product" VALUES ('2', 'Cold Black Earth', 'http://ecx.images-amazon.com/images/I/41DkSMwhT-L._AA324_PIkin4,BottomRight,-54,22_AA346_SH20_OU35_.jpg', 'an idyllically quiet fishing village in Northern Iceland, where no one locks their doors – accessible only via a small mountain tunnel. Ari Thór Arason: a rookie policeman on his first posting, far from his girlfriend in Reykjavik – with a past that he’s unable to leave behind. When a young woman is found lying half-naked in the snow, bleeding and unconscious, and a highly esteemed, elderly writer falls to his death in the local theatre, Ari is dragged straight into the heart of a community where he can trust no one, and secrets and lies are a way of life. An avalanche and unremitting snowstorms close the mountain pass, and the 24-hour darkness threatens to push Ari over the edge, as curtains begin to twitch, and his investigation becomes increasingly complex, chilling and personal. Past plays tag with the present and the claustrophobic tension mounts, while Ari is thrust ever deeper into his own darkness – blinded by snow, and with a killer on the loose. Taut and terrifying, Snowblind is a startling debut from an extraordinary new talent, taking Nordic Noir to soaring new heights. ‘Is King Arnaldur looking to his laurels? There is a young pretender beavering away, his eye on the crown: Ragnar Jónasson’ Barry Forshaw', null, null, null);
INSERT INTO "public"."t_product" VALUES ('1', 'Snowblind (Dark Iceland)', 'http://ecx.images-amazon.com/images/I/51R6zpIDbqL._AA324_PIkin4,BottomRight,-54,22_AA346_SH20_OU35_.jpg', 'an idyllically quiet fishing village in Northern Iceland, where no one locks their doors – accessible only via a small mountain tunnel. Ari Thór Arason: a rookie policeman on his first posting, far from his girlfriend in Reykjavik – with a past that he’s unable to leave behind. When a young woman is found lying half-naked in the snow, bleeding and unconscious, and a highly esteemed, elderly writer falls to his death in the local theatre, Ari is dragged straight into the heart of a community where he can trust no one, and secrets and lies are a way of life. An avalanche and unremitting snowstorms close the mountain pass, and the 24-hour darkness threatens to push Ari over the edge, as curtains begin to twitch, and his investigation becomes increasingly complex, chilling and personal. Past plays tag with the present and the claustrophobic tension mounts, while Ari is thrust ever deeper into his own darkness – blinded by snow, and with a killer on the loose. Taut and terrifying, Snowblind is a startling debut from an extraordinary new talent, taking Nordic Noir to soaring new heights. ‘Is King Arnaldur looking to his laurels? There is a young pretender beavering away, his eye on the crown: Ragnar Jónasson’ Barry Forshaw', '2015-07-03 01:25:26', '2015-07-03 01:25:28', '7.99');
COMMIT;

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

 Date: 07/03/2015 16:47:58 PM
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
--  Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_user" VALUES ('1', 'test@test.com', '7a38d4b7af4ee5a7fc5cadc0d161b0f3c2dee534', 'brBraVCTzjf0PGeC', '2015-07-02 21:05:51', '2015-07-02 21:39:15', '0');
INSERT INTO "public"."t_user" VALUES ('2', 'admin@test.com', 'fec858a9324615ef670ae543cf9e4b1eb01a7266', 'jcrFmgxCcNUptoZc', '2015-07-02 22:39:46', '2015-07-02 22:39:48', '1');
INSERT INTO "public"."t_user" VALUES ('7', 'password@test.com', 'fd5ae3d08d8f1168972425252df0ddac8459e33d', '0ory1361ni5dn29', '2015-07-02 15:08:20', '2015-07-02 15:08:20', null);
COMMIT;

-- ----------------------------
--  Primary key structure for table t_user
-- ----------------------------
ALTER TABLE "public"."t_user" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table t_user
-- ----------------------------
CREATE UNIQUE INDEX  "email" ON "public"."t_user" USING btree(email COLLATE "C.UTF-8" ASC NULLS LAST);

