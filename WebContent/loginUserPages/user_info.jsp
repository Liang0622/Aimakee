<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

      <div class="subject"><span>基本信息</span></div>
      <form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
          <table width="98%" align="center"> 
                <tr> 
                  <td class="align_right">出生日期： </td>
                  <td class="align_left">
                  <select name="birthdayYear">
	                  <option value="1950">1950</option>
                  </select>&nbsp;
                  <select name="birthdayMonth">
	                  <option value="1">01</option>	                       
                  </select>&nbsp;
                  <select name="birthdayDay">
	                  <option value="1">01</option>	                                
                  </select> </td>
              </tr>
              <tr>
                <td class="align_right">性　别：</td>
                  <td class="align_left">
                      <span><input type="radio" name="sex" value="0" checked="checked"/>保密</span>
                      <span><input type="radio" name="sex" value="1"/>男</span>
                      <span><input type="radio" name="sex" value="2"/>女</span>
                  </td>
              </tr>
              <tr>
                <td class="align_right">电子邮件地址：</td>
                <td valign="middle" class="align_left">
                  <input name="email" type="text" value="<c:out value="${sessionScope.user.userEmail}" default="" />" size="25" class="inputBg" />
                  <span> *</span>
                </td>
              </tr>	
              <tr>
                <td class="align_right">QQ：</td>
                  <td valign="middle" class="align_left">
                  	<input name="qq" type="text" value="<c:out value="${sessionScope.user.userQQ}" default="" />" class="inputBg" />
                  	<span> *</span></td>
              </tr>
              <tr>
                <td class="align_right">手机：</td>
                  <td valign="middle" class="align_left">
                  <input name="middle" type="text" value="<c:out value="${sessionScope.user.mobilePhone}" default="" />" class="inputBg" />
                  <span> *</span></td>
              </tr>
              <tr>
                <td class="align_right">密码提示问题：</td>
                  <td valign="middle" class="align_left">
                      <select name='sel_question' class="select2" >
                          <option value='0'>请选择密码提示问题</option>
                          <option value="old_address">我儿时居住地的地址？</option>
                          <option value="motto">我的座右铭是？</option>
                          <option value="favorite_movie">我最喜爱的电影？</option>
                          <option value="favorite_song">我最喜爱的歌曲？</option>
                          <option value="favorite_food" >我最喜爱的食物？</option>
                          <option value="interest">我最大的爱好？</option>
                          <option value="favorite_novel">我最喜欢的小说？</option>
                          <option value="favorite_equipe">我最喜欢的运动队？</option>
                      </select>
                  </td>
              </tr>
              <tr>
                <td class="align_right">密码问题答案：</td>
                  <td class="align_left">
                      <input name="passwordAnswer" type="text" value="<c:out value="${sessionScope.user.passwordAnswer}" default="" />" size="25" class="inputBg" />
                      <span> *</span>
                  </td>
              </tr>
              <tr>
                  <td colspan="2" class="td_center">
                      <input name="act" type="hidden" value="act_edit_profile" />
                      <input name="submit" type="submit" value="确认修改" />
                  </td>
              </tr>
          </table>
      </form>
      <form name="formPassword" action="user.php" method="post" onSubmit="">
          <table width="98%" align="center">
              <tr>
                  <td width="32%" class="align_right">原密码：</td>
                  <td class="align_left"><input name="old_password" type="password" size="24"  class="inputBg" /></td>
              </tr>
              <tr>
                  <td class="align_right">新密码：</td>
                  <td class="align_left"><input name="new_password" type="password" size="24"  class="inputBg" /></td>
              </tr>
              <tr>
                  <td class="align_right">确认密码：</td>
                  <td class="align_left"><input name="comfirm_password" type="password" size="24"  class="inputBg" /></td>
              </tr>
              <tr>
                  <td colspan="2" class="td_center td_center1"><input name="act" type="hidden" value="act_edit_password" />
                      <input name="submit" type="submit"  value="确认修改" />
                  </td>
              </tr>
          </table>
      </form>
 