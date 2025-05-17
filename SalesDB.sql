use SalesDB

CREATE TABLE Customers (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Age INT,
    Email NVARCHAR(100),
    PhoneNb NVARCHAR(20),
    JobOccupation NVARCHAR(100),
    DomaineOfInterest NVARCHAR(100),
    Preferences NVARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT,
    Rating DECIMAL(3, 2)
);

-- Phones
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES
('iPhone 15 Pro Max', 'Tech', 1199.00, 10, 4.9),
('Samsung Galaxy S24 Ultra', 'Tech', 1099.00, 8, 4.8),
('Google Pixel 8 Pro', 'Tech', 999.00, 12, 4.7),
('OnePlus 12', 'Tech', 899.00, 15, 4.6),
('Xiaomi Redmi Note 13 Pro', 'Tech', 349.00, 20, 4.5),

-- Tablets / iPads
('iPad Air 2024', 'Tech', 699.00, 10, 4.8),
('Samsung Galaxy Tab S9', 'Tech', 799.00, 8, 4.7),
('Lenovo Tab P12 Pro', 'Tech', 549.00, 14, 4.6),

-- Laptops
('MacBook Air M3', 'Tech', 1099.00, 6, 4.9),
('Dell XPS 13', 'Tech', 1149.00, 5, 4.8),
('HP Spectre x360', 'Tech', 1249.00, 7, 4.7),
('Asus ROG Zephyrus G14', 'Tech', 1399.00, 4, 4.8),
('Lenovo ThinkPad X1 Carbon', 'Tech', 1299.00, 5, 4.6),

-- Tech Accessories
('Apple AirPods Pro (2nd Gen)', 'Tech', 249.00, 25, 4.8),
('Samsung Galaxy Buds2 Pro', 'Tech', 199.00, 18, 4.7),
('Logitech MX Master 3S Mouse', 'Tech', 99.00, 30, 4.8),
('Anker PowerCore 10000mAh Power Bank', 'Tech', 39.99, 50, 4.6),
('Belkin 3-in-1 Wireless Charger', 'Tech', 89.99, 20, 4.5),
('Apple Pencil (2nd Gen)', 'Tech', 129.00, 15, 4.7),
('iPad Magic Keyboard', 'Tech', 299.00, 8, 4.6),

-- Smart Home
('Google Nest Hub Max', 'Tech', 229.00, 10, 4.6),
('Amazon Echo Show 8', 'Tech', 149.99, 20, 4.5),
('Philips Hue Smart Bulb Starter Kit', 'Tech', 99.99, 30, 4.6),
('Ring Video Doorbell Pro 2', 'Tech', 199.99, 15, 4.7),
('TP-Link Smart WiFi Plug (4-Pack)', 'Tech', 39.99, 40, 4.4);

--skincare
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('La Roche-Posay Sunscreen SPF 50', 'Skincare', 24.99, 40, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('CeraVe Foaming Facial Cleanser', 'Skincare', 14.99, 50, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('The Ordinary Niacinamide Serum', 'Skincare', 9.99, 60, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Neutrogena Hydro Boost Gel', 'Skincare', 19.99, 35, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Paula''s Choice BHA Exfoliant', 'Skincare', 29.99, 30, 4.8);

--shoes
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Nike Air Max 270', 'Shoes', 150.00, 20, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Adidas Ultraboost 22', 'Shoes', 180.00, 15, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Puma RS-X', 'Shoes', 120.00, 25, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Vans Old Skool', 'Shoes', 65.00, 30, 4.5);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Dr. Martens 1460', 'Shoes', 160.00, 10, 4.7);

--clothes
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Levi''s 501 Jeans', 'Clothes', 89.99, 40, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('H&M Cotton Hoodie', 'Clothes', 29.99, 50, 4.4);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Zara Slim Fit Shirt', 'Clothes', 39.99, 35, 4.5);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Uniqlo Ultra Light Down Jacket', 'Clothes', 69.99, 20, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('North Face Fleece', 'Clothes', 99.99, 15, 4.8);

--sports
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Wilson Tennis Racket', 'Sports', 129.99, 10, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Adidas Soccer Ball', 'Sports', 29.99, 25, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Yoga Mat - Extra Thick', 'Sports', 24.99, 30, 4.5);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Adjustable Dumbbells', 'Sports', 149.99, 12, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Nike Running Shorts', 'Sports', 34.99, 20, 4.4);

--books
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Atomic Habits by James Clear', 'Books', 16.99, 40, 4.9);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('The Alchemist by Paulo Coelho', 'Books', 14.99, 35, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('1984 by George Orwell', 'Books', 12.99, 50, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Sapiens by Yuval Noah Harari', 'Books', 21.99, 25, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('The Psychology of Money', 'Books', 18.99, 30, 4.9);

--home decor
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('LED Fairy Lights', 'Home Decor', 19.99, 50, 4.5);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Modern Wall Clock', 'Home Decor', 49.99, 20, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Aroma Diffuser', 'Home Decor', 29.99, 35, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Throw Blanket', 'Home Decor', 34.99, 25, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Indoor Plant Set', 'Home Decor', 59.99, 15, 4.8);

--kitchen
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Non-stick Cookware Set', 'Kitchen', 79.99, 20, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Ninja Blender', 'Kitchen', 129.99, 10, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Electric Kettle', 'Kitchen', 39.99, 30, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Knife Set with Block', 'Kitchen', 69.99, 15, 4.5);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Microwave Oven', 'Kitchen', 149.99, 8, 4.7);

--gaming
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('PlayStation 5', 'Gaming', 499.99, 5, 4.9);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Xbox Series X', 'Gaming', 499.99, 6, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Nintendo Switch OLED', 'Gaming', 349.99, 10, 4.9);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Razer Gaming Mouse', 'Gaming', 79.99, 20, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Corsair Mechanical Keyboard', 'Gaming', 119.99, 15, 4.8);

--toys
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Lego Star Wars Set', 'Toys', 99.99, 10, 4.9);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Barbie Dreamhouse', 'Toys', 199.99, 8, 4.8);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('RC Monster Truck', 'Toys', 69.99, 20, 4.6);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Magnetic Tiles Building Set', 'Toys', 49.99, 30, 4.7);
INSERT INTO Products (Name, Category, Price, Stock, Rating) VALUES ('Plush Teddy Bear 24-inch', 'Toys', 29.99, 40, 4.5);


INSERT INTO Customers (Name, Age, Email, PhoneNb, JobOccupation, DomaineOfInterest, Preferences) VALUES
('Sarah Johnson', 28, 'sarah.johnson@example.com', '555-123-4567', 'Marketing Manager', 'Skincare', 'Prefers natural skincare products, follows Instagram influencers'),
('Ali Mansour', 34, 'ali.mansour@example.com', '555-234-5678', 'Software Engineer', 'Tech', 'Interested in latest iPhone models, values performance'),
('Emily Nguyen', 22, 'emily.nguyen@example.com', '555-345-6789', 'Student (Uni)', 'Fashion', 'Shops based on TikTok trends, loves accessories'),
('Mohammed Farouk', 40, 'mohammed.farouk@example.com', '555-456-7890', 'High School Teacher', 'Books', 'Reads ebooks on Kindle, likes educational tools'),
('Chloe Martinez', 31, 'chloe.martinez@example.com', '555-567-8901', 'Interior Designer', 'Home Decor', 'Prefers eco-friendly home decor, minimalist design'),
('Jack Wilson', 29, 'jack.wilson@example.com', '555-678-9012', 'Content Creator', 'Gadgets', 'Loves camera gear and drones, checks YouTube reviews'),
('Fatima Alami', 26, 'fatima.alami@example.com', '555-789-0123', 'Makeup Artist', 'Beauty', 'Watches beauty vloggers, likes K-beauty brands'),
('David Kim', 21, 'david.kim@example.com', '555-890-1234', 'Student (Engineering)', 'Gaming', 'Plays PC games, prefers Logitech and Razer gear'),
('Amira Souad', 30, 'amira.souad@example.com', '555-901-2345', 'Sales Consultant', 'Fashion', 'Buys trendy seasonal items, values fast delivery'),
('Tom Baker', 35, 'tom.baker@example.com', '555-012-3456', 'Athlete', 'Sportswear', 'Follows sports brands like Nike and Adidas'),
('Lina Haddad', 27, 'lina.haddad@example.com', '555-111-2233', 'Fashion Blogger', 'Footwear', 'Loyal to certain shoe brands like Converse and Vans'),
('Hassan Jaber', 38, 'hassan.jaber@example.com', '555-222-3344', 'Lawyer', 'Books & Productivity', 'Reads law blogs, buys productivity tools'),
('Yasmine Benali', 25, 'yasmine.benali@example.com', '555-333-4455', 'Student (Med School)', 'Skincare', 'Prefers cruelty-free skincare, loves Sephora'),
('Omar Tarek', 33, 'omar.tarek@example.com', '555-444-5566', 'IT Consultant', 'Smart Tech', 'Upgrades tech annually, interested in IoT devices'),
('Rania Kamel', 29, 'rania.kamel@example.com', '555-555-6677', 'Architect', 'Home Design', 'Buys modern furniture, prefers online room planners'),
('Lucas Wong', 24, 'lucas.wong@example.com', '555-666-7788', 'Game Developer', 'Gaming', 'Follows Twitch streamers, prefers PlayStation'),
('Isabelle Moreau', 37, 'isabelle.moreau@example.com', '555-777-8899', 'Nutritionist', 'Wellness', 'Buys wellness subscriptions, tracks health data'),
('Khalid Fathi', 32, 'khalid.fathi@example.com', '555-888-9900', 'Finance Manager', 'E-commerce', 'Buys during seasonal sales, prefers online stores'),
('Noor Abdi', 19, 'noor.abdi@example.com', '555-999-1010', 'Student (High School)', 'Stationery & Books', 'Likes motivational books, buys school supplies online'),
('Anna Schmidt', 28, 'anna.schmidt@example.com', '555-101-1122', 'Web Developer', 'Tech & Tools', 'Prefers MacBooks and VSCode, supports indie tech'),
('Michael Chen', 36, 'michael.chen@example.com', '555-121-1314', 'Engineer', 'Smart Home', 'Uses smart home devices, loves AI-driven gadgets'),
('Selma Idris', 23, 'selma.idris@example.com', '555-141-1516', 'Beauty Consultant', 'Cosmetics', 'Likes vibrant makeup palettes, inspired by Instagram reels'),
('Leo Fernandes', 31, 'leo.fernandes@example.com', '555-161-1718', 'Coach', 'Sports & Fitness', 'Prefers sports gear from Decathlon, watches matches'),
('Nadia Serkan', 27, 'nadia.serkan@example.com', '555-181-1920', 'Art Teacher', 'Home & Handcrafts', 'Uses Pinterest for ideas, shops artisan decor'),
('Youssef Rahal', 30, 'youssef.rahal@example.com', '555-202-2122', 'Product Manager', 'Tech Innovation', 'Prefers newest tech startups, follows innovation blogs'),
('Rita Haddad', 34, 'rita.haddad@example.com', '555-222-2324', 'Wellness Coach', 'Organic Products', 'Likes organic health products, tracks wellness stats'),
('Aaron Green', 20, 'aaron.green@example.com', '555-242-2526', 'Student (Business School)', 'Finance & Books', 'Reads finance books, shops with student discounts'),
('Layla Nour', 26, 'layla.nour@example.com', '555-262-2728', 'Marketing Intern', 'Affordable Skincare', 'Likes affordable yet stylish skincare, shops on mobile apps'),
('Oussama Rami', 22, 'oussama.rami@example.com', '555-282-2930', 'Student (Computer Science)', 'Budget Gaming', 'Plays Steam games, prefers budget gaming PCs'),
('Elena Rossi', 29, 'elena.rossi@example.com', '555-303-3132', 'Freelance Writer', 'Books & Fashion', 'Reads romance and self-help books, shops Etsy-style fashion');
