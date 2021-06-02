class Contact {
  var creationdate;

  String name;
  String sub;
  String leading;

  Contact(
      {
      this.name,
      this.sub,
      this.leading});
}

List<Contact> contacts = [
  Contact(
      
      name: 'Mike Darko',
      sub: '1 minute ago',
      leading: 'assets/images/M.svg'),
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
