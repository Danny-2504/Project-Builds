import { useEffect } from "react";
import { useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import Book from "../model/Book";
import bookService from "../service/book.service";
import { useDispatch, useSelector } from "react-redux";
import cartService from "../service/cart.service";
import { ToastContainer, toast } from "react-toastify";
import { BASE_API_URL } from "../common/constant";
import { Rating } from "@mui/material";
import wishlistService from "../service/wishlist.service";

const ViewBook = () => {
  const [rating, setRating] = useState(0)

  const [reviews, setReviews] = useState([])
  const [cart, setCart] = useState({
    id: "",
    bookId: "",
    userId: "",
    quantity: "",
  });
  const [wishList, setWishList] = useState({
    id: "",
    bookId: "",
    userId: "",
  });



  const [book, setBook] = useState(
    new Book("", "", "", "", "", "", "", "", "", "", "")
  );

  const [cartStatus, setCartStatus] = useState(false);
  const [wishlistStatus, setwishlistStatus] = useState(false);

  

  const { id } = useParams();
  const user = useSelector((st) => st.user);
  const navigate = useNavigate();

  useEffect(() => {
    init();
    console.log("reviews")
    console.log(reviews)
    console.info("rating", rating)
  }, []);

  const init = async () => {
    try {
      let bk = await bookService.getBookById(id);
      setBook(bk.data);
      setRating(bk.data.avgRating);
      console.log(bk.data)
      cart.bookId = bk.data;
      cart.userId = user;
      // wishList.bookId = bk.data.id;
      // wishList.userId = user.id;
      let review = await bookService.getReviewsByBooks(id);
      console.log(cart)
      setReviews(review.data)
      let stt = await cartService.checkCartBook(user.id, id)
      setCartStatus(stt.data);
      let wishlistStatuss = await wishlistService.checkWishlist(user.id, id)
      console.log("wishlist", wishlistStatuss.data)
      setwishlistStatus(wishlistStatuss.data);

    } catch (error) {
      console.log(error);
    }
  };

  const notify = () =>
    toast.success("Added to Cart", {
      position: "bottom-center",
      autoClose: 5000,
      hideProgressBar: false,
      closeOnClick: true,
      pauseOnHover: true,
      draggable: true,
      progress: undefined,
    });

    const WishNotify = () =>
    toast.success("Added to Wishlist", {
      position: "bottom-center",
      autoClose: 5000,
      hideProgressBar: false,
      closeOnClick: true,
      pauseOnHover: true,
      draggable: true,
      progress: undefined,
    });

  const addToCart = (b) => {
    if (!user) {
      navigate("/login");
    } else {
      cart.bookId = b.id;
      cart.userId = user.id;
      cart.quantity = 1;

      cartService
        .addCart(cart)
        .then((res) => {
          console.log(res.data)
          cart.id = res.data.id
          setCart()
          notify();
          init();
        })
        .catch((error) => {
          console.log(error);
        });
    }
  };

  const addToWishlist = (b) => {
    if (!user) {
      navigate("/login");
    } else {
      wishList.bookId = b.id;
      wishList.userId = user.id;
      console.log("wishList", wishList)

      wishlistService
        .addWishlist (wishList)
        .then((res) => {
          console.log(res.data)
          wishList.id = res.data.id
          WishNotify();
          init();
        })
        .catch((error) => {
          console.log(error);
        });
    }
  };
  

  return (
    <div className="container p-3">
      <div className="row">
        <p className="fs-3 text-center">Book Details</p>
        <div className="col-md-12 paint-card p-5 ">
          <div className="row">
            <div className="col-md-6 text-end">
              <img
                alt=""
                src={BASE_API_URL + "/" + book.img}
                width="330px"
                height="400px"
              />
            </div>

            <div className="col-md-6">
              <p className="fs-3">{book.bookName}</p>
              {/* <p>
                {}
              </p> */}
              <Rating name="read-only" value={rating} readOnly precision={0.1} />
              <p>
                <span className="fw-bold">Description : </span>
                <br />
                {book.description}
              </p>
              <p>
                <span className="fw-bold"> Book Deatils: </span> <br />
                ISBN NO : {book.isbnNo} <br /> Author : {book.author} <br />
                Category : {book.category}
              </p>
              <p className="fs-5 fw-bold">
                Price :&nbsp; 
                {/* <i className="fas fa-rupee-sign"></i> */}
                &nbsp; ₹ {book.price}
              </p>

              <div className="row">
                <div className="col-md-4 text-danger text-center p-2">
                  <i className="fas fa-money-bill-wave fa-2x"></i>
                  <p>Cash On Delivery</p>
                </div>
                <div className="col-md-4 text-danger text-center p-2">
                  <i className="fas fa-undo-alt fa-2x"></i>
                  <p>Return Available</p>
                </div>
                <div className="col-md-4 text-danger text-center p-2">
                  <i className="fas fa-truck-moving fa-2x"></i>
                  <p>Free Shipping</p>
                </div>
              </div>

              <div className="d-flex justify-content-between align-items-center">

              {!cartStatus && (
                <a
                  onClick={() => addToCart(book)}
                  className="btn btn-danger col-md-5"
                >
                  Add To Cart
                </a>
              )}

              {cartStatus && (
                <a className="btn btn-danger col-md-5 disabled">
                  Added To Cart
                </a>
              )}
                            
              {!wishlistStatus && (
                <a
                  onClick={() => addToWishlist(book)}
                  className="btn btn-danger col-md-5"
                >
                  Add To Wishlist
                </a>
              )}

              {wishlistStatus && (
                <a className="btn btn-danger col-md-5 disabled">
                  Added To Wishlist
                </a>
              )}

               </div>
            </div>
          </div>
          <div className="my-10">
            <br />
          <div className="container card py-10">
            <br />
          {reviews.map((r) => {
            console.log(r)
            return (
              // <div>
              //   <div className="d-flex   ">
              //     <p className="fs-3">{r.custName} </p>
              //     <div><h4>{r.date}</h4></div>
              //     </div>

              //   <p> {r.content}</p>
              //   </div>
              <div className="card paint-card">
                <div className="card-header"> 
                <p className="card-title fs-5">{r.custName} &nbsp;&nbsp;&nbsp;&nbsp;{r.date}</p>
                <Rating name="read-only"  value={r.rating} readOnly precision={0.1} />
                </div>
                <div className="card-body">

                  <p className="card-text">
                    {r.content}
                  </p>

                </div>
              </div>

            )
          })}
        </div>
          </div>
          
        </div>

        
      </div>
      <ToastContainer
        position="bottom-center"
        autoClose={5000}
        hideProgressBar={false}
        newestOnTop={false}
        closeOnClick
        rtl={false}
        pauseOnFocusLoss
        draggable
        pauseOnHover
      />
    </div>
  );
};

export { ViewBook };