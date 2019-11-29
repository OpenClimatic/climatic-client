class authLoading extends StatefulWidget {
  authLoading({Key key}) : super(key: key);

  @override
  _authLoadingState createState() => _authLoadingState();
}

class _authLoadingState extends State<authLoading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Auth loading"),
    );
  }
}
