
import { Link, NavLink, Navigate } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import { useEffect, useState } from "react";
import bookService from "../service/book.service";
import { BASE_API_URL } from "../common/constant";
import Carousel from '../component/Carousel/Carousel.jsx'
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';
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
        <div style={{backgroundColor :'#f6f6f6'}}>
            <Carousel />

            {categories.map((category) => {
                return (
                    <div>
                        <div className="container border rounded-4 my-5 bg-white">
                            <h4 className="text-center pt-3" style={{ fontWeight: "bold" }}>{category.categoryName}</h4>
                            <div class="overflow-auto book-main-card">
                              <div className="d-flex ">
                                            {bookss.map((book) => {
                                                if (book.category == category.categoryName)
                                                    return (

                                                <div className="px-5 pb-5 pt-3 d-flex justify-content-center">
                                                        <Card key={book.id} sx={{ width: 300 }}>
                                                            <div className="d-flex justify-content-center">
                                                            <img className="img-fluid" style={{
                                                                height :250,
                                                                width :180
                                                            }} src={BASE_API_URL + "/" + book.img} />
                                                            </div>
                                                            <CardContent>
                                                                <Typography gutterBottom variant="h5" component="div" style={{fontWeight :600, textOverflow :'ellipsis', overflow: "hidden", whiteSpace :'nowrap'}}>
                                                                {book.bookName}
                                                                </Typography>
                                                                <Typography variant="body2" color="text.secondary">
                                                                  {book.description}
                                                                </Typography>
                                                                <div className="d-flex align-items-center justify-content-between">
                                                                <Typography variant="h6" style={{fontWeight:600}}>
                                                                ₹{book.price}
                                                                </Typography>
                                                                <Button size="small" variant="contained" onClick={() => navigate("/viewBook/" + book.id)}>View Details</Button>
                                                                </div>
                                                            </CardContent>
                                                        </Card>
                                                        </div>
                                                        // <td key={book.id}>
                                                        //     <div style={{ height: "530px", width: "250px" }}>
                                                        //         <center>
                                                        //             <table class="table">
                                                        //                 <tbody>
                                                        //                     <tr>
                                                        //                         <center>
                                                        //                             <td>
                                                        //                                 {" "}
                                                        //                                 <div style={{ minHeight: "150px", maxWidth: "50%" }} onClick={() => {
                                                        //                                     navigate("/bookdetails")
                                                        //                                 }}>                                  <img
                                                        //                                         src={BASE_API_URL+"/"+ book.img}
                                                        //                                         alt=""
                                                        //                                         style={{ height: "250px", width: "200px" }}
                                                        //                                     /></div>

                                                        //                             </td>
                                                        //                         </center>

                                                        //                     </tr>
                                                        //                     <tr >
                                                        //                         <td ><center><h4 style={{ height: 50 }}>{book.bookName}</h4></center></td>
                                                        //                     </tr>
                                                        //                     <tr>
                                                        //                         <td> <center><h4>Price:{book.price}</h4></center></td>
                                                        //                     </tr>
                                                        //                     <tr>
                                                        //                         <td> <center> <button className="btn btn-success" onClick={() => {
                                                        //                             navigate("/cart")
                                                        //                         }}>AddToCart</button></center></td>
                                                        //                     </tr>

                                                        //                 </tbody>
                                                        //             </table>

                                                        //             <br />



                                                        //         </center>
                                                        //     </div>
                                                        // </td>
                                                    );
                                            })}
                                           </div>
                            </div>
                            <div className="d-flex justify-content-end mb-3">
                            <Button>More...</Button> 
                            <NavLink to="./"> </NavLink>
                            </div>
                        </div>
                    </div>
                )
            })}

        </div>
    );
};

export { Home };
