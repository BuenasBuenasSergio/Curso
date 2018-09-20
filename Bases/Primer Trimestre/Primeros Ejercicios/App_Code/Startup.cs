using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Primeros_Ejercicios.Startup))]
namespace Primeros_Ejercicios
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
