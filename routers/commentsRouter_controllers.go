package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:AtributoUbicacionController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ContactoEnteController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:EnteController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:IdentificacionController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoContactoController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoEnteController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoIdentificacionController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:TipoRelacionUbicacionEnteController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:UbicacionEnteController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/ente_crud/controllers:ValorAtributoUbicacionController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

}
