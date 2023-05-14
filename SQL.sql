CREATE TABLE `doctor`(
    `dept` varchar(50) NOT NULL,
    `d_no` int(10) NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `d_sex` varchar(6) NOT NULL,
    `d_phone` int(10) NOT NULL,
    PRIMARY KEY(d_no)
    );

CREATE TABLE `prescription`(
    `h_name` varchar(20) NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `pre_no` int(10) NOT NULL,
    `d_no` int(10) NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `symptom` varchar(50) NOT NULL,
    `exterior` varchar(50) NOT NULL,
    `frequency` int(50) NOT NULL,
    `drug_name` varchar(50) NOT NULL,
    `indication` varchar(50) NOT NULL,
    `timing` varchar(50) NOT NULL,
    `way` varchar(50) NOT NULL,
    PRIMARY KEY(pre_no)
    );


CREATE TABLE `host`(
    `h_name` varchar(20) NOT NULL,
    `H_phone` int(10) NOT NULL,
    `h_id` int(10) NOT NULL,
    `h_address` varchar(50) NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `pet_sex` varchar(6) NOT NULL,
    `pet_breed` varchar(50) NOT NULL,
    `allergy_medicine` varchar(50),
    `chip_number` int(10),
    PRIMARY KEY(h_id)
);


CREATE TABLE `registered`(
    `d_name` varchar(20) NOT NULL,
    `d_no` int(10) NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `time` varchar(50) NOT NULL,
    `h_id` int(10) NOT NULL,
    `dept` varchar(50) NOT NULL,
    `e_no` int(10) NOT NULL,
    `reg_no` int(50) NOT NULL,
    PRIMARY KEY(d_no)
);

CREATE TABLE `clinic`(
    `d_no` int(10) NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `dept` varchar(50) NOT NULL,
    `time` varchar(50) NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `e_no` int(10) NOT NULL,
    `reg_no` int(10) NOT NULL,
    PRIMARY KEY(d_no)
);

CREATE TABLE `hosptial_employee`(
    `e_name` varchar(20) NOT NULL,
    `e_no` int(10) NOT NULL,
    `e_phone` int(10) NOT NULL,
    `responsible` varchar(50) NOT NULL,
    PRIMARY KEY(e_no)
);


CREATE TABLE `space`(
    `r_name` varchar(20) NOT NULL,
    `r_no` int(10) NOT NULL,
    `d_no` int(10) NOT NULL,
    `d_name` varchar(20) NOT NULL,
    `pet_name` varchar(20) NOT NULL,
    `status` varchar(50) NOT NULL,
    `time` varchar(50) NOT NULL,
    `e_no` int(10) NOT NULL,
    `e_name` varchar(20) NOT NULL,
    PRIMARY KEY(r_no)
);
