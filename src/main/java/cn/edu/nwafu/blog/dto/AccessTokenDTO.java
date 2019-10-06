package cn.edu.nwafu.blog.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author shensr
 * @version V1.0
 * @description: AccessToken数据传输对象
 * @create 2019/10/4
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccessTokenDTO {
    private String client_id;

    private String client_secret;

    private String code;

    private String redirect_uri;

    private String state;
}
