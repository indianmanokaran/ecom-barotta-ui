import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double dynamicWidth = screenWidth * 0.5;
    double containerHeightPercentage = 30.0; // Adjust the percentage as needed


    // Calculate a dynamic width based on screen width

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('THE CHENNAI BAROTTA',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,),)),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 20,),
          Icon(Icons.notification_add),

        ],
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(

          children: [
            Center(
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage("https://thumbs.dreamstime.com/b/fish-curry-parotha-tea-traditional-south-indian-food-kerala-paratha-milk-set-was-ordered-regular-restaurant-69204033.jpg?w=768"),fit: BoxFit.cover
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  buildContainer("Vegitable Barotta"),
                  SizedBox(width: 10,),
                  buildContainer("Malabar Barotta"),
                  SizedBox(width: 10,),
                  buildContainer("Banana Barotta"),
                  SizedBox(width: 10,),
                  buildContainer("Cabbage Barotta"),
                  SizedBox(width: 10,),
                  buildContainer("Minty Barotta"),
                  SizedBox(width: 10,),
                  buildContainer("Kali Barotta")
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: screenHeight * 0.68,
                        // width: 120,
                        padding: EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              imagecardsvertical("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNLBpskBKqB5ErF0S7uR3SNxi8sijxKOXh-Q&usqp=CAU"),
                              SizedBox(height: 10,),
                              imagecardsvertical("https://thumbs.dreamstime.com/b/chicken-kothu-parotta-curried-shredded-indian-flatbread-popular-south-street-food-made-layered-bread-pieces-meat-egg-225927369.jpg?w=768"),
                              SizedBox(height: 10,),
                              imagecardsvertical("https://thumbs.dreamstime.com/b/hot-parotta-banana-leaf-biryani-paneer-butter-masala-fried-rice-72984677.jpg?w=768"),
                              SizedBox(height: 10,),
                              imagecardsvertical("https://thumbs.dreamstime.com/b/parotta-white-background-70595516.jpg?w=768"),
                              SizedBox(height: 10,),
                              imagecardsvertical("https://thumbs.dreamstime.com/b/indian-chana-masala-parotta-homemade-bread-served-delicious-prepared-using-dal-chickpea-various-spices-40802199.jpg?w=768"),
                              SizedBox(height: 10,),
                              imagecardsvertical("https://thumbs.dreamstime.com/b/indian-chana-masala-parotta-homemade-bread-served-delicious-prepared-using-dal-chickpea-various-spices-40802199.jpg?w=768"),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 3,
                      child: Container(
                        height: screenHeight * 0.68,
                        width: dynamicWidth,
                        padding: EdgeInsets.all(10),

                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                constraints: BoxConstraints(maxHeight: 400.0),
                                height: screenHeight * (containerHeightPercentage / 100),
                                width: 1005.0,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage("https://thumbs.dreamstime.com/b/hot-parotta-banana-leaf-biryani-paneer-butter-masala-fried-rice-72984677.jpg?w=768"),fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                height: 300,
                                width: 1005.0,
                                padding: EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [

                                    Text("Ingredients",style: GoogleFonts.tektur(fontWeight: FontWeight.bold,fontSize: 25),),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          children: [
                                            ingredientslist("https://thumbs.dreamstime.com/b/kerala-style-parotta-porotta-plate-layered-indian-sri-lankan-flatbread-made-maida-atta-alternatively-known-as-263133596.jpg?w=768"),
                                            SizedBox(width: 10,),
                                            ingredientslist("https://thumbs.dreamstime.com/b/parotta-barotta-indian-dish-made-flour-eaten-vegetable-kurma-popular-dish-southern-states-41010015.jpg?w=768"),
                                            SizedBox(width: 10,),
                                            ingredientslist("https://thumbs.dreamstime.com/b/kerala-parotta-popularly-known-as-paratha-porotta-kerala-parotta-popularly-known-as-paratha-porotta-delicacy-193290644.jpg?w=768"),
                                            SizedBox(width: 10,),
                                            ingredientslist("https://thumbs.dreamstime.com/b/kerala-parotta-beef-curry-parotta-or-malabar-layered-indian-flatbread-goes-great-curries-here-how-to-make-200213544.jpg?w=768"),
                                            SizedBox(width: 10,),
                                            ingredientslist("https://thumbs.dreamstime.com/b/top-view-roti-canai-kerala-porotta-malabari-parotta-top-view-roti-canai-kerala-porotta-malabari-parotta-table-225245267.jpg?w=768"),

                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9,),

                                    Text("JAPAN Barotta",style: GoogleFonts.dmSerifDisplay(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                                    Text("₹ 200",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container ingredientslist(String img) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
      ),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(img),fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
  }

  Container imagecardsvertical(String img) {
    return Container(
      height: 100,
      width: 1005.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(img),fit: BoxFit.cover
          )
      ),
    );
  }

  Container buildContainer(String typeofbarotta) {
    return Container(
      // height: 100,
      // width: 100,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      ),

      child: Container(

        height: 50,
        width: 150,

        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Center(child: Text(typeofbarotta,style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white))),
      ),
    );
  }
}
