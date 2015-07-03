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

