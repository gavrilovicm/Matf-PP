import java.io.File
import java.util.Scanner
import java.util.concurrent.{ConcurrentHashMap, ThreadLocalRandom}

import scala.collection.mutable
import scala.collection.mutable.{ArrayBuffer, HashMap}

object Kladza {
  def main(args: Array[String]): Unit = {

    println("Ucitavanje utakmica..")
    val sc: Scanner = new Scanner(new File("./utakmice.txt"))
    val utakmice = new HashMap[String, Tuple4[Float, Float, Float, Char]]
    while (sc.hasNextLine){
      utakmice.put(sc.next(), (sc.nextFloat(), sc.nextFloat(), sc.nextFloat(), '-'))
      sc.nextLine()
    }
    println("Ucitavanje utakmica zavrseno..")

    val kladionicari = new ArrayBuffer[Kladionicar]


    println("Ucitavanje kladionicara")
    var br = 0
    val sc1: Scanner = new Scanner(new File("./kladionicari.txt"))
    while (sc1.hasNextLine){
      val ime : String = sc1.next()
      val novac : Int = sc1.nextInt()
      val rezultati = new HashMap[String, Char]()
      for (i<- 0 until 5){
        rezultati.put(sc1.next(), sc1.next()(0))
      }
      kladionicari.append(new Kladionicar(ime, novac, utakmice, rezultati))
      br += 1
    }

    println("Ucitavanje kladionicara zavrseno..")

    for (k<-kladionicari)
      k.start()

    println("Cekamo da se utakmice odigraju")
    Thread.sleep(5000)

    val vrednosti = Array('1', 'x', '2')
    for (tekma <- utakmice){
      utakmice(tekma._1) = (tekma._2._1, tekma._2._2, tekma._2._3, vrednosti(ThreadLocalRandom.current.nextInt(0, 3)))
    }

    utakmice.synchronized{
      utakmice.notifyAll()
    }

    for (k<-kladionicari)
      k.join()

    var suma : Float = 0
    for (k<- kladionicari)
      suma += k.getZarada()

    println(s"Treba isplatiti $suma dinara")
  }
}

class Kladionicar(ime:String,
                  novac: Int,
                  utakmice: HashMap[String, Tuple4[Float, Float, Float, Char]],
                  rezultati: HashMap[String, Char]) extends Thread{
  var zarada : Float = 0

  override def run(): Unit = {
    utakmice.synchronized{
      utakmice.wait()
    }


    var pogodjeno = 0
    var ukupna_kvota: Float = 0

    for (t <- rezultati){
      if (t._2 == utakmice(t._1)._4){
        pogodjeno += 1
        if (t._2 == '1'){
          ukupna_kvota += utakmice(t._1)._1
        }else if (t._2 == 'x'){
          ukupna_kvota += utakmice(t._1)._2
        }else{
          ukupna_kvota += utakmice(t._1)._3
        }
      }
    }

    if (pogodjeno != 0){
      zarada = ukupna_kvota * novac
    }

  }
  def getZarada() = this.zarada
}