// WebDSL library for Material Design Lite components http://www.getmdl.io/
module mdl


section head

template mdlHead( primaryColor: String, accentColor: String ){
  head{
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" href = "https://storage.googleapis.com/code.getmdl.io/1.0.0/material." + primaryColor + "-" + accentColor + ".min.css">
    <script src = "https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
    <link rel = "stylesheet" href = "https://fonts.googleapis.com/icon?family=Material+Icons">
  }
}


section grid

htmlwrapper{
  grid div[ class = "mdl-grid" ]
}

template cell( i: Int ){
  div[ class = "mdl-cell mdl-cell--"+i+"-col", all attributes ]{ elements }
}


section tabs

template tabs( active: String, elems: [header: String, content: TemplateElements] ){
  <div class = "mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
    <div class = "mdl-tabs__tab-bar">
      for( e in elems ){
        <a href = "#" + e.header + "-panel" class = "mdl-tabs__tab" + (if( e.header == active ) " is-active" else "")> output( e.header ) </a>
      }
    </div>
    for( e in elems ){
      <div id = e.header + "-panel" class = "mdl-tabs__panel" + (if( e.header == active ) " is-active" else "")>
        e.content
      </div>
    }
  </div>
}


section input

derivetemplate labelinput Type {
  template input( label: String, s: ref Type ){
    <div class = "mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
      input( s )[ class = "mdl-textfield__input", id = id ]
      <label class = "mdl-textfield__label" for = id> output( label ) </label>
    </div>
  }
}

derive labelinput String
derive labelinput Email
derive labelinput Secret
derive labelinput WikiText
derive labelinput Text
derive labelinput Int
derive labelinput Float
derive labelinput Long

template input( label: String, b: ref Bool ){
  <label class = "mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for = id>
    input( b )[ id = id, class = "mdl-checkbox__input" ]
    <span class = "mdl-checkbox__label"> output( label ) </span>
  </label>
}

template switch( label: String, b: ref Bool ){
  <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" for = id>
    input( b )[ id = id, class = "mdl-switch__input" ]
    <span class = "mdl-switch__label"> output( label ) </span>
  </label>
}

template iconToggle( icon: String, b: ref Bool ){
  <label class = "mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect" for = id>
    input( b )[ id = id, class = "mdl-icon-toggle__input" ]
    <span class = "mdl-icon-toggle__label material-icons"> output( icon ) </span>
  </label>
}

override attributes radio{
  class = "mdl-radio mdl-js-radio mdl-js-ripple-effect"
}

override template radio( ent: ref Entity ){
  radio( ent, ent.getAllowed() )[ class = "mdl-radio__button", all attributes ]{ elements }
}

override template outputLabel( e: Entity ){
 <span class = "mdl-radio__label">
   output( e.name )
 </span>
}


section buttons

override attributes submit{
  class = "mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"
}

attributes floatingActionButtonColored{
  class = "mdl-button mdl-js-button mdl-button--fab mdl-button--colored"
  ignore submit attributes
}

attributes floatingActionButtonColoredRipple{
  class = "mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored"
  ignore submit attributes
}

attributes floatingActionButton{
  class = "mdl-button mdl-js-button mdl-button--fab"
  ignore submit attributes
}

attributes floatingActionButtonRipple{
  class = "mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect"
  ignore submit attributes
}

attributes floatingActionButtonDisabled{
  class = "mdl-button mdl-js-button mdl-button--fab"
  disabled = ""
  ignore submit attributes
}

attributes raisedButton{
  class = "mdl-button mdl-js-button mdl-button--raised"
  ignore submit attributes
}

attributes raisedButtonRipple{
  class = "mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect"
  ignore submit attributes
}

attributes raisedButtonDisabled{
  class = "mdl-button mdl-js-button mdl-button--raised"
  disabled = ""
  ignore submit attributes
}


section icons

template iconAdd(){
  <i class = "material-icons"> "add" </i>
}
