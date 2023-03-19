package coms.HappyNewHeels.validatator;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidator{

  private static Pattern pattern;
  private static Matcher matcher;

  private static final String EMAIL_PATTERN = 
               "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

  public EmailValidator(){
      pattern = Pattern.compile(EMAIL_PATTERN);
  }

  /**
   * Validate  with regular expression
   * @param email for validation
   * @return true valid email, false invalid email
   */
  public static boolean isValid(final String email){
	  pattern = Pattern.compile(EMAIL_PATTERN);
      matcher = pattern.matcher(email);
      return matcher.matches();

  }
}
