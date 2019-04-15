# SCALA

Sve sto se nadalje bude radilo i pisalo ovde podrazumeva da radite na Intellij-IDEA razvojnom okruzenju.

## Uvod i pravljenje 'projekta' u Intellij-u

Koraci za pravljenje projekta u skali su sledeci:

- Izaberete: **File -> New -> Project**.
- Sa leve strane izaberite od ponudjenih jezika 'Scala'(ako nemate ponudjeno idite na net i potrazite kako se instalira skala u Intellij-u).
- Izaberete **sbt** kao scala based project i kliknite **Next**.
- Nazovete projekat kako zelite i u glavnom ostavite sve verzije kako stoje po default-u.
- Sacekajte da se svi paketi skinu posto Scala svaki put povlaci pakete sa interneta i moze da bude sporo zavisno od internet konekcije.
- U folderu projekta udjete u folder **src/main/scala** i pritisnete desni klik i izaberete **new->scala class**.
- U zavisnosti od toga sta zelite da napravite izaberete klasu ili objekat. Objekat se pravi jedan u okviru projekta dok klasa moze da bude proizvoljno.
- Program se run-uje sa **shift+F10**.
- **VAZNO**: Ako program izbaci gresku prilikom prvog run-a ponovite ceo proces pravljenja projekta, postoji neki bug u okviru skale i najlakse ga je tako zaobici.

## Tipovi podataka:

### Promenljive i konstante, osnovna razlika

- **val** x -> vrednost koja je konstantna i ne moze se menjati do kraja programa.
- **var** x -> vrednost koja je konstantna i ne moze se menjati do kraja programa.

Konstanta tipa integer:

	val x : Int = 42

Promenljiva tipa integer:

	var x : Int = 42

Promenljiva se definise na sledeci nacin:

	var ime_promenljive: tip_promenljive = vrednost_koju_ta_promenljiva_dobija

### String

Definicija promenljive tipa string-a:

	var s1: String = "Hello World!"

Metodi za rad nad stringovima su brojni, ja cu navesti neke koji se budu malo cesce ponavljali.

- s1.length - vraca duzinu stringa. Metod koji ne prima argumente moze da se poziva bez otvorene i zatvorene zagrade.
- s1.stripMargin - metod koji omogucava laksu manipulaciju sa **viselinijskim stringovima**. On ne ispisuje uspravne crte iz sledeceg primera vec 
one sluze samo kako bi oznacile "pocetak nove linije" kako ne bismo ispisivali viselinijski string sa nepotrebnim razmacima pre recenica. Primer:

		println("""
			|Danas
			|je
			|lep
			|dan.
			""".stripMargin)
	Kada ne bi bilo poziva metoda stripString onda ce ispisati ceo viselinijski string onako kako je zapisan sa sve uspravnim crtama.
- Kada hocemo da ispisemo promenljivu na standardni izlaz uz neki tekst to radimo ovako:

		var niska: String = "zanimljiv."
		println(s"String je $niska")

	Ne zaboravite da stavite **s** pre samog stringa.
- s1.compareTo(s2) - vrsi poredjenje stringa **s1** sa stringom **s2** i vraca vrednosti vecu manju ili jednaku nuli.

### Nizovi

Primer pravljenja niza od 5 stringova:

		var imena: Array[String] = new Array[String](5)

	**Napomena**: Vodite racuna, pristupanje clanu niza nije kao u svim ostalim jezicima:

		imena(0) = "Igor"

## Petlje

### For petlja 

For petlja ima vise zapisa:

- For petlja koja najvise lici na python(takodje ima mogucnost zadavanja koraka kao treceg argumenta):

		for (i <- range(1,5)){
			println(i)
		}

- For petlja koja radi isto kao prethodna:

		for (i<- 1 until 5){
			println(i)
		}

- For petlja koja ispisuje obe granicne vrednosti koje zadamo(ispisace se i broj 5)

		for (i<- 1 to 5){
			println(i)
		}


## Lambda funkcije

Sintaksu lambda funkcija cemo pokazati kroz primer. Hocemo da sortiramo niz stringova. Svaki niz ima metod sortWith koji prima kao argument
funkciju dva argumenta koja odredjuje u kom poretku i kako ce se sortirati taj niz. Sortiranje niza izgleda ovako:

	niz.sortWith(poredak(a,b))

Umesto da definisemo funkciju **poredak(a, b)** mozemo da napisemo lambda funkciju istoj liniji na sledeci nacin:

	niz.sortWith( (a, b) => {if (a.compareTo(b) > 0) true else false} )

Sintaksa lambda funkcije je sledeca:
- Prvo u obicne zagrade stavimo onoliko argumenata koliko ta funkcija treba da prima na ulazu
- Onda definisemo u sta ta funkcija 'preslikava' date elemente tako sto stavimo **'=>'**
- Posle strelice u **'{}'** delu stavljamo kod koji treba da izvrsi ta anonimna funkcija.

## Klase

Klase su slicne kao u Javi. Pravimo novu klasu u istom folderu **scala** u kom smo napravili 'objekat' samo sto sad umesto **Object** biramo **Class** i zatim imenujemo klasu. Definisemo 
parametre unutar klase koje mozemo odmah da postavimo na neku, **default-nu**, vrednost. Default-ni konstruktor se poziva sam i postavlja vrednosti parametara na zadate vrednosti prilikom prvog 
definisanja parametara. Default-ni konstruktor moze da se prepravi i da prima proizvoljan broj parametara koje zelimo da podesimo.

### Osnovna sintaksa

Pogledajte sledeci kod:

	class Film {

	  // default-ne vrednosti parametara:
	  var naslov: String = ""
	  var trajanje: Int = 0
	  var godina: Int = 0

	  // definisanje 'getera'
	  def getNaslov() : String = {
		this.naslov
	  }

	  // takodje validna sintaksa za definisanje 'getera'
	  def getTrajanje() : Int = this.trajanje

	  // predefinisanje default-nog konstruktora
	  def this(_naslov:String, _trajanje:Int, _godina:Int) = {
		this()
		this.naslov = _naslov
		this.trajanje= _trajanje
		this.godina= _godina
	  }

	  // predefinisanje metode koja predstavlja instancu klase u string formatu
	  override def toString() : String = {
		s"Film:$naslov, trajanje: $trajanje, godina: $godina"
	  
	  }
	}

Imajte na umu par stvari:

- Poslednja linija svake funkcije/metode se smatra kao povratna vrednost te metode pa nam kljucna rec return za poslednju liniju ne treba. 
Inace return moze da se pojavi i pre u telu funkcije kao i u svakom drugom jeziku.
- Unutar this konstruktora prva naredba uvek mora biti poziv default-nog konstruktora bez parametara tj **this()**.
- Za predefinisanje metoda toString nije potrebno navoditi **override** kljucnu rec ali je dobra praksa.

### Nasledjivanje klasa

Sintaksa klase koja nasledjuje klasu iz prethodnoh primera je sledeca:

	class CrtaniFilm extends Film{

		  // dodatni parametar pored svih parametara iz klase Film
		  var autor: String = ""

		  // definisanje 'getera' za novi parametar
		  def getAutor() : String = this.autor

		  // definisanje default-nog konstruktora koji prima 4 argumenta
		  def this(_naslov:String, _trajanje:Int, _godina:Int, _autor:String) = {
			this()
			this.naslov = _naslov
			this.trajanje = _trajanje
			this.godina = _godina
			this.autor = _autor
		   }

		  // Ovaj override predefinise metod toString iz nadklase 'Film'
		  override def toString() : String = "Crtani film:"+super.toString()+"Autor je: "+this.autor
	}

### Kreiranje objekta klase u main funkciji

Sledeci kod ilustruje pozivanje konstruktora za dve klase koje smo napravili iznad. Obe klase moraju da se naprave sa kljucnom reci **new**.

	object Prvi {
		def main(args: Array[String]): Unit = {

		var AC = new Film("Assassin's Creed", 120, 2017)
		var crtac = new CrtaniFilm("Minions", 130, 2018, "Disney")

		// ovde se pozivaju toString metode objekata klase i ispisuju odgovarajuce prezentacije objekata
		println(AC)
		println(crtac)
		}
	}

## Konkurentno programiranje

Hijerarhijska podela konkurentnosti:

- Konkurentna paradigma je najsiri pojam i podrazumeva da se vise procesa izvrsava u istom vremenskom periodu.
- Paralelna paradigma je specijalizacija koja obuhvata postojanje vise procesora koji omogucavaju istovremeno izvrsavanje
- Distribuirana paradigma je specijalizacija paralelne paradigme u kojoj su procesori i fizicki razdvojeni(npr. farma racunara)


### Scala konkurentno programiranje

Da bi klasa mogla da se pokrece u zasebnim nitima postoje dve opcije:

- Da nasledi klasu **Thread**
- Da implementira interfejs **Runnable**

#### Implementacija preko nasledjivanje klase Thread

Kada implementiramo klasu koju zelimo da izvrsavamo paralelno, definisemo je tako da nasledjuje klasu **Thread** i obavezno moramo da override-ujemo metod run unutar te klase. Po default-u 
metod run je prazan. Unutar njega definisemo ono sto zelimo da se izvrsava paralelno(neka petlja na primer). Kada napravimo novi objekat klase, da bi se on paralelno izvrsavao 
mora da se pozove metod start() nad tim objektom. Tada se pokrece nit koja je vezana za taj konkretan objekat i izvrsava se paralelno nezavisno od ostalih. Primer:

	class Restoran extends Thread {
		override def run(): Unit = {
			for ....
				..
				..
		}
	}

	def main(args: Array[String]): Unit = {

		val Frans = new Restoran()

		Frans.start()
		println("Gotovo")
	}

Imajte na umu da ce main posle startovanja niti nastaviti izvrsavanje svog koda i nece cekati na nit. Ako zelimo da main nastavi sa izvrsavanjem tek kada nit zavrsi svoj
deo posla onda posle startovanja niti pozovemo metod .join() koji ce da zaustavi **main** u liniji u kojoj se nalazi i nece ici dalje sa izvrsavanjem main-a dok se ne zavrsi 
proces nad kojim je pozvan **join()** metod. U prethodnom primeru **println("Gotovo")** ce se ispisati odmah, bez cekanja na nit **Frans**. U sledecem primeru ce se ispisati tek kada
nit zavrsi izvrsavanje.

	class Restoran extends Thread {
		override def run(): Unit = {
			for ....
				..
				..
		}
	}

	def main(args: Array[String]): Unit = {

		val Frans = new Restoran()

		Frans.start()
		Frans.join()
		println("Gotovo")
	}

