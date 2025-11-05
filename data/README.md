# Data

## Dataset 1: `airlines.csv`

-   `Airport.Code`: Unique IATA code identifying the airport (e.g., ATL, LAX).
-   `Airport.Name`: Full name of the airport.
-   `Time.Label`: Label describing the time period of the data (e.g., “2015 January”).
-   `Time.Month`: Month number (1–12) for which data were recorded.
-   `Time.Month.Name`: Name of the month for which data were recorded.
-   `Time.Year`: Year when data were collected.
-   `Statistics.# of Delays.Carrier`: The number of delays and cancellations due to circumstances within the airline's control.
-   `Statistics.# of Delays.Late Aircraft`: The number of delays and cancellations caused by a previous flight with the same aircraft arriving late, causing the present flight to depart late
-   `Statistics.# of Delays.National Aviation System`: The number of delays and cancellations attributable to the national aviation system.
-   `Statistics.# of Delays.Security`: Number of delays or cancellations caused by evacuation of a terminal or concourse, re-boarding of aircraft because of security breach, inoperative screening equipment and/or long lines in excess of 29 minutes at screening areas.
-   `Statistics.# of Delays.Weather`: Number of delays or cancellations caused by significant meteorological conditions (actual or forecasted) that, in the judgment of the carrier, delays or prevents the operation of a flight.
-   `Statistics.Flights.Cancelled`: Number of flights canceled during the period.
-   `Statistics.Flights.Delayed`: Number of flights delayed during the period.
-   `Statistics.Flights.Diverted`: Number of flights diverted to another airport.
-   `Statistics.Flights.On Time`: Number of flights that arrived on time.
-   `Statistics.Flights.Total`: Total number of flights scheduled.
-   `Statistics.Minutes Delayed.Carrier`: Total minutes of delay attributed to the carrier (e.g., maintenance, crew).
-   `Statistics.Minutes Delayed.Late Aircraft`: Total minutes of delay caused by the aircraft arriving late from a previous flight.
-   `Statistics.Minutes Delayed.National Aviation System`: Total minutes of delay due to air traffic control or airport operations.
-   `Statistics.Minutes Delayed.Security`: Total minutes of delay due to security reasons.
-   `Statistics.Minutes Delayed.Weather`: Total minutes of delay caused by weather.
-   `Statistics.Minutes Delayed.Total`: Total minutes of all delays combined.
-   `Statistics.Carriers.Names`: List of carrier names included in the statistics.
-   `Statistics.Carriers.Total`: Total number of carriers operating at the airport during the period.

## Dataset 2: `educationachievement.xlsx`

-   `school`: Student’s school (GP = Gabriel Pereira, MS = Mousinho da Silveira).
-   `sex`: Student’s gender (F = female, M = male).
-   `age`: Student’s age (numeric: 15–22).
-   `address`: Type of student’s home address (U = urban, R = rural).
-   `famsize`: Family size (LE3 = ≤3 members, GT3 = \>3 members).
-   `Pstatus`: Parent’s cohabitation status (T = living together, A = apart).
-   `Medu`: Mother’s education level (0 = none, 1 = primary, 2 = 5th–9th grade, 3 = secondary, 4 = higher).
-   `Fedu`: Father’s education level (same coding as `Medu`).
-   `Mjob`: Mother’s job type (teacher, health, services, at_home, other).
-   `Fjob`: Father’s job type (same categories as `Mjob`).
-   `reason`: Reason for choosing this school (home, reputation, course, other).
-   `guardian`: Student’s guardian (mother, father, other).
-   `traveltime`: Home-to-school travel time (1 = \<15 min, 2 = 15–30 min, 3 = 30–60 min, 4 = \>1 hour).
-   `studytime`: Weekly study time (1 = \<2 hrs, 2 = 2–5 hrs, 3 = 5–10 hrs, 4 = \>10 hrs).
-   `failures`: Number of past class failures (numeric: 0–4).
-   `schoolsup`: Extra educational school support (yes/no).
-   `famsup`: Family educational support (yes/no).
-   `paid`: Extra paid classes within the course subject (Math or Portuguese).
-   `activities`: Participation in extracurricular activities (yes/no).
-   `nursery`: Attended nursery school (yes/no).
-   `higher`: Wants to take higher education (yes/no).
-   `internet`: Internet access at home (yes/no).
-   `romantic`: In a romantic relationship (yes/no).
-   `famrel`: Quality of family relationships (1 = very bad to 5 = excellent).
-   `freetime`: Free time after school (1–5 scale).
-   `goout`: Going out with friends (1–5 scale).
-   `Dalc`: Workday alcohol consumption (1–5 scale).
-   `Walc`: Weekend alcohol consumption (1–5 scale).
-   `health`: Current health status (1–5 scale).
-   `absences`: Number of school absences (numeric).
-   `G1`: First-period grade (numeric: 0–20).
-   `G2`: Second-period grade (numeric: 0–20).
-   `G3`: Final grade (numeric: 0–20, often the target variable).
