Krisp Meeting Notes (2024-10-08):
Key Points:
The team discussed the need for a quick turnaround on implementing the market survey functionality, with Drew expressing willingness to pay more for an expedited timeline.
Patrick confirmed that the next contract would have a higher hourly rate but a much quicker turnaround, as they are now past the discovery phase.
The discussion covered the expected deliverables for the market survey, including input forms, a summary page, and storing data in a database to track historical trends.
The team discussed the need for different user roles and permissions, with some users having read-only access and others having edit access for specific properties.
Drew requested a list of all API endpoints referenced by the system to share with another data provider.
The team discussed the need for consistency in formatting and presentation of the leasing dashboard data, with Drew suggesting his wife, a UX designer, could provide feedback.
Patrick mentioned that some recent updates to the leasing dashboard, such as fixing decimal places and adding commas, were already completed but not yet deployed.
The team agreed to regroup and discuss the different user roles and permissions in more detail as the market survey functionality is being developed.
Action Items:
Patrick to push the latest updates to production, including hard-coded updates for model beds and investment partner columns, and functionality for admin users to edit these columns. - Patrick
Patrick to update the formulas in the bottom rows of the Excel file to match how they are calculated in the original file. - Patrick
Patrick to send a proposal for the market survey implementation. - Patrick
Patrick to start recording hours and begin work on the market survey implementation while waiting for the formal proposal to be finalized with Jimmy's involvement. - Patrick
Jimmy to provide a list of API endpoints that the system references, including those not currently in use. - Jimmy
Drew to formally introduce and roll out the leasing dashboard to ACO once the latest changes are finished after confirming updates with Patrick. - Drew
Outline:
Development Progress Update
Patrick provided an update on the development progress, mentioning that they finished the hard-coded updates for model beds and investment partner columns that morning.
These updates allow admin users to edit the investment partner and model bed columns, with data persisting after each edit.
The functionality is limited to admin users, ensuring only authorized personnel can make changes.
Other updates include hiding the 'refreshed data' button for non-admin users to streamline user experience.
Patrick plans to push these updates to production after the meeting.
Improving Communication and Task Management
The team discussed improving communication and task management, addressing concerns about long implementation times for updates.
Drew expressed concerns about the need for quicker responses to urgent issues, highlighting recent delays due to travel and personal matters.
Patrick and Jimmy acknowledged these delays and proposed implementing a new system for tracking tasks and updates.
Possible solutions included using a Google Doc or adding a tab to the application's admin panel for better task tracking.
The team agreed to follow up with a more detailed plan for improving communication and task tracking.
Market Survey Feature Implementation
Drew emphasized the urgency of implementing the market survey feature, which Patrick confirmed as a priority.
The market survey development would have a quicker turnaround time than previous updates, focusing on delivering input forms for users, data storage in a database, and summary outputs similar to their current Excel-based system.
The discussion also covered the need for historical data storage and visualization of leasing trends over time.
User Roles and Permissions for Market Survey Feature
The team discussed the complexity of implementing different user roles and permissions for the market survey feature.
Options considered included domain-based self-registration, role-based access control, and the ability for administrators to manage user permissions.
Patrick showed an existing admin panel that could be adapted for user management purposes.
The team agreed to revisit this topic and provide more detailed requirements for user roles and access levels.
Market Survey Data Input Process
Details about the market survey data input process were clarified, including that survey data will be input weekly, typically on Fridays.
The need for a dropdown to select properties, historical data storage, and the ability to edit existing data entries was discussed.
Patrick asked about data reset procedures and confirmed that admins should be able to edit past entries if needed.
API Endpoints Documentation
Drew requested a list of API endpoints used in the system, particularly those related to Entrata.
Jimmy offered to provide a data model document containing this information, which would be useful for potential integration with other data providers.
User Experience Feedback
Drew mentioned the possibility of having their spouse, a User Experience Designer, review the application and provide feedback on the look and feel.
The team welcomed this input for future improvements.
