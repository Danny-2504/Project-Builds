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

const ViewBook = () => {
  const [rating, setRating] = useState(0)

  const [reviews,setReviews]=useState([])
  const [cart, setCart] = useState({
    id:"",
    bookId: "",
    userId: "",
    quantity: "",
  });

  

  const [book, setBook] = useState(
    new Book("", "", "", "", "", "", "", "", "", "", "")
  );

  const [cartStatus, setCartStatus] = useState(false);

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
      let reviews= await bookService.getReviewsByBooks(id);
      console.log(cart)
      setReviews(reviews.data)
      console.log("reviews")
      console.log(reviews)
      let st = await cartService.checkCart(cart);
      // console.log(st.data);
      setCartStatus(st.data);

      
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
          cart.id=res.data.id
          setCart()
          notify();
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
        <div className="col-md-12 paint-card p-5">
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
                Price :&nbsp; &nbsp; &nbsp;
                <i className="fas fa-rupee-sign"></i>
                &nbsp; {book.price}
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

              {!cartStatus && (
                <a
                  onClick={() => addToCart(book)}
                  className="btn btn-danger col-md-12"
                >
                  Add To Cart
                </a>
              )}

              {cartStatus && (
                <a className="btn btn-danger col-md-12 disabled">
                  Added To Cart
                </a>
              )}
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
