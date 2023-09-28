package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import plume.entities.ApplicationUser;
import plume.repository.UserRepository;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    TokenService tokenService;

    @Autowired
    UserRepository userRepository;

    @Autowired
    PendingResetService pendingResetService;

    public boolean sendVerificationEmail(String to, String verificationToken) {
        try {
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);

            helper.setTo(to);
            helper.setSubject("Account Verification");
            helper.setText(
                    "<!DOCTYPE html>\n" +
                            "<html>\n" +
                            "<head>\n" +
                            "\n" +
                            "  <meta charset=\"utf-8\">\n" +
                            "  <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n" +
                            "  <title>Email Confirmation</title>\n" +
                            "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
                            "  <style type=\"text/css\">\n" +
                            "  /**\n" +
                            "   * Google webfonts. Recommended to include the .woff version for cross-client compatibility.\n" +
                            "   */\n" +
                            "  @media screen {\n" +
                            "    @font-face {\n" +
                            "      font-family: 'Source Sans Pro';\n" +
                            "      font-style: normal;\n" +
                            "      font-weight: 400;\n" +
                            "      src: local('Source Sans Pro Regular'), local('SourceSansPro-Regular'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/ODelI1aHBYDBqgeIAH2zlBM0YzuT7MdOe03otPbuUS0.woff) format('woff');\n" +
                            "    }\n" +
                            "    @font-face {\n" +
                            "      font-family: 'Source Sans Pro';\n" +
                            "      font-style: normal;\n" +
                            "      font-weight: 700;\n" +
                            "      src: local('Source Sans Pro Bold'), local('SourceSansPro-Bold'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/toadOcfmlt9b38dHJxOBGFkQc6VGVFSmCnC_l7QZG60.woff) format('woff');\n" +
                            "    }\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Avoid browser level font resizing.\n" +
                            "   * 1. Windows Mobile\n" +
                            "   * 2. iOS / OSX\n" +
                            "   */\n" +
                            "  body,\n" +
                            "  table,\n" +
                            "  td,\n" +
                            "  a {\n" +
                            "    -ms-text-size-adjust: 100%; /* 1 */\n" +
                            "    -webkit-text-size-adjust: 100%; /* 2 */\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Remove extra space added to tables and cells in Outlook.\n" +
                            "   */\n" +
                            "  table,\n" +
                            "  td {\n" +
                            "    mso-table-rspace: 0pt;\n" +
                            "    mso-table-lspace: 0pt;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Better fluid images in Internet Explorer.\n" +
                            "   */\n" +
                            "  img {\n" +
                            "    -ms-interpolation-mode: bicubic;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Remove blue links for iOS devices.\n" +
                            "   */\n" +
                            "  a[x-apple-data-detectors] {\n" +
                            "    font-family: inherit !important;\n" +
                            "    font-size: inherit !important;\n" +
                            "    font-weight: inherit !important;\n" +
                            "    line-height: inherit !important;\n" +
                            "    color: inherit !important;\n" +
                            "    text-decoration: none !important;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Fix centering issues in Android 4.4.\n" +
                            "   */\n" +
                            "  div[style*=\"margin: 16px 0;\"] {\n" +
                            "    margin: 0 !important;\n" +
                            "  }\n" +
                            "  body {\n" +
                            "    width: 100% !important;\n" +
                            "    height: 100% !important;\n" +
                            "    padding: 0 !important;\n" +
                            "    margin: 0 !important;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Collapse table borders to avoid space between cells.\n" +
                            "   */\n" +
                            "  table {\n" +
                            "    border-collapse: collapse !important;\n" +
                            "  }\n" +
                            "  a {\n" +
                            "    color: #1a82e2;\n" +
                            "  }\n" +
                            "  img {\n" +
                            "    height: auto;\n" +
                            "    line-height: 100%;\n" +
                            "    text-decoration: none;\n" +
                            "    border: 0;\n" +
                            "    outline: none;\n" +
                            "  }\n" +
                            "  </style>\n" +
                            "\n" +
                            "</head>\n" +
                            "<body style=\"background-color: #e9ecef;\">\n" +
                            "\n" +
                            "  <!-- start preheader -->\n" +
                            "  <div class=\"preheader\" style=\"display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;\">\n" +
                            "    A preheader is the short summary text that follows the subject line when an email is viewed in the inbox.\n" +
                            "  </div>\n" +
                            "  <!-- end preheader -->\n" +
                            "\n" +
                            "  <!-- start body -->\n" +
                            "  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n" +
                            "\n" +
                            "    <!-- start logo -->\n" +
                            "    <tr>\n" +
                            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n" +
                            "        <tr>\n" +
                            "        <td align=\"center\" valign=\"top\" width=\"600\">\n" +
                            "        <![endif]-->\n" +
                            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
                            "          <tr>\n" +
                            "            <td align=\"center\" valign=\"top\" style=\"padding: 36px 24px;\">\n" +
                            "              <a href=\"\" target=\"_blank\" style=\"display: inline-block;\">\n" +
                            "                <img src=\"/images/Untitled-design-26_1.png\" alt=\"Logo\" border=\"0\" width=\"48\" style=\"display: block; width: 48px; max-width: 48px; min-width: 48px;\">\n" +
                            "              </a>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "        </table>\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        </td>\n" +
                            "        </tr>\n" +
                            "        </table>\n" +
                            "        <![endif]-->\n" +
                            "      </td>\n" +
                            "    </tr>\n" +
                            "    <!-- end logo -->\n" +
                            "\n" +
                            "    <!-- start hero -->\n" +
                            "    <tr>\n" +
                            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n" +
                            "        <tr>\n" +
                            "        <td align=\"center\" valign=\"top\" width=\"600\">\n" +
                            "        <![endif]-->\n" +
                            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 36px 24px 0; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; border-top: 3px solid #d4dadf;\">\n" +
                            "              <h1 style=\"margin: 0; font-size: 32px; font-weight: 700; letter-spacing: -1px; line-height: 48px;\">Confirm Your Email Address</h1>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "        </table>\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        </td>\n" +
                            "        </tr>\n" +
                            "        </table>\n" +
                            "        <![endif]-->\n" +
                            "      </td>\n" +
                            "    </tr>\n" +
                            "    <!-- end hero -->\n" +
                            "\n" +
                            "    <!-- start copy block -->\n" +
                            "    <tr>\n" +
                            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n" +
                            "        <tr>\n" +
                            "        <td align=\"center\" valign=\"top\" width=\"600\">\n" +
                            "        <![endif]-->\n" +
                            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
                            "\n" +
                            "          <!-- start copy -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px;\">\n" +
                            "              <p style=\"margin: 0;\">Copy the code below to confirm your email address. If you didn't create an account with <a href=\"http://http://64.226.88.119:8080\">Plume</a>, you can safely delete this email.</p>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "          <!-- end copy -->\n" +
                            "\n" +
                            "          <!-- start button -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\">\n" +
                            "              <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n" +
                            "                <tr>\n" +
                            "                  <td align=\"center\" bgcolor=\"#ffffff\" style=\"padding: 12px;\">\n" +
                            "                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n" +
                            "                      <tr>\n" +
                            "                        <td align=\"center\" bgcolor=\"#1a82e2\" style=\"border-radius: 6px;\">\n" +
                            "                          <a target=\"_blank\" style=\"display: inline-block; padding: 16px 36px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; color: #ffffff; text-decoration: none; border-radius: 6px;\">"+verificationToken+"</a>\n" +
                            "                        </td>\n" +
                            "                      </tr>\n" +
                            "                    </table>\n" +
                            "                  </td>\n" +
                            "                </tr>\n" +
                            "              </table>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "          <!-- end button -->\n" +
                            "\n" +
                            "          <!-- start copy -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px;\">\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "          <!-- end copy -->\n" +
                            "\n" +
                            "          <!-- start copy -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px; border-bottom: 3px solid #d4dadf\">\n" +
                            "              <p style=\"margin: 0;\">Cheers,<br> Plume</p>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "          <!-- end copy -->\n" +
                            "</body>\n" +
                            "</html>", true);
            //TODO change http path
            javaMailSender.send(message);
            return true;
        }catch (MailException | MessagingException e) {
            return false;
        }
    }

    public boolean sendResetPasswordEmail(String to) {
        try {
            String verificationToken = tokenService.generateVerificationToken();

            ApplicationUser user = userRepository.getApplicationUserByUsername(to);

            user.setToken(verificationToken);

            userRepository.save(user);

            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);

            helper.setTo(to);
            helper.setSubject("Account Verification");
            helper.setText(
                    "<!DOCTYPE html>\n" +
                            "<html>\n" +
                            "<head>\n" +
                            "\n" +
                            "  <meta charset=\"utf-8\">\n" +
                            "  <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n" +
                            "  <title>Email Confirmation</title>\n" +
                            "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
                            "  <style type=\"text/css\">\n" +
                            "  /**\n" +
                            "   * Google webfonts. Recommended to include the .woff version for cross-client compatibility.\n" +
                            "   */\n" +
                            "  @media screen {\n" +
                            "    @font-face {\n" +
                            "      font-family: 'Source Sans Pro';\n" +
                            "      font-style: normal;\n" +
                            "      font-weight: 400;\n" +
                            "      src: local('Source Sans Pro Regular'), local('SourceSansPro-Regular'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/ODelI1aHBYDBqgeIAH2zlBM0YzuT7MdOe03otPbuUS0.woff) format('woff');\n" +
                            "    }\n" +
                            "    @font-face {\n" +
                            "      font-family: 'Source Sans Pro';\n" +
                            "      font-style: normal;\n" +
                            "      font-weight: 700;\n" +
                            "      src: local('Source Sans Pro Bold'), local('SourceSansPro-Bold'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/toadOcfmlt9b38dHJxOBGFkQc6VGVFSmCnC_l7QZG60.woff) format('woff');\n" +
                            "    }\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Avoid browser level font resizing.\n" +
                            "   * 1. Windows Mobile\n" +
                            "   * 2. iOS / OSX\n" +
                            "   */\n" +
                            "  body,\n" +
                            "  table,\n" +
                            "  td,\n" +
                            "  a {\n" +
                            "    -ms-text-size-adjust: 100%; /* 1 */\n" +
                            "    -webkit-text-size-adjust: 100%; /* 2 */\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Remove extra space added to tables and cells in Outlook.\n" +
                            "   */\n" +
                            "  table,\n" +
                            "  td {\n" +
                            "    mso-table-rspace: 0pt;\n" +
                            "    mso-table-lspace: 0pt;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Better fluid images in Internet Explorer.\n" +
                            "   */\n" +
                            "  img {\n" +
                            "    -ms-interpolation-mode: bicubic;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Remove blue links for iOS devices.\n" +
                            "   */\n" +
                            "  a[x-apple-data-detectors] {\n" +
                            "    font-family: inherit !important;\n" +
                            "    font-size: inherit !important;\n" +
                            "    font-weight: inherit !important;\n" +
                            "    line-height: inherit !important;\n" +
                            "    color: inherit !important;\n" +
                            "    text-decoration: none !important;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Fix centering issues in Android 4.4.\n" +
                            "   */\n" +
                            "  div[style*=\"margin: 16px 0;\"] {\n" +
                            "    margin: 0 !important;\n" +
                            "  }\n" +
                            "  body {\n" +
                            "    width: 100% !important;\n" +
                            "    height: 100% !important;\n" +
                            "    padding: 0 !important;\n" +
                            "    margin: 0 !important;\n" +
                            "  }\n" +
                            "  /**\n" +
                            "   * Collapse table borders to avoid space between cells.\n" +
                            "   */\n" +
                            "  table {\n" +
                            "    border-collapse: collapse !important;\n" +
                            "  }\n" +
                            "  a {\n" +
                            "    color: #1a82e2;\n" +
                            "  }\n" +
                            "  img {\n" +
                            "    height: auto;\n" +
                            "    line-height: 100%;\n" +
                            "    text-decoration: none;\n" +
                            "    border: 0;\n" +
                            "    outline: none;\n" +
                            "  }\n" +
                            "  </style>\n" +
                            "\n" +
                            "</head>\n" +
                            "<body style=\"background-color: #e9ecef;\">\n" +
                            "\n" +
                            "  <!-- start preheader -->\n" +
                            "  <div class=\"preheader\" style=\"display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;\">\n" +
                            "    A preheader is the short summary text that follows the subject line when an email is viewed in the inbox.\n" +
                            "  </div>\n" +
                            "  <!-- end preheader -->\n" +
                            "\n" +
                            "  <!-- start body -->\n" +
                            "  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n" +
                            "\n" +
                            "    <!-- start logo -->\n" +
                            "    <tr>\n" +
                            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n" +
                            "        <tr>\n" +
                            "        <td align=\"center\" valign=\"top\" width=\"600\">\n" +
                            "        <![endif]-->\n" +
                            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
                            "          <tr>\n" +
                            "            <td align=\"center\" valign=\"top\" style=\"padding: 36px 24px;\">\n" +
                            "              <a href=\"https://www.blogdesire.com\" target=\"_blank\" style=\"display: inline-block;\">\n" +
                            "                <img src=\"/images/Untitled-design-26_1.png\" alt=\"Logo\" border=\"0\" width=\"48\" style=\"display: block; width: 48px; max-width: 48px; min-width: 48px;\">\n" +
                            "              </a>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "        </table>\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        </td>\n" +
                            "        </tr>\n" +
                            "        </table>\n" +
                            "        <![endif]-->\n" +
                            "      </td>\n" +
                            "    </tr>\n" +
                            "    <!-- end logo -->\n" +
                            "\n" +
                            "    <!-- start hero -->\n" +
                            "    <tr>\n" +
                            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n" +
                            "        <tr>\n" +
                            "        <td align=\"center\" valign=\"top\" width=\"600\">\n" +
                            "        <![endif]-->\n" +
                            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 36px 24px 0; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; border-top: 3px solid #d4dadf;\">\n" +
                            "              <h1 style=\"margin: 0; font-size: 32px; font-weight: 700; letter-spacing: -1px; line-height: 48px;\">Password Reset Request</h1>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "        </table>\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        </td>\n" +
                            "        </tr>\n" +
                            "        </table>\n" +
                            "        <![endif]-->\n" +
                            "      </td>\n" +
                            "    </tr>\n" +
                            "    <!-- end hero -->\n" +
                            "\n" +
                            "    <!-- start copy block -->\n" +
                            "    <tr>\n" +
                            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
                            "        <!--[if (gte mso 9)|(IE)]>\n" +
                            "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n" +
                            "        <tr>\n" +
                            "        <td align=\"center\" valign=\"top\" width=\"600\">\n" +
                            "        <![endif]-->\n" +
                            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
                            "\n" +
                            "          <!-- start copy -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px;\">\n" +
                            "              <p style=\"margin: 0;\">Click the button below to change your password. If you didn't request a password change, we highly recommend you change the password, or if you need assistance please contact us.</p>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "          <!-- end copy -->\n" +
                            "\n" +
                            "          <!-- start button -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\">\n" +
                            "              <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n" +
                            "                <tr>\n" +
                            "                  <td align=\"center\" bgcolor=\"#ffffff\" style=\"padding: 12px;\">\n" +
                            "                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n" +
                            "                      <tr>\n" +
                            "                        <td align=\"center\" bgcolor=\"#1a82e2\" style=\"border-radius: 6px;\">\n" +
                            "                           <a href='http://http://64.226.88.119:8080/index/reset-password?reset=" + verificationToken + "' target='_blank' style='display: inline-block; padding: 16px 36px; font-family: \"Source Sans Pro\", Helvetica, Arial, sans-serif; font-size: 16px; color: #ffffff; text-decoration: none; border-radius: 6px;'>Reset Password</a>" +
                            "                        </td>\n" +
                            "                      </tr>\n" +
                            "                    </table>\n" +
                            "                  </td>\n" +
                            "                </tr>\n" +
                            "              </table>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "          <!-- end button -->\n" +
                            "\n" +
                            "          <!-- start copy -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px;\">\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "          <!-- end copy -->\n" +
                            "\n" +
                            "          <!-- start copy -->\n" +
                            "          <tr>\n" +
                            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px; border-bottom: 3px solid #d4dadf\">\n" +
                            "              <p style=\"margin: 0;\">Cheers,<br> Plume</p>\n" +
                            "            </td>\n" +
                            "          </tr>\n" +
                            "\n" +
                            "</body>\n" +
                            "</html>", true);
            //TODO change http path
            javaMailSender.send(message);
            pendingResetService.setPendingUser(to,verificationToken);
            return true;
        }catch (MailException | MessagingException e) {
            return false;
        }
    }

    public boolean sendHelpEmail(String name, String email, String message) {
        try {
            SimpleMailMessage emailMessage = new SimpleMailMessage();
            emailMessage.setTo("sousa.j1993@gmail.com");
            emailMessage.setSubject("Plume help request");
            emailMessage.setText(message + " " + name);

            MimeMessage autoMimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper autoResponse = new MimeMessageHelper(autoMimeMessage,true);
            autoResponse.setTo(email);
            autoResponse.setSubject("Plume Support Request");
            autoResponse.setText("<h1>Hello " + name + "</h1>" +
                    "<p>Thank you for reaching out to us, your help request is under analysis and we'll get back" +
                    "to you as soon as possible</p>" +
                    "<p> Happy birding! </p>",true);

            javaMailSender.send(emailMessage);
            javaMailSender.send(autoMimeMessage);

            return true;
        } catch (MailException | MessagingException e) {
            return false;
        }
    }
}
