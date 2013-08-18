import massive.munit.TestSuite;

class TestSuite extends massive.munit.TestSuite
{		

	public function new()
	{
		super();
		add(ParserTest);
	}
}
