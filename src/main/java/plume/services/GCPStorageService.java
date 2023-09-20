package plume.services;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface GCPStorageService {

    String uploadFileToBucket(MultipartFile file) throws IOException;
}
