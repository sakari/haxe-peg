package sakari.peg;
import haxe.macro.Context;

enum Expr {
    Symbol (n: String);
    StringTerm (n: String);
    Sequence (es: Array<Expr>);
    Choice (es: Array<Expr>);
    Optional (e: Expr);
    ZeroOrMore (e: Expr);
    OneOrMore (e: Expr);
    FollowedBy (e: Expr);
    NotFollowedBy (e: Expr);
}

class Generator {
    macro public static function buildAst(def: Map<String, Expr>): Array<Field> {
        return [];
    }
    macro public static function buildParser(def: Map<String, Expr>): Array<Field> {
        return [];
    }

    private function new() {}
}