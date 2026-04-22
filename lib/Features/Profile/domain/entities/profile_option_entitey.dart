class ProfileOptionEntitey {
  final String title, leading, trailling;
  final void Function() onTap;

  ProfileOptionEntitey(
      {required this.title,
      required this.leading,
      required this.trailling,
      required this.onTap});
}
