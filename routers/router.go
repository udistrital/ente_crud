// @APIVersion 1.0.0
// @Title beego Test API
// @Description beego has a very cool tools to autogenerate documents for your API
// @Contact astaxie@gmail.com
// @TermsOfServiceUrl http://beego.me/
// @License Apache 2.0
// @LicenseUrl http://www.apache.org/licenses/LICENSE-2.0.html
package routers

import (
	"github.com/udistrital/personas_crud/controllers"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/v1",

		beego.NSNamespace("/tipo_ente",
			beego.NSInclude(
				&controllers.TipoEnteController{},
			),
		),

		beego.NSNamespace("/contacto_ente",
			beego.NSInclude(
				&controllers.ContactoEnteController{},
			),
		),

		beego.NSNamespace("/identificacion",
			beego.NSInclude(
				&controllers.IdentificacionController{},
			),
		),

		beego.NSNamespace("/tipo_identificacion",
			beego.NSInclude(
				&controllers.TipoIdentificacionController{},
			),
		),

		beego.NSNamespace("/tipo_contacto",
			beego.NSInclude(
				&controllers.TipoContactoController{},
			),
		),

		beego.NSNamespace("/ente",
			beego.NSInclude(
				&controllers.EnteController{},
			),
		),

		beego.NSNamespace("/ubicacion_ente",
			beego.NSInclude(
				&controllers.UbicacionEnteController{},
			),
		),

		beego.NSNamespace("/tipo_relacion_ubicacion_ente",
			beego.NSInclude(
				&controllers.TipoRelacionUbicacionEnteController{},
			),
		),

		beego.NSNamespace("/valor_atributo_ubicacion",
			beego.NSInclude(
				&controllers.ValorAtributoUbicacionController{},
			),
		),

		beego.NSNamespace("/atributo_ubicacion",
			beego.NSInclude(
				&controllers.AtributoUbicacionController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
