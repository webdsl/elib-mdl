application test

imports mdl

entity TestInputs{
  i : Int
  s : String
  t : Text
  wt : WikiText
  e : Email
  se : Secret
  b1 : Bool
  b2 : Bool
  b3 : Bool
  ent : TestInputs
}

var globalent := TestInputs{}

page root(){
  mdlHead( "indigo", "pink" )
  form{
    grid{
      cell( 3 ){ input( "string value", globalent.s ) }
      cell( 3 ){ input( "wikitext value", globalent.wt ) }
      cell( 3 ){ input( "text value", globalent.t ) }
      cell( 3 ){ input( "boolean value", globalent.b1 ) }
      cell( 3 ){ switch( "boolean value", globalent.b2 ) }
      cell( 3 ){ iconToggle( "format_bold", globalent.b3 ) }
      cell( 3 ){ radio( globalent.ent ) }
      cell( 3 ){ input( "int", globalent.i ) }
      cell( 3 ){ input( "email", globalent.e ) }
      cell( 3 ){ input( "secret", globalent.se ) }

      cell( 1 ){ submit action{}[ floatingActionButtonColored attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}[ floatingActionButtonColoredRipple attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}[ floatingActionButton attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}[ floatingActionButtonRipple attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}[ floatingActionButtonDisabled attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}[ raisedButton attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}[ raisedButtonRipple attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}[ raisedButtonDisabled attributes ]{ iconAdd } }
      cell( 1 ){ submit action{}{ iconAdd } }
    }
  }
  grid{
    cell( 12 ){
      tabs(
        "tab3",
        [ ("tab1", { <h1> "1" </h1> }),
          ("tab2", { <h1> "2" </h1> }),
          ("tab3", { <h1> "3" </h1> })
        ]
      )
    }
  }
}
