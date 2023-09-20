package plume.services;

import com.google.api.client.util.Value;
import com.google.auth.oauth2.ServiceAccountCredentials;
import org.springframework.web.multipart.MultipartFile;
import com.google.cloud.storage.Blob;
import com.google.cloud.storage.BlobId;
import com.google.cloud.storage.BlobInfo;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageOptions;
import org.springframework.stereotype.Service;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@Service
public class GCPStorageServiceimpl implements GCPStorageService{
    private Storage storage;

    String jsonKey = "{" +
            "\"type\": \"service_account\", " +
            "\"project_id\": \"stalwart-cable-398722\", " +
            "\"private_key_id\": \"84fcafc2914a9b6f93e6f93d0821867ee240d9d3\"," +
            "\"private_key\": \"-----BEGIN PRIVATE KEY-----\\n" +
            "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQD3PdNLHKetCYrH\\n" +
            "dx2W03WUOos2HJo4zumE3l4lDIFcVU8arV3nyv5VYtL1KBrGWg90T38yz23RH8nV\\n" +
            "byFHLSMIAVNr/rNtJU3Gbq3peojglgUqkD3ONAdv45XnwEL397ewj3VfkLw8/ivI\\n" +
            "2bMG1+erTsm9xABLb04GO1qqsnRZ9Lav5NMG4HhsI90SNlpJBovdd0LxxPMpief4\\n" +
            "nt9jm0nzEaNnTxX1CFFhFNtXbrcfNMss/CFT7Rab9+eAyyzhoDE19dtGxl7HH7lH\\n" +
            "eHIFLybmklWpR+MLY3kvKLpc77KgeV7oIfGN955jQYEI0LYCXyv5ConYgq7dkGj0\\n" +
            "6Bkk8Jo/AgMBAAECggEALRZtw2tg2qn8UH7U+w3qCdOZUo9pwoVdSZlBwvDiYGPA\\n" +
            "TsWh8+Ttd8XTYdjj9Rs0aUocELiKNtJcvNsMzw2Yr1uKio3Cy9s7MT464fKyJn7F\\n" +
            "R2tRkhqj5pAy5LYHoG/g5EZtKbXb1iWl93VX9B4IhhGSsdQeF6OfL3zAfpOXq1Wc\\n" +
            "/jp7oa39RdqlnTINGXAT+YuWlUQ9Gj8iNv13ZLSIvSDR1CTm5yRfq6MR6M0iV0OW\\n" +
            "whd7DtsTZn3iJjTT8O/jc1tNkNSuemhysBVOHsEEz8G0uB4X/9kG7ExNd5fHlZjG\\n" +
            "tG8mAFIKQuiExd7rUe8XVmGP+f+xTvROTqm8696GGQKBgQD9KMXpqNyTacLJxBKN\\n" +
            "N7hq7+2dd4u3HehzadCLjLy4668OzrBauL1JTP+T9gcBTc5sYcGm6pFOaWmA3u+M\\n" +
            "pQ1PDbmcIUjIA1JyHhNBgCcu/YUzCDCYOLIuBCYjzSsZCxKBT+NNPR2sHTWeZMZ3\\n" +
            "gZzx3B75st4GggjkJCNfsUebNwKBgQD6BA2IRy3TNnPkuyRnuvJxTa34yFXHhX6C\\n" +
            "ciykT2wUDQnnKPQAxjh8ZiX5gtyxJo5klYYLXRJDb3qmE3r0aUJjy7/c6XH+f+GE\\n" +
            "ii5nXTKlapk40vXlaWcGZzS3OqwPRGfKeRI35k7Pxyjc0SKw3fKpjPWJfq6fPX8H\\n" +
            "6qzDsuzNOQKBgGZ9L0KdXk8/reBJRMlvGXYRlDz/vMxxiz3ORON6Ip0qrUBtZPAV\\n" +
            "gmw+g+m+3K8mdL9kBCYzKIh6HIBTwN9LosuyXsZao0B2N9aDXoBSBYr8kARM+H9n\\n" +
            "1JrUiyxLT3tgBCnd0cPfTjfzy1VIryCKlKNF3jRwuXohAsB58Og4uSiZAoGBANiw\\n" +
            "ZI4lqvjxq/aloELrS6+Z9Nu3vmjkMaabkEeEspaaSmf4HasCIfjni6g6nE5JrYZN\\n" +
            "9dSpgOfDmhiQr7Nf+3OFJzAvgGZkra/zF47svrWRs2UFqqt/9BQfpRfdmTzOO+rH\\n" +
            "jlu2l74LzkW8WQXUB7qd+j2F95D6erwA0GX5ELY5AoGAfFclA8LxA88NrBjPJdlZ\\n" +
            "S7o39RtqIHPpb9cmcYZuHfMuOi25Pq99tdkQBnkkdd/kGkA+h/W98yaGZ0+LmFml\\n" +
            "KWVq+zMmOUACxovxOhNrSdAaVA16oZ9NdfstjRaeCho/PaRJ12ypHeJQt/n2hVfl\\n" +
            "tyH8bXzMieVXxBH8PYlZ6WQ=\\n" +
            "-----END PRIVATE KEY-----\\n\"," +
            "\"client_email\": \"storage-admin@stalwart-cable-398722.iam.gserviceaccount.com\"," +
            "\"client_id\": \"115545013843669390879\"," +
            "\"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\"," +
            "\"token_uri\": \"https://oauth2.googleapis.com/token\"," +
            "\"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\"," +
            "\"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/storage-admin%40stalwart-cable-398722.iam.gserviceaccount.com\"," +
            "\"universe_domain\": \"googleapis.com\"" +
            "}";

    private String PLUME_WIKI_BUCKET = "plume-wiki";


    @Override
    public String uploadFileToBucket(MultipartFile file) throws IOException {

        ServiceAccountCredentials credentials = ServiceAccountCredentials.fromStream(
                new ByteArrayInputStream(jsonKey.getBytes("UTF-8")));

        this.storage = StorageOptions.newBuilder()
                .setCredentials(credentials)
                .build()
                .getService();

        String blobName = file.getOriginalFilename();
        String contentType = file.getContentType();

        // Create a BlobInfo object
        BlobInfo blobInfo = BlobInfo.newBuilder(BlobId.of(PLUME_WIKI_BUCKET, blobName))
                .setContentType(contentType)
                .build();

        // Upload the file to the GCP bucket
        Blob blob = storage.create(blobInfo, file.getBytes());

        // You can handle the response or retrieve the public URL if needed
        String publicUrl = blob.getMediaLink();
        System.out.println("File uploaded to: " + publicUrl);
        return publicUrl;
    }
}
