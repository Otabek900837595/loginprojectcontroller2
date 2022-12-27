import 'package:flutter/material.dart';
import 'package:loginprojectcontroller2/pages/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 100,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: Text("Sign in",style: TextStyle(color:  Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
                          )
                      ),
                      Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                      // SizedBox(width: 4,),


                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 2,
                  width: double.infinity,
                  color: Colors.yellow,
                ),


                SizedBox(height: 100,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  child: TextField(
                    // controller: name,
                    decoration: InputDecoration(
                      hintText: "email/phone number",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.account_circle_rounded,color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),

                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  child: TextField(
                    // controller: name,
                    decoration: InputDecoration(
                      hintText: "email/id",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.email,color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),

                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  child: TextField(
                    // controller: name,
                    decoration: InputDecoration(
                      hintText: "phone number",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.phone,color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),

                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  child: TextField(
                    // controller: name,
                    decoration: InputDecoration(
                      hintText: "password",hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(margin: const EdgeInsets.symmetric(horizontal: 20),child: Text("Forgot Password?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: (){},
                      height: 50,
                      minWidth: 300,
                      color: Colors.yellowAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Sign up ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Or login up with",style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 10,),


                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: (){},
                        height: 50,
                        minWidth: 120,
                        color: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      MaterialButton(
                        onPressed: (){},
                        height: 50,
                        minWidth: 120,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Google",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //
  // void userService(){
  //   User user = User(
  //     "Name: $name",
  //     "Email: $email",
  //     "Phone: $phone",
  //     "Password: $password",
  //     "Confirm Password: $confirm",
  //   );
  //   PrefsService.storeUser(user);
  //   PrefsService.loadUser().then((value) => {
  //     // ignore: avoid_print
  //     print(value?.toJson()),
  //   });
  // }
  //


}
