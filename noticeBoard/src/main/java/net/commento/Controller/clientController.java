package net.commento.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import net.commento.mapper.clientMapper;

@Controller
public class ClientController {

    @Autowired clientMapper clientMapper;

    @GetMapping("client/list")
    public String list(Model model) {
        model.addAttribute("clients", ClientMapper.findAll());
        return "client/list";
    }

}
