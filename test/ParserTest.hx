package;
import sakari.peg.Generator;

class Def {
   public static var rules = ['Literal' => StringTerm('literal')];
}

#if !macro @:build(Generator.buildAst(Def.rules)) #end enum TestAst {}

#if !macro @:build(Generator.buildParser(Def.rules)) #end class TestParser {}

class ParserTest {
    @Test public function generates_an_ast_type() {
        var p = new TestParser();
    }
}
