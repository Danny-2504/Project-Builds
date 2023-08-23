import { useRef, useState } from "react";
import { useEffect } from "react";

import wishlistService from "../../service/wishlist.service";
import { ToastContainer, toast } from "react-toastify";
import { BASE_API_URL } from "../../common/constant";
import { Link, useNavigate } from "react-router-dom";
import orderService from "../../service/order.service";
import { useSelector } from "react-redux";
import axios from "axios";
import swal from "sweetalert";

const Wishlist = () => {
  const [user, setUser] = useState({
    id: "",
    name: "",
    email: "",
    password: "",
    mobNo: "",
    address: "",
    city: "",
    state: "",
    pincode: "",
  });

  const remove=(id)=>{
    wishlistService.deleteWishlist(id).then(data=>
        {
            notify();
            init();
        });
  }

  

  const [wishList, setwishList] = useState([]);
  const [totalPrice, setTotalPrice] = useState(0);
  const [tot,setTot]=useState(0)
  const [pymtType, setPymtType] = useState("");
  const navigate = useNavigate();
const loginUser=useSelector((u) => u.user);

  useEffect(() => {
    user.id = loginUser.id;
    user.name = loginUser.name;
    user.email = loginUser.email;
    user.mobNo = loginUser.mobNo;
    user.address = loginUser.address;
    user.city = loginUser.city;
    user.state = loginUser.state;
    user.pincode = loginUser.pincode;
    console.log(user);
    init();
  }, []);

  const init = async () => {
    let wishlistt = await wishlistService.getWishlist(user.id);
    setwishList(wishlistt.data);
  };


  const notify = () =>
    toast.success("Book Removed from wishlist", {
      position: "bottom-center",
      autoClose: 5000,
      hideProgressBar: false,
      closeOnClick: true,
      pauseOnHover: true,
      draggable: true,
      progress: undefined,
    });

  return (
    <div className="container-fluid p-5">
      <div className="row">
        <div className="col-md-8">
          <table className="table ">
            <thead className="text-center bg-light">
              <tr>
                <th scope="col">Image</th>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody className="text-center">

            
              {wishList.map((item) => {
               
{console.log(item)}
                return(
                <tr key={item.id}>
                  <th scope="row">
                    <img
                      src={BASE_API_URL + "/" + item.book.img}
                      width="70px"
                      height="70px"
                    />
                  </th>
                  <td>{item.book.bookName}</td>
                  <td>{item.book.price}</td>
                  <td><button className="btn-primary btn">Add To Cart</button>
                  <button className="btn-danger mx-1 btn" onClick={()=>{
                    remove(item.id)
                  }} >Remove</button></td>


                </tr>
              )})}
            </tbody>
          </table>
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

export default Wishlist;