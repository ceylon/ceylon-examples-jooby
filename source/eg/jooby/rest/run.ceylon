import java.util.concurrent.atomic {
    AtomicInteger
}

import org.jooby {
    Jooby
}
import org.jooby.json {
    Jackson
}
import org.jooby.mvc {
    path,
    get
}

shared void run() => Jooby.run(App, *process.arguments);

class App() extends Jooby() {
    use(Jackson());
    use(`Greetings`);
}

path { "/mvc" }
shared class Greetings() {

    get path { "/greeting" }
    shared Greeting helloWorld() => Greeting();

    get path { "/greeting/:name" }
    shared Greeting hello(String name) => Greeting(name);

}

shared class Greeting {

    static value idgen = AtomicInteger();

    shared Integer id;
    shared String name;

    shared String salutation = "Hello";

    shared new (String name = "World") {
        this.id = idgen.incrementAndGet();
        this.name = name;
    }

    string => name;

}
