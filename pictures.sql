create database photo_db;
use photo_db;

CREATE TABLE innovation_firms (
    uid INT PRIMARY KEY AUTO_INCREMENT,
    company_title VARCHAR(100) NOT NULL,
    origin_country VARCHAR(50) DEFAULT 'USA',
    main_office VARCHAR(100),
    launch_year INT,
    valuation_billion_usd DECIMAL(10, 2),
    official_site VARCHAR(255),
    brand_logo VARCHAR(500)
);

INSERT INTO innovation_firms
(company_title, main_office, launch_year, valuation_billion_usd, official_site, brand_logo)
VALUES
("Stripe", "San Francisco, California", 2010, 65.00, "stripe.com", "https://logo.clearbit.com/stripe.com"),
("SpaceX", "Hawthorne, California", 2002, 180.00, "spacex.com", "https://logo.clearbit.com/spacex.com"),
("Airbnb", "San Francisco, California", 2008, 75.00, "airbnb.com", "https://logo.clearbit.com/airbnb.com"),
("Spotify", "Stockholm, Sweden", 2006, 40.00, "spotify.com", "https://logo.clearbit.com/spotify.com"),
("Shopify", "Ottawa, Canada", 2006, 85.00, "shopify.com", "https://logo.clearbit.com/shopify.com");