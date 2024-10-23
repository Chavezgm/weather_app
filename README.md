# Weather App

Weather App is a Rails API project developed to retrieve weather zone data using the National Weather Service API. This application provides users with information about various weather zones, including local entities and their attributes.

## Setup

### Prerequisites
- Ruby (version >= 2.5.0)
- Rails (version >= 5.2.0)
- PostgreSQL (if applicable)

### Installation
1. Clone the repository:
   ```bash
   git clone <repository_url>

   ```


  ```bash
  bundle install
```
   
   ```bash
  rails server
```
## Visit 

```bash
     http://localhost:3000/
```

## Zone Endpoints

```GET /zones: Retrieve a list of weather zones.```

 - GET /zones/
 - : Retrieve a specific weather zone by ID.
- GET /zones/search?area=<area_code>: Retrieve weather zones based on a state or area code.
<img width="738" alt="Screenshot 2024-10-22 at 7 24 27 PM" src="https://github.com/user-attachments/assets/82de0bbf-589d-4b19-8a6d-17080dcf3bc9">






