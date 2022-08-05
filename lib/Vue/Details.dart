import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 420,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/voiture.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Voiture d'occasion",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Prix : 8300\$",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: 370,
                        margin: EdgeInsets.only(
                          bottom: 30,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(50),
                          color: ColorData.primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Ajout au panier',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Apropos du produit",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Text("Lorem ipsum dolor sit amet consectetur, adipisicing elit. Aperiam dignissimos neque mollitia quas, aut velit dicta magni facere, saepe, nisi explicabo! Ratione sapiente dolores ipsam eum commodi culpa tempora fugit" +
                        "Molestiae eum porro veniam Reiciendis placeat recusandae, tenetur harum nobis ab quaerat consequatur corporis earum! Velit assumenda distinctio architecto cupiditate qui pariatur! Quis voluptate similique aperiam quam alias, accusamus minus!Voluptas quod dolore a? Est unde expedita exercitationem, aut iure obcaecati, magni fugit libero ea, recusandae excepturi aliquid quo saepe? Excepturi dolores exercitationem asperiores ea! Veniam minima eaque expedita odiocorrupti assumenda possimus facere ipsa dolorem eaque soluta ducimus necessitatibus ut animi nulla numquam rerum molestias eveniet excepturi! Suscipit soluta recusandae vitae earum eum nisi possimus ab quibusdam voluptate id eum laborum ad quasi minima neque temporibus quis ab at vitae tenetur soluta, sunt iure maxime voluptas velit Optio velit iure, fuga sapiente rem laboriosam pariatur non labore ipsum, repellat omnis dolorem id vel laborum praesentium deleniti sit perferendis dicta doloribus earum inventore est tempora placeat? Odit amet debitis error suscipit illo ab commodi, consequatur?Placeat, obcaecati dolores beatae assumenda asperiores quis pariatur commodi id, quisquam voluptas nulla quae praesentium doloremque unde illum recusandae velit, vel necessitatibus corrupti et sapiente labore ea libero doloremque incidunt dolores perferendis optio"),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 50,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                height: 45,
                width: 45,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                ),
              )),
          Positioned(
            top: 50,
            right: 20,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ColorData.primaryColor,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.share_sharp,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
