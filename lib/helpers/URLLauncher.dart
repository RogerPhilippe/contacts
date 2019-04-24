import 'package:url_launcher/url_launcher.dart';

class URLLauncher {

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir a pagina $url';
    }
  }

}