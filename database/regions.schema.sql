CREATE TABLE IF NOT EXISTS "regions"(
"region" TEXT, "site" TEXT, "address" TEXT, "capability" TEXT);
CREATE VIEW fema_regions as select distinct region from regions
/* fema_regions(region) */;
CREATE VIEW fema_sites as select distinct site, address from regions
/* fema_sites(site,address) */;
CREATE VIEW region_sites as select distinct region, site from regions
/* region_sites(region,site) */;
CREATE VIEW site_capabilities as select distinct site, capability from regions
/* site_capabilities(site,capability) */;
CREATE VIEW region_capabilities as select distinct region, capability from regions
/* region_capabilities(region,capability) */;
