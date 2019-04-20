import java.util.Scanner
import java.util.concurrent.ThreadLocalRandom

object Konobari {
  def main(args: Array[String]): Unit = {

    println("Unesite broj stolova za obradu: ")
    var sc : Scanner = new Scanner(System.in)
    var br_stolova = sc.nextInt()

    val korak = Math.ceil(br_stolova/5.0).toInt

    var Milan = new Konobar("Milan", korak)
    var Pera = new Konobar("Pera", korak)
    var Ana = new Konobar("Ana", korak)
    var Nikola = new Konobar("Nikola", korak)
    var Aleksandar = new Konobar("Aleksandar", br_stolova - 4*korak)

    Milan.start()
    Pera.start()
    Ana.start()
    Nikola.start()
    Aleksandar.start()

    Milan.join()
    Pera.join()
    Ana.join()
    Nikola.join()
    Aleksandar.join()

    println("Fajront")
  }
}

class Konobar(ime:String,
              broj_stolova: Int) extends Thread {

  override def run(): Unit = {
    for (i<- 0 until broj_stolova){
      println(s"${ime} pocinje usluzivanje svog ${i}. stola")

      Thread.sleep(ThreadLocalRandom.current().nextInt(1, 10)*1000)

      println(s"${ime} zavrsava usluzivanje svog ${i}. stola")
    }
    println(s"${ime} je zavrsio/la sa radom.")
  }
}
