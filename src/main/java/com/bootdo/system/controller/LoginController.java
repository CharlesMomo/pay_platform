package com.bootdo.system.controller;

import com.bootdo.common.annotation.Log;
import com.bootdo.common.config.BootdoConfig;
import com.bootdo.common.controller.BaseController;
import com.bootdo.common.domain.FileDO;
import com.bootdo.common.domain.Tree;
import com.bootdo.common.service.FileService;
import com.bootdo.common.utils.MD5Utils;
import com.bootdo.common.utils.R;
import com.bootdo.common.utils.RandomValidateCodeUtil;
import com.bootdo.common.utils.ShiroUtils;
import com.bootdo.common.utils.StringUtils;
import com.bootdo.system.domain.MenuDO;
import com.bootdo.system.domain.RoleDO;
import com.bootdo.system.domain.UserDO;
import com.bootdo.system.service.MenuService;
import com.bootdo.system.service.RoleService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class LoginController extends BaseController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    MenuService menuService;
    FileService fileService;
    BootdoConfig bootdoConfig;
    private RoleService roleService;

    @Autowired
    public LoginController(MenuService menuService, FileService fileService, BootdoConfig bootdoConfig, RoleService roleService) {
        this.menuService = menuService;
        this.fileService = fileService;
        this.bootdoConfig = bootdoConfig;
        this.roleService = roleService;
    }

    @GetMapping({"/", ""})
    String welcome(Model model) {

        return "redirect:/blog";
    }

    @Log("请求访问主页")
    @GetMapping({"/index"})
    String index(Model model) {
        List<Tree<MenuDO>> menus = menuService.listMenuTree(getUserId());
        model.addAttribute("menus", menus);
        model.addAttribute("name", getUser().getName());
        FileDO fileDO = fileService.get(getUser().getPicId());
        if (fileDO != null && fileDO.getUrl() != null) {
            if (fileService.isExist(fileDO.getUrl())) {
                model.addAttribute("picUrl", fileDO.getUrl());
            } else {
                model.addAttribute("picUrl", "/img/photo_s.jpg");
            }
        } else {
            model.addAttribute("picUrl", "/img/photo_s.jpg");
        }
        model.addAttribute("username", getUser().getUsername());
        return "index_v1";
    }

    @GetMapping("/login")
    String login(Model model) {
        //model.addAttribute("username", bootdoConfig.getUsername());
        //model.addAttribute("password", bootdoConfig.getPassword());
        return "login";
    }

    @Log("登录")
    @PostMapping("/login")
    @ResponseBody
    R ajaxLogin(String username, String password, String verify, HttpServletRequest request) {
        if (bootdoConfig.isVeriCodeNeeded()) {
            try {
                //从session中获取随机数
                String random = (String) request.getSession().getAttribute(RandomValidateCodeUtil.RANDOMCODEKEY);
                if (StringUtils.isBlank(verify)) {
                    return R.error("请输入验证码");
                }
                if (random.equals(verify)) {
                } else {
                    return R.error("请输入正确的验证码");
                }
            } catch (Exception e) {
                logger.error("验证码校验失败", e);
                return R.error("验证码校验失败");
            }
        }
        password = MD5Utils.encrypt(username, password);
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);

            UserDO userDO = (UserDO) subject.getPrincipal();
            final Long currentUserId = userDO.getUserId();
            List<RoleDO> roles = roleService.list(currentUserId);
            if (!CollectionUtils.isEmpty(roles)) {
                final List<Long> roleIdList = roles.stream().filter(e -> e.getRoleId() != null)
                        .map(RoleDO::getRoleId).collect(Collectors.toList());
                userDO.setRoleIds(roleIdList);
            } else {
                logger.warn("当前用户[{}]没有可用角色。", currentUserId);
            }

            return R.ok();
        } catch (AuthenticationException e) {
            return R.error("用户或密码错误");
        }
    }

    @GetMapping("/logout")
    String logout() {
        ShiroUtils.logout();
        return "redirect:/login";
    }

    /**
     * 生成验证码
     */
    @GetMapping(value = "/getVerify")
    public void getVerify(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
            response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expire", 0);
            RandomValidateCodeUtil randomValidateCode = new RandomValidateCodeUtil();
            randomValidateCode.getRandcode(request, response);//输出验证码图片方法
        } catch (Exception e) {
            logger.error("获取验证码失败>>>> ", e);
        }
    }

}
