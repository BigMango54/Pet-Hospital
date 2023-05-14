CREATE TABLE `doctor`(
    `dept` varchar(50) NOT NULL,
    `d_no` int NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `d_sex` varchar(6) NOT NULL,
    `d_phone` int NOT NULL,
    PRIMARY KEY(d_no)
    );

CREATE TABLE `prescription`(
    `h_name` varchar(20) NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `pre_no` int NOT NULL,
    `d_no` int NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `symptom` varchar(50) NOT NULL,
    `drug_name` varchar(50) NOT NULL,
    `dose` int NOT NULL,
    `exterior` varchar(50) NOT NULL,
    `way` varchar(50) NOT NULL,
    `indication` varchar(50) NOT NULL,
    `frequency` int NOT NULL,
    `timing` varchar(50) NOT NULL,
    PRIMARY KEY(pre_no)
    );


CREATE TABLE `host`(
    `h_name` varchar(20) NOT NULL,
    `h_id` int NOT NULL,
    `h_phone` int NOT NULL,
    `h_address` varchar(50) NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `pet_breed` varchar(50) NOT NULL,
    `pet_sex` varchar(6) NOT NULL,
    `medical_history` varchar(50),
    `allergy_medicine` varchar(50),
    `chip_number` int,
    PRIMARY KEY(h_id)
);


CREATE TABLE `registered`(
    `reg_no` int NOT NULL,
    `d_no` int NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `dept` varchar(50) NOT NULL,
    `h_id` int NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `time` varchar(50) NOT NULL,
    `e_no` int NOT NULL,
    PRIMARY KEY(d_no)
);

CREATE TABLE `clinic`(
    `dept` varchar(50) NOT NULL,
    `time` varchar(50) NOT NULL,
    `d_no` int NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `reg_no` int NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `e_no` int NOT NULL,
    PRIMARY KEY(d_no)
);

CREATE TABLE `hosptial_employee`(
    `e_no` int NOT NULL,
    `e_name` varchar(20) NOT NULL,
    `responsible` varchar(50) NOT NULL,
    `e_phone` int NOT NULL,
    PRIMARY KEY(e_no)
);


CREATE TABLE `space`(
    `r_no` int NOT NULL,
    `r_name` varchar(20) NOT NULL,
    `time` varchar(50) NOT NULL,
    `status` varchar(50) NOT NULL,
    `d_no` int,
    `d_name` varchar(20),
    `pet_name` varchar(20),
    `e_no` int NOT NULL,
    PRIMARY KEY(r_no)
);
