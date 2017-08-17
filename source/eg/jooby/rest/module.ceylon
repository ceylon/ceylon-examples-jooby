native ("jvm")
module eg.jooby.rest "1.0.0" {
    shared import maven:org.jooby:"jooby-undertow" "1.1.3";
    import maven:org.jooby:"jooby-jackson" "1.1.3";
    shared import java.base "8";
}
