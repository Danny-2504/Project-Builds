import axios from "axios";
import { BASE_API_URL } from "../common/constant";

const API_URL = BASE_API_URL + "/api/auth"

class userService {
    register(user) {
        return axios.post(API_URL + "/signup", user);
    }

    login(user) {
        return axios.post(API_URL + "/signin", user);
    }

}

export default new userService();