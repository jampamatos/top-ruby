# EVENT MANAGER

## About

This repo contains the solution for the Event Manager Project for the Ruby path of [The Odin Project](https://www.theodinproject.com).

The program reads through a CSV database, finds (via [Google Civic Information API](https://developers.google.com/civic-information)) the representatives of the attendees by zipcode, gathers information about registration date and time for each attendee and builds a custom Thank You Letter to each registered attendee.

## Input

A CSV Event Attendee list.

## Output

A custom Thank You Letter in HTML format for each attendee and a console report.

## Asignments

### Assignment: Clean Phone Numbers

Similar to the zip codes, the phone numbers suffer from multiple formats and inconsistencies. If we wanted to allow individuals to sign up for mobile alerts with the phone numbers, we would need to make sure all of the numbers are valid and well-formed.

- If the phone number is less than 10 digits, assume that it is a bad number
- If the phone number is 10 digits, assume that it is good
- If the phone number is 11 digits and the first number is 1, trim the 1 and use the first 10 digits
- If the phone number is 11 digits and the first number is not 1, then it is a bad number
- If the phone number is more than 11 digits, assume that it is a bad number

### Assignment: Time Targeting

The boss is already thinking about the next conference: “Next year I want to make better use of our Google and Facebook advertising. Find out which hours of the day the most people registered, so we can run more ads during those hours.” Interesting!

Using the registration date and time we want to find out what the peak registration hours are.

### Assignment: Day of the Week Targeting

The big boss gets excited about the results from your hourly tabulations. It looks like there are some hours that are clearly more important than others. But now, tantalized, she wants to know “What days of the week did most people register?”
