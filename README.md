# ClinicO

ClinicO is an android moblile application which can be downloaded from
<a href="https://drive.google.com/file/d/1yRCC20N7Xf9I595xud7lE78xuDRyDCS8/view?usp=sharing">here.</a>

## Problem Statement

Nowadays, whenever we fall ill, we visit the doctor's clinic with or without an appointment. Now, if we go to a clinic where appointments are not scheduled and everyone is served on the basis of first-come first-serve basis, then it leads to long queues. So let's say even if we do visit with an appointment, but due to some medical emergencies or unavoidable circumstances, the appointments have got delayed. So, this leads to long waiting hours and crowding in the hospitals/clinics. There is no real time monitor which can show you the current appointment number being attended to, so that you can compare it with your appointment number and plan your journey accordingly. 


## How ClinicO solves the problem?

- A user can authenticate themselves using Google SignIn and choose their role whether they are a Doctor or a Patient.
- After choosing their role, they are navigated to their respective dashboards.

### Patient's Dashboard

- User's can view all the hospitals registered on the clinicO app. They can also search a clinic in the search box.
- On finding their doctor's clinic/hospital card on the dashboard, they can click on it and view the details of the hospital/clinic like doctor's details, qualification, work experience, specialization, clinic's/hospital's working hours, fees, etc.
- Then, after viewing all of this, the user could book an appointment by filling in basic details like name, age, gender, symptoms or disease they are suffering from and they can also attach a proof of fee payment if they have already paid the fees.
- In the notification section (which can be viwed by clicking on the bell icon in the bottom navigation bar), user can view the appointments under two sections -
   - Sub 1. Pending Appointment (requiring confirmation from the clinic side)
   - Sub 2. Confirmed Appintment (which are confirmed with an appointment number alloted to the patient)
- Users can also view the current appointment number on the clinic's page on ClinicO.
- Finally, if user wants to use the app for some other user, they can go to the user profile section from the bottom nav bar and click log out.

### Doctor's Dashboard

- When the user chooses the role of doctor, they are given a form to fill in the detials of the doctors and their clinic/hospital.
- These details will be viewed by the user on the hospital/clinic page in the ClinicO.
- Then, the clinic staff can go to appointment tab in the bottom navbar where they can view the patients who have requested an appointment with their details which they have      filled in the appointment form.
- Then, the staff can give an appointment number to the patient based on their priorities and can confirm their appointment.
- As the staff confirms the appointment, the corresponding patient is notified about the same.
- The staff can go the counter tab from the bottom navbar where they can modify (increase/decrease) the current appointment number.
- If they want to view or update the details on their clinic page, they can do so in the profile tab on the bottom navbar.
- Finally, they can also log out from the app from the profile section itself.

