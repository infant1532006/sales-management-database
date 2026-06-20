CREATE DATABASE sales_management;
USE sales_management;

CREATE TABLE ProductLines(
productline VARCHAR(50) PRIMARY KEY,
textDescription VARCHAR(50),
htmlDescription VARCHAR(50),
image VARCHAR(50));

CREATE TABLE Products (
    productCode VARCHAR(15) PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    productLine VARCHAR(50),
    productScale VARCHAR(20),
    productVendor VARCHAR(100),
    productDescription TEXT,
    quantityInStock INT,
    buyPrice DECIMAL(10,2),
    MSRP DECIMAL(10,2),
    FOREIGN KEY (productLine) REFERENCES ProductLines(productLine)
);

CREATE TABLE Customers(
customerNumber INT PRIMARY KEY,
customerName VARCHAR(50),
contactLastName VARCHAR(50),
contactFirstName VARCHAR(50),
phone VARCHAR(20),
addressLine1 TEXT,
addressLine2 TEXT,
city VARCHAR(50),
state VARCHAR(50),
postalCode VARCHAR(15),
country VARCHAR(25),
salesRepEmployeeNumber INT,
creditLimit DECIMAL(10,2));

CREATE TABLE Orders (
    orderNumber INT PRIMARY KEY,
    orderDate DATE,
    requiredDate DATE,
    shippedDate DATE,
    status VARCHAR(20),
    comments TEXT,
    customerNumber INT,
    FOREIGN KEY (customerNumber) REFERENCES Customers(customerNumber)
);

CREATE TABLE OrderDetails (
    orderNumber INT,
    productCode VARCHAR(15),
    quantityOrdered INT,
    priceEach DECIMAL(10,2),
    orderLineNumber INT,
    PRIMARY KEY (orderNumber, productCode),
    FOREIGN KEY (orderNumber) REFERENCES Orders(orderNumber),
    FOREIGN KEY (productCode) REFERENCES Products(productCode)
);

CREATE TABLE Payments (
    customerNumber INT,
    checkNumber VARCHAR(50),
    paymentDate DATE,
    amount DECIMAL(10,2),
    PRIMARY KEY (customerNumber, checkNumber),
    FOREIGN KEY (customerNumber) REFERENCES Customers(customerNumber)
);

CREATE TABLE Office (
    officeCode VARCHAR(15) PRIMARY KEY,
    city VARCHAR(50),
    phone VARCHAR(20),
    addressLine1 TEXT,
    addressLine2 TEXT,
    state VARCHAR(50),
    country VARCHAR(25),
    postalCode VARCHAR(10),
    territory VARCHAR(16)
);

CREATE TABLE Employees (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50),
    extension VARCHAR(25),
    email VARCHAR(100),
    officeCode VARCHAR(15),
    reportsTo INT,
    jobTitle VARCHAR(50),
    FOREIGN KEY (officeCode) REFERENCES Office(officeCode),
    FOREIGN KEY (reportsTo) REFERENCES Employees(employeeNumber)
);
