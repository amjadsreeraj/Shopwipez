using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Shopwipez.Startup))]
namespace Shopwipez
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
