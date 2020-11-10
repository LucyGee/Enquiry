package com.enqury.portal;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ClassPathResource;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.datatables.repository.DataTablesRepositoryFactoryBean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.format.datetime.standard.DateTimeFormatterRegistrar;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.format.support.FormattingConversionService;
import org.springframework.http.CacheControl;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.mvc.WebContentInterceptor;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import java.time.format.DateTimeFormatter;
import java.util.Objects;
import java.util.Properties;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.enqury.portal" })
@EnableJpaRepositories(repositoryFactoryBeanClass = DataTablesRepositoryFactoryBean.class,basePackages =  "com.enqury.portal")
@EnableSpringDataWebSupport
@EnableTransactionManagement
@PropertySource({"classpath:config.properties"})
public class MvcConfig implements WebMvcConfigurer {

    @Autowired
    Environment env;


    @Bean
    public WebContentInterceptor getWebContentInterceptor(){
        WebContentInterceptor interceptor = new WebContentInterceptor();
        interceptor.setCacheSeconds(0);
        interceptor.setCacheControl(CacheControl.noCache());
        return interceptor;
    }



    @Bean
    public InternalResourceViewResolver jspViewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setPrefix("/WEB-INF/pages/enquiry/");
        bean.setSuffix(".jsp");
        bean.setOrder(2);
        return bean;
    }

    @Bean
    public static PropertyPlaceholderConfigurer placeHolderConfigurer() {
        PropertyPlaceholderConfigurer bean = new PropertyPlaceholderConfigurer();
        bean.setLocation(new ClassPathResource("config.properties"));
        bean.setIgnoreUnresolvablePlaceholders(true);
        return bean;
    }
    @Bean(name = "dataSource")
    public DataSource dataSource() {
        String driverClassName = env.getProperty("jdbc.driverClassName");
        String databaseurl = env.getProperty("jdbc.databaseurl");
        String dbUsername = env.getProperty("jdbc.username");
        String dbPassword = env.getProperty("jdbc.password");
        int poolSize =Integer.parseInt(Objects.requireNonNull(env.getProperty("max.poolsize")));
        boolean autoCommit =Boolean.parseBoolean(env.getProperty("connection.autocommit"));
        HikariDataSource bean = new HikariDataSource();
        bean.setDriverClassName(driverClassName);
        bean.setJdbcUrl(databaseurl);
        bean.setUsername(dbUsername);
        bean.setPassword(dbPassword);
        bean.setMaximumPoolSize(poolSize);
        bean.setLeakDetectionThreshold(30000);
        bean.setAutoCommit(autoCommit);
        return bean;

    }
    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(10000000);
        return multipartResolver;
    }
    public DataSource getDataSource(){
        return dataSource();
    }
    @Bean
    public Properties hibernateProperties() {
        String dialect = env.getProperty("jdbc.dialect");
        String showSql = env.getProperty("hibernate.show_sql");
        String formatSql = env.getProperty("hibernate.format_sql");
        String hbm2ddl = env.getProperty("hibernate.hbm2ddl.auto");
        String namingStrategy = env.getProperty("hibernate.naming_strategy");
        String cachingEnabled = env.getProperty("hikari.implicitCachingEnabled");
        String maxStatements = env.getProperty("dataSource.maxStatements");
        String autoCommit = env.getProperty("connection.autocommit");
        String autoDetection = env.getProperty("hibernate.autodetection");
        String genstatistics = env.getProperty("hibernate.generate_statistics");
        String useCache = env.getProperty("hibernate.cache.use_second_level_cache");
        String cacheClass = env.getProperty("hibernate.cache.region.factory_class");
        Properties hibernateProperties = new Properties();
        hibernateProperties.setProperty("hibernate.dialect", dialect);
        hibernateProperties.setProperty("hibernate.show_sql", showSql);
        hibernateProperties.setProperty("hibernate.format_sql", formatSql);
        hibernateProperties.setProperty("hibernate.hbm2ddl.auto", hbm2ddl);
        hibernateProperties.setProperty("hibernate.ejb.naming_strategy",namingStrategy);
        hibernateProperties.setProperty("hikari.dataSource.implicitCachingEnabled",cachingEnabled);
        hibernateProperties.setProperty("hikari.dataSource.maxStatements",maxStatements);
        hibernateProperties.setProperty("hibernate.connection.autocommit",autoCommit);
        hibernateProperties.setProperty("hibernate.archive.autodetection",autoDetection);
        hibernateProperties.setProperty("hibernate.generate_statistics",genstatistics);
        hibernateProperties.setProperty("hibernate.cache.use_second_level_cache",useCache);
        hibernateProperties.setProperty("hibernate.cache.region.factory_class",cacheClass);
        hibernateProperties.setProperty("hibernate.max_fetch_depth","25");
        return hibernateProperties;
    }
    @Bean
    public FormattingConversionService conversionService(){
        DefaultFormattingConversionService conversionService=new DefaultFormattingConversionService(false);
        DateTimeFormatterRegistrar registrar=new DateTimeFormatterRegistrar();
        registrar.setDateFormatter(DateTimeFormatter.ofPattern("dd.MM.yyyy"));
        registrar.setDateFormatter(DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm:ss"));
        registrar.registerFormatters(conversionService);
        return conversionService;
    }

    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
        em.setDataSource(dataSource());
        em.setPackagesToScan("com.enqury.portal");
        final HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(vendorAdapter);
        em.setJpaProperties(hibernateProperties());
        return em;
    }


    @Bean
    public PlatformTransactionManager transactionManager(final EntityManagerFactory emf) {
        final JpaTransactionManager transactionManager = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(emf);
        return transactionManager;
    }

    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
        return new PersistenceExceptionTranslationPostProcessor();
    }

    @Bean(name="database_type")
    public String databaseType(){
        return env.getProperty("database_type");
    }




    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/login").setViewName("login");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        registry.addResourceHandler("/css/**").addResourceLocations("/css/");
        registry.addResourceHandler("/js/**").addResourceLocations("/js/");
        registry.addResourceHandler("/images/**").addResourceLocations(
                "/images/");
        registry.addResourceHandler("/libs/**").addResourceLocations("/libs/");
        registry.addResourceHandler("/fonts/**")
                .addResourceLocations("/fonts/");
    }

    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }


}
