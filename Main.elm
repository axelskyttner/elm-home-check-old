import Html exposing (Html, beginnerProgram, text, div, input, label, fieldset, h2)
import Html.Attributes exposing (style, type_)



main = 
  beginnerProgram { model = model, update = update, view = view}




type alias Model = 
  { spis : Bool
  , lampor : Bool
}




model : Model
model = 
  Model True True


type Msg
  = SayHello

update : Msg -> Model -> Model
update msg model = 
  model

view : Model -> Html Msg
view model = 
  div [] [
    h2 [] [text "Turn off before you leave" ],
    fieldset []
    [ 
      checkbox "spis"
    , checkbox "kaffekokare"
    , checkbox "lampor"

    ]
  ]

checkbox : String -> Html msg
checkbox name =
  label 
  [ style [("padding", "20px")] 
  ]
  [input [type_ "checkbox"  ] []
  , text name
  ]
