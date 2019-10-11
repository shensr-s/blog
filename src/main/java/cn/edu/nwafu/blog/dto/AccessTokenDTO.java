package cn.edu.nwafu.blog.dto;

import com.alibaba.fastjson.annotation.JSONField;
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

    @JSONField(name = "client_id")
    private String clientId;

    @JSONField(name = "client_secret")
    private String clientSecret;

    private String code;

    @JSONField(name = "redirect_uri")
    private String redirectUri;

    private String state;
}
