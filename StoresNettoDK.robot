<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">6.5</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">Store</property>
      </property>
      <property name="chainID" class="String">10</property>
      <property name="name" class="String">Netto</property>
      <property name="email" class="String">kundeservice@netto.dk</property>
      <property name="website" class="String">http://www.netto.dk</property>
    </element>
  </property>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects"/>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration"/>
  <property name="httpClientType" class="kapow.util.net.httpclient.HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
  </property>
  <property name="privateHTTPCacheEnabled" class="Boolean">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="kapow.robot.robomaker.robot.TransitionGraph">
    <transitions class="java.util.LinkedList">
      <object class="kapow.robot.robomaker.robot.Transition" id="0">
        <property name="name" class="String">Load Page</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.PageLoader5StateProcessor">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.SpecifiedURLProvider">
            <property name="url" class="String">http://kort.krak.dk/netto2002/input.asp</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandlingMode" class="Integer" id="1">0</property>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode" id="2">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" idref="1"/>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="3">
        <property name="name" class="String">Enter Post Code Identifier</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.EnterText2StateProcessor">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">Store.postCodeIdentifier</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.input</property>
            <property name="attributeName" class="String">name</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">search</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="2"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">1</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="4">
        <property name="name" class="String">Query Database</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.LoopDatabaseQuery">
          <property name="databaseName" class="kapow.util.db.DBName">
            <property name="name" class="String">test</property>
          </property>
          <property name="sQL" class="String">"SELECT postnr FROM postnr WHERE postnr &gt; 8000"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">postnr</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Store.postCodeIdentifier</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">2</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="5">
        <property name="name" class="String">Click</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.DoClick2StateProcessor">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.form.table.*.table.*.b.a</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">button</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer" id="6">3</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="7">
        <property name="name" class="String">For Each Tag Path</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.NodePathIterator2StateProcessor">
          <property name="nodePath" class="String">tbody.tr</property>
          <property name="firstIndex" class="Integer">1</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table</property>
            <property name="attributeName" class="String" id="8">width</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">450</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="6"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">4</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="9">
        <property name="name" class="String">Click</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.DoClick2StateProcessor">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">tr.td.a</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode" id="10">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">6</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="11">
        <property name="name" class="String">Extract streetName</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?butiknr.*?&gt;(.*?)&amp;nbsp;\d+.*?,&amp;nbsp;\d{4}&amp;nbsp;.*?&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.streetName</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">*</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">7</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="12">
        <property name="name" class="String">Extract streetBuildingIdentifier</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?butiknr.*?&gt;.*?&amp;nbsp;(\d+.*?),&amp;nbsp;\d{4}&amp;nbsp;.*?&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.streetBuildingIdentifier</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">*</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">8</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="13">
        <property name="name" class="String">Extract postCodeIdentifier</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?butiknr.*?&gt;.*?&amp;nbsp;\d+.*?,&amp;nbsp;(\d{4})&amp;nbsp;.*?&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.postCodeIdentifier</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">*</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">9</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="14">
        <property name="name" class="String">Extract districtName</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?butiknr.*?&gt;.*?&amp;nbsp;\d+.*?,&amp;nbsp;\d{4}&amp;nbsp;(.*?)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.districtName</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">*</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">10</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="15">
        <property name="name" class="String">Transpose Table</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.TableTransposer3"/>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table</property>
            <property name="attributeName" idref="8"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">535</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="10"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">11</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="16">
        <property name="name" class="String">Extract mondayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;\d+-(\d+)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.mondayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">18</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="17">
        <property name="name" class="String">Extract mondayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;(\d+)-\d+&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.mondayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">19</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="18">
        <property name="name" class="String">Extract tuesdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;(\d+)-\d+&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.tuesdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[1]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">22</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="19">
        <property name="name" class="String">Extract tuesdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;\d+-(\d+)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.tuesdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[1]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">23</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="20">
        <property name="name" class="String">Extract wednesdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;(\d+)-\d+&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.wednesdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[2]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">26</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="21">
        <property name="name" class="String">Extract wednesdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;\d+-(\d+)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.wednesdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[2]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">27</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="22">
        <property name="name" class="String">Extract thursdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;(\d+)-\d+&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.thursdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[3]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">31</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="23">
        <property name="name" class="String">Extract thursdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;\d+-(\d+)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.thursdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[3]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">33</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="24">
        <property name="name" class="String">Extract fridayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;(\d+)-\d+&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.fridayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[4]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">37</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="25">
        <property name="name" class="String">Extract fridayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;\d+-(\d+)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.fridayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[4]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">38</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="26">
        <property name="name" class="String">Extract saturdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;(\d+)-\d+&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.saturdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[5]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">42</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="27">
        <property name="name" class="String">Extract saturdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;\d+-(\d+)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.saturdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[5]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">43</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="28">
        <property name="name" class="String">Extract sundayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;(\d+)-\d+&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.sundayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[6]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">47</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="29">
        <property name="name" class="String">Extract sundayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;\d+-(\d+)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(\d{1})</property>
              <property name="then1" class="String">"0" + $1</property>
              <property name="elseIf2" class="String">(\d{2})</property>
              <property name="then2" class="String">$1</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + replaceText(INPUT,".",":") + ":00:00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.sundayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.table.*.table.*.tr[6]</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">48</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="30">
        <property name="name" class="String">Return Object</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.ModelDone" serializationversion="0">
          <property name="modelObject" class="kapow.robot.plugin.common.support.ModelName">
            <property name="name" class="String">Store</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">49</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
    </transitions>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="4"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="3"/>
        <to idref="5"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="4"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="5"/>
        <to idref="7"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="7"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="15"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="11"/>
        <to idref="12"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="13"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="14"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="15"/>
        <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="16"/>
        <to idref="18"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="17"/>
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="20"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="21"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="22"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="25"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="26"/>
        <to idref="27"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="27"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="29"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="29"/>
        <to idref="30"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="startTransition" idref="0"/>
  <property name="nextTransitionId" class="Integer">50</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
</object>
