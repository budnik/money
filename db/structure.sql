CREATE TABLE "countries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar(255), "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "countries_currencies" ("country_id" integer NOT NULL, "currency_id" integer NOT NULL);
CREATE TABLE "countries_trips" ("country_id" integer NOT NULL, "trip_id" integer NOT NULL);
CREATE TABLE "currencies" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "code" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "trips" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "date" date, "description" text, "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130628072644');

INSERT INTO schema_migrations (version) VALUES ('20130628072740');

INSERT INTO schema_migrations (version) VALUES ('20130628075055');

INSERT INTO schema_migrations (version) VALUES ('20130628203432');

INSERT INTO schema_migrations (version) VALUES ('20130628203507');
