package ;
import content.PackageDoc;

/**
 * Container for the documentation of the Flex SDK, with utility methods to
 * access its content.
 */
class DocBrowser 
{
	private var _packagesDoc : Map<String, PackageDoc>;
	
	public function new() {
		_packagesDoc = new Map<String, PackageDoc>();
	}
	
	public function addDocumentation(doc : PackageDoc) : Void
	{
		_packagesDoc.set(doc.name, doc);
	}
	
	public function getPackageDoc(pack : String) : PackageDoc
	{
		return _packagesDoc.get(pack);
	}
}