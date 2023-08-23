import React from "react";
import { useState } from "react";
import { useEffect } from "react";
import bookService from "../../service/book.service";
import userService from "../../service/user.service";

const Home = () => {
  // const [count, setCount] = useState({
  //   book: "",
  //   category: "",
  //   order: "",
  // });

  const [uCount,setUcount]=useState(0);
  const [bCount,setBcount]=useState(0);
  const [revenue,setRevenue]=useState(0);

  useEffect(() => {
    init();
  }, []); 

  const init = async () => {
   let c = await bookService.countDetails();
   console.log(c);
   setBcount(c.data)

   let u=await userService.userCount();
   setUcount(u.data);

   let r=await userService.getRevenue();
   setRevenue(r.data)

   
  };

  return (
    <div className="row cardx">
      <p class="text-center fs-1">Admin Dashboard</p>
      <div className="row">
      <div class="col-md-3">
        <a class="text-decoration-none bg-custom">
          <div class="card paint-card">
            <div class="card-body text-center">
              <i class="bi bi-cash-coin fa-2x"></i>
              <br />
              <p class="fs-3 text-dark">Revenue</p>
              <p class="fs-3 text-dark">{revenue}</p>
            </div>
          </div>
        </a>
      </div>

      <div class="col-md-3">
        <a class="text-decoration-none bg-custom">
          <div class="card paint-card">
            <div class="card-body text-center">
              <i class="bi bi-coin fa-2x"></i>
              <br />
              <p class="fs-3 text-dark">Profit</p>
              <p class="fs-3 text-dark">{revenue*0.3}</p>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-3">
        <a class="text-decoration-none bg-custom">
          <div class="card paint-card">
            <div class="card-body text-center">
              <i class="bi bi-book fa-2x"></i>
              <br />
              <p class="fs-3 text-dark"> Books</p>
              <p class="fs-3 text-dark">{bCount}</p>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-3">
        <a class="text-decoration-none bg-custom">
          <div class="card paint-card">
            <div class="card-body text-center">
              <i class="bi bi-people fa-2x"></i>
              <br />
              <p class="fs-3 text-dark">Users</p>
              <p class="fs-3 text-dark">{uCount}</p>
            </div>
          </div>
        </a>
      </div>
      </div>
      
    </div>
  );
};

export default Home;