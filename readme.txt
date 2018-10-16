** LAMP-STACK INSTALLATIE **

Welkom gebruiker!

Gelieve even de tijd te nemen om deze readme door te nemen. Dit bestand zal
meer uitleg geven over hoe deze box in elkaar zit en hoe je eenvoudig een 
LAMP stack kan opzetten op je eigen machine.

vooraleer we van start gaan dien je over volgende 3 softwarepakketten te beschikken:

1. VirtualBox (https://www.virtualbox.org/wiki/Downloads)
2. Vagrant	  (https://www.vagrantup.com/downloads.html)
3. Git 		  (https://git-scm.com/downloads)

Selecteer het juiste besturingssysteem, download en installeer al deze paketten.

Creëer nu een lege map op je computer en haal volgende 3 bestanden binnen:
1. Vagrantfile
2. vagrantConfig.sh
3. lampStack.sh

Plaats deze bestanden in de nieuwe map die je zonet gecreëerd hebt. 
Zorg ervoor dat u het "path" naar deze map ook kent.
Om een LAMP stack automatisch op te zetten gaat u als volgt te werk:

1. Open vagrantConfig.sh in een teksteditor en lees aandachtig de commentaar,
   configureer de opties die aansluiten bij uw persoonlijke voorkeuren in 
   dit bestand.
   
2. Open Git (als administrator)
   Ga naar de map waarin u de scripts en configuratiebestanden heeft geplaatst (Path dat ik eerder vroeg bij te houden)
   Gebruik het commando cd (Change directory)
   Het uitvoeren van dit commando ziet eruit als volgt:
		`User@DESKTOP-EGHT56 MINGW64 ~$ cd Desktop/vagrantBox/`

3. Gebruik het commando "vagrant up"
   Het uitvoeren van dit commando ziet eruit als volgt:
		`User@DESKTOP-EGHT56 MINGW64 ~/Desktop/vagrantBox $ vagrant up`
   Na het uitvoeren van dit commando zal de installatie van de LAMP-Stack plaatsvinden
   Alles wordt automatisch uitgevoerd voor u, even geduld...

4. De installatie is klaar
   U kan nu inloggen op de gegenereerde LAMP-Stack
   voer het commando "vagrant ssh" uit
   Het uitvoeren van dit commando ziet eruit als volgt:
		`User@DESKTOP-EGHT56 MINGW64 ~/Desktop/vagrantBox $ vagrant ssh`
   U bevindt zich nu un de shell van onze Fedora LAMP, om dit weer te verlaten kan u gewoon
   het commando "exit" gebruiken.

Alles is nu klaar, nu hebt u de mogelijkheid om gebruik te maken van de gecreëerde server.
Veel plezier ermee!


Jamie Zawinski once said: 
> Linux is only free if your time has no value.
