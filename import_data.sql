# Load data from csv

Use mydb;

DROP TABLE members_topics;

CREATE TABLE `members_topics` (
	`topic_id` int, 
    `topic_key` text, 
    `topic_name` text, 
    `member_id` int);

SET AUTOCOMMIT=0;

LOAD DATA LOCAL INFILE 'members_topics.csv'
INTO TABLE members_topics
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 rows;

COMMIT;

# SHOW VARIABLES LIKE "secure_file_priv";

# select count(*) from venues;

DROP TABLE venues;

CREATE TABLE `mydb`.`venues` (
	`venue_id` int, 
    `address_1` text, 
    `city` text, 
    `country` text, 
    `distance` double, 
    `lat` double, 
    `localized_country_name` text, 
    `lon` double, 
    `venue_name` text, 
    `rating` double, 
    `rating_count` double, 
    `state` text, 
    `zip` text, 
    `normalised_rating` double);

SET AUTOCOMMIT=0;

LOAD DATA LOCAL INFILE 'venues.csv'
INTO TABLE venues
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 rows;

COMMIT;


DROP TABLE groups;
CREATE TABLE `mydb`.`groups` (`group_id` int, `category_id` int, `category.name` text, `category.shortname` text, `city_id` int, `city` text, `country` text, `created` datetime, `description` text, `group_photo.base_url` text, `group_photo.highres_link` text, `group_photo.photo_id` int, `group_photo.photo_link` text, `group_photo.thumb_link` text, `group_photo.type` text, `join_mode` text, `lat` double, `link` text, `lon` double, `members` int, `group_name` text, `organizer.member_id` int, `organizer.name` text, `organizer.photo.base_url` text, `organizer.photo.highres_link` text, `organizer.photo.photo_id` int, `organizer.photo.photo_link` text, `organizer.photo.thumb_link` text, `organizer.photo.type` text, `rating` double, `state` text, `timezone` text, `urlname` text, `utc_offset` int, `visibility` text, `who` text);

SET AUTOCOMMIT=0;

LOAD DATA LOCAL INFILE 'groups.csv'
INTO TABLE groups
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 rows;

COMMIT;

DROP TABLE groups_topics;
CREATE TABLE `mydb`.`groups_topics` (`topic_id` int, `topic_key` text, `topic_name` text, `group_id` int);

SET AUTOCOMMIT=0;

LOAD DATA LOCAL INFILE 'groups_topics.csv'
INTO TABLE groups_topics
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 rows;

COMMIT;

DROP TABLE events;

CREATE TABLE `mydb`.`events` (`event_id` text, `created` datetime, `description` text, `duration` int, `event_url` text, `fee.accepts` text, `fee.amount` double, `fee.currency` text, `fee.description` text, `fee.label` text, `fee.required` int, `group.created` datetime, `group.group_lat` double, `group.group_lon` double, `group_id` int, `group.join_mode` text, `group.name` text, `group.urlname` text, `group.who` text, `headcount` int, `how_to_find_us` text, `maybe_rsvp_count` int, `event_name` text, `photo_url` text, `rating.average` double, `rating.count` int, `rsvp_limit` int, `event_status` text, `event_time` datetime, `updated` datetime, `utc_offset` int, `venue.address_1` text, `venue.address_2` text, `venue.city` text, `venue.country` text, `venue_id` int, `venue.lat` double, `venue.localized_country_name` text, `venue.lon` double, `venue.name` text, `venue.phone` text, `venue.repinned` int, `venue.state` text, `venue.zip` text, `visibility` text, `waitlist_count` int, `why` text, `yes_rsvp_count` int);
SET AUTOCOMMIT=0;

LOAD DATA LOCAL INFILE 'events.csv'
INTO TABLE events
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 rows;

COMMIT;