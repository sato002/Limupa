using Base.DL.DbAccess;
using Base.DL.IRepository;
using Base.Entity.MappedEntities;
using Base.Entity.ResponseModels;
using Base.Entity.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyWarehouse.Controllers
{
    public class OrderController : BaseController
    {
        readonly IUnitOfWork _uow;
        public OrderController(IUnitOfWork uow)
        {
            _uow = uow;
        }

        // GET: ProductCategory
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetAll()
        {
            var response = new MainResponse<List<OrderViewModel>>();

            try
            {
                response.Data = _uow.OrderRepository.GetViewModels();
            }
            catch (Exception ex)
            {
                HandleException(response, ex);
            }

            return Json(response);
        }

        public ActionResult Detail(string id)
        {
            //var order = _uow.OrderRepository.GetDetail(id);
            //return View(order);

            return View();
        }

        [HttpPost]
        public ActionResult Update(ProductCategory productCategory)
        {
            var response = new MainResponse<int>();

            try
            {

                _uow.ProductCategoryRepository.Update(productCategory);
                response.Data = _uow.SaveChanges();
            }
            catch (Exception ex)
            {
                HandleException(response, ex);
            }

            return Json(response);
        }
    }
}