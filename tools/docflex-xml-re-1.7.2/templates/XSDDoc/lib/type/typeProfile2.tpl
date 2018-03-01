<DOCFLEX_TEMPLATE VER='1.12'>
CREATED='2005-10-13 03:37:00'
LAST_UPDATE='2009-02-07 01:37:16'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.1.0'
APP_AUTHOR='Copyright \u00a9 2005-2009 Filigris Works,\nLeonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:complexType';'xs:simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='nsURI';
		param.title='type namespace URI';
		param.description='The namespace to which this type belongs';
		param.type='string';
	}
	PARAM={
		param.name='scope';
		param.description='Indicates the scope of the main document for which this template is called:\n"any" - unspecified;\n"namespace" - namespace overview;\n"schema" - schema overview';
		param.type='enum';
		param.enum.values='any;namespace;schema';
	}
	PARAM={
		param.name='usageCount';
		param.description='number of locations where this type is used';
		param.type='integer';
		param.default.expr='countElementsByKey (\n  "type-usage",\n  QName (getStringParam("nsURI"), getAttrStringValue("name"))\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='contentModelKey';
		param.title='"content-model-attributes", "content-model-elements" map key';
		param.description='The key for "content-model-attributes" and "content-model-elements" maps to find items associated with this component';
		param.type='Object';
		param.default.expr='contextElement.id';
	}
	PARAM={
		param.name='attributeCount';
		param.title='number of all attributes';
		param.description='total number of attributes declared for this component';
		param.type='integer';
		param.default.expr='countElementsByKey (\n  "content-model-attributes", \n  getParam("contentModelKey"),\n  BooleanQuery (! instanceOf ("xs:anyAttribute"))\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='elementCount';
		param.title='number of all content elements';
		param.description='total number of content elements declared for this component';
		param.type='integer';
		param.default.expr='countElementsByKey (\n  "content-model-elements", \n  getParam("contentModelKey"),\n  BooleanQuery (! instanceOf ("xs:any"))\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='anyAttribute';
		param.title='component has any-attribute';
		param.description='indicates that the component allows any attributes';
		param.type='boolean';
		param.default.expr='checkElementsByKey (\n  "content-model-attributes", \n  getParam("contentModelKey"),\n  BooleanQuery (instanceOf ("xs:anyAttribute"))\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='anyElement';
		param.title='component has any-content-element';
		param.description='indicates that the component allows any content elements';
		param.type='boolean';
		param.default.expr='checkElementsByKey (\n  "content-model-elements", \n  getParam("contentModelKey"),\n  BooleanQuery (instanceOf ("xs:any"))\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='ownAttributeCount';
		param.title='number of component\'s own attributes';
		param.description='number of attributes defined within this component';
		param.type='integer';
		param.default.expr='countElementsByKey (\n  "content-model-attributes", \n  getParam("contentModelKey"),\n  BooleanQuery (\n    ! instanceOf ("xs:anyAttribute") &&\n    findPredecessorByType("xs:%element;xs:complexType;xs:attributeGroup").id \n    == rootElement.id\n  )\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='ownElementCount';
		param.title='number of component\'s own content elements';
		param.description='number of content elements defined within this component';
		param.type='integer';
		param.default.expr='countElementsByKey (\n  "content-model-elements", \n  getParam("contentModelKey"),\n  BooleanQuery (\n    ! instanceOf ("xs:any") &&\n    findPredecessorByType("xs:%element;xs:complexType;xs:group").id \n    == rootElement.id\n  )\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='ownAnyAttribute';
		param.title='any-attribute is defined in this component';
		param.description='indicates that this component contains the wildcard attribute definition';
		param.type='boolean';
		param.default.expr='checkElementsByKey (\n  "content-model-attributes", \n  getParam("contentModelKey"),\n  BooleanQuery (\n    instanceOf ("xs:anyAttribute") &&\n    findPredecessorByType("xs:%element;xs:complexType;xs:attributeGroup").id \n    == rootElement.id\n  )\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='ownAnyElement';
		param.title='any-content-element is defined in this component';
		param.description='indicates that this component contains the wildcard content element definition';
		param.type='boolean';
		param.default.expr='checkElementsByKey (\n  "content-model-elements", \n  getParam("contentModelKey"),\n  BooleanQuery (\n    instanceOf ("xs:any") &&\n    findPredecessorByType("xs:%element;xs:complexType;xs:group").id \n    == rootElement.id\n  )\n)';
		param.hidden='true';
	}
	PARAM={
		param.name='fmt.page.refs';
		param.title='Generate page references';
		param.type='boolean';
		param.default.value='true';
	}
	PARAM={
		param.name='doc.comp.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.block';
		param.title='Block';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.comp.profile.final';
		param.title='Final';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.comp.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.used';
		param.title='Used';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.attributes';
		param.title='Attribute Detail';
		param.type='enum';
		param.enum.values='all;own;none';
	}
	PARAM={
		param.name='doc.comp.contentElements';
		param.title='Content Element Detail';
		param.type='enum';
		param.enum.values='all;own;none';
	}
</TEMPLATE_PARAMS>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs4';
}
<STYLES>
	CHAR_STYLE={
		style.name='Code';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs2';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs3';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs4';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Number Small';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs6';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Property Title Font';
		style.id='cs7';
		text.font.size='8';
		text.font.style.bold='true';
		par.lineHeight='11';
		par.margin.right='7';
	}
	CHAR_STYLE={
		style.name='Property Value Font';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='8';
		par.lineHeight='11';
	}
</STYLES>
<ROOT>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.namespace")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Namespace:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<DATA_CTRL>
						FMT={
							text.style='cs2';
						}
						<DOC_HLINK>
							HKEYS={
								'getStringParam("nsURI")';
								'"detail"';
							}
						</DOC_HLINK>
						<URL_HLINK>
							COND='getStringParam("nsURI") != ""'
							ALT_HLINK
							TARGET_FRAME_EXPR='"_blank"'
							URL_EXPR='getStringParam("nsURI")'
						</URL_HLINK>
						FORMULA='(ns = getParam("nsURI")) != "" ? ns : "{global namespace}"'
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.content")'
		MATCHING_ET='xs:complexType'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Content:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='441';
							text.style='cs8';
							txtfl.delimiter.type='text';
							txtfl.delimiter.text=', ';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../content/contentType.tpl'
									</TEMPLATE_CALL_CTRL>
									<PANEL>
										COND='count = getIntParam("attributeCount") + \n        getBooleanParam("anyAttribute").toInt();\n\ncount > 0 ? { setVar ("count", count); true } : false'
										FMT={
											ctrl.size.width='277.5';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("attributeCount") > 0'
														FORMULA='getIntParam("attributeCount")'
													</DATA_CTRL>
													<DELIMITER>
														COND='getIntParam("attributeCount") > 0'
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text='+';
														}
													</DELIMITER>
													<LABEL>
														COND='getBooleanParam("anyAttribute")'
														TEXT='any'
													</LABEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='nbsp';
														}
													</DELIMITER>
													<LABEL>
														COND='getVar("count").toInt() == 1'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-detail"';
															}
														</DOC_HLINK>
														TEXT='attribute'
													</LABEL>
													<LABEL>
														COND='getVar("count").toInt() > 1'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-detail"';
															}
														</DOC_HLINK>
														TEXT='attributes'
													</LABEL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='count = getIntParam("elementCount") + \n        getBooleanParam("anyElement").toInt();\n\ncount > 0 ? { setVar ("count", count); true } : false'
										FMT={
											ctrl.size.width='277.5';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("elementCount") > 0'
														FORMULA='getIntParam("elementCount")'
													</DATA_CTRL>
													<DELIMITER>
														COND='getIntParam("elementCount") > 0'
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text='+';
														}
													</DELIMITER>
													<LABEL>
														COND='getBooleanParam("anyElement")'
														TEXT='any'
													</LABEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='nbsp';
														}
													</DELIMITER>
													<LABEL>
														COND='getVar("count").toInt() == 1'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-detail"';
															}
														</DOC_HLINK>
														TEXT='element'
													</LABEL>
													<LABEL>
														COND='getVar("count").toInt() > 1'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-detail"';
															}
														</DOC_HLINK>
														TEXT='elements'
													</LABEL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.abstract")\n&&\ninstanceOf ("xs:complexType") && getAttrBooleanValue("abstract")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Abstract:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<LABEL>
						FMT={
							text.style='cs6';
						}
						TEXT='(cannot be assigned directly to elements used in instance XML documents)'
					</LABEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='! hasParamValue("doc.comp.profile.block", "none")\n&&\ninstanceOf ("xs:complexType") && \n(\n  getAttrValue("block") != null || \n  hasParamValue("doc.comp.profile.block", "any") &&\n    findAncestor("xs:schema").getAttrValue ("blockDefault") != null\n)'
		FMT={
			trow.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
							text.option.renderNLs='true';
						}
						TEXT='Block:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<TEMPLATE_CALL_CTRL>
						FMT={
							text.style='cs8';
						}
						TEMPLATE_FILE='blockAttrInfo.tpl'
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='! hasParamValue("doc.comp.profile.final", "none") &&\n(\n  getAttrValue("final") != null\n  ||\n  instanceOf ("xs:complexType") &&\n    hasParamValue("doc.comp.profile.final", "any") &&\n    findAncestor("xs:schema").getAttrValue ("finalDefault") != null\n)'
		FMT={
			trow.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
							text.option.renderNLs='true';
						}
						TEXT='Final:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<TEMPLATE_CALL_CTRL>
						FMT={
							text.style='cs8';
						}
						TEMPLATE_FILE='finalAttrInfo.tpl'
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.defined")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Defined:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='321.8';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='globally'
									</LABEL>
									<PANEL>
										COND='! hasParamValue("scope", "schema")'
										FMT={
											ctrl.size.width='205.5';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<LABEL>
														TEXT='in'
													</LABEL>
													<DATA_CTRL>
														<DOC_HLINK>
															HKEYS={
																'getXMLDocument().id';
																'"detail"';
															}
														</DOC_HLINK>
														FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
													</DATA_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='hyperTargetExists (Array (contextElement.id, "xml-source"))'
										FMT={
											ctrl.size.width='290.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text=', ';
														}
													</DELIMITER>
													<LABEL>
														TEXT='see'
													</LABEL>
													<LABEL>
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"xml-source"';
															}
														</DOC_HLINK>
														TEXT='XML source'
													</LABEL>
													<PANEL>
														COND='output.format.supportsPagination && \ngetBooleanParam("fmt.page.refs")'
														FMT={
															ctrl.size.width='186';
															ctrl.size.height='38.3';
															txtfl.delimiter.type='none';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<DELIMITER>
																		FMT={
																			txtfl.delimiter.type='nbsp';
																		}
																	</DELIMITER>
																	<LABEL>
																		FMT={
																			text.style='cs5';
																		}
																		TEXT='['
																	</LABEL>
																	<DATA_CTRL>
																		FMT={
																			ctrl.option.noHLinkFmt='true';
																			text.style='cs5';
																			text.hlink.fmt='none';
																		}
																		<DOC_HLINK>
																			HKEYS={
																				'contextElement.id';
																				'"xml-source"';
																			}
																		</DOC_HLINK>
																		DOCFIELD='page-htarget'
																	</DATA_CTRL>
																	<LABEL>
																		FMT={
																			text.style='cs5';
																		}
																		TEXT=']'
																	</LABEL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.includes") &&\n{\n  count = getIntParam("ownAttributeCount") + \n          getIntParam("ownElementCount") +\n          getBooleanParam("ownAnyAttribute").toInt() +\n          getBooleanParam("ownAnyElement").toInt();\n\n  count > 0 ? { setVar ("count", count); true } : false\n}'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Includes:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='437.3';
							ctrl.size.height='98.3';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										COND='getVar("count").toInt() == 1'
										TEXT='definition'
									</LABEL>
									<LABEL>
										COND='getVar("count").toInt() > 1'
										TEXT='definitions'
									</LABEL>
									<LABEL>
										TEXT='of'
									</LABEL>
									<PANEL>
										COND='count = getIntParam("ownAttributeCount") + \n        getBooleanParam("ownAnyAttribute").toInt();\n\ncount > 0 ? { setVar ("count", count); true } : false'
										FMT={
											ctrl.size.width='314.3';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("ownAttributeCount") > 0'
														FORMULA='getIntParam("ownAttributeCount")'
													</DATA_CTRL>
													<DELIMITER>
														COND='getIntParam("ownAttributeCount") > 0'
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text='+';
														}
													</DELIMITER>
													<LABEL>
														COND='getBooleanParam("ownAnyAttribute")'
														TEXT='any'
													</LABEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='nbsp';
														}
													</DELIMITER>
													<LABEL>
														COND='getVar("count").toInt() == 1'
														<DOC_HLINK>
															COND='hasParamValue("doc.comp.attributes", "own")'
															HKEYS={
																'contextElement.id';
																'"attribute-defs"';
															}
														</DOC_HLINK>
														TEXT='attribute'
													</LABEL>
													<LABEL>
														COND='getVar("count").toInt() > 1'
														<DOC_HLINK>
															COND='hasParamValue("doc.comp.attributes", "own")'
															HKEYS={
																'contextElement.id';
																'"attribute-defs"';
															}
														</DOC_HLINK>
														TEXT='attributes'
													</LABEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text=' and ';
														}
													</DELIMITER>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='count = getIntParam("ownElementCount") + \n        getBooleanParam("ownAnyElement").toInt();\n\ncount > 0 ? { setVar ("count", count); true } : false'
										FMT={
											ctrl.size.width='285.8';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("ownElementCount") > 0'
														FORMULA='getIntParam("ownElementCount")'
													</DATA_CTRL>
													<DELIMITER>
														COND='getIntParam("ownElementCount") > 0'
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text='+';
														}
													</DELIMITER>
													<LABEL>
														COND='getBooleanParam("ownAnyElement")'
														TEXT='any'
													</LABEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='nbsp';
														}
													</DELIMITER>
													<LABEL>
														COND='getVar("count").toInt() == 1'
														<DOC_HLINK>
															COND='hasParamValue("doc.comp.contentElements", "own")'
															HKEYS={
																'contextElement.id';
																'"content-element-defs"';
															}
														</DOC_HLINK>
														TEXT='element'
													</LABEL>
													<LABEL>
														COND='getVar("count").toInt() > 1'
														<DOC_HLINK>
															COND='hasParamValue("doc.comp.contentElements", "own")'
															HKEYS={
																'contextElement.id';
																'"content-element-defs"';
															}
														</DOC_HLINK>
														TEXT='elements'
													</LABEL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.redefines")\n\n// see also "Context Element" tab'
		CONTEXT_ELEMENT_EXPR='findElementByKey ("redefined-component", contextElement.id)'
		MATCHING_ET='<ANY>'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Redefines:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='429.8';
							ctrl.size.height='38.3';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"detail"';
											}
										</DOC_HLINK>
										FORMULA='toXMLName (getStringParam("nsURI"), getAttrStringValue("name"))'
									</DATA_CTRL>
									<LABEL>
										TEXT='in'
									</LABEL>
									<DATA_CTRL>
										<DOC_HLINK>
											HKEYS={
												'getXMLDocument().id';
												'"detail"';
											}
										</DOC_HLINK>
										FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
									</DATA_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.redefined")\n&&\ncheckElementsByKey ("redefining-components", contextElement.id)'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Redefined:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<SS_CALL_CTRL>
						FMT={
							text.style='cs8';
						}
						SS_NAME='Redefining Components'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.used") &&\ngetIntParam("usageCount") == 0'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Used:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<LABEL>
						FMT={
							text.style='cs8';
						}
						TEXT='never'
					</LABEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.used") &&\ngetIntParam("usageCount") > 0'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<LABEL>
						FMT={
							text.style='cs7';
						}
						TEXT='Used:'
					</LABEL>
					<DELIMITER>
						FMT={
							text.style='cs1';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='215.3';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='at'
									</LABEL>
									<DATA_CTRL>
										FORMULA='getIntParam("usageCount")'
									</DATA_CTRL>
									<LABEL>
										COND='getIntParam("usageCount") == 1'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"usage-locations"';
											}
										</DOC_HLINK>
										TEXT='location'
									</LABEL>
									<LABEL>
										COND='getIntParam("usageCount") > 1'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"usage-locations"';
											}
										</DOC_HLINK>
										TEXT='locations'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
		}
		TARGET_ET='<ANY>'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("redefining-components", contextElement.id)'
		SS_NAME='Redefining Components'
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='space';
						}
						<CTRLS>
							<LABEL>
								TEXT='with'
							</LABEL>
							<DATA_CTRL>
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
								FORMULA='toXMLName (getStringParam("nsURI"), getAttrStringValue("name"))'
							</DATA_CTRL>
							<LABEL>
								TEXT='in'
							</LABEL>
							<DATA_CTRL>
								<DOC_HLINK>
									HKEYS={
										'getXMLDocument().id';
										'"detail"';
									}
								</DOC_HLINK>
								FORMULA='getXMLDocument().getAttrStringValue("xmlName")'
							</DATA_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
</STOCK_SECTIONS>
CHECKSUM='UN3P9hQnCH8fpc3XqEJ12raFqLgF403+uRhfXbLXOuY'
</DOCFLEX_TEMPLATE>