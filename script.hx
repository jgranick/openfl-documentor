package;

import hxp.*;

class Script extends hxp.Script {
	
	public function new () {
		
		super ();
		
		// TODO: Remove intermediate build step
		var hxml = HXML.fromString ("
			-cp src
			-neko run.n
			-main Main
		");
		hxml.build ();
		
		System.runProcess ("", "neko", [ "run.n" ].concat (args));
		
	}
	
}