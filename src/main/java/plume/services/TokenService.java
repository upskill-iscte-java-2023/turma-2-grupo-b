package plume.services;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Service;

@Service
public class TokenService {

    public String generateVerificationToken() {
        return RandomStringUtils.randomAlphanumeric(7);
    }
}
