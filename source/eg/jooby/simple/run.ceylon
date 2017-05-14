import ceylon.html {
    ...
}

import org.jooby {
    Jooby,
    Mutant {
        string=\ivalue
    }
}

class App() extends Jooby() {
//    get("/", () => "Hello World!");
    get("/",
        (req, res) {
            value name = req.param("name").string("World");
            value html = Html {
                Head { title = "Hello ``name``!"; },
                Body {
                    P {
                        Strong { "Hello ``name``!" }
                    }
                }
            };
            res.send(html);
        });
}

shared void run() => Jooby.run(App, *process.arguments);
