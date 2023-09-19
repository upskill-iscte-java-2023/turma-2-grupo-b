package plume.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender javaMailSender;

    public boolean sendVerificationEmail(String to, String verificationToken) {
        try {
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);

            helper.setTo(to);
            helper.setSubject("Account Verification");
            helper.setText("Welcome to plume! Just one more step before you can fully utilize our website! \r" +
                    "Click the link or copy the below to verify your account: " +
                    "<a href='http://example.com/verify?token=" + verificationToken + "'>Verify Email</a>"+
                    "<h1>"+verificationToken, true);
            //TODO change http path
            javaMailSender.send(message);
            return true;
        }catch (MailException | MessagingException e) {
            return false;
        }
    }

    public boolean sendResetPasswordEmail(String to, String verificationToken) {
        try {
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);

            helper.setTo(to);
            helper.setSubject("Account Verification");
            helper.setText("Welcome to plume! Just one more step before you can fully utilize our website! \r" +
                    "Click the link or copy the below to verify your account: " +
                    "<a href='http://example.com/verify?token=" + verificationToken + "'>Verify Email</a>", true);
            //TODO change http path
            javaMailSender.send(message);
            return true;
        }catch (MailException | MessagingException e) {
            return false;
        }
    }
}
