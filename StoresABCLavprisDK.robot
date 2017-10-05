<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">6.5</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">Store</property>
      </property>
      <property name="chainID" class="String">16</property>
      <property name="email" class="String">info@abc-lavpris.dk</property>
      <property name="website" class="String">http://www.abc-lavpris.dk</property>
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
            <property name="url" class="String">http://www.abc-lavpris.dk/butikker</property>
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
        <property name="name" class="String">For Each Tag Path</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.NodePathIterator2StateProcessor">
          <property name="nodePath" class="String">*.a</property>
          <property name="firstIndex" class="Integer">8</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table.*.table.*.div</property>
            <property name="attributeName" class="String">style</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">background-image:url(template/abc-lavpris/images/menuBottom.jpg); background-position:center bottom; background-repeat:no-repeat;padding:10px;padding-bottom:20px;border-right:0px solid #444; border-bottom:0px solid #444;background-color:#FFF; color:#000; text-align: left;</property>
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
        <property name="name" class="String">Click</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.DoClick2StateProcessor">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
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
        <property name="branchingMode" idref="2"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">2</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="5">
        <property name="name" class="String">Extract name</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;h1&gt;(.*?)&lt;/h1&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"ABC Lavpris " + INPUT</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.name</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table.*.table</property>
            <property name="attributeName" class="String">style</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">WIDTH: 570px; HEIGHT: 19px</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="2"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">3</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="6">
        <property name="name" class="String">Return Object</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.ModelDone" serializationversion="0">
          <property name="modelObject" class="kapow.robot.plugin.common.support.ModelName">
            <property name="name" class="String">Store</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="2"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">4</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="7">
        <property name="name" class="String">Extract streetName</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;/h1&gt;.*?&gt;(.*?)( \d+.*?)?&lt;br&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.streetName</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table.*.table</property>
            <property name="attributeName" class="String">style</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">WIDTH: 570px; HEIGHT: 19px</property>
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
        <property name="id" class="Integer">6</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="8">
        <property name="name" class="String">Extract streetBuildingIdentifier</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;/h1&gt;.*?&gt;(.*?)( \d+.*?)?&lt;br&gt;.*</property>
              <property name="replaceExp" class="String">$2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.streetBuildingIdentifier</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table.*.table</property>
            <property name="attributeName" class="String">style</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">WIDTH: 570px; HEIGHT: 19px</property>
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
        <property name="id" class="Integer">7</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="9">
        <property name="name" class="String">Extract postCodeIdentifier</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;br&gt;\s+.*?(\d{4}) (.*?)&lt;br&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.postCodeIdentifier</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table.*.table</property>
            <property name="attributeName" class="String">style</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">WIDTH: 570px; HEIGHT: 19px</property>
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
        <property name="id" class="Integer">8</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="10">
        <property name="name" class="String">Extract districtName</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;br&gt;\s+.*?(\d{4}) (.*?)&lt;br&gt;.*</property>
              <property name="replaceExp" class="String">$2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.districtName</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table.*.table</property>
            <property name="attributeName" class="String">style</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">WIDTH: 570px; HEIGHT: 19px</property>
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
        <property name="id" class="Integer">9</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="11">
        <property name="name" class="String">Extract telephone</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;br&gt;\s+.*?Tlf\.(.*?)&lt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
            <element class="kapow.robot.plugin.common.stringprocessor.SpaceRemover">
              <property name="removeSpaces" class="Boolean">true</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.telephone</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.table.*.table.*.table.*.table</property>
            <property name="attributeName" class="String">style</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">WIDTH: 570px; HEIGHT: 19px</property>
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
        <property name="id" class="Integer">10</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
    </transitions>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
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
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="10"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="11"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="startTransition" idref="0"/>
  <property name="nextTransitionId" class="Integer">11</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
</object>
