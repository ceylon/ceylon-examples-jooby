import java.util {
    Optional
}
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

    get path { "/greeting", "/greeting/:name" }
    shared Greeting hello(Optional<String> name)
            => Greeting(name.orElse("World"));

}

AtomicInteger idgen = AtomicInteger();

shared class Greeting(name) {

    shared Integer id = idgen.incrementAndGet();
    shared String name;
    shared String salutation = "Hello";

    string => salutation + " " + name;

}
