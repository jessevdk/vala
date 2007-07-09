using GLib;

class Maman.Foo {
	public void run () {
		foreach (string s in create_list ()) {
			stdout.printf (" %s", s);
		}
	}

	public List<string> create_list () {
		var s = new List<string>();

		s.append ("2");
		s.append ("3");

		return s;
	}
	
	static int main (string[] args) {
		stdout.printf ("List construction: 1");

		var foo = new Foo ();
		foo.run ();
		
		stdout.printf (" 4\n");

		return 0;
	}
}
