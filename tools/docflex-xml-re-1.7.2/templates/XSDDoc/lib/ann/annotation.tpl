<DOCFLEX_TEMPLATE VER='1.12'>
CREATED='2005-04-26 03:31:00'
LAST_UPDATE='2009-02-07 01:37:15'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.1.0'
APP_AUTHOR='Copyright \u00a9 2005-2009 Filigris Works,\nLeonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:%annotated';'xs:schema'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='showHeading';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation';
		param.title='Annotations';
		param.title.style.bold='true';
		param.description='This group of parameters controls processing and formatting of annotations (the content of <b><code>&lt;xs:annotation&gt;</code></b> elements specified in XML schemas).\n<p>\nThe annotation text, which appears in a particular <i>"Annotation"</i> section of the generate documentation, is produced from all &lt;xs:documentation&gt; elements found by the path:\n<dl><dd>\n<code><b><i>xs:annotated</i></b>/xs:annotation/xs:documentation</code>\n</dd></dl>\nwhere <code><i>\'xs:annotated\'</i></code> is the XSD element which defines either the XML schema itself (<code>\'xs:schema\'</code>) or a schema component (e.g. <code>\'xs:complexType\'</code>) being documented.\n<p>\nMultiple &lt;xs:documentation&gt; elements will produce different sections of the annotation text.';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
	}
	PARAM={
		param.name='proc.annotation.appinfo';
		param.title='<appinfo>';
		param.title.style.bold='true';
		param.featureType='pro';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.appinfo.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.annotation.documentation';
		param.title='<documentation>';
		param.title.style.bold='true';
		param.grouping='true';
		param.type='boolean';
		param.default.value='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang';
		param.title='Language';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.lang.alt';
		param.title='Alternative Language';
		param.type='string';
		param.trimSpaces='true';
		param.noEmptyString='true';
		param.list='true';
		param.list.noEmptyList='true';
	}
	PARAM={
		param.name='proc.annotation.documentation.source';
		param.title='Source URI';
		param.type='enum';
		param.enum.values='as_see_link;as_title;no';
	}
	PARAM={
		param.name='proc.annotation.tags';
		param.title='Tags';
		param.title.style.bold='true';
		param.grouping='true';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml';
		param.title='XHTML';
		param.grouping='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images';
		param.title='Include Images';
		param.grouping='true';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.xhtml.images.copy';
		param.title='Copy Images';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.tags.other';
		param.title='Other Tags';
		param.type='enum';
		param.enum.values='show;xhtml;no';
	}
	PARAM={
		param.name='proc.annotation.encode.markup.chars';
		param.title='Encode markup characters';
		param.type='boolean';
	}
	PARAM={
		param.name='proc.annotation.show.part.headings';
		param.title='Show part headings';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<STYLES>
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
</STYLES>
<ROOT>
	<ELEMENT_ITER>
		DESCR='execute when no filtering by language needed:\nIterate by all <xs:appinfo> and/or <xs:documentation> elements found by the location path \'xs:annotation/(xs:appinfo|xs:documentation)\' \n\n(see "Processing | Scope" tab)'
		COND='! getBooleanParam("proc.annotation.documentation") ||\ngetParam("proc.annotation.documentation.lang") == null'
		TARGET_ETS={'xs:appinfo';'xs:documentation'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:annotation/(xs:appinfo|xs:documentation)[instanceOf("xs:documentation")\n ? getBooleanParam("proc.annotation.documentation")\n : getBooleanParam("proc.annotation.appinfo")]';
		}
		BREAK_PARENT_BLOCK='when-executed'
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:documentation'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='documentation'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:appinfo'
				SS_NAME='appinfo'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
	<ELEMENT_ITER>
		DESCR='otherwise, filtering by language specified:\n\nIterates by all <xs:documentation> (and possibly <xs:appinfo>) elements which are found by the location path \'xs:annotation/xs:(documentation|xs:appinfo)\' \n(see "Processing | Scope" tab).\n\n<xs:documentation> elements must have the \'xml:lang\' attribute with the needed value.\nFiltering is specified directly within the location path.'
		TARGET_ETS={'xs:appinfo';'xs:documentation'}
		SCOPE='advanced-location-rules'
		RULES={
			'* -> xs:annotation/(xs:appinfo|xs:documentation)[instanceOf("xs:documentation") ?\n{\n  getArrayParam (\n    "proc.annotation.documentation.lang"\n  ).containsIgnoreCase (getAttrStringValue("xml:lang"))\n} : {\n  getBooleanParam("proc.annotation.appinfo")\n}]';
		}
		<BODY>
			<SS_CALL>
				MATCHING_ET='xs:documentation'
				BREAK_PARENT_BLOCK='when-executed'
				SS_NAME='documentation'
			</SS_CALL>
			<SS_CALL>
				MATCHING_ET='xs:appinfo'
				SS_NAME='appinfo'
			</SS_CALL>
		</BODY>
		<ELSE>
			DESCR='if no output was generated, seek documentation by alternative language'
			<ELEMENT_ITER>
				DESCR='executed when filtering by alternative language is specified; see "Component | Enabling" tab.'
				COND='getParam("proc.annotation.documentation.lang.alt") != null'
				TARGET_ET='xs:documentation'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:annotation/xs:documentation[getArrayParam(\n  "proc.annotation.documentation.lang.alt"\n).containsIgnoreCase (getAttrStringValue("xml:lang"))]';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='documentation'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</ELSE>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		COND='getBooleanParam("proc.annotation.tags.xhtml.images")'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		SS_NAME='<img>'
		<BODY>
			<ATTR_ITER>
				DESCR='generates the list of the element\'s attributes'
				FMT={
					txtfl.delimiter.type='none';
				}
				SCOPE='enumerated-attrs'
				EXCL_PASSED=false
				<BODY>
					<AREA_SEC>
						COND='iterator.attr.name == "src"'
						BREAK_PARENT_BLOCK='when-executed'
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT=' src="'
									</LABEL>
									<DATA_CTRL>
										FORMULA='srcURL = resolveURL (\n  iterator.value.toString(),\n  getXMLDocument().getAttrStringValue("xmlURI")\n);\n\noutput.format.name == "HTML" && \n  getBooleanParam("proc.annotation.tags.xhtml.images.copy") &&\n    (dstFile = copyFile (srcURL, output.filesDir)) != "" \n? makeRelativePath (dstFile, output.dir) : srcURL'
									</DATA_CTRL>
									<LABEL>
										TEXT='"'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DELIMITER>
									</DELIMITER>
									<DATA_CTRL>
										FORMULA='iterator.attr.name'
									</DATA_CTRL>
									<LABEL>
										TEXT='="'
									</LABEL>
									<DATA_CTRL>
										FORMULA='encodeXMLChars (\n  iterator.attr.dsmAttr.rawValue,\n  true, true, true, false\n)'
									</DATA_CTRL>
									<LABEL>
										TEXT='"'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</ATTR_ITER>
		</BODY>
		<HEADER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='<img'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
		<FOOTER>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='>'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</FOOTER>
	</FOLDER>
	<FOLDER>
		DESCR='process <xs:appinfo> element'
		MATCHING_ET='xs:appinfo'
		FMT={
			txtfl.delimiter.type='space';
		}
		SS_NAME='appinfo'
		<BODY>
			<ELEMENT_ITER>
				DESCR='iterate by all nodes contained in <xs:appinfo> element;\nthe output is set to text flow and the rendering of embedded HTML is switched on (see  Formatting | Text Flow tab)'
				FMT={
					sec.outputStyle='text-par';
					txtfl.delimiter.type='none';
					txtfl.option.renderEmbeddedHTML='true';
				}
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.dsmElement.pseudoElement ||\ninstanceOf ("#TEXT | #CDATA")'
				<BODY>
					<SS_CALL>
						DESCR='processing of each node'
						FMT={
							sec.indent.left='10';
						}
						SS_NAME='Node'
						PARAMS_EXPR='Array (true)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()\n&&\nhasParamValue (\n  "proc.annotation.documentation.source", "as_see_link"\n)'
				<AREA>
					<SPACER>
						COND='! sectionBlock.execSecNone'
						FMT={
							spacer.height.relative='60';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								FMT={
									text.font.style.bold='true';
									text.option.nbsps='true';
								}
								TEXT='See: '
							</LABEL>
							<DATA_CTRL>
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
									text.font.size.relative='95';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (\n  getAttrStringValue("source"),\n  getXMLDocument().getAttrStringValue("xmlURI")\n);\n\nfindXMLDocument(uri).id\n';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
								ATTR='source'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()\n&&\nhasParamValue (\n  "proc.annotation.appinfo.source", "as_title"\n)'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.margin.top='0';
							par.margin.bottom='6';
						}
						<CTRLS>
							<DATA_CTRL>
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (\n  getAttrStringValue("source"),\n  getXMLDocument().getAttrStringValue("xmlURI")\n);\n\nfindXMLDocument(uri).id\n';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
								ATTR='source'
							</DATA_CTRL>
							<LABEL>
								TEXT=':'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("showHeading")\n||\ngetBooleanParam("proc.annotation.show.part.headings")\n&& iterator.numItems > 1'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							par.margin.top='0';
							par.margin.bottom='6';
						}
						<CTRLS>
							<LABEL>
								TEXT='Annotation'
							</LABEL>
							<DATA_CTRL>
								COND='iterator.numItems > 1'
								FORMULA='iterator.itemNo.toString() + ":"'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<ATTR_ITER>
		DESCR='generates the list of the element\'s attributes'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		SCOPE='enumerated-attrs'
		EXCL_PASSED=false
		FILTER='name = iterator.attr.name;\nname != "xmlns" && ! name.startsWith ("xmlns:")'
		SS_NAME='AttrList'
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DELIMITER>
							</DELIMITER>
							<DATA_CTRL>
								FORMULA='iterator.attr.name'
							</DATA_CTRL>
							<LABEL>
								TEXT='="'
							</LABEL>
							<DATA_CTRL>
								FORMULA='encodeXMLChars (\n  iterator.attr.dsmAttr.rawValue,\n  true, true, true, false\n)'
							</DATA_CTRL>
							<LABEL>
								TEXT='"'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ATTR_ITER>
	<FOLDER>
		DESCR='process <xs:documentation> element'
		MATCHING_ET='xs:documentation'
		FMT={
			txtfl.delimiter.type='space';
		}
		SS_NAME='documentation'
		<BODY>
			<ELEMENT_ITER>
				DESCR='iterate by all nodes contained in <xs:documentation> element;\nthe output is set to text flow and the rendering of embedded HTML is switched on (see  Formatting | Text Flow tab)'
				FMT={
					sec.outputStyle='text-par';
					txtfl.delimiter.type='none';
					txtfl.option.renderEmbeddedHTML='true';
				}
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.dsmElement.pseudoElement ||\ninstanceOf ("#TEXT | #CDATA")'
				<BODY>
					<SS_CALL>
						DESCR='processing of each node'
						FMT={
							sec.indent.left='10';
						}
						SS_NAME='Node'
						PARAMS_EXPR='Array (true)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()\n&&\nhasParamValue (\n  "proc.annotation.documentation.source", "as_see_link"\n)'
				<AREA>
					<SPACER>
						COND='! sectionBlock.execSecNone'
						FMT={
							spacer.height.relative='60';
						}
					</SPACER>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								FMT={
									text.font.style.bold='true';
									text.option.nbsps='true';
								}
								TEXT='See: '
							</LABEL>
							<DATA_CTRL>
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
									text.font.size.relative='95';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (\n  getAttrStringValue("source"),\n  getXMLDocument().getAttrStringValue("xmlURI")\n);\n\nfindXMLDocument(uri).id\n';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
								ATTR='source'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
		<HEADER>
			<AREA_SEC>
				COND='! getAttrStringValue("source").isBlank()\n&&\nhasParamValue (\n  "proc.annotation.documentation.source", "as_title"\n)'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
							par.margin.top='0';
							par.margin.bottom='6';
						}
						<CTRLS>
							<DATA_CTRL>
								FMT={
									ctrl.option.text.trimSpaces='true';
									ctrl.option.text.noBlankOutput='true';
								}
								<DOC_HLINK>
									HKEYS={
										'uri = resolveURI (\n  getAttrStringValue("source"),\n  getXMLDocument().getAttrStringValue("xmlURI")\n);\n\nfindXMLDocument(uri).id\n';
										'"detail"';
									}
								</DOC_HLINK>
								<URL_HLINK>
									COND='getAttrStringValue("source").isURL()'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='getAttrStringValue("source")'
								</URL_HLINK>
								ATTR='source'
							</DATA_CTRL>
							<LABEL>
								TEXT=':'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				COND='getBooleanParam("showHeading")\n||\ngetBooleanParam("proc.annotation.show.part.headings")\n&& iterator.numItems > 1'
				FMT={
					text.font.style.bold='true';
					par.page.keepWithNext='true';
				}
				<AREA>
					<SPACER>
						COND='! iterator.isFirstItem'
						FMT={
							spacer.height.relative='80';
						}
					</SPACER>
					<CTRL_GROUP>
						FMT={
							par.margin.top='0';
							par.margin.bottom='6';
						}
						<CTRLS>
							<LABEL>
								TEXT='Annotation'
							</LABEL>
							<DATA_CTRL>
								COND='iterator.numItems > 1'
								FORMULA='iterator.itemNo.toString() + ":"'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='processing the documentation node; param indicates whether to collapse whitespaces'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='none';
		}
		SS_NAME='Node'
		<BODY>
			<AREA_SEC>
				DESCR='case of text or character data node'
				MATCHING_ETS={'#CDATA';'#TEXT'}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<DATA_CTRL>
								FMT={
									ctrl.option.text.noEmptyOutput='true';
								}
								FORMULA='text = contextElement.value.toString();\n\nstockSection.recursionDepth > 0 ?\n{\n  stockSection.param.toBoolean() ? \n    text = text.collapseSpaces (false)\n} : {\n  text = text.collapseSpaces (\n           iterator.isFirstItem, iterator.isLastItem)\n};\n\ngetBooleanParam ("proc.annotation.encode.markup.chars") &&\noutput.format.renderEmbeddedHTML\n ? encodeXMLChars (text) : text'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ELEMENT_ITER>
				DESCR='otherwise, this is element node\n--\nif the current element belongs to the XHTML namespace and processing of XHTML tags is enabled, reprint the element\'s tags so as they look as an ordinary HTML and process the element\'s content.'
				COND='getBooleanParam("proc.annotation.tags.xhtml")\n&&\n(contextElement.belongsToNS ("xhtml") ||\n hasParamValue("proc.annotation.tags.other", "xhtml"))'
				INIT_EXPR='setVar("tag", contextElement.dsmElement.localName.toLowerCase())'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.dsmElement.pseudoElement ||\ninstanceOf ("#TEXT | #CDATA")'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						FMT={
							sec.indent.left='10';
						}
						SS_NAME='Node'
						PARAMS_EXPR='getVar("tag") == "pre" ? Array (false) : stockSection.params'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='<'
									</LABEL>
									<DATA_CTRL>
										FORMULA='contextElement.dsmElement.localName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<LABEL>
										TEXT='>'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
				<FOOTER>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='</'
									</LABEL>
									<DATA_CTRL>
										FORMULA='contextElement.dsmElement.localName'
									</DATA_CTRL>
									<LABEL>
										TEXT='>'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
				<ELSE>
					DESCR='this is executed when no child nodes encountered -- the case of a simple element'
					<SS_CALL>
						COND='getVar("tag") == "img"'
						BREAK_PARENT_BLOCK='when-executed'
						SS_NAME='<img>'
					</SS_CALL>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='<'
									</LABEL>
									<DATA_CTRL>
										FORMULA='contextElement.dsmElement.localName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<LABEL>
										TEXT='>'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, this is non-XHTML element\n--\nif showing other tags is specified, reprint the element\'s tags so that they appear in the documentation the same as they are defined in XML. \n\nThe "Formatting | Text Flow | Render embeded HTML" property is disabled at each Area Section printing the tag.'
				COND='hasParamValue("proc.annotation.tags.other", "show")'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.dsmElement.pseudoElement ||\ninstanceOf ("#TEXT | #CDATA")'
				BREAK_PARENT_BLOCK='when-executed'
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						FMT={
							sec.indent.left='10';
						}
						SS_NAME='Node'
						PARAMS_EXPR='stockSection.params'
					</SS_CALL>
				</BODY>
				<HEADER>
					<AREA_SEC>
						FMT={
							txtfl.option.renderEmbeddedHTML='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='<'
									</LABEL>
									<DATA_CTRL>
										FORMULA='contextElement.dsmElement.qName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<LABEL>
										TEXT='>'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</HEADER>
				<FOOTER>
					<AREA_SEC>
						FMT={
							txtfl.option.renderEmbeddedHTML='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='</'
									</LABEL>
									<DATA_CTRL>
										FORMULA='contextElement.dsmElement.qName'
									</DATA_CTRL>
									<LABEL>
										TEXT='>'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</FOOTER>
				<ELSE>
					DESCR='this is executed when no child nodes encountered -- the case of a simple element'
					<AREA_SEC>
						FMT={
							txtfl.option.renderEmbeddedHTML='false';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='<'
									</LABEL>
									<DATA_CTRL>
										FORMULA='contextElement.dsmElement.qName'
									</DATA_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='AttrList'
									</SS_CALL_CTRL>
									<LABEL>
										TEXT='/>'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</ELSE>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='otherwise, only process the element content'
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				FILTER='! contextElement.dsmElement.pseudoElement ||\ninstanceOf ("#TEXT | #CDATA")'
				COLLAPSED
				<BODY>
					<SS_CALL>
						DESCR='calls this stock-section recursively'
						FMT={
							sec.indent.left='10';
						}
						SS_NAME='Node'
						PARAMS_EXPR='stockSection.params'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='rYaQwPc7kNgmugtsMOg2fjkodIqBx9kxMts4inVvjI0'
</DOCFLEX_TEMPLATE>