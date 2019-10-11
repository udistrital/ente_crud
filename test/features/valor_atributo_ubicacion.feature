Feature: Validate API responses
  ENTE_CRUD
  probe JSON reponses


Scenario Outline: To probe route code response  /valor_atributo_ubicacion
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"      

  Examples: 
  |method|route                       |bodyreq               |codres       |
  |GET   |/v1/valor_atributo_ubicacion|./files/req/Vacio.json|200 OK       |
  |GET   |/v1/valor_atributo_ubicacio |./files/req/Vacio.json|404 Not Found|
  |POST  |/v1/valor_atributo_ubicacio |./files/req/Vacio.json|404 Not Found|
  |PUT   |/v1/valor_atributo_ubicacio |./files/req/Vacio.json|404 Not Found|
  |DELETE|/v1/valor_atributo_ubicacio |./files/req/Vacio.json|404 Not Found|


Scenario Outline: To probe response route /valor_atributo_ubicacion       
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"      
  And the response should match json "<bodyres>"

  Examples:
  |method|route                       |bodyreq               |codres         |bodyres                |
  |GET   |/v1/valor_atributo_ubicacion|./files/req/Vacio.json|200 OK         |./files/res10/Vok1.json |
  |POST  |/v1/valor_atributo_ubicacion|./files/req/Vacio.json|400 Bad Request|./files/res10/Ierr1.json|
