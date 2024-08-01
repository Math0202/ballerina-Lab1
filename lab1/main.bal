import ballerina/io;

type Course record { 
    string name;
    string code;
    int credits;
};


public function main() {

    

//lesson 1 starts ------------------------------------------------------------------------------
  string course = "DSA".toLowerAscii();
  int[] ages = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int length = ages.length();

//print statement
io:println(
    "Hello, World!", 
    "Welcome to bal, hope you pass it with flying colors");
  int printLetsGod = letsGod(true);
 

//switch statements
  match course {
    "dsa" => {
         io:print(printLetsGod);
    }
  }

//objects that can return different data types
  int|error findTheAvarage = avarage(ages, length);
  io:print(findTheAvarage);
//lesson 1 ends ------------------------------------------------------------------------------
}

function letsGod(boolean yes) returns int {
    int product = 5*5;
      int i = 1;
    if (yes)
    {
        
        while  (i < 10) {
            io:print(i," ");
            i = i + i;

            foreach int j in 1 ..< 5 {
                io:print(j);
        }

        }
    return product;
    }
    else {
        return 0;
    }
 }

 function avarage(int[] ages, int length) returns int|error {

    int sum = 0;
    int avarage = 0;
    int i = 0;

    while (i < length) {
        sum = <int>ages[i] + sum;
        i = i + 1;
    }

    avarage = <int>i/length;
    return  avarage;
 }
