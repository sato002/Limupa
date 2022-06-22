using Base.DL.DbAccess;
using Base.DL.IRepository;
using Base.DL.Repository;
using System.Web.Mvc;
using Unity;
using Unity.Mvc5;

namespace MyWarehouse
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            // register all your components with the container here
            // it is NOT necessary to register your controllers

            // e.g. container.RegisterType<ITestService, TestService>();
            container.RegisterType<IProductCategoryRepository, ProductCategoryRepository>();

            container.RegisterType<IApplicationDbContext, MainContext>();
            container.RegisterType<IUnitOfWork, UnitOfWork>();

            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}