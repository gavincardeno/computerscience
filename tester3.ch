
int introans;
string_t name;
int roadmap;
string_t pet;

string_t cheatr;

void cheat(){ //coding for roadmap at the beginning of the story
    printf("Would you like to see a roadmap of the game? (yes, no)\n");
    scanf("%s", &cheatr);
    if(cheatr=="yes"){
        printf("                                      INTRODUCTION                        \n");
        printf("    Option 1 (EASY)                  Option 2(MEDIUM)                    Option 3(HARD)\n");
        printf("WOODS | CASTLE | CEMETARY         MALL | GARAGE | HOSPITAL          ZOO EXHIBIT | AIRPORT | SHOPPING CENTER\n\n");
    }else{
        printf("Alrighty. We'll continue.\n");
    }
}
  

void intro(){ // INTRODUCTION
    printf("Welcome to Survival Run!!\n");
    printf("====================\n");
    printf("Please type your name:\n");
    scanf("%s", &name);
    sleep(1);printf("Hi there %s!\n================\n", name);
    sleep(2);printf("Along your journey you are also granted a pet!\n");
    sleep(2);printf("What would you like to name it?\n");
    scanf("%s", &pet);
    sleep(1);printf("Your pet is now named %s!\n================\n", name);
    printf("In Survival Run the entire population was wiped out from an astroid that struck Earth.\n");
    sleep(3);printf("However...\n");
    sleep(1);printf("You managed to survive along with others who are desperate for resources.\n");
    sleep(2);printf("You will go on an adventure while encountering some of these enemies.\n");
    sleep(2);printf("Try your best to");
    sleep(1);printf("  S");
    sleep(1);printf(" U");
    sleep(1);printf(" R");
    sleep(1);printf(" V");sleep(1);printf(" I");sleep(1);printf(" V");sleep(1);printf(" E!\n\n");
}

void intro2(){ //2nd part of intro after the roadmap
do{
    sleep(3);printf("Before you start please choose your Difficulty.\n");
    sleep(1);printf("Your choice will decide how strong your opponents are.\n");
    sleep(1);printf("It'll also result in the different places you visit.\n");
        
        
    sleep(3); printf("======================================================\n EASY   MEDIUM   HARD\n");
    printf(" =1     =2       =3\n");
        
    scanf("%d", &introans);
    }while(introans < 1 || introans > 3);
}

string_t gun;


void easy(){  //OPTION 1
    printf("%s, please select your starting Weapon!\n\n", name);
    printf("These guns all have different damage outputs and different efficiencies and will help you\nwin battles against your upcoming opponents!\n=======================================\n");
    do{
        sleep(3);printf(" TAC.SMG   SHOTGUN    CROSS BOW\n =1        =2         =3\n");
        scanf("%s", &gun);
    }while(gun != "1" && gun != "3" && gun != "2");
    
if(gun == "1"){
    gun="TAC.SMG";
    
    
}
    
if(gun == "2"){
    gun="SHOTGUN";
    
    
}
    
if(gun == "3"){
    gun="CROSSBOW";
    
}

printf("You have chosen the %s\n\n", gun);

sleep(1);printf("Oh no!\n");
sleep(2);printf("You're running out of food and resources!\n");
sleep(2);printf("Where would you like to travel to find more supplies?\n");
sleep(2);printf("FYI: All the places are unseured and you might run into some enemies.\n");
sleep(1);printf("Make the right Choice!\n=====================\n");

string_t place;

do{
    printf("THE WOODS    ABANDONED CASTLE      CEMETERY\n");
    printf("=1           =2                    =3\n");
    scanf("%s", &place);
}while(place != "1" && place != "3" && place != "2");

if(place == "1"){ //END 1
    printf("===================================\n");
    printf("You have entered the horrific WOODS!\n\n");
    sleep(2);printf("You are strolling through the woods.\n");
    sleep(2);printf("You keep walking and you hear someone shuffling through the bushes.\n");
    sleep(3);printf("Your first Enemy has appeared!\n");
    sleep(2);printf("A BOUNTY HUNTER!\n");
}
    
if(place == "2"){ //END 2
    printf("===================================\n");
    printf("You have entered the ABANDONED CASTLE!\n\n");
    sleep(2);printf("You are crossing the bridge into the center of the castle.\n");
    sleep(2);printf("You keep walking and you hear someone coming down the hall.\n");
    
    printf("Your first Enemy has appeared!\n");
    printf("A KNIGHT!\n");
}
    
if(place == "3"){ //END 3
    printf("===================================\n");
    printf("You have entered the Mysterious CEMETERY!\n\n");
    sleep(2);printf("You are strolling through the Cemetery.\n");
    sleep(2);printf("You keep walking and you hear someone shuffling through the bushes.\n");
    printf("You have entered the Mysterious CEMETERY!\n");
    printf("Your first Enemy has appeared!\n");
    printf("A ZOMBIE!\n");

}


sleep(3);printf("...\n");
sleep(1);printf("You are stranded.\n");
sleep(1);printf("You have taken out your %s\n", gun);


string_t attack;

do{
    sleep(2);printf("Press '1' then 'ENTER' to fight your enemy!\n");
    scanf("%s", &attack);
}while(attack != "1");

if(attack == "1"){
    printf("\nYou have chosen to attack your opponent!\n");
    printf("--Your Health: 10--\n");
    printf("--Enemies Health: 10--\n");
}
int damage;
int health=10;
int health2 = 10;

do{
    damage=randint(1, 5);    //Opponent gets attacked
    health= health-damage;
    sleep(2);printf("You have done %d damage to your opponent\n", damage);
    if(health<=0){    
    sleep(2);printf("===========================\nCongratulations, you have won the fight!\n");
    sleep(2);printf("Your enemy has dropped numerous resources including..\n");
    sleep(1);printf("Food!\n");
    sleep(1);printf("A Combat Knife!\n");
    sleep(1);printf("Band-Aids!\n");
    sleep(2);printf("You walk back to your camp...\n");
    sleep(2);printf("When you get there, you see a hungry lion sleeping at your camp.\n");
    sleep(2);printf("You try to walk away and escape but suddenly...\n");
    sleep(2);printf("The lion spots you and attacks you!\n");
    sleep(2);printf("You try your best to fight back\n");
    sleep(2);printf("But the lion overpowers you...\n");
    sleep(2);printf("You die at the lion's feet.\n");
    sleep(2);printf("Good Game.\n");
    }else{
    sleep(2);printf("Opponents health is %d\n", health);
    }
    if(health>0){
        damage=randint(1, 3);      //Character gets attacked
        health2= health2-damage;
        sleep(2);printf("Your opponent has done %d damage to you\n", damage);
        if(health2<0){    
            sleep(2);printf("You have died.\nGood Game");
        }else{
            sleep(2);printf("Your health is %d\n", health2);
        }
    }
}while(health > 0 && health2 >0);



}


void medium(){ //OPTION 2
    printf("%s, please select your starting Weapon!\n\n", name);
    printf("These guns all have different damage outputs and different efficiencies and will help you\nwin battles against your upcoming opponents!\n=======================================\n");
    do{
        sleep(3);printf(" WOODEN SWORD    COMBAT KNIFE    IRON SHOVEL\n =1              =2              =3\n");
        scanf("%s", &gun);
    }while(gun != "1" && gun != "3" && gun != "2");
    
if(gun == "1"){
    gun="WOODEN SWORD";
    
    
}
    
if(gun == "2"){
    gun="COMBAT KNIFE";
    
    
}
    
if(gun == "3"){
    gun="IRON SHOVEL";
    
}

printf("You have chosen the %s\n\n", gun);

sleep(1);printf("Oh no!\n");
sleep(2);printf("You're running out of food and resources!\n");
sleep(2);printf("Where would you like to travel to find more supplies?\n");
sleep(2);printf("FYI: All the places are unsecured and you might run into some enemies.\n");
sleep(1);printf("Make the right Choice!\n=====================\n");

string_t place;

do{
    printf("ABANDONED MALL    MECHANIC GARAGE      HOSPITAL\n");
    printf("=1                =2                   =3\n");
    scanf("%s", &place);
}while(place != "1" && place != "3" && place != "2");

if(place == "1"){ //END 4
    printf("===================================\n");
    printf("You have entered the abandoned Mall!\n\n");
    sleep(2);printf("You are walking through the mall.\n");
    sleep(2);printf("You keep walking and you hear someone coming down the steps.\n");
    sleep(3);printf("Your first Enemy has appeared!\n");
    sleep(2);printf("A ZOMBIE!\n");
}
    
if(place == "2"){ //END 5
    printf("===================================\n");
    printf("You have entered the Mechanic Garage!\n\n");
    sleep(2);printf("You walk to the front of the Garage.\n");
    sleep(2);printf("You notice that there was no lock so you enter.\n");
    sleep(1);printf("*clack.. clack*\n");
    sleep(2);printf("You hear the tools clatter.\n");
    sleep(2);printf("...");
    printf("Your first Enemy has appeared!\n");
    
}
    
if(place == "3"){ //END 6
    printf("===================================\n");
    printf("You have entered the empty Hospital!\n\n");
    sleep(2);printf("You take the stairs up to the 3rd Level.\n");
    sleep(2);printf("You keep walking and you hear someone in the hallway.\n");
    sleep(1);printf("Your first Enemy has appeared!\n");
    sleep(2);printf("a Patient!?\n");
    sleep(1);printf("You approach him and trying to help him.\n");
    sleep(1);printf("...\n");
    sleep(2);printf("But then he pulls out a Knife!\n");

}


sleep(3);printf("...\n");
sleep(1);printf("You are surrounded.\n");
sleep(1);printf("You have nowhere to go.\n");
sleep(1);printf("...\n");
sleep(1);printf("You have taken out your %s\n", gun);


string_t attack;

do{
    sleep(2);printf("Press '1' then 'ENTER' to fight your enemy!\n");
    scanf("%s", &attack);
}while(attack != "1");

if(attack == "1"){
    printf("\nYou have chosen to attack your opponent!\n");
    printf("--Your Health: 10--\n");
    printf("--Enemies Health: 10--\n");
}
int damage;
int health=10;
int health2 = 10;

do{
    damage=randint(1, 5);    //Opponent gets attacked
    health= health-damage;
    sleep(2);printf("You have done %d damage to your opponent\n", damage);
    if(health<=0){    
    sleep(2);printf("===========================\nCongratulations, you have won the fight!\n");
    sleep(2);printf("You have been granted new resources including...\n");
    sleep(2);printf("Food!\n");
    sleep(2);printf("A Med-Kit!\n");
    sleep(2);printf("A gallon of water!\n");
    sleep(2);printf("You return back home to your camp only to find a bear outside your camp./n");
    sleep(2);printf("The bear spots you and attacks you!\n");
    sleep(2);printf("You have no choice but to fight the bear yourself...\n");
    sleep(2);printf("You lose the battle\n");
    sleep(2);printf("Good Game :)/n");
    }else{
    sleep(2);printf("Opponents health is %d\n", health);
    }
     if(health>0){
        damage=randint(1, 4);      //Character gets attacked
        health2= health2-damage;
        sleep(2);printf("Your opponent has done %d damage to you\n", damage);
        if(health2<0){    
            sleep(2);printf("You have died.\nGood Game!");
        }else{
            sleep(2);printf("Your health is %d\n", health2);
        }
    }
}while(health > 0 && health2 >0);



}


void hard(){ //OPTION 3
        printf("%s, please select your Weapon!\n\n", name);
    printf("These guns all have different damage outputs and different efficiencies and will help you\nwin battles against your upcoming opponents!\n=======================================\n");
    do{
        sleep(3);printf(" METAL SHAFT   WOODEN KNIFE    HAMMER\n =1            =2               =3\n");
        scanf("%s", &gun);
    }while(gun != "1" && gun != "3" && gun != "2");
    
if(gun == "1"){
    gun="METAL SHAFT";
    
    
}
    
if(gun == "2"){
    gun="WOODEN KNIFE";
    
    
}
    
if(gun == "3"){
    gun="HAMMER";
    
}

printf("You have chosen the %s\n\n", gun);

sleep(1);printf("Oh no!\n");
sleep(2);printf("You're running out of food and resources!\n");
sleep(2);printf("Where would you like to travel to find more supplies?\n");
sleep(2);printf("FYI: All the places are unseured and you might run into some enemies.\n");
sleep(1);printf("Make the right Choice!\n=====================\n");

string_t place;

do{
    printf("ZOO EXIBIT     AIRPORT      LOCAL SHOPPING CENTER\n");
    printf("=1             =2              =3\n");
    scanf("%s", &place);
}while(place != "1" && place != "3" && place != "2");

if(place == "1"){ //END 7
    printf("===================================\n");
    printf("You have entered the Zoo Exhibit!\n\n");
    sleep(2);printf("You are strolling through the zoo.\n");
    sleep(2);printf("You keep walking and you hear a loud, ROAR!.\n");
    sleep(2);printf("A lion appears.\n");
    sleep(1);printf("It approaches you!\n");
}
    
if(place == "2"){ //END 8
    printf("===================================\n");
    printf("You have entered the Airport!\n\n");
    sleep(2);printf("You keep walking and attempt to see if any of the stores still had snacks.\n");
    sleep(2);printf("One of them already seemed to have been raided.\n");
    sleep(2);printf("You check other stores for resoures.\n");
    sleep(2);printf("...\n");
    sleep(2);printf("You hear someone approach you from behind.\n");
    sleep(1);printf("An Enemy!\n");
    sleep(1);printf("He pulls out a sword.\n");
}
    
if(place == "3"){ //END 9
    printf("============================================\n");
    printf("You have entered your local shopping center!\n\n");
    sleep(2);printf("You stroll along the stores and try to open some of the doors.\n");
    sleep(2);printf("Most of the stores were locked.\n");
    sleep(1);printf("You keep trying over and over.\n");
    sleep(2);printf("Until you find a store unlocked...\n");
    sleep(2);printf("You walk in and make it to the back where the food was\n");
    sleep(2);printf("You find food and start packing it until..\n");
    sleep(2);printf("You hear someone's footsteps approaching you\n");
    sleep(1);printf("You turn around and see a man.\n");
    sleep(1);printf("He takes out a knife!\n");

}


sleep(3);printf("...\n");
sleep(1);printf("You are stranded.\n");
sleep(1);printf("You have taken out your %s\n", gun);


string_t attack;

do{
    sleep(2);printf("Press '1' to fight your enemy!\n");
    scanf("%s", &attack);
}while(attack != "1");

if(attack == "1"){
    printf("\nYou have chosen to attack your opponent!\n");
    printf("--Your Health: 10--\n");
    printf("--Enemies Health: 10--\n");
}
int damage;
int health=10;
int health2 = 10;

do{
    damage=randint(1, 5);    //Opponent gets attacked
    health= health-damage;
    sleep(2);printf("You have done %d damage to your opponent\n", damage);
    if(health<=0){    
    sleep(2);printf("===========================\nCongratulations, you have won the fight!\n");
    sleep(2);printf("Your enemy has dropped some loot!\n");
    sleep(2);printf("You find...\n");
    sleep(2);printf("Water!\n");
    sleep(2);printf("Food!\n");
    sleep(2);printf("And Band-Aids.\n");
    sleep(2);printf("You walk back to camp..\n");
    sleep(2);printf("When you return you find someone with a gun sitting at your camp./n");
    sleep(2);printf("You ask for his name but without hesitation, he loads his rifle and shoots you.\n");
    sleep(2);printf("In your last breaths you see him take off with your loot./n");
    sleep(2);printf("Good Game.\n");
    }else{
    sleep(2);printf("Opponents health is %d\n", health);
    }
    if(health>0){
        damage=randint(1, 5);      //Character gets attacked
        health2= health2-damage;
        sleep(2);printf("Your opponent has done %d damage to you\n", damage);
        if(health2<0){    
            sleep(2);printf("You have died.\nGood Game.");
        }else{
            sleep(2);printf("Your health is %d\n", health2);
        }
    }
}while(health > 0 && health2 >0);



}


  



// ACTUAL PROGRAMS WITH FUNCTIONS CREATED (6 functions)

intro();
cheat();
intro2();
if(introans == 1){
 
    printf("\nYou chose EASY.\n\n");
    easy();
}
if(introans == 2){

    printf("\nYou chose MEDIUM.\n\n");
    medium();
   
}
if(introans == 3){

    printf("\nYou have chosen HARD.\n\n");
    hard();
}

