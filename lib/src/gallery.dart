List<GalleryItem> galleryItems = [
  GalleryItem(
    imageTitle: "Fuchs",
    imageDescription:
        "Der Fuchs ist ein schlaues, anpassungsfähiges Raubtier, das zur Familie der Hunde gehört. Besonders bekannt ist der Rotfuchs, der in Wäldern, auf Feldern und sogar in Städten lebt. Er ernährt sich von kleinen Tieren, Insekten, Beeren und Aas.",
    imagePath: "assets/images/fox.png",
  ),
  GalleryItem(
    imageTitle: "Wasserschildkröte",
    imageDescription:
        "Wasserschildkröten sind Reptilien, die sowohl im Wasser als auch an Land leben können. Sie besitzen einen schützenden Panzer und atmen Luft, müssen aber regelmäßig ins Wasser zurückkehren, um sich zu ernähren oder abzukühlen.",
    imagePath: "assets/images/sea_turtle.png",
  ),
  GalleryItem(
    imageTitle: "Flamingo",
    imageDescription:
        "Der Flamingo ist ein auffälliger Vogel mit rosa Gefieder, langen Beinen und einem gebogenen Schnabel. Er lebt in großen Gruppen an Seen oder Lagunen und ernährt sich von kleinen Krebstieren und Algen, die ihm seine rosa Farbe verleihen.",
    imagePath: "assets/images/flamingo.png",
  ),
  GalleryItem(
    imageTitle: "Giraffe",
    imageDescription:
        "Die Giraffe ist das höchste landlebende Tier der Welt und leicht an ihrem extrem langen Hals und den gefleckten Fellmustern zu erkennen. Sie lebt in afrikanischen Savannen und ernährt sich vor allem von den Blättern hoher Bäume, wie z. B. Akazien.",
    imagePath: "assets/images/giraffe.png",
  ),
  GalleryItem(
    imageTitle: "Zebra",
    imageDescription:
        "Das Zebra ist ein wild lebendes Pferdetier, das durch sein auffälliges schwarz-weißes Streifenmuster bekannt ist. Es lebt in den Savannen Afrikas, bewegt sich meist in Herden und ist ein Pflanzenfresser. Die Streifen dienen vermutlich der Tarnung und dem Schutz vor Insekten.",
    imagePath: "assets/images/zebra.png",
  ),
  GalleryItem(
    imageTitle: "Elefant",
    imageDescription:
        "Der Elefant ist das größte landlebende Säugetier und bekannt für seinen Rüssel, große Ohren und Stoßzähne. Es gibt afrikanische und asiatische Elefanten. Sie sind sehr soziale Tiere, leben in Herden und haben ein ausgezeichnetes Gedächtnis.",
    imagePath: "assets/images/elephant.png",
  ),
  GalleryItem(
    imageTitle: "Löwe",
    imageDescription:
        "Der Löwe ist eine große Raubkatze und wird oft als „König der Tiere“ bezeichnet. Männliche Löwen erkennt man an ihrer auffälligen Mähne. Sie leben hauptsächlich in Afrika in Rudeln und jagen gemeinsam Beutetiere wie Antilopen oder Zebras.",
    imagePath: "assets/images/lion.png",
  ),
  GalleryItem(
    imageTitle: "Nashorn",
    imageDescription:
        "Das Nashorn ist ein massives, pflanzenfressendes Säugetier mit dicker Haut und einem oder zwei Hörnern auf der Nase. Es lebt in Afrika und Asien und gehört zu den bedrohten Tierarten, da es wegen seiner Hörner stark gewildert wird.",
    imagePath: "assets/images/rhinoceros.png",
  ),
  GalleryItem(
    imageTitle: "Tiger",
    imageDescription:
        "Der Tiger ist die größte Raubkatze der Welt und an seinem auffälligen orangefarbenen Fell mit schwarzen Streifen erkennbar. Er lebt hauptsächlich in Asien, bevorzugt dichte Wälder oder Graslandschaften, und ist ein Einzelgänger. Tiger sind ausgezeichnete Jäger.",
    imagePath: "assets/images/tiger.png",
  ),
  GalleryItem(
    imageTitle: "Krokodil",
    imageDescription:
        "Das Krokodil ist ein großes, urzeitlich wirkendes Reptil, das in Flüssen, Seen und Sümpfen lebt. Es hat eine harte, schuppige Haut, kräftige Kiefer und kann sowohl im Wasser als auch an Land schnell und lautlos zuschlagen. Krokodile sind Fleischfresser.",
    imagePath: "assets/images/crocodile.png",
  ),
  GalleryItem(
    imageTitle: "Oryx-Antilope",
    imageDescription:
        "Die Oryx-Antilope ist eine große, an Wüsten angepasste Antilope mit auffällig langen, geraden Hörnern. Sie lebt in trockenen Regionen Afrikas und des Nahen Ostens und kann lange Zeit ohne Wasser auskommen. Ihr helles Fell hilft, Hitze zu reflektieren.",
    imagePath: "assets/images/oryx.png",
  ),
  GalleryItem(
    imageTitle: "Gepard",
    imageDescription:
        "Der Gepard ist das schnellste landlebende Tier und kann Geschwindigkeiten von bis zu 100 km/h erreichen. Er hat einen schlanken Körperbau, kurze Beine und eine charakteristische Fleckenzeichnung auf seinem Fell. Geparden leben in offenen Savannen und jagen meist Einzeltiere, wie Antilopen.",
    imagePath: "assets/images/cheetah.png",
  ),
  GalleryItem(
    imageTitle: "Strauß",
    imageDescription:
        "Der Strauß ist der größte und schwerste Vogel der Welt, bekannt für seine kräftigen Beine und seine Fähigkeit, sehr schnell zu laufen. Strauße können Geschwindigkeiten von bis zu 70 km/h erreichen. Sie sind nicht flugfähig, aber ausgezeichnete Läufer und leben in offenen Savannen und Wüsten Afrikas.",
    imagePath: "assets/images/ostrich.png",
  ),
];

class GalleryItem {
  // Attribute
  final String imageTitle;
  final String imageDescription;
  final String imagePath;

  // Konstruktor
  GalleryItem({required this.imageTitle, required this.imageDescription, required this.imagePath});
}
