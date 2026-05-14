CREATE TABLE hospital_kpi (
    patient_id INT,
    patient_name VARCHAR(50),
    department VARCHAR(50),
    diagnosis VARCHAR(100),
    city VARCHAR(50),
    admission_date DATE,
    discharge_date DATE,
    bill_amount DECIMAL(10,2),
    insurance_provider VARCHAR(50),
    payment_method VARCHAR(20)
);

INSERT INTO hospital_kpi VALUES

(101, 'Ali Khan', 'Cardiology', 'Hypertension', 'Karachi', '2026-01-02', '2026-01-05', 45000, 'State Life', 'Cash'),

(102, 'Sara Ahmed', 'Neurology', 'Migraine', 'Lahore', '2026-01-03', '2026-01-04', 18000, 'None', 'Card'),

(103, 'Usman Tariq', 'Orthopedics', 'Fracture', 'Karachi', '2026-01-05', '2026-01-12', 120000, 'Jubilee', 'Insurance'),

(104, 'Ayesha Noor', 'Gynecology', 'Pregnancy', 'Islamabad', '2026-01-06', '2026-01-10', 95000, 'EFU', 'Insurance'),

(105, 'Bilal Hassan', 'Cardiology', 'Heart Disease', 'Karachi', '2026-01-07', '2026-01-15', 180000, 'State Life', 'Insurance'),

(106, 'Hina Malik', 'Dermatology', 'Skin Allergy', 'Lahore', '2026-01-08', '2026-01-09', 15000, 'None', 'Cash'),

(107, 'Farhan Ali', 'Neurology', 'Stroke', 'Karachi', '2026-01-09', '2026-01-18', 250000, 'EFU', 'Insurance'),

(108, 'Zara Sheikh', 'ENT', 'Sinus Infection', 'Islamabad', '2026-01-10', '2026-01-11', 14000, 'None', 'Cash'),

(109, 'Ahmed Raza', 'Cardiology', 'Diabetes Complications', 'Karachi', '2026-01-11', '2026-01-16', 85000, 'Jubilee', 'Card'),

(110, 'Maham Iqbal', 'Orthopedics', 'Back Pain', 'Lahore', '2026-01-13', '2026-01-17', 30000, 'None', 'Cash');
