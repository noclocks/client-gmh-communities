# Design Patterns

## 1. MVC (Model-View-Controller)
The architecture is inspired by the MVC pattern:
- **Model:** Manages the business logic and data flow.
- **View:** Renders data and captures user interactions.
- **Controller:** Handles user requests and updates the model.

## 2. Microservices
- The system integrates with third-party APIs (e.g., Entrata) as loosely coupled services.
- Each module operates independently, ensuring better scalability and maintainability.

## 3. Event-Driven Design
- Certain operations (e.g., data refresh) use event triggers to optimize performance.
