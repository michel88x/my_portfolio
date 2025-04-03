class ContactDetailsObject {
  final String fullName;
  final String email;
  final String phone;
  final String subject;
  final String message;

  ContactDetailsObject({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.subject,
    required this.message
});

  Map<String, dynamic> toJson() {
    return {
      'fullname': fullName,
      'email': email,
      'phone': phone,
      'subject': subject,
      'message': message,
    };
  }
}