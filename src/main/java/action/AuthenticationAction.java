package action;

import com.opensymphony.xwork2.ActionSupport;

import entity.Users;

public class AuthenticationAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Users usersBean;
	private String userName;
	private String passWord;

	public String execute() throws Exception {
		if (usersBean.getUsername().equals("duongnd") && usersBean.getPassword().equals("123")) {
			return SUCCESS;
		} else {
			addFieldError("usersBean.username", "Tài khoản hoặc mật khẩu không chính xác!");
			return INPUT;
		}
	}
	



	public void validate() {
		if (usersBean.getUsername().length() == 0) {
			addFieldError("usersBean.username", "Vui lòng nhập tài khoản!");
		}

		if (usersBean.getPassword().length() == 0) {
			addFieldError("usersBean.password", "Vui lòng nhập mật khẩu!");
		}
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}



	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}



	/**
	 * @return the passWord
	 */
	public String getPassWord() {
		return passWord;
	}



	/**
	 * @param passWord the passWord to set
	 */
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}




	/**
	 * @return the usersBean
	 */
	public Users getUsersBean() {
		return usersBean;
	}




	/**
	 * @param usersBean the usersBean to set
	 */
	public void setUsersBean(Users usersBean) {
		this.usersBean = usersBean;
	}

	
}
