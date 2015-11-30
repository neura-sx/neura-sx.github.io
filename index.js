function loadXMLDoc(filename) {
	if (window.ActiveXObject) {
		xhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} else {
		xhttp = new XMLHttpRequest();
	}
	xhttp.open("GET", filename, false);
	try {xhttp.responseType = "msxml-document"} catch(err) {}
	xhttp.send("");
	return xhttp.responseXML;
}
function transformXMLDoc(target,inputXML,inputXSL) {
	xml = loadXMLDoc(inputXML);
	xsl = loadXMLDoc(inputXSL);
	if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
  		document.getElementById(target).innerHTML = xml.transformNode(xsl);
  	} else if (document.implementation && document.implementation.createDocument) {
		processor = new XSLTProcessor();
		processor.importStylesheet(xsl);
		document.getElementById(target).appendChild(processor.transformToFragment(xml, document));
	}
}
function activatePage(menusId,menuId,pagesId,pageId) {
	var menus = document.getElementById(menusId);
	var menuToActivate = document.getElementById(menuId);
	for (var i = 0; i < menus.childNodes.length; i++) {
		var node = menus.childNodes[i];
		if (node.nodeType == 1)
			node.className = (node == menuToActivate) ? 'selected' : '';
	}
	var pages = document.getElementById(pagesId);
	var pageToActivate = document.getElementById(pageId);
	for (var i = 0; i < pages.childNodes.length; i++) {
		var node = pages.childNodes[i];
		if (node.nodeType == 1)
			node.style.display = (node == pageToActivate) ? 'block' : 'none';
	}
}
function loadPages() {
	transformXMLDoc('page1','pages/roadmap.xml','pages/roadmap.xsl');
	transformXMLDoc('page2','pages/features.xml','pages/features.xsl');
	transformXMLDoc('page3','pages/reasons.xml','pages/reasons.xsl');
	onHashChange();
}
function onHashChange() {
	if (location.hash != '') {
		if (location.hash == '#roadmap')
			activatePage('menus','menu1','pages','page1');
		else if (location.hash == '#features')
			activatePage('menus','menu2','pages','page2');
		else if (location.hash == '#reasons')
			activatePage('menus','menu3','pages','page3');
	}
}