CREATE DATABASE photo_db;
USE photo_db;

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
("OpenAI", "San Francisco, California", 2015, 86.00, "openai.com", "https://logo.clearbit.com/openai.com"),
("Netflix", "Los Gatos, California", 1997, 240.00, "netflix.com", "https://logo.clearbit.com/netflix.com"),
("Uber", "San Francisco, California", 2009, 145.00, "uber.com", "https://logo.clearbit.com/uber.com"),
("Zoom", "San Jose, California", 2011, 18.50, "zoom.us", "https://logo.clearbit.com/zoom.us"),
("Figma", "San Francisco, California", 2012, 12.00, "figma.com", "https://logo.clearbit.com/figma.com");