import axios from "axios";
import { BASE_API_URL } from "../common/constant";
import { AuthHeader } from "./auth.header";

const API_URL = BASE_API_URL + "/api/book";

class BookService {



    saveBook(book) {
        return axios.post(API_URL + "/add", book,{ headers: AuthHeader() });
    }

    uploadProductImage(image, bookId) {
        let formData = new FormData();
        formData.append('imageFile', image);
        console.log('in upload img ' + formData + ' ' + bookId);
        return axios.post(API_URL+"/"+bookId+"/image", formData, {
            headers: AuthHeader(),
          })
       //   .then((response) => response.data);
      }
    getAllBook() {
        return axios.get(API_URL + "/allbooks", { headers: AuthHeader() });
    }

    getAllBookByPag(pg) {
        return axios.get(API_URL + "/pages?pageNo="+pg);
    }

    getBookById(id) {
        return axios.get(API_URL + "/" + id);
    }

    // updateBook(b,imgFile) {
    //     return axios.post(API_URL + "/update?id="+b.id+"&bookName="+b.bookName+"&description="+b.description+"&author="+b.author+"&category="+b.category, imgFile ,{ headers : { 
    //         'Content-Type' : 'application/json'
    //     }}  );
    // }

    updateBook(b) {
        return axios.put(API_URL +"/update/"+b.id,b,{ headers: AuthHeader() });
    }

    deleteBook(id) {
        return axios.delete(API_URL + "/delete/" + id,{ headers: AuthHeader() });
    }

    countDetails() {
        return axios.get(API_URL + "/getBookCount",{ headers: AuthHeader() });
    }

    getAllUser() {
        return axios.get(API_URL+"/getUser",{ headers: AuthHeader() });
    }

    updateProfile(user) {
        return axios.put(BASE_API_URL + "/api/user/update", user, { headers: AuthHeader() });
    }

    searchBook(ch) {
        return axios.get(API_URL + "/search?ch=" + ch);
    }

    getAllCategories(){
        return axios.get(API_URL + "/categories");
    }

    getReviewsByBooks(id){
        return axios.get(API_URL+"/reviews/"+id)
    }

}

export default new BookService();