<cfcomponent extends="muon.model.Validation"><cfscript>

  _optionList = ["message", "on", "condition"];
  _optionDefaults = ["is not a valid email address", "save", "true"];

  function validateProperty(property) {
    var local = {};
    local.value = evaluate("_model.get#property#()");
    local.regex = '(^[[:alpha:]][\w\.\-]*)[\@]([\w\.\-]*[\.][\w\.\-]*[[:alpha:]]$)))';
    if (not ReFindNoCase(local.regex, local.value)) {
      _model.errors().add(property, _model.muonEvaluate(de(_options.message)));
    }
  }

</cfscript></cfcomponent>
