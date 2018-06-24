package com.github.bogdanovmn.ncuxywka.web.app.admin;

import com.github.bogdanovmn.ncuxywka.web.app.AbstractVisualController;
import com.github.bogdanovmn.ncuxywka.web.app.HeadMenu;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public abstract class AbstractVisualAdminController extends AbstractVisualController {
	protected HeadMenu.ITEM currentMenuItem() { return HeadMenu.ITEM.ADMIN; }
}
