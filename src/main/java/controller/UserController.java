package controller;

import connecMySQL.UserDAO;
import model.Login;
import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    // Lớp com.codegym.controller.UserController có phương thức home() trả về view home kèm theo một người dùng mặc định.
    private UserDAO UserDao;

    @GetMapping("/home")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("home", "login", new Login());
        return modelAndView;
    }

    // Phương thức login() nhận vào một model Login và thực hiện việc kiểm tra thông qua UserDao.
    // Nếu đăng nhập thành công thì trả về view user kèm theo đối tượng User.
    // Nếu đăng nhập thất bại thì trả về view error.
    @PostMapping("/login")
    public ModelAndView login(@ModelAttribute("login") Login login) {
        User user = UserDao.checkLogin(login);
        if (user == null) {
            ModelAndView modelAndView = new ModelAndView("error");
            return modelAndView;
        } else {
            ModelAndView modelAndView = new ModelAndView("user");
            modelAndView.addObject("user", user);
            return modelAndView;
        }
    }
}
