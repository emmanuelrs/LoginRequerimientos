using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LoginRequerimientosTEC.Startup))]
namespace LoginRequerimientosTEC
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
