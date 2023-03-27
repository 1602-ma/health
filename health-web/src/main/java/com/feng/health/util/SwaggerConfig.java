package com.feng.health.util;

import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.ParameterBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.schema.ModelRef;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.Parameter;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;
import java.util.List;

/**
 * @author f
 * @date 2022/12/24 22:21
 */
@Configuration
@EnableSwagger2
@ComponentScan(basePackages = { "com.feng.health"})
public class SwaggerConfig {

    @Bean
    public Docket buildDocket() {
        ParameterBuilder tokenPar = new ParameterBuilder();
        List<Parameter> pars = new ArrayList<>();
        tokenPar.name("token").description("令牌").modelRef(new ModelRef("string")).parameterType("header").required(false).build();
        pars.add(tokenPar.build());

        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(buildApiInfo())
                .groupName("1.0")
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.feng.health.controller"))
                .paths(PathSelectors.any())
                .build()
                .globalOperationParameters(pars);
    }

    private ApiInfo buildApiInfo() {
        Contact contact = new Contact("传智健康", "", "");
        return new ApiInfoBuilder()
                .title("传智健康-Api文档")
                .description("传智健康-api服务")
                .contact(contact)
                .version("1.0.0")
                .build();
    }

    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()//选择哪些路径和API会生成document
                //扫描指定包中的swagger注解
                //.apis(RequestHandlerSelectors.basePackage("com.gx.web"))
                //扫描所有有注解的api，用这种方式更灵活
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
                //扫描所有的api(没有添加注解也可以扫描出来),用这种方式更直接
                //.apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build();
    }

    /**
     * 这是匹配api的信息
     *
     * @return
     */
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                // 大标题
                .title("传智健康API接口文档")
                // 描述
                .description("API接口测试")
                // 版本号
                .version("1.0.0")
                .termsOfServiceUrl("").license("").licenseUrl("").build();
    }
}
