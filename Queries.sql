select Customer.CustomerID, Customer.CustFirstName, Customer.CustLastName, PricingPlan.PlanName, CustomerPricingPlan.DateBought
from Customer, CustomerPricingPlan, PricingPlan
where Customer.CustomerID = CustomerPricingPlan.CustomerID 
and CustomerPricingPlan.PricingPlanID = PricingPlan.PricingPlanID
order by DateBought 


Select 
Vehicle.VehicleID,
Vehicle.BatteryLevel,
[Location].LocationNickname AS CurrentLocation,
[Location].LocationStreetAddress AS LocationAddress
From 
Vehicle
Join 
[Location] ON Vehicle.VehicleID = [Location].LocationID
Where 
Vehicle.BatteryLevel < 30
Order by 
Vehicle.VehicleID;

 SELECT 
    Employee.EmpID, EmpFirstName, EmpLastName, PositionName, PositionTypeName, 
	CompensationHistory.StartDate, CompensationHistory.SalaryOrHourlyRate
FROM 
    Employee,CompensationHistory, Position, PositionType
WHERE 
    Employee.EmpID = CompensationHistory.EmpID 
    AND CompensationHistory.PositionID = Position.PositionID 
    AND CompensationHistory.PositionTypeID = PositionType.PositionTypeID
    AND CompensationHistory.EndDate IS NULL
ORDER BY 
    Employee.EmpID, CompensationHistory.StartDate;




   SELECT 
    c.CustomerID,
    c.CustFirstName,
    c.CustLastName,
    c.CustEmail,
    r.RentalID,
    r.RentalStart AS checkout_date,
    r.RentalEnd AS return_date,
    l1.LocationNickName AS checkout_location,
    l2.LocationNickName AS checkin_location,
    r.VehicleID
FROM 
    Customer c
JOIN 
    Rental r ON c.CustomerID = r.CustomerID
LEFT JOIN 
    Location l1 ON r.EndLocation = l1.LocationID
LEFT JOIN 
    Location l2 ON r.StartLocation = l2.LocationID
ORDER BY 
    c.CustomerID;



select EmpFirstName, EmpLastName, ServiceTech.ServiceTechID, TechAvailability, SalaryorHourlyRate, MaintenanceDescription, CertificationName, CertificationScore
from Maintenance, VehicleMaintenance, ServiceTechCertification, Certification, ServiceTech, Employee, CompensationHistory
where TechAvailability = 'Available'
and Maintenance.MaintenanceID = VehicleMaintenance.MaintenanceID
and VehicleMaintenance.ServiceTechCertificationID = ServiceTechCertification.ServiceTechCertificationID
and ServiceTechCertification.ServiceTechID = ServiceTech.ServiceTechID
and ServiceTechCertification.CertificationID = Certification.CertificationID
and ServiceTech.EmpID = Employee.EmpID
and Employee.EmpID = CompensationHistory.EmpID


Select 
Customer.CustomerID,
Customer.CustFirstName,
Customer.CustLastName,
Count(VehicleMaintenance.VehicleMaintenanceID) AS MaintenanceIssueCount
From 
Customer, Rental, VehicleMaintenance
Where 
Customer.CustomerID = Rental.CustomerID
and Rental.RentalID = VehicleMaintenance.RentalID
Group by 
Customer.CustomerID, Customer.CustFirstName, Customer.CustLastName
Having 
Count(VehicleMaintenance.VehicleMaintenanceID) > 0
Order by
MaintenanceIssueCount DESC;


Select customer.customerID,sum(PenaltyAmount) as TotalPenalties
FROM Customer, Rental, RentalPenalty, Penalty
WHERE customer.customerID=Rental.CustomerID and Rental.RentalID = RentalPenalty.RentalID and penalty.penaltyID = rentalpenalty.penaltyID
Group by Customer.CustomerID;


SELECT 
    LocationID,
    LocationNickName,
    COUNT(RentalID) AS NumberOfCheckouts
FROM 
    Rental
JOIN 
    Location ON EndLocation = LocationID
GROUP BY 
    LocationID, LocationNickName
ORDER BY 
    NumberOfCheckouts DESC;


select PlanName,
count (Customer.CustomerID) as CustPerPlanInTally
from PricingPlan, CustomerPricingPlan, Customer, ZipCode
where city = 'Tallahassee' 
and ZipCode.ZipCodeID = Customer.ZipCodeID
and Customer.CustomerID = CustomerPricingPlan.CustomerID
and CustomerPricingPlan.PricingPlanID = PricingPlan.PricingPlanID 
group by PlanName


Select 
Customer.CustomerID, 
Customer.CustFirstName, 
Customer.CustLastName, 
PricingPlan.PlanName, 
CustomerPricingPlan.PricingPlanStatus, 
PricingPlan.PlanDescription 
From Customer 
Join CustomerPricingPlan on Customer.CustomerID = CustomerPricingPlan.CustomerID 
Join PricingPlan on CustomerPricingPlan.PricingPlanID = PricingPlan.PricingPlanID 
Order by Customer.CustomerID



select LocationNickName, VehicleID, RentalEnd, LocationLatitude, LocationLongitude,
rank() over (partition by VehicleID order by RentalEnd DESC) as LocationRank
from [Location], Rental
where Rental.EndLocation = Location.LocationID
Order by vehicleID, RentalEnd DESC

