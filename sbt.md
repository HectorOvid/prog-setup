Useful things for the sbt start journey

https://docs.scala-lang.org/scala3/book/tools-sbt.html#building-scala-projects-with-sbt

https://www.youtube.com/watch?v=HBZDKt9ZqSg


NOTE: in general you write scala code in the sbt files, too


### commands
sbt -- will enter an interactive sbt session
runMain com.path.to.SomeMain -- runs scala object e.g.
compile -- well compiles :)
test --


### settings in sbt.scala

scalaVersion := "2.12.19"
version := "1.0"
name := "thelib"
organization := "de.compi"



### libs will add the scala minor when using double percent:

libraryDependencies += a %% b % "1.2.3"
is the same as:
libraryDependencies += a % "b_2.12" % "1.2.3"


### libs only for testing:

libraryDependencies ++= Seq(
  "org.scalatest" %% scalatest % "...." % Test
)


