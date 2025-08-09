class Event {
  final String eventName;
  final String eventDate;
  final String eventTime;
  final String eventLocation;
  final String eventDescription;

  Event({
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventLocation,
    required this.eventDescription,
  });
}

final List<Event> events = [
  Event(
    eventName: 'Pet Show',
    eventDate: '2025-08-01',
    eventTime: '10:00 AM',
    eventLocation: 'SPCA',
    eventDescription: 'New pet products',
  ),
  Event(
    eventName: 'Adoption Event',
    eventDate: '2025-09-01',
    eventTime: '12:00 PM',
    eventLocation: 'Central Market',
    eventDescription: 'Dogs for adoption organised by SPCA',
  ),
];
