module Muscles exposing (..)

import Dict exposing (Dict)


names : List String
names =
  [ "biceps"
  , "gastrocnimeous_soleus"
  , "tibialis_anterior"
  ]

type alias MuscleLines = 
  { left : String
  , right : String
  }

type alias MuscleDict = Dict String MuscleLines

muscles : MuscleDict 
muscles = Dict.fromList <|
  [ ( "gastrocnimeous_soleus" 
    , { left = """
          M181.9,571.5h-40c1,48.5,2.1,96.9,3.1,145.4c5.4,0.4,10.6,0.7,15.8,1.1
          C167.9,669.1,174.8,620.3,181.9,571.5z
          """
      , right = """
          M84.3,570.8h40c-1,48.5-2.1,96.9-3.1,145.4c-5.4,0.4-10.6,0.7-15.8,1.1
          C98.3,668.4,91.4,619.6,84.3,570.8z
          """
      }
    )
  , ( "tibialis_anterior"
    , { left = """
          M151.9,581.7h18c-4.1,45.3-8.3,90.4-12.4,135.6c-2.1,0.3-4.1,0.4-6.2,0.7
          C151.5,672.6,151.8,627.1,151.9,581.7z
          """
      , right = """
          M114.3,581h-18c4.1,45.3,8.3,90.4,12.4,135.6c2.1,0.3,4.1,0.4,6.2,0.7
          C114.8,672,114.5,626.4,114.3,581z
          """
      }
    )
  , ( "biceps"
    , { left = """
          M244.4,206.5l2.5,76.1c0,0-8.8,1.8-10,0c-1.3-1.8-3.8-76.1-3.8-76.1H244.4L244.4,206.5z
          """
      , right = """
          M21.8,205.8l-2.5,76.1c0,0,8.8,1.8,10,0c1.3-1.8,3.8-76.1,3.8-76.1L21.8,205.8L21.8,205.8z
          """
      }
    )
  ]

body : String
body = """
  M135.4,2c18.1-0.8,35.2,11,39.9,28.9c0.7,6.4,1.4,12.7,2.1,19.1c1.1,0.3,2.5,0.7,4,1.8
  c4.5,3.4,4.1,9.5,4,11c-0.3,3-1.8,5.7-4.9,11c-4.8,8.5-7.5,9.5-8.8,9.8
  c-2.5,0.6-3.3-0.6-4.9,0c-5.7,2-4.5,17.3-4,25.9c0.6,7.5,0.9,11.3,2.5,14.8
  c3.1,6.5,8.3,10,16.3,15.4c1.7,1.3,7.9,5.4,18.9,10.2c6.4,2.7,12.3,4.7,22.2,8.1
  c3.5,1.1,17.1,6.2,24.9,20.1c5.2,9.5,5.4,18.4,5.1,22.5c0,15-0.1,18.1-0.1,18.1
  c0,6.2-0.4,12.7-1.1,19.5c0.3,5.5,0.7,13.6,1.6,23.2c0.3,4.4,1.7,20.2,4.8,43.3
  c2,15.4,1.8,13.4,3.8,26.3c2,12.7,3.5,26.7,4.2,42c0.7,13.6,0.6,26.3,0,38c0,3.4-0.1,6.9-0.6,10.7
  c-1,7.6-2.5,14.3-4.4,19.8c0,0-10.3,18.1-23.2,15.4c0,0-2.8,0-2.7-3.3l-4.1-1.8
  c0,0-0.9-5.2,2-7.9c2.7-2.7,6.1-4.1,6.1-4.1l4-4.2l1.3-5.8l0.4-9.8l-1.1-3.3l-3.1,2.1l-1.8,5.1
  l-3.4,7.4l-3.7,2.7l-7.5-1.1l1.3-12.2c0,0,8.6-12.9,8.5-13.3c-0.1-0.4-1.4-9.8,3.1-15.6l4.1-4.1
  l-4.2-18l-17.3-37.6l-7.2-39l0.1-22.6l-2.3-14.4c-2,3.7-4.1,8.5-5.8,14c-2,6.9-2.8,13.2-3.1,18.1
  c0.1,12.9,0.9,27.3,2.8,42.9c1.7,12.4,3.8,23.9,6.2,34.4c1.1,11.2,1.6,23.5,1.3,36.8
  c-0.9,30.8-6.2,57.3-12.4,78.4c-6.8,16.3-9.9,30.3-11.5,40.2c-2.1,14-2.1,25.3-2.1,35.4
  c0,12.4,0.7,11.7,1.7,38c0.6,16,0.9,23.2,0,31c-0.7,7.1-1.4,14-2.1,21.1l-7.4,17.8l-8.8,21.9
  l-3.1,10.3l-1.4,23.3l-1.6,4l9.2,12.7l3.3,5.2l8.5,4.5l4,4.5l-0.3,4.4l-5.4,3.1
  c0,0-5.1,2.4-5.7,2.4c-0.6,0-4.8-1.7-4.8-1.7l-9.1-0.1l-6.6,1l-4.9-2l-8.6,0.9c0,0-6.9,0.6-8.6-3.7
  l2.3-15.7l-2.3-19.8c1.6-13.6,3.3-27,4.8-40.4l-1.6-33.4l-3.3-13.9v-17.4l5.1-17.8l0.9-11.6
  c-1.3-7.8-2.5-15.4-3.8-23.2h-5.4c-1.3,7.8-2.5,15.4-3.8,23.2l0.9,11.6l5.1,17.8v17.4l-3.3,13.9
  l-1.6,33.4c1.6,13.4,3.3,26.9,4.8,40.4l-2.3,19.8l2.3,15.7c-1.7,4.2-8.6,3.7-8.6,3.7l-8.6-0.9
  l-4.9,2l-6.6-1l-9.1,0.1c0,0-4.2,1.7-4.8,1.7c-0.6,0-5.7-2.4-5.7-2.4l-5.4-3.1l-0.3-4.4l4-4.5
	l8.5-4.5l3.3-5.2l9.2-12.7l-1.6-4l-1.4-23.3L97.4,686l-8.8-21.9l-7.4-17.8
  c-0.7-7.1-1.4-14-2.1-21.1c-0.9-7.8-0.6-15,0-31c1-26.3,1.7-25.6,1.7-38c0-10,0-21.4-2.1-35.4
  c-1.6-9.9-4.7-23.9-11.5-40.2c-6.2-21.1-11.6-47.5-12.4-78.4c-0.3-13.3,0.1-25.6,1.3-36.8
  c2.4-10.5,4.5-21.9,6.2-34.4c2-15.6,2.7-30,2.8-42.9c-0.3-5-1.1-11.2-3.1-18.1
  c-1.7-5.5-3.8-10.3-5.8-14L54,270.6l0.1,22.6l-7.2,39l-17.3,37.6l-4.2,18l4.1,4.1
  c4.5,5.8,3.3,15.1,3.1,15.6c-0.1,0.4,8.5,13.3,8.5,13.3l1.3,12.2l-7.5,1.1l-3.7-2.7l-3.4-7.4
  l-1.8-5.1l-3.1-2.1l-1.1,3.3l0.4,9.8l1.3,5.8l4,4.2c0,0,3.4,1.4,6.1,4.1c2.8,2.7,2,7.9,2,7.9
  l-4.1,1.8c0.1,3.3-2.7,3.3-2.7,3.3c-12.9,2.7-23.2-15.4-23.2-15.4C3.6,436.1,2,429.5,1,421.8
  c-0.4-3.8-0.6-7.4-0.6-10.7c-0.6-11.7-0.7-24.5,0-38c0.7-15.3,2.3-29.3,4.2-42
  c2-12.9,1.8-10.9,3.8-26.3c3.1-23.1,4.5-38.9,4.8-43.3c0.8-9.6,1.3-17.7,1.6-23.2
  c-0.7-6.8-1.1-13.3-1.1-19.5c0,0-0.1-3.1-0.1-18.1c-0.3-4.1-0.1-13,5.1-22.5
  c7.8-13.9,21.4-19,24.9-20.1c9.9-3.4,15.8-5.4,22.2-8.1c11-4.8,17.3-8.9,19-10.2
  c7.9-5.4,13.2-8.9,16.3-15.4c1.7-3.5,2-7.4,2.5-14.8c0.6-8.6,1.7-23.9-4-25.9
  c-1.7-0.6-2.4,0.6-4.9,0c-1.3-0.3-4-1.3-8.8-9.8c-3.1-5.4-4.7-8.1-4.9-11c-0.1-1.6-0.6-7.6,4-11
  c1.4-1.1,2.8-1.6,4-1.8c0.7-6.4,1.4-12.7,2.1-19.1c4.7-17.8,21.8-29.7,39.9-28.9L135.4,2L135.4,2
  L135.4,2z
  """
