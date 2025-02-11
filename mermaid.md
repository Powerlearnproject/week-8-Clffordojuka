## Entity Relationship Diagram (ERD)

```mermaid
erDiagram
    Users {
        INT UserID PK
        VARCHAR(100) Name
        VARCHAR(100) Location
        VARCHAR(50) IncomeLevel
    }

    CookingTechnologies {
        INT TechnologyID PK
        VARCHAR(100) TechnologyName
        VARCHAR(50) TechnologyType
    }

    AccessRecords {
        INT RecordID PK
        INT UserID FK
        INT TechnologyID FK
        DATE AccessDate
    }

    HealthImpactData {
        INT ImpactID PK
        INT UserID FK
        VARCHAR(100) HealthIssue
        VARCHAR(50) SeverityLevel
    }

    Users ||--o{ AccessRecords : "has"
    CookingTechnologies ||--o{ AccessRecords : "used in"
    Users ||--o{ HealthImpactData : "suffers from" 