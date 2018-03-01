<DOCFLEX_TEMPLATE VER='1.12'>
CREATED='2004-06-21 01:50:00'
LAST_UPDATE='2009-02-07 01:37:16'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.1.0'
APP_AUTHOR='Copyright \u00a9 2005-2009 Filigris Works,\nLeonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='xs:schema'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='nsURI';
		param.title='Namespace URI';
		param.type='string';
		param.default.expr='getAttrStringValue("targetNamespace")';
	}
	PARAM={
		param.name='scope';
		param.description='Indicates the scope of the main document for which this template is called:\n"any" - unspecified;\n"namespace" - namespace overview;\n"schema" - schema overview';
		param.type='enum';
		param.enum.values='any;namespace;schema';
		param.default.value='schema';
	}
	PARAM={
		param.name='page.heading.left';
		param.title='Page Heading (on the left)';
		param.type='string';
		param.default.expr='\'XML Schema "\' + getXMLDocument().getAttrStringValue("xmlName") + \'"\'';
	}
	PARAM={
		param.name='doc.schema';
		param.title='Schema Overview';
		param.title.style.bold='true';
		param.grouping='true';
	}
	PARAM={
		param.name='doc.schema.profile';
		param.title='Schema Profile';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.annotation';
		param.title='Annotation';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps';
		param.title='Component Summaries';
		param.title.style.bold='true';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item';
		param.title='Summary Item';
		param.title.style.italic='true';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
	}
	PARAM={
		param.name='doc.schema.comps.item.annotation';
		param.title='Annotation';
		param.featureType='pro';
		param.type='enum';
		param.enum.values='first_sentence;full;none';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile';
		param.title='Component Profile';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.type';
		param.title='Type';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.block';
		param.title='Block';
		param.featureType='pro';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.block.value';
		param.title='Value';
		param.featureType='pro';
		param.type='boolean';
		param.default.value='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.block.meaning';
		param.title='Meaning';
		param.featureType='pro';
		param.type='boolean';
		param.default.value='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.final';
		param.title='Final';
		param.featureType='pro';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='enum';
		param.enum.values='any;non_default;none';
		param.enum.displayValues='any;non-default only;none';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.final.value';
		param.title='Value';
		param.featureType='pro';
		param.type='boolean';
		param.default.value='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.final.meaning';
		param.title='Meaning';
		param.featureType='pro';
		param.type='boolean';
		param.default.value='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.subst';
		param.title='Subst.Gr';
		param.grouping='true';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.subst.heads';
		param.title='List of group heads';
		param.featureType='pro';
		param.type='boolean';
		param.default.value='true';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.subst.members';
		param.title='List of group members';
		param.featureType='pro';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.nillable';
		param.title='Nillable';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.item.profile.used';
		param.title='Used';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.elements';
		param.title='Elements';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.elements.local';
		param.title='Local Elements';
		param.type='enum';
		param.enum.values='all;complexType;none';
	}
	PARAM={
		param.name='doc.schema.comps.complexTypes';
		param.title='Complex Types';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.simpleTypes';
		param.title='Simple Types';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.groups';
		param.title='Element Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.attributes';
		param.title='Global Attributes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.comps.attributeGroups';
		param.title='Attribute Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml';
		param.title='XML Source';
		param.title.style.bold='true';
		param.grouping='true';
		param.grouping.defaultState='collapsed';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml.box';
		param.title='Enclose in Box';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.schema.xml.remove.anns';
		param.title='Remove Annotations';
		param.type='boolean';
	}
	PARAM={
		param.name='show';
		param.title='Show';
		param.title.style.bold='true';
		param.grouping='true';
	}
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.type='enum';
		param.enum.values='full;short;none';
	}
</TEMPLATE_PARAMS>
<HTARGET>
	HKEYS={
		'contextElement.id';
		'"detail"';
	}
</HTARGET>
<HTARGET>
	HKEYS={
		'getXMLDocument().id';
		'"detail"';
	}
</HTARGET>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<STYLES>
	CHAR_STYLE={
		style.name='Code';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 1';
		style.id='s1';
		text.font.size='12';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#CCCCFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='12';
		par.margin.bottom='10';
		par.padding.left='2.5';
		par.padding.right='2.5';
		par.padding.top='2';
		par.padding.bottom='2';
		par.page.keepWithNext='true';
	}
	PAR_STYLE={
		style.name='Detail Heading 2';
		style.id='s2';
		text.font.size='10';
		text.font.style.bold='true';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEFF';
		par.border.style='solid';
		par.border.color='#666666';
		par.margin.top='12';
		par.margin.bottom='10';
		par.padding.left='2';
		par.padding.right='2';
		par.padding.top='2';
		par.padding.bottom='2';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	CHAR_STYLE={
		style.name='Internal Subset';
		style.id='cs4';
		text.font.name='Courier New';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Main Heading';
		style.id='s3';
		text.font.name='Verdana';
		text.font.size='13';
		text.font.style.bold='true';
		text.color.foreground='#4477AA';
		par.bkgr.opaque='true';
		par.bkgr.color='#EEEEEE';
		par.border.style='solid';
		par.border.color='#4477AA';
		par.margin.top='0';
		par.margin.bottom='9';
		par.padding.left='5';
		par.padding.right='5';
		par.padding.top='3';
		par.padding.bottom='3';
		par.page.keepTogether='true';
		par.page.keepWithNext='true';
	}
	CHAR_STYLE={
		style.name='Markup';
		style.id='cs5';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s4';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smaller';
		style.id='cs6';
		text.font.name='Arial';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Note Font';
		style.id='cs7';
		text.font.name='Arial';
		text.font.size='8';
		text.font.style.bold='false';
		par.lineHeight='11';
		par.margin.right='7';
	}
	CHAR_STYLE={
		style.name='Page Header Font';
		style.id='cs8';
		text.font.name='Arial';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Page Number';
		style.id='cs9';
		text.font.size='9';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Summary Heading Font';
		style.id='cs10';
		text.font.size='12';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='XML Source';
		style.id='cs11';
		text.font.name='Verdana';
		text.font.size='8';
	}
</STYLES>
<PAGE_HEADER>
	<AREA_SEC>
		FMT={
			text.style='cs8';
			table.cellpadding.both='0';
			table.border.style='none';
			table.border.bottom.style='solid';
		}
		<AREA>
			<CTRL_GROUP>
				FMT={
					par.border.bottom.style='solid';
				}
				<CTRLS>
					<DATA_CTRL>
						FORMULA='getStringParam("page.heading.left")'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</PAGE_HEADER>
<ROOT>
	<AREA_SEC>
		FMT={
			par.style='s3';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						TEXT='XML Schema'
					</LABEL>
					<DATA_CTRL>
						FMT={
							text.font.style.italic='true';
						}
						FORMULA='\'"\' + getXMLDocument().getAttrStringValue("xmlName") + \'"\''
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<TEMPLATE_CALL>
		COND='getBooleanParam("doc.schema.profile")'
		FMT={
			sec.spacing.before='12';
		}
		TEMPLATE_FILE='schemaProfile.tpl'
		PASSED_PARAMS={
			'schema-summary','true';
		}
	</TEMPLATE_CALL>
	<FOLDER>
		DESCR='Annotation'
		COND='getBooleanParam("doc.schema.annotation")'
		COLLAPSED
		<BODY>
			<TEMPLATE_CALL>
				TEMPLATE_FILE='../ann/annotation.tpl'
			</TEMPLATE_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s2';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<LABEL>
								TEXT='Annotation'
							</LABEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<FOLDER>
		DESCR='COMPONENT SUMMARY'
		COND='getBooleanParam("doc.schema.comps")'
		FMT={
			sec.spacing.before='14';
		}
		<BODY>
			<TEMPLATE_CALL>
				DESCR='elements'
				COND='getBooleanParam("doc.schema.comps.elements")'
				FMT={
					sec.spacing.before='12';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"element-summary"';
					}
				</HTARGET>
				TEMPLATE_FILE='../element/elementSummary.tpl'
				PASSED_PARAMS={
					'elements.local','getStringParam("doc.schema.comps.elements.local")';
					'item.annotation','getStringParam("doc.schema.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.schema.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.schema.comps.item.profile.namespace")';
					'doc.comp.profile.type','getBooleanParam("doc.schema.comps.item.profile.type")';
					'doc.comp.profile.content','getBooleanParam("doc.schema.comps.item.profile.content")';
					'doc.comp.profile.abstract','getBooleanParam("doc.schema.comps.item.profile.abstract")';
					'doc.comp.profile.block','getStringParam("doc.schema.comps.item.profile.block")';
					'doc.comp.profile.block.value','getBooleanParam("doc.schema.comps.item.profile.block.value")';
					'doc.comp.profile.block.meaning','getBooleanParam("doc.schema.comps.item.profile.block.meaning")';
					'doc.comp.profile.final','getStringParam("doc.schema.comps.item.profile.final")';
					'doc.comp.profile.final.value','getBooleanParam("doc.schema.comps.item.profile.final.value")';
					'doc.comp.profile.final.meaning','getBooleanParam("doc.schema.comps.item.profile.final.meaning")';
					'doc.comp.profile.subst','getBooleanParam("doc.schema.comps.item.profile.subst")';
					'doc.comp.profile.subst.heads','getBooleanParam("doc.schema.comps.item.profile.subst.heads")';
					'doc.comp.profile.subst.members','getBooleanParam("doc.schema.comps.item.profile.subst.members")';
					'doc.comp.profile.nillable','getBooleanParam("doc.schema.comps.item.profile.nillable")';
					'doc.comp.profile.defined','getBooleanParam("doc.schema.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.schema.comps.item.profile.includes")';
					'doc.comp.profile.used','getBooleanParam("doc.schema.comps.item.profile.used")';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='complexTypes'
				COND='getBooleanParam("doc.schema.comps.complexTypes")'
				FMT={
					sec.spacing.before='12';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"complexType-summary"';
					}
				</HTARGET>
				TEMPLATE_FILE='../type/complexTypeSummary.tpl'
				PASSED_PARAMS={
					'item.annotation','getStringParam("doc.schema.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.schema.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.schema.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.schema.comps.item.profile.content")';
					'doc.comp.profile.abstract','getBooleanParam("doc.schema.comps.item.profile.abstract")';
					'doc.comp.profile.block','getStringParam("doc.schema.comps.item.profile.block")';
					'doc.comp.profile.block.value','getBooleanParam("doc.schema.comps.item.profile.block.value")';
					'doc.comp.profile.block.meaning','getBooleanParam("doc.schema.comps.item.profile.block.meaning")';
					'doc.comp.profile.final','getStringParam("doc.schema.comps.item.profile.final")';
					'doc.comp.profile.final.value','getBooleanParam("doc.schema.comps.item.profile.final.value")';
					'doc.comp.profile.final.meaning','getBooleanParam("doc.schema.comps.item.profile.final.meaning")';
					'doc.comp.profile.defined','getBooleanParam("doc.schema.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.schema.comps.item.profile.includes")';
					'doc.comp.profile.redefines','getBooleanParam("doc.schema.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.schema.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.schema.comps.item.profile.used")';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='simpleTypes'
				COND='getBooleanParam("doc.schema.comps.simpleTypes")'
				FMT={
					sec.spacing.before='12';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"simpleType-summary"';
					}
				</HTARGET>
				TEMPLATE_FILE='../type/simpleTypeSummary.tpl'
				PASSED_PARAMS={
					'item.annotation','getStringParam("doc.schema.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.schema.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.schema.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.schema.comps.item.profile.content")';
					'doc.comp.profile.final','getStringParam("doc.schema.comps.item.profile.final")';
					'doc.comp.profile.final.value','getBooleanParam("doc.schema.comps.item.profile.final.value")';
					'doc.comp.profile.final.meaning','getBooleanParam("doc.schema.comps.item.profile.final.meaning")';
					'doc.comp.profile.defined','getBooleanParam("doc.schema.comps.item.profile.defined")';
					'doc.comp.profile.redefines','getBooleanParam("doc.schema.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.schema.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.schema.comps.item.profile.used")';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='element groups'
				COND='getBooleanParam("doc.schema.comps.groups")'
				FMT={
					sec.spacing.before='12';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"group-summary"';
					}
				</HTARGET>
				TEMPLATE_FILE='../groups/groupSummary.tpl'
				PASSED_PARAMS={
					'item.annotation','getStringParam("doc.schema.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.schema.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.schema.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.schema.comps.item.profile.content")';
					'doc.comp.profile.defined','getBooleanParam("doc.schema.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.schema.comps.item.profile.includes")';
					'doc.comp.profile.redefines','getBooleanParam("doc.schema.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.schema.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.schema.comps.item.profile.used")';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='attributes'
				COND='getBooleanParam("doc.schema.comps.attributes")'
				FMT={
					sec.spacing.before='12';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"attribute-summary"';
					}
				</HTARGET>
				TEMPLATE_FILE='../attribute/attributeSummary.tpl'
				PASSED_PARAMS={
					'item.annotation','getStringParam("doc.schema.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.schema.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.schema.comps.item.profile.namespace")';
					'doc.comp.profile.type','getBooleanParam("doc.schema.comps.item.profile.type")';
					'doc.comp.profile.defined','getBooleanParam("doc.schema.comps.item.profile.defined")';
					'doc.comp.profile.used','getBooleanParam("doc.schema.comps.item.profile.used")';
				}
			</TEMPLATE_CALL>
			<TEMPLATE_CALL>
				DESCR='attribute groups'
				COND='getBooleanParam("doc.schema.comps.attributeGroups")'
				FMT={
					sec.spacing.before='12';
				}
				<HTARGET>
					HKEYS={
						'contextElement.id';
						'"attributeGroup-summary"';
					}
				</HTARGET>
				TEMPLATE_FILE='../groups/attributeGroupSummary.tpl'
				PASSED_PARAMS={
					'item.annotation','getStringParam("doc.schema.comps.item.annotation")';
					'doc.comp.profile','getBooleanParam("doc.schema.comps.item.profile")';
					'doc.comp.profile.namespace','getBooleanParam("doc.schema.comps.item.profile.namespace")';
					'doc.comp.profile.content','getBooleanParam("doc.schema.comps.item.profile.content")';
					'doc.comp.profile.defined','getBooleanParam("doc.schema.comps.item.profile.defined")';
					'doc.comp.profile.includes','getBooleanParam("doc.schema.comps.item.profile.includes")';
					'doc.comp.profile.redefines','getBooleanParam("doc.schema.comps.item.profile.redefines")';
					'doc.comp.profile.redefined','getBooleanParam("doc.schema.comps.item.profile.redefined")';
					'doc.comp.profile.used','getBooleanParam("doc.schema.comps.item.profile.used")';
				}
			</TEMPLATE_CALL>
		</BODY>
	</FOLDER>
	<FOLDER>
		DESCR='XML SOURCE'
		COND='getBooleanParam("doc.schema.xml")'
		CONTEXT_ELEMENT_EXPR='getXMLDocument()'
		MATCHING_ET='#DOCUMENT'
		FMT={
			sec.spacing.before='14';
		}
		<HTARGET>
			HKEYS={
				'contextElement.id';
				'"xml-source"';
			}
		</HTARGET>
		COLLAPSED
		<BODY>
			<AREA_SEC>
				COND='getBooleanParam("doc.schema.xml.box")'
				FMT={
					sec.outputStyle='table';
					table.sizing='Relative';
					table.autofit='false';
					table.cellpadding.both='4';
					table.bkgr.color='#F5F5F5';
					table.border.style='solid';
					table.border.color='#999999';
					table.option.borderStylesInHTML='true';
				}
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<SS_CALL_CTRL>
								FMT={
									ctrl.size.width='499.5';
									ctrl.size.height='17.3';
								}
								SS_NAME='XML Source'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<SS_CALL>
				SS_NAME='XML Source'
			</SS_CALL>
		</BODY>
		<HEADER>
			<AREA_SEC>
				FMT={
					par.style='s1';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							trow.bkgr.color='#CCCCFF';
						}
						<CTRLS>
							<LABEL>
								TEXT='XML Source'
							</LABEL>
							<DELIMITER>
								FMT={
									text.style='cs1';
								}
							</DELIMITER>
							<TEMPLATE_CALL_CTRL>
								FMT={
									text.style='cs7';
								}
								TEMPLATE_FILE='../xml/sourceNote.tpl'
								PASSED_PARAMS={
									'remove.anns','getBooleanParam("doc.schema.xml.remove.anns")';
								}
							</TEMPLATE_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</HEADER>
	</FOLDER>
	<TEMPLATE_CALL>
		DESCR='Bottom Message'
		COND='output.type == "document" && \n! hasParamValue("show.about", "none")'
		TEMPLATE_FILE='../about.tpl'
	</TEMPLATE_CALL>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		MATCHING_ET='#DOCUMENT'
		SS_NAME='XML Source'
		<BODY>
			<AREA_SEC>
				DESCR='XML declaration'
				COND='getAttrValue("xmlDecl") != ""'
				FMT={
					text.style='cs11';
				}
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='none';
						}
						<CTRLS>
							<DATA_CTRL>
								FMT={
									text.style='cs5';
								}
								ATTR='xmlDecl'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<ELEMENT_ITER>
				DESCR='iterates by all nodes in the XML'
				FMT={
					text.style='cs11';
				}
				TARGET_ET='<ANY>'
				SCOPE='simple-location-rules'
				RULES={
					'* -> *';
				}
				<BODY>
					<FOLDER>
						DESCR='processes <!DOCTYPE> node'
						MATCHING_ET='#DOCTYPE'
						<BODY>
							<AREA_SEC>
								DESCR='simple case of <!DOCTYPE> node'
								COND='getAttrStringValue("internalSubset") == ""'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<LABEL>
												FMT={
													text.style='cs5';
												}
												TEXT='<!DOCTYPE'
											</LABEL>
											<DATA_CTRL>
												FMT={
													text.style='cs5';
												}
												ATTR='name'
											</DATA_CTRL>
											<PANEL>
												COND='getAttrStringValue("publicId") != ""'
												FMT={
													ctrl.size.width='132';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='PUBLIC'
															</LABEL>
															<DELIMITER>
															</DELIMITER>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
															<DATA_CTRL>
																FMT={
																	ctrl.option.text.noBlankOutput='true';
																	text.style='cs5';
																}
																ATTR='publicId'
															</DATA_CTRL>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<PANEL>
												COND='getAttrStringValue("systemId") != ""'
												FMT={
													ctrl.size.width='137.3';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<LABEL>
																COND='getAttrStringValue("publicId") == ""'
																FMT={
																	text.style='cs5';
																}
																TEXT='SYSTEM'
															</LABEL>
															<DELIMITER>
															</DELIMITER>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
															<DATA_CTRL>
																FMT={
																	ctrl.option.text.noBlankOutput='true';
																	text.style='cs5';
																}
																ATTR='systemId'
															</DATA_CTRL>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<DELIMITER>
												FMT={
													text.style='cs5';
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<LABEL>
												FMT={
													text.style='cs5';
												}
												TEXT='>'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
							<AREA_SEC>
								DESCR='<!DOCTYPE> node with Internal Subset'
								COND='getAttrStringValue("internalSubset") != ""'
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<LABEL>
												FMT={
													text.style='cs5';
												}
												TEXT='<!DOCTYPE'
											</LABEL>
											<DATA_CTRL>
												FMT={
													text.style='cs5';
												}
												ATTR='name'
											</DATA_CTRL>
											<PANEL>
												COND='getAttrStringValue("publicId") != ""'
												FMT={
													ctrl.size.width='130.5';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='PUBLIC'
															</LABEL>
															<DELIMITER>
															</DELIMITER>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
															<DATA_CTRL>
																FMT={
																	ctrl.option.text.noBlankOutput='true';
																	text.style='cs5';
																}
																ATTR='publicId'
															</DATA_CTRL>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<PANEL>
												COND='getAttrStringValue("systemId") != ""'
												FMT={
													ctrl.size.width='137.3';
													txtfl.delimiter.type='none';
												}
												<AREA>
													<CTRL_GROUP>
														<CTRLS>
															<LABEL>
																COND='getAttrStringValue("publicId") == ""'
																FMT={
																	text.style='cs5';
																}
																TEXT='SYSTEM'
															</LABEL>
															<DELIMITER>
															</DELIMITER>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
															<DATA_CTRL>
																FMT={
																	ctrl.option.text.noBlankOutput='true';
																	text.style='cs5';
																}
																ATTR='systemId'
															</DATA_CTRL>
															<LABEL>
																FMT={
																	text.style='cs5';
																}
																TEXT='"'
															</LABEL>
														</CTRLS>
													</CTRL_GROUP>
												</AREA>
											</PANEL>
											<LABEL>
												FMT={
													text.style='cs5';
												}
												TEXT='['
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
									<CTRL_GROUP>
										FMT={
											par.margin.left='10';
										}
										<CTRLS>
											<DATA_CTRL>
												FMT={
													ctrl.option.text.trimSpaces='true';
													text.style='cs4';
													text.option.renderNLs='true';
												}
												ATTR='internalSubset'
											</DATA_CTRL>
										</CTRLS>
									</CTRL_GROUP>
									<CTRL_GROUP>
										<CTRLS>
											<LABEL>
												FMT={
													text.style='cs5';
												}
												TEXT=']>'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</AREA_SEC>
						</BODY>
					</FOLDER>
					<TEMPLATE_CALL>
						DESCR='processes other XML nodes'
						COND='sectionBlock.execSecNone'
						TEMPLATE_FILE='../xml/nodeSource.tpl'
						PASSED_PARAMS={
							'bookmark.elements','true';
							'bookmark.xmlns','true';
							'remove.anns','getBooleanParam("doc.schema.xml.remove.anns")';
						}
					</TEMPLATE_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='LhYsWnR+g7kzSKMhM2T88NHiK0SxQQSty6ILVz8s8ZQ'
</DOCFLEX_TEMPLATE>