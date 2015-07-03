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

