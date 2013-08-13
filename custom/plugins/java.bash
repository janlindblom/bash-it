
if [ -e /usr/libexec/java_home ]; then
	JAVA_HOME=`/usr/libexec/java_home -v 1.7.0`
else
	JAVA_HOME=/usr/lib/jvm/jre-1.6.0
fi
CATALINA_HOME=/Library/Tomcat/Home
SCALA_HOME=/Library/Scala/Home
CLOJURE_EXT=$HOME/.clojure.d/ext
CLOJURE_OPTS="-Xms32M -Xms128M -server"
JENAROOT=$HOME/bin/Jena-2.6.4
TDBROOT=$HOME/bin/TDB-0.8.10

PATH=$SCALA_HOME/bin:$JENAROOT/bin:$TDBROOT/bin:$PATH

export JAVA_HOME CATALINA_HOME SCALA_HOME CLOJURE_EXT CLOJURE_OPTS JENAROOT TDBROOT

find-in-jar() {
	target=$1
	shift
	for jar in "$@"; do
		echo $jar
		jar tf $jar | grep "$target"
		echo
	done
}

