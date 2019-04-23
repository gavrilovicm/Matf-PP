import java.io.File
import java.util.Scanner
import java.util.concurrent.ConcurrentHashMap

import scala.collection.mutable.ArrayBuffer

object Dnk_zad {
  def main(args: Array[String]): Unit = {

    val sc: Scanner = new Scanner(new File("./bio_podaci.txt"))
    val sc1: Scanner = new Scanner(System.in)

    print("Koliko niti zelite da se pokrene? ")
    val br_niti: Int = sc1.nextInt

    println("Ucitavanje podataka..")
    // genericko programiranje
    var linije = new ArrayBuffer[String]()

    while (sc.hasNextLine){
      linije.append(sc.nextLine())
    }
    val m = linije.length

    println("Zavrseno ucitavanje")

    var mapa = new ConcurrentHashMap[Char, Int](4, 1, br_niti)

    mapa.put('a', 0)
    mapa.put('g', 0)
    mapa.put('c', 0)
    mapa.put('t', 0)

    var brojaci = new Array[Brojac](br_niti)
    var korak: Int = Math.ceil(m.toDouble/br_niti).toInt

    for (i<- 0 until br_niti)
      brojaci(i) = new Brojac(i*korak, Math.min((i+1)*korak, m), linije, mapa)

    for (i<- 0 until br_niti)
      brojaci(i).start()

    for (i<- 0 until br_niti)
      brojaci(i).join()

    println("Rezultat:")
    println(s"a = ${mapa.get('a')}")
    println(s"g = ${mapa.get('g')}")
    println(s"t = ${mapa.get('t')}")
    println(s"c = ${mapa.get('c')}")

  }
}

class Brojac(i:Int,
             j:Int,
             bafer:ArrayBuffer[String],
             mapa:ConcurrentHashMap[Char, Int]) extends Thread{

  override def run(): Unit = {

    for (p<- i until j) {
      var a = bafer(p).count(_ == 'a')
      var g = bafer(p).count(_ == 'g')
      var k = bafer(p).count(_ == 't')
      var c = bafer(p).count(_ == 'c')
      mapa.synchronized {
        mapa.replace('a', mapa.get('a') + a)
        mapa.replace('g', mapa.get('g') + g)
        mapa.replace('t', mapa.get('t') + k)
        mapa.replace('c', mapa.get('c') + c)
      }
    }

  }
}