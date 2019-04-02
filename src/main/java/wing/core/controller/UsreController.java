package wing.core.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import wing.core.common.dao.entity.User;
import wing.core.service.UserService;

@RestController
@RequestMapping("/user")
public class UsreController {
    @Autowired
    private UserService userService;

    @RequestMapping("/1")
    @ResponseBody
    public void add(){
        User user = new User();
        user.setUsername("xiaoxx111");
        user.setName("小星星111");
        user.setPassword("2222221");
        user.setPhone("13890907676");
        userService.insertUser(user);
    }
}
