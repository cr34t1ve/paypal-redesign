class Contact {
  var creationdate;

  String name;
  String sub;
  String leading;

  Contact({this.name, this.sub, this.leading});
}

List<Contact> contactsList = [
  Contact(
      name: 'Mike Darko', sub: '1 minute ago', leading: 'assets/images/M.svg'),
  Contact(
    name: 'Google Drive',
    sub: '2 hours ago',
    leading: 'assets/images/Vectorgdrive.svg',
  ),
  Contact(
    name: 'Carlson Kofi',
    sub: '2 hours ago',
    leading: 'assets/images/C.svg',
  ),
  Contact(
    name: 'Apple Store',
    sub: 'Yesterday at 11:45 AM',
    leading: 'assets/images/Apple_logo_grey 1.svg',
  ),
  Contact(
    name: 'Pizza Delivery',
    sub: 'Yesterday at 2:30 PM',
    leading: 'assets/images/pizza-slice 1.svg',
  ),
  Contact(
    name: 'Amazon.com',
    sub: 'Yesterday at 6:28 PM',
    leading: 'assets/images/Vectoramazon.svg',
  ),
  Contact(
    name: 'Google Drive',
    sub: '2 hours ago',
    leading: 'assets/images/Vectorgdrive.svg',
  ),
];


class PaypalContacts {
  String name;
  String sub;
  String leading;

  PaypalContacts({this.name, this.sub, this.leading});
}

List<PaypalContacts> paypalContacts = [
  PaypalContacts(
      name: 'Andrew Dillan', sub: 'andrew.dillan@gmail.com', leading: 'assets/images/M.svg'),
  PaypalContacts(
    name: 'Alex Millton',
    sub: 'alxmillton@yahoo.com',
    leading: 'assets/images/Vectorgdrive.svg',
  ),
  PaypalContacts(
    name: 'David Omari',
    sub: '@domari',
    leading: 'assets/images/C.svg',
  ),
  PaypalContacts(
    name: 'Jason',
    sub: '@jason9090',
    leading: 'assets/images/Apple_logo_grey 1.svg',
  ),
  PaypalContacts(
    name: 'Mike Rine',
    sub: 'mikerine@gmail.com',
    leading: 'assets/images/pizza-slice 1.svg',
  ),
  PaypalContacts(
    name: 'Nick Kranteng',
    sub: 'Nikkyk@gmail.com',
    leading: 'assets/images/Vectoramazon.svg',
  ),
  PaypalContacts(
    name: 'Vena Sunny',
    sub: '@venasunny',
    leading: 'assets/images/Vectorgdrive.svg',
  ),
];