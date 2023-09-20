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
            helper.setText("Welcome to plume! Just one more step before you can fully utilize our website! <br>" +
                    "Click the link or copy the below to verify your account: " +
                    "<a href='http://localhost:8080/index/reset-password?reset=" + verificationToken + "'>Verify Email</a>", true);
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
