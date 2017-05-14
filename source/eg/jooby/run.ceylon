import ceylon.html {
    ...
}

import org.jooby {
    Jooby
}

class App() extends Jooby() {
//    get("/", () => "Hello World!");
    get("/",
        (req, res) {
            value html = Html {
                Head { title="Hello World!"; },
                Body {
                    P {
                        Strong { "Hello World!" }
                    }
                }
            };
            res.send(html);
        });
}

shared void run() => Jooby.run(App, *process.arguments);
