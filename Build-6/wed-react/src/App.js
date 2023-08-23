import "react-toastify/dist/ReactToastify.css";
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import { Login } from './pages/Login';
import { Signup } from './pages/Signup';
import { Navbar } from './component/Navbar/Navbar';
import { Home } from './pages/Home';
import { Books } from './pages/Books';
import { ViewBook } from './pages/ViewBook';
import { Cart } from './pages/user/Cart';


// import { AdminNavbar } from './component/Admin-Navbar/admin-navbar';
// import { AddBook } from './pages/admin/AddBook';
import { MainPage } from './component/Admin-Navbar/MainPage';
import EditProfile from './pages/user/EditProfile';
import ViewProfile from './pages/user/ViewProfile';

 import OrderSuccess from './pages/user/OrderSuccess';
 import { CardPayment } from './pages/user/CardPayment';
import { AuthGuard } from './guard/auth.guard';
// import { NotFound } from './pages/NotFound';
// import { UnAuthorized } from './pages/UnAuthorized';
 import Orders from './pages/user/Orders';

function App() {
  return (

    <BrowserRouter>
    <Navbar />
<Routes>

<Route path='/login' element={<Login />}></Route> 

<Route path='/signup' element={<Signup />}></Route>
<Route path='/home' element={<Home />}></Route>
<Route path='/cart' element={<Cart />}></Route>
<Route path='/books' element={<Books />}></Route>
<Route path='/orders' element={<Orders />}></Route>
<Route path='/cardPayment/:pr' element={<CardPayment />}></Route>
<Route path='/orderSucc' element={<OrderSuccess />}></Route>
<Route path='/viewBook/:id' element={<ViewBook />}></Route>
<Route path='/editProfile' element={<EditProfile />}></Route>
        <Route path='/viewProfile' element={<ViewProfile />}></Route>
<Route path='/admin/*' element={
          <AuthGuard roles={['ROLE_ADMIN']}>
            <MainPage />
          </AuthGuard>
        }>
        </Route>
</Routes>
      {/* 
      <Routes>

        <Route path='/' element={<Home />}></Route>
       
       





        <Route path="*" element={<NotFound />} />
        <Route path="401" element={<UnAuthorized />} />

      </Routes> */}



    </BrowserRouter>

  );
}

export default App;
