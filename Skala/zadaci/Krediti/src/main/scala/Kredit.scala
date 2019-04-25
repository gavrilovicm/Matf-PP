import java.io.File
import java.util.Scanner
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.{ConcurrentLinkedQueue, ThreadLocalRandom}


object Kredit {
  def main(args: Array[String]): Unit = {
    val sc : Scanner = new Scanner(System.in)
    var sc1: Scanner = new Scanner(new File(("./red.txt")))

    println("Unesite pocetni kapital: ")
    var kapital = new AtomicLong(sc.nextLong())

    println("Unesite kamatnu stopu: ")
    var kamata = sc.nextInt()

    println("Unesite broj sluzbenica: ")
    var br_sluzbenica = sc.nextInt()

    var radnice = new Array[Sluzbenica](br_sluzbenica)

    var klijenti = new ConcurrentLinkedQueue[Klijent]()
    var duznici  = new ConcurrentLinkedQueue[Klijent]()

    var l : Float = 0

    while(sc1.hasNextLine()) {
      var s : String = sc1.next()
      var a = sc1.nextInt()
      l += a
      klijenti.add(new Klijent(s, a))
    }
    for (i<- 0 until br_sluzbenica)
      radnice(i) = new Sluzbenica(kapital, kamata, klijenti, duznici)

    for (i<- 0 until br_sluzbenica)
      radnice(i).start()

    for (i<- 0 until br_sluzbenica)
      radnice(i).join()

    println("Ende...")

    var suma: Long = 0
    while(! duznici.isEmpty){
      var k: Klijent = duznici.poll()
      suma += k.getDug()
    }

    println(s"U banci ima trenutno: ${suma + kapital.get()}")
    // ovo je cisto provera ispravnosti, nije neophodno..
    println(s"Pozajmica je bila ${l} a profit bi trebao da bude ${l*((100 + kamata).toDouble/100)} ==== ${suma}")
  }
}

class Klijent(ime:String, pozajmica: Long) {
  var dug: Long = 0

  def setDug(kamata: Long) = {
    this.dug = (this.pozajmica * ((100 + kamata).toDouble/ 100)).toInt
  }
  def getDug() = this.dug
  def getPozajmica() = this.pozajmica
  def getIme() = this.ime
}

class Sluzbenica(kapital: AtomicLong,
                 kamata: Long,
                 klijenti: ConcurrentLinkedQueue[Klijent],
                 duznici: ConcurrentLinkedQueue[Klijent]) extends Thread {
  override def run(): Unit = {
    while (true){
      if (klijenti.isEmpty) {
        println("Zavrseno sa klijentima")
        return
      }
      var k = klijenti.poll()
      println(s"Trenutno je na redu klijent sa imenom ${k.getIme()}")
      Thread.sleep(ThreadLocalRandom.current().nextInt(1, 10) * 1000)

      kapital.synchronized {
        val poz = k.getPozajmica()
        if (poz > kapital.get()) {
          println(s"Ne moze se isplatiti suma ${poz} za osobu ${k.getIme()}, prekid izvrsavanja.")
        } else {
          k.setDug(kamata)
          duznici.add(k)
          val _kapital: Long = kapital.get() - poz
          kapital.set(_kapital)
        }
      }
    }
  }
}