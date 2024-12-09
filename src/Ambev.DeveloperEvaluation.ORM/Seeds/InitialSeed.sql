-- Insert 3 Users
INSERT INTO "Users" ("Id", "Username", "Password", "Email", "Phone", "Status", "Role", "CreatedAt") VALUES ('28c3607a-f5d0-45c2-9665-4d6d90535d41', 'admin', 'hashedpassword', 'admin@ambev.com', '123-456-7890', 'Active', 'Admin', '2024-12-09 01:25:11');
INSERT INTO "Users" ("Id", "Username", "Password", "Email", "Phone", "Status", "Role", "CreatedAt") VALUES ('42019ee9-0eb0-4de6-930c-5221609008eb', 'seller1', 'hashedpassword', 'seller1@ambev.com', '123-456-7890', 'Active', 'Seller', '2024-12-09 01:25:11');
INSERT INTO "Users" ("Id", "Username", "Password", "Email", "Phone", "Status", "Role", "CreatedAt") VALUES ('56b5f658-f746-487a-82f7-6dfaa5cf7f5f', 'seller2', 'hashedpassword', 'seller2@ambev.com', '123-456-7890', 'Active', 'Seller', '2024-12-09 01:25:11');

-- Insert 10 Customers
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('deeef68d-b504-4da4-9230-4c09322f7717', 'Customer 1', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('582e461a-b1dd-4678-90b2-49314bd4cc38', 'Customer 2', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('e7ed3de1-2761-4883-9e89-87b9a6d68bfe', 'Customer 3', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('ad7952ad-0455-4baa-a032-684482fad6d3', 'Customer 4', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('bac9e5c0-20b1-4dc0-ab49-fbfb0727eec7', 'Customer 5', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('33f07d79-9d2f-4e81-a8fa-fac82dfb600f', 'Customer 6', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('ac12f51d-4515-425e-acc5-b649ffdacde7', 'Customer 7', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('d497d2e1-2907-4913-949b-8b464d39daf7', 'Customer 8', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('09ccc8d5-7749-4aec-af56-5bb17370914b', 'Customer 9', '2024-12-09 01:25:11');
INSERT INTO "Customers" ("Id", "Name", "CreatedAt") VALUES ('12905a87-a3d3-4020-8815-d0c79691314b', 'Customer 10', '2024-12-09 01:25:11');

-- Insert 50 Products
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('7c8beda6-8abb-429b-b7a5-a0922878c272', 341, 58.34, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('7b020e77-2e48-4bb4-99dc-266802ee5b86', 235, 75.03, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('f880c5a5-6bd6-465d-bf8f-9b5dc050580f', 121, 89.66, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('818e859b-6a83-443e-b637-0ef4ad68242a', 327, 73.23, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('0211b0a0-a9ae-43d9-a16e-81de75b40fd0', 64, 35.19, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('c7e9feaf-39eb-48a4-9628-7fee739c9607', 157, 34.05, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('cb4e5f17-e3e2-41d2-ae54-963a7ae1b73c', 4, 92.78, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('6b07b8be-beb2-47c6-b592-714a0f00adf6', 14, 73.01, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('907de94e-fdaf-488a-83e2-4c5479b2172d', 58, 28.67, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('f31fe4ee-e9de-4ab6-bee6-ae5ed519b5e9', 240, 2.38, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('eb3d8589-3779-4a0e-b321-28452786e5a8', 68, 92.6, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('eda5c6ac-0a0f-4c75-8d8b-2d960bed5802', 481, 97.2, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('4c74fda8-dd21-424f-b09c-70f85d606603', 161, 34.36, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('3596bba4-946e-4a58-85e5-45720fd39ba0', 436, 63.25, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('f63c9be3-2437-40ee-bb4f-62057c3c997c', 222, 24.23, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('11b03037-04f9-49a3-8170-bd19d3c06b50', 351, 72.49, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('fd631ee3-4c11-498d-b3d7-902cbb3992a0', 278, 89.98, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('4b878f34-14d1-423b-92b3-9779965a6d5f', 35, 3.85, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('991ed509-4f5f-4566-979f-601f5f5a5513', 3, 41.6, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('579239ee-0be1-4f3b-98a2-f2ce5a751625', 459, 4.43, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('763184b5-c925-4641-b980-1670a4624f6f', 215, 50.25, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('1cdf5235-b743-4e3e-bc91-cfd6e5cf55c2', 155, 41.14, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('4962893d-0a0e-4e7d-bec4-6f4ce8dd78f2', 221, 41.72, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('464e9bd8-be14-4f02-83b0-544cf318f5dc', 189, 86.22, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('11130fed-dfdd-41ec-b3f5-0aaea810ed14', 303, 8.2, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('3040759c-433f-44fe-a2d1-d3cc63839a29', 304, 5.91, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('f5c42cc8-a3f0-4a46-b500-99b5c70a023e', 120, 15.32, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('2eda947a-6274-4885-adda-5d1afce9af0b', 259, 65.9, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('d91231d1-7f17-49cf-93e6-62ee20f38d18', 17, 33.27, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('1e3f982c-32fc-40f7-aeb6-664a17c631af', 179, 9.97, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('108fb132-d2e7-48b2-ba43-f2abd7ca9548', 7, 99.2, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('991f306d-5481-4b2b-905f-047e651fb132', 141, 73.21, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('b5f9dfc9-7add-4378-814a-3edb963c2c87', 418, 4.0, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('eaa65089-b67b-49a2-ae2c-489722db042b', 206, 74.32, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('a8d845c2-985b-4b20-85de-3d27e1d60cd5', 22, 20.15, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('76bb58f0-52b7-476b-95c8-e647c0c4eecd', 445, 72.36, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('86e3ba36-d4a3-4c87-8ec6-d5a467a91dbe', 258, 10.75, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('ce274c49-18f3-4fa2-b81e-b89095f231b1', 51, 32.45, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('1454b6b0-f8fb-4704-ae5f-e980e253d200', 51, 53.08, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('c479ca83-a03a-4fec-a52b-71a1bf6dc56f', 449, 86.51, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('048cd275-2bb7-4a58-86b3-1cb78b0d9887', 303, 19.3, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('04b1f242-99dc-4102-b652-3138bfd89679', 345, 72.82, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('f17e66d1-5713-4952-b3c6-a2533dd5d895', 271, 50.24, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('c11f09a9-f0f6-4d13-83e3-7fb382ae4b45', 266, 24.74, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('ca5699db-c832-4956-bfec-695adef90355', 222, 32.01, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('f66a60c8-96ad-4663-bd83-d9d037c11c17', 82, 19.14, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('d28fe4f1-de5e-460c-a526-faa00d2aaa19', 98, 93.46, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('24b598bc-415c-4296-84c7-aeb3ed380db8', 115, 36.63, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('be16cbcc-793a-446a-9a7f-addba178c00c', 121, 86.77, 'NoDiscount', '2024-12-09 01:25:11');
INSERT INTO "Products" ("Id", "Ammount", "UnitPrice", "DiscountTier", "CreatedAt") VALUES ('53f918ff-9808-4b3f-b55a-f48ae2712c44', 372, 17.61, 'NoDiscount', '2024-12-09 01:25:11');

-- Insert 10 Sales
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('9460ab33-1649-4e05-bee6-e197790d6ced', '64226071-ae6a-48be-93db-0e76e572cd35', '2024-12-09 01:25:11', 'deeef68d-b504-4da4-9230-4c09322f7717', 731.36, '22b7155b-3f25-493c-ad1b-8f39ee41c71f', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('256a9d5a-f6f1-4d83-9cdd-722be4695197', '08cdd52f-81d4-4ad5-a4bc-707263514cc4', '2024-12-09 01:25:11', '582e461a-b1dd-4678-90b2-49314bd4cc38', 433.1, 'a2541bda-171a-4fb8-aa74-b8e5f5918c50', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('573b12ae-d277-40f1-95ef-2e4a2afa6118', '569daea8-319f-440a-b9fa-e6ccd96bc603', '2024-12-09 01:25:11', 'e7ed3de1-2761-4883-9e89-87b9a6d68bfe', 779.37, '71988890-00db-41db-a758-cfb49b936232', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('1ed2b4fc-a556-45af-8ca2-f620ee1f15ab', '6f5a6b9e-46e0-45da-817c-390b356c306f', '2024-12-09 01:25:11', 'ad7952ad-0455-4baa-a032-684482fad6d3', 424.72, 'ecaaf4ea-17de-468f-80ca-4e9fd5c6d560', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('9832f8eb-e2ca-4aa1-9632-5dede6d59ed1', '08fe32af-07b2-4d68-8ad8-b5b29306b9ed', '2024-12-09 01:25:11', 'bac9e5c0-20b1-4dc0-ab49-fbfb0727eec7', 219.53, '30348e16-cc75-4fd0-80bf-6fe25d06c2ed', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('097bc88c-020b-4496-91f3-0d07873f0a2f', 'c3080cb4-b710-479b-b233-3b109ed087c8', '2024-12-09 01:25:11', '33f07d79-9d2f-4e81-a8fa-fac82dfb600f', 846.95, 'b3940e96-6377-40c3-9429-43e3ca291e2a', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('c5fca2d4-6525-4992-a93a-f92c4d17afc5', '39be189a-f609-43cb-be7c-c2e6f9724746', '2024-12-09 01:25:11', 'ac12f51d-4515-425e-acc5-b649ffdacde7', 213.12, 'ee6d5cf2-e02d-4a76-8b07-66a65bf7a36e', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('b3ce6dfd-70be-4f0f-bcbd-27b26fba1b5a', 'b946fe7c-fe45-431e-9e79-bca4f132e83a', '2024-12-09 01:25:11', 'd497d2e1-2907-4913-949b-8b464d39daf7', 753.53, '0e6f5ff1-6e65-4f2e-a26e-166d56e77a5e', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('ddd62f37-5aae-4308-936d-c5d38d95c648', 'fdb5e5aa-bde8-4d70-b5ca-8d54a24e46af', '2024-12-09 01:25:11', '09ccc8d5-7749-4aec-af56-5bb17370914b', 134.11, '99a3ccc1-c4c2-4207-ab21-2192abddc23b', 'Active', '2024-12-09 01:25:11');
INSERT INTO "Sales" ("Id", "SaleNumber", "Date", "CustomerID", "TotalAmount", "BranchId", "Status", "CreatedAt") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', '26310e3f-3bcd-49f4-9f0c-9733ce19d176', '2024-12-09 01:25:11', '12905a87-a3d3-4020-8815-d0c79691314b', 136.4, '59fe4c1d-439f-4a1c-af4c-cecf399a6ec8', 'Active', '2024-12-09 01:25:11');

-- Insert SaleProducts
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('9460ab33-1649-4e05-bee6-e197790d6ced', '4b878f34-14d1-423b-92b3-9779965a6d5f', 4, 13.71);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('256a9d5a-f6f1-4d83-9cdd-722be4695197', '7c8beda6-8abb-429b-b7a5-a0922878c272', 6, 68.06);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('573b12ae-d277-40f1-95ef-2e4a2afa6118', 'f66a60c8-96ad-4663-bd83-d9d037c11c17', 4, 26.98);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('1ed2b4fc-a556-45af-8ca2-f620ee1f15ab', '1cdf5235-b743-4e3e-bc91-cfd6e5cf55c2', 9, 31.47);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('9832f8eb-e2ca-4aa1-9632-5dede6d59ed1', '11b03037-04f9-49a3-8170-bd19d3c06b50', 9, 38.93);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('097bc88c-020b-4496-91f3-0d07873f0a2f', 'c479ca83-a03a-4fec-a52b-71a1bf6dc56f', 4, 42.33);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('c5fca2d4-6525-4992-a93a-f92c4d17afc5', '76bb58f0-52b7-476b-95c8-e647c0c4eecd', 8, 48.94);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('b3ce6dfd-70be-4f0f-bcbd-27b26fba1b5a', '86e3ba36-d4a3-4c87-8ec6-d5a467a91dbe', 10, 66.58);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('ddd62f37-5aae-4308-936d-c5d38d95c648', 'f880c5a5-6bd6-465d-bf8f-9b5dc050580f', 5, 28.52);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', '7c8beda6-8abb-429b-b7a5-a0922878c272', 10, 60.17);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', '7b020e77-2e48-4bb4-99dc-266802ee5b86', 1, 37.92);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', 'f880c5a5-6bd6-465d-bf8f-9b5dc050580f', 10, 62.81);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', '818e859b-6a83-443e-b637-0ef4ad68242a', 1, 59.71);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', '0211b0a0-a9ae-43d9-a16e-81de75b40fd0', 5, 16.37);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', 'c7e9feaf-39eb-48a4-9628-7fee739c9607', 2, 24.21);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', 'cb4e5f17-e3e2-41d2-ae54-963a7ae1b73c', 9, 62.17);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', '6b07b8be-beb2-47c6-b592-714a0f00adf6', 9, 98.97);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', '907de94e-fdaf-488a-83e2-4c5479b2172d', 2, 28.97);
INSERT INTO "SaleProducts" ("SaleId", "ProductId", "Quantity", "TotalPrice") VALUES ('8a64171f-f64f-4d9a-b25c-2e5035b05c2a', 'f31fe4ee-e9de-4ab6-bee6-ae5ed519b5e9', 6, 74.64);

