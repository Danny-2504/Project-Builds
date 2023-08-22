import book1 from "../img/book1.jpg";
import book2 from "../img/book2.jpg";
import book3 from "../img/book3.jpeg";
import java from "../img/java.jpg";
import c from "../img/c.png";
import ml from "../img/ml.png";
import story from "../img/story.jpg";
import { Link, Navigate } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import { useEffect, useState } from "react";
import bookService from "../service/book.service";
import { BASE_API_URL } from "../common/constant";

const Home = () => {

    const navigate = useNavigate();
    const [bookss, setBooks] = useState([]);
    const [categories, setCategories] = useState([]);

    useEffect(() => {
        bookService.getAllCategories()
            .then((res) => {
                setCategories(res.data)
            })

        bookService.getAllBook()
            .then((res) => {
                setBooks(res.data);
                console.log(res.data)
            })




    }, [])





    return (
        <div>
            <div
                id="carouselExampleIndicators"
                class="carousel slide"
                data-bs-ride="/home/hemkant/Desktop/Project/Java Project/Frontend/ebook/src/pages/Home.jsx/home/hemkant/Desktop/Project/Java Project/Frontend/ebook/src/pages/Home.jsxsel"
            >
                <div class="carousel-indicators">
                    <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="0"
                        class="active"
                        aria-current="true"
                        aria-label="Slide 1"
                    ></button>
                    <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="1"
                        aria-label="Slide 2"
                    ></button>
                    <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="2"
                        aria-label="Slide 3"
                    ></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src={book2} class="d-block w-100" height="350px" alt="..." />
                    </div>
                    <div class="carousel-item">
                        <img src={book3} class="d-block w-100" height="350px" alt="..." />
                    </div>
                    <div class="carousel-item">
                        <img src={book1} class="d-block w-100" height="350px" alt="..." />
                    </div>
                </div>
                <button
                    class="carousel-control-prev"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev"
                >
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button
                    class="carousel-control-next"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next"
                >
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            {categories.map((category) => {
                return (
                    <div >
                        <br />
                        <div className="container" style={{ border: "solid lightgrey 0.5px", borderRadius: "20px", boxShadow: "20px 20px 10px lightgrey" }}>
                            <h4 style={{ fontWeight: "bold" }}>&nbsp;&nbsp;&nbsp;{category.categoryName}</h4>
                            <div class="table-responsive" style={{}}>
                                <table>
                                    <tbody>
                                        <tr>
                                            {bookss.map((book) => {
                                                if (book.category == category.categoryName)
                                                    return (
                                                        <td key={book.id}>
                                                            <div style={{ height: "530px", width: "250px" }}>
                                                                <center>
                                                                    <table class="table">
                                                                        <tbody>
                                                                            <tr>
                                                                                <center>
                                                                                    <td>
                                                                                        {" "}
                                                                                        <div style={{ minHeight: "150px", maxWidth: "50%" }} onClick={() => {
                                                                                            navigate("/bookdetails")
                                                                                        }}>                                  <img
                                                                                                src={BASE_API_URL+"/"+ book.img}
                                                                                                alt=""
                                                                                                style={{ height: "250px", width: "200px" }}
                                                                                            /></div>

                                                                                    </td>
                                                                                </center>

                                                                            </tr>
                                                                            <tr >
                                                                                <td ><center><h4 style={{ height: 50 }}>{book.bookName}</h4></center></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td> <center><h4>Price:{book.price}</h4></center></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td> <center> <button className="btn btn-success" onClick={() => {
                                                                                    navigate("/cart")
                                                                                }}>AddToCart</button></center></td>
                                                                            </tr>

                                                                        </tbody>
                                                                    </table>

                                                                    <br />



                                                                </center>
                                                            </div>
                                                        </td>
                                                    );
                                            })}
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                )
            })}

        </div>
    );
};

export { Home };
