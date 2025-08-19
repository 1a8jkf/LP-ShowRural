<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, java.io.*" %>
<%@ page import="javax.naming.*, javax.sql.*" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.internet.MimeBodyPart" %>
<%@ page import="javax.mail.internet.MimeMultipart" %>
<%@ page import="javax.mail.util.ByteArrayDataSource" %>
<%@ page import="oracle.jdbc.pool.OracleDataSource" %>
<%@ page import="com.itextpdf.text.Document" %>
<%@ page import="com.itextpdf.text.Paragraph" %>
<%@ page import="com.itextpdf.text.pdf.PdfWriter" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.lang.StringBuilder" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.mail.Authenticator" %>
<%@ page import="javax.mail.PasswordAuthentication" %>

<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnIect" href="https://fonts.gstatic.com">
    <link rel="preconnIect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="icon" href="Assets/favicon.png" type="image/x-icon">

    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-5JDTTJQV');</script>

    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5JDTTJQV"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

    <script>
    !function(f,b,e,v,n,t,s)
    {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments)};
    if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
    n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0];
    s.parentNode.insertBefore(t,s)}(window, document,'script',
    'https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '9444820535578285');
    fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
    src="https://www.facebook.com/tr?id=9444820535578285&ev=PageView&noscript=1"
    /></noscript>

    <title>Show Rural | Ford Fancar</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
        }

        ::selection {
            background-color: rgb(0, 26, 255);
            color: rgb(255, 255, 255);
        }

        .main-header {
            width: 100%;
            height: 90px;
        }

        .main-header-center-div {
            width: 80%;
            height: 100%;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .main-header-center-div img {
            width: 180px;
        }

        .contact-button {
            background-color: rgb(0, 168, 0);
            color: white;
            padding: 8px 25px;
            text-decoration: none;
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
            font-weight: 500;
            border-radius: 5px;
            transition: 0.3s;
        }

        .contact-button:hover {
            background-color: rgb(0, 136, 0);
        }

        .main-section {
            width: 100%;
        }

        .main-section-subheader-banner-div {
            width: 100%;
        }

        .main-section-subheader-banner-div img {
            width: 100%;
            height: auto;
            margin: 0;
        }

        .main-section-center-content-div {
            width: 1300px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .main-section-center-content-scroll-div {
            display: flex;
            align-items: center;
            position: relative;
            width: 700px;
            overflow: hidden;
            margin-bottom: 20px;
        }

        .carousel-images {
            display: flex;
            position: relative;
            overflow: hidden;
            width: 700px;
        }

        .carousel-item {
            display: none;
            flex-shrink: 0;
            width: 700px;
        }

        .carousel-item img {
            width: 100%;
            height: auto;
        }

        .carousel-item.active {
            display: block;
        }

        .carousel-arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            border: none;
            padding: 10px;
            cursor: pointer;
            font-size: 20px;
            z-index: 10;
        }

        .carousel-arrow.left {
            left: 10px;
        }

        .carousel-arrow.right {
            right: 10px;
        }

        .main-section-center-content-form-div {
            width: 500px;
            padding: 20px;
        }

        .main-section-form-title-div {
            width: 100px;
            height: auto;
        }

        .main-section-form-title-div img {
            width: 500px;
            height: auto;
        }

        .form-title {
            font-size: 50px;
            font-weight: bold;
            font-family: 'Poppins', sans-serif;
            color: rgb(49, 49, 49);
            margin: 0;
            margin-top: 30px;
        }

        .form-price {
            font-size: 40px;
            font-weight: bold;
            font-family: 'Poppins', sans-serif;
            color: rgb(49, 49, 49);
            margin: 0;
            width: 600px !important;
        }

        .main-section-form-title-div p {
            font-size: 17px;
            font-weight: 500;
            color: grey;
            margin-top: 10px;
        }

        .main-section-center-content-form-div form {
            margin-top: 30px;
            width: 100%;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input {
            width: 90%;
            padding: 20px;
            border-radius: 10px;
            background-color: rgb(239, 240, 255);
            border: none;
            color: rgb(138, 138, 138);
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
            font-weight: 500;
        }

        .form-group input:focus {
            outline: none;
        }

        .form-submit {
            width: 100%;
            padding: 20px;
            border: none;
            background-color: rgb(0, 28, 64);
            color: rgb(215, 253, 10);
            font-family: 'Poppins', sans-serif;
            font-size: 16px;
            border-radius: 10px;
            cursor: pointer;
        }

        .models-section {
            width: 100%;
        }

        .models-section-center-content-div {
            width: 1200px;
            margin: 0 auto;
            text-align: center;
        }

        .models-section-center-content-div h1 {
            font-size: 38px;
            font-weight: bold;
            font-family: 'Poppins', sans-serif;
            color: rgb(59, 59, 59);
            margin: 0;
            margin-top: 80px;
        }

        .models-section-center-content-div p {
            font-size: 17px;
            font-weight: 500;
            color: grey;
            margin-top: 10px;
        }

        .swiper-container {
            width: 100%;
            height: auto;
            overflow: hidden;
            position: relative;
        }

        .swiper-wrapper {
            display: flex;
        }

        .swiper-slide {
            width: 100%;
            display: flex;
            gap: 20px;
        }

        .models-section-blocks-div {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            width: 100%;
            height: auto;
            margin-top: 70px;
            transition: transform 0.5s ease;
            position: relative;
        }

        .carousel-container {
            width: 100%;
            overflow: hidden;
            position: relative;
        }

        .carousel-track {
            display: flex;
            transition: transform 0.5s ease;
        }

        .models-section-blocks-div {
            display: flex;
            flex-shrink: 0;
        }

        .models-section-blocks-item-div {
            width: 100%;
        }

        .carousel-buttons {
            position: absolute;
            top: 50%;
            width: 100%;
            display: flex;
            justify-content: space-between;
            transform: translateY(-50%);
        }

        .carousel-buttons button {
            background-color: grey;
            color: rgb(255, 255, 255);
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }


        .models-section-blocks-div {
            flex: 0 0 100%;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .models-section-blocks-item-div {
            width: 500px;
            height: 290px;
            background-color: rgb(239, 240, 255);
            border-radius: 10px;
            display: flex;
            padding: 20px;
        }

        .models-section-blocks-item-data-div {
            width: 50%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .carousel-buttons {
            position: absolute;
            top: 50%;
            width: 100%;
            display: flex;
            justify-content: space-between;
            transform: translateY(-50%);
        }

        .carousel-buttons button {
            background-color: grey;
            color: rgb(255, 255, 255);
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        .models-section-blocks-div.active {
            transform: translateX(-100%);
            transition: transform 0.5s ease;
        }

        .models-section-blocks-item-data-div {
            width: 50%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: flex-start;
            padding: 10px;
            box-sizing: border-box;
            z-index: 100;
        }

        .models-section-blocks-item-data-div h1 {
            font-size: 25px;
            color: rgb(54, 54, 54);
            margin: 0;
        }

        .models-section-blocks-item-data-div p {
            font-size: 15px;
            color: rgb(122, 122, 122);
            text-align: justify;
            font-weight: 400;
            hyphens: auto;
        }


        .models-section-blocks-item-data-div button {
            padding: 7px;
            border: none;
            background-color: rgb(0, 28, 64);
            color: rgb(215, 253, 10);
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 500;
        }

        .models-section-blocks-item-img-div {
            width: 50%;
            height: 100%;
            position: relative;
            z-index: 999;
        }

        .models-section-blocks-item-img-div img {
            width: 100%;
            height: auto;
        }












        .adress-section {
            width: 100%;
            height: auto;
            padding: 20px 0;
        }

        .adress-section-center-content-div {
            width: 100%;
            max-width: 1100px;
            margin: 0 auto;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .adress-section-center-content-div h1 {
            font-size: 38px;
            font-weight: bold;
            font-family: 'Poppins', sans-serif;
            color: rgb(59, 59, 59);
            margin-top: 120px;
            margin-bottom: 40px;
        }

        .adress-section-center-content-carousel-div {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 50px;
        }

        .adress-section-center-content-carousel-images-div {
            position: relative;
            width: 90%;
            max-width: 1100px;
            height: 600px;
            overflow: hidden;
        }

        .carousel-track {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }

        .carousel-image {
            width: 100%;
            height: 600px;
            object-fit: cover;
            flex-shrink: 0;
        }

        .carousel-arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            color: rgb(77, 77, 77);
            background-color: transparent;
            border: none;
            padding: 10px;
            cursor: pointer;
            z-index: 10;
        }

        .carousel-arrow.left-arrow {
            left: 10px;
        }

        .carousel-arrow.right-arrow {
            right: 10px;
        }

        .swiper {
            width: 100%;
            max-width: 1100px;
            height: 650px;
        }

        .swiper-slide {
            display: flex;
            align-items: center;
            justify-content: flex-start;
        }

        .swiper-slide img {
            width: 100%;
            height: 100%;
            max-height: 500px;
        }

        .swiper-color {
            color: #ffffff;
        }

        .swiper-pagination {
            position: absolute;
            padding-top: 400px;
            bottom: 10px;
            width: 100%;
            text-align: center;
            display: none;
        }

        .swiper-pagination-bullet {
            background: rgba(0, 0, 0, 0.5);
            width: 12px;
            height: 12px;
            display: inline-block;
            border-radius: 50%;
            margin: 0 5px;
            transition: background-color 0.3s ease;
        }

        .swiper-pagination-bullet-active {
            background: rgba(0, 47, 255, 0.8);
        }



























        .main-footer {
            width: 100%;
            height: 380px;
            background-color: rgb(20, 20, 20);
        }

        .main-footer-center-content-div {
            width: 1200px;
            height: 100%;
            margin: 0 auto;
        }

        .main-footer-center-content-lists-div {
            display: flex;
        }

        .footer-img-div img {
            width: 150px;
            margin-top: 10px;
        }

        .main-footer-lists-div {
            margin-left: 100px;
            margin-right: 50px;
        }

        .main-footer-lists-div h4 {
            color: white;
            margin: 0;
            margin-top: 50px;
            margin-bottom: 8px;
            font-size: 20px;
            font-weight: 500;
        }

        .main-footer-lists-div ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .main-footer-lists-div ul li {
            margin-bottom: 4px;
            font-size: 15px;
            font-weight: 300;
        }

        .main-footer-lists-div a {
            color: rgb(245, 245, 245);
            text-decoration: none;
        }

        .main-footer-center-content-div hr {
            border: none;
            outline: 1px solid grey;
            margin-top: 50px;
        }

        .main-footer-icons {
            width: 20px;
            position: absolute;
        }

        .list-margin li {
            margin-left: 30px;
            margin-bottom: 15px;
        }

        .main-footer-center-content-div p {
            color: white;
            font-size: 13px;
            font-weight: 300;
        }

        .mobile-section {
            display: none;
        }

        .swiper-slide {
            position: relative;
        }

        .location-info {
            position: absolute;
            display: flex;
            align-items: center;
            padding: 22px;
            border-radius: 10px;
            background-color: rgb(52, 52, 253);
            transform: translateY(20px);
            left: 50%;
            transform: translateX(-50%);
            padding: 5px 10px;
            margin-top: 280px;
            z-index: 9999;
        }

        .location-info a {
            text-decoration: none;
            color: white !important;
            font-family: 'Poppins', sans-serif;
            font-weight: 500;
            transform: translateY(20px);
        }

        .location-info p {
            color: white !important;
        }

        .location-info img.location-icon {
            width: 20px;
            height: 20px;
            margin-right: 8px;
        }

        .location-info p {
            font-size: 16px;
            font-family: 'Poppins', sans-serif;
            color: #3b3b3b;
            margin: 0;
        }

        .location-info img {
            width: 30px;
            height: 30px;
            margin-right: 20px;
        }

        .mob {
            display: none;
        }

        .swiper-button-next, .swiper-button-prev {
            color: rgb(0, 28, 64);
            width: 40px;
            height: 40px;
            position: absolute;
            top: 50%;
            transform: translateY(-30%);
            z-index: 10;
            cursor: pointer;
        }

        .adress-section-mob {
            display: none;
        }

        @media only screen and (max-width: 768px) {
            .main-header {
                height: auto;
            }

            .main-header-center-div {
                width: 90%;
                align-items: center;
            }

            .main-header-center-div img {
                width: 130px;
                margin-bottom: 10px;
            }

            .contact-button {
                padding: 10px 20px;
                font-size: 14px;
            }

            .main-section-subheader-banner-div {
                display: none;
            }

            .mob {
                width: 100%;
                display: block;
            }

            .mob img {
                width: 100%;
                height: auto;
                margin: 0;
            }

            .main-section-center-content-div {
                width: 100%;
            }

            .main-section-center-content-scroll-div {
                width: 100%;
                margin-bottom: 0px;
            }

            .carousel-images img {
                width: 400px;
                height: auto;
            }

            .main-section-center-content-form-div {
                width: 90%;
                padding: 10px;
                text-align: center;
            }

            .main-section-center-content-form-div form {
                margin-top: 30px;
            }

            .form-title {
                font-size: 30px;
                text-align: center;
            }

            .form-group input {
                width: 97%;
                padding: 15px;
            }

            .form-submit {
                width: 100%;
            }
            
            .swiper-container {
                width: 100%;
                height: auto;
                overflow: hidden;
            }

            .models-section-blocks-div {
                display: inline-block;
            }

            .models-section-center-content-div {
                width: 90%;
                padding: 10px;
            }

            .models-section-blocks-div {
                flex-direction: column;
                gap: 15px;
            }

            .models-section-blocks-item-div {
                width: 90%;
                height: auto;
                margin-bottom: 20px;
            }

            .adress-section-center-content-div h1 {
                font-size: 28px;
                text-align: center;
            }

            .adress-section-center-content-carousel-div {
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 50px;
            }

            .adress-section-center-content-carousel-images-div {
                position: relative;
                width: 100%;
                height: 600px;
                overflow: hidden;
            }

            .carousel-track {
                display: flex;
                transition: transform 0.5s ease-in-out;
            }

            .carousel-image {
                width: 100%;
                height: 600px;
                object-fit: cover;
                flex-shrink: 0;
            }

            .swiper {
                height: 300px;
            }

            .swiper-slide {
                width: 90%;
                height: auto;
            }

            .carousel-image {
                height: 300px;
            }

            .main-footer {
                height: auto;
                padding: 20px 0;
            }

            .main-footer-center-content-div {
                width: 90%;
                text-align: center;
            }

            .main-footer-center-content-lists-div {
                flex-direction: column;
                align-items: center;
            }

            .footer-img-div img {
                width: 120px;
                margin-bottom: 20px;
            }

            .main-footer-lists-div {
                margin: 0;
                text-align: center;
            }

            .main-footer-lists-div h4 {
                margin-top: 20px;
            }

            .list-margin li {
                margin-left: 0;
                margin-bottom: 10px;
            }

            .models-section {
                display: none;
            }

            .mobile-section {
                width: 100%;
                text-align: center;
                display: block;
            }

            .models-section-center-content-div {
                max-width: 100%;
                margin: 0 auto;
            }

            .swiper-container2 {
                width: 100%;
                height: 600px;
                margin: 20px auto;
                position: relative;
                padding: 0 15px;
                box-sizing: border-box;
            }

            .swiper-slide {
                width: 100%;
                height: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-right: 30px;
            }

            .models-section-blocks-item-div {
                width: 100%;
                height: 100%;
                background-color: rgb(239, 240, 255);
                border-radius: 10px;
                display: flex;
                padding: 20px;
                box-sizing: border-box;
                justify-content: center;
                align-items: center;
            }

            .models-section-blocks-item-data-div {
                width: 100%;
                height: auto;
                display: flex;
                flex-direction: column;
                justify-content: center;
                justify-items: center;
            }

            .models-section-blocks-item-data-div img {
                width: 100%; 
                height: auto;
            }

            .swiper-button-next2, .swiper-button-prev2 {
                color: rgb(215, 253, 10);
                width: 40px;
                height: 40px;
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                z-index: 10;
                cursor: pointer;
            }

            .swiper-button-next2 {
                right: 10px;
            }

            .swiper-button-prev2 {
                left: 10px;
            }

            .swiper-pagination2 {
                bottom: 10px;
                text-align: center;
            }

            .swiper-pagination-bullet {
                background: #000;
                opacity: 0.7;
                width: 10px;
                height: 10px;
            }
            
            .location-info {
                position: absolute;
                display: flex;
                align-items: center;
                padding: 22px;
                border-radius: 10px;
                background-color: rgb(52, 52, 253);
                transform: translateY(20px);
                left: 50%;
                transform: translateX(-50%);
                padding: 5px 10px;
                margin-top: 0px;
                z-index: 9999;
            }
            
            .location-info a {
                text-decoration: none;
                color: white !important;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
                transform: translateY(20px);
            }
            
            .location-info p {
                color: white !important;
            }
            
            .location-info img.location-icon {
                width: 20px;
                height: 20px;
                margin-right: 8px;
            }
            
            .location-info p {
                font-size: 16px;
                font-family: 'Poppins', sans-serif;
                color: #3b3b3b;
                margin: 0;
            }
            
            .location-info img {
                width: 30px;
                height: 30px;
                margin-right: 20px;
            }
            

            .form-hr {
                display: none;
            }

            .form-price {
                width: auto !important;
            }












            .adress-section {
                display: none;
            }

            .adress-section-mob {
                width: 100%;
                height: auto;
                padding: 20px 0;
                display: block;
            }

            .adress-section-center-content-div {
                width: 100%;
                max-width: 1100px;
                margin: 0 auto;
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }

            .adress-section-center-content-div h1 {
                font-size: 32px;
                font-weight: bold;
                font-family: 'Poppins', sans-serif;
                color: rgb(59, 59, 59);
                margin: 0;
                margin-top: 120px;
            }

            .adress-section-center-content-carousel-div {
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 50px;
            }

            .adress-section-center-content-carousel-images-div {
                position: relative;
                width: 90%;
                max-width: 1100px;
                height: 600px;
                overflow: hidden;
            }

            .carousel-track {
                display: flex;
                transition: transform 0.5s ease-in-out;
            }

            .carousel-image {
                width: 100%;
                height: 600px;
                object-fit: cover;
                flex-shrink: 0;
            }

            .carousel-arrow {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                color: rgb(77, 77, 77);
                background-color: transparent;
                border: none;
                padding: 10px;
                cursor: pointer;
                z-index: 10;
            }

            .carousel-arrow.left-arrow {
                left: 10px;
            }

            .carousel-arrow.right-arrow {
                right: 10px;
            }

            .swiper {
                width: 90%;
                height: 400px;
            }

            .swiper-slide {
                display: flex;
                align-items: center;
                justify-content: flex-start;
            }

            .swiper-slide img {
                width: 100%;
                height: 220px;
                object-fit: cover;
                max-height: 500px;
            }

            .location-info {
                position: absolute;
                display: flex;
                align-items: center;
                border-radius: 10px;
                background-color: rgb(52, 52, 253);
                transform: translateY(20px);
                left: 50%;
                transform: translateX(-50%);
                margin-top: 120px;
                text-align: center;
                width: 180px;
            }

            .location-info a {
                text-decoration: none;
                color: white !important;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
                transform: translateY(20px);
            }

            .location-info p {
                color: white !important;
            }

            .location-info img.location-icon {
                width: 20px;
                height: 20px;
                margin-right: 8px;
            }

            .location-info p {
                font-size: 16px;
                font-family: 'Poppins', sans-serif;
                color: #3b3b3b;
                margin: 0;
            }

            .location-info img {
                width: 30px;
                height: 30px;
                margin-right: 20px;
            }

            .main-footer-icons {
                width: 20px;
                margin-left: -70px;
            }













































            .main-section-center-content-form-div form {
                margin-top: 40px;
            }

            .main-section-form-title-div {
                width: 100%;
                height: auto;
            }

            .main-section-form-title-div img {
                width: 100%;
                height: auto;
                margin-left: 10px;
            }
        }

        #whatsapp-btn {
                position: fixed;
                bottom: 20px;
                right: 20px;
                background-color: transparent;
                border: none;
                cursor: pointer;
                z-index: 99999;
            }

            #whatsapp-btn img {
                width: 70px;
                height: auto;
            }
            
            #wa-container {
                position: fixed;
                bottom: 90px;
                right: 20px;
                width: 300px;
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 8px;
                padding: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                display: none;
                z-index: 99999;
                font-family: 'Poppins', sans-serif;
            }

            #wa-container input {
                width: 93%;
                padding: 10px;
                margin: 8px 0;
                border: 1px solid #ddd;
                border-radius: 4px;
                font-family: 'Poppins', sans-serif;
            }

            .checkbox {
                position: absolute;
                float: left;
                left: 0;
                text-align: left;
            }

            #wa-container p {
                font-size: 12px;
                color: #555;
                margin: 10px 0;
                line-height: 1.4;
            }

            #submit-btn {
                width: 100%;
                padding: 10px;
                background-color: #25D366;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
            }
    </style>
</head>
<body>
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-08CEJY8742"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-08CEJY8742');
    </script>
            <a href="#" id="whatsapp-btn" onclick="return false">
                <img src="Assets/whatsapp-icon.png" alt="whatsapp-icon">
            </a>
    
            <div id="wa-container">
                <form action="" method="post">
                    <input type="text" name="name" placeholder="Nome" required>
                    <input type="text" name="phone" id="telefone" placeholder="Telefone" required oninput="mascaraTelefone(event)">
                    <input type="text" name="city" placeholder="Cidade" required>
                    <input type="text" name="car" placeholder="Carro de interesse" required>
                    <input type="text" name="var" value="first" style="display: none;">
                    
                    <p>Ao preencher o formulário, você está ciente que a Ford Fancar poderá enviar, de tempos em tempos, comunicações e conteúdos de acordo com os seus interesses. Você pode modificar as suas permissões a qualquer tempo. Para mais informações sobre alterações de preferências e nossas práticas para respeitar a sua privacidade, confira a nossa <a href="https://ford.fancar.com.br/politica-de-privacidade">Política de Privacidade</a>.</p>
                    
                    <button type="submit" id="submit-btn">Enviar</button>
                </form>
            </div>
    <header class="main-header">
        <div class="main-header-center-div">
            <img src="Assets/main-logo.png" alt="main-logo">

            <a href="https://api.whatsapp.com/send?phone=554230266042&text=Olá, quero saber mais sobre as condições exclusivas Ford Fancar do Show Rural." class="contact-button">Whatsapp</a>
        </div>
    </header>

    <section class="main-section">
        <div class="main-section-subheader-banner-div">
            <img src="Assets/LinhaRaça_desk (2).png" alt="banner-site">
        </div>
        

        <div class="mob">
            <img src="Assets/LinhaRaça (2).png" alt="banner-site">
        </div>

        <div class="main-section-center-content-div">
            <div class="main-section-center-content-scroll-div">
                <button class="carousel-arrow left swiper-button-prev"></button>
                <div class="carousel-images">
                    <div class="carousel-item" data-title="Ranger XL" data-price="R$209.990,00"  data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/RANGER XL(1920 x 1080).png" alt="ranger_xl">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-XLFEV.png" alt="secondary-image" style="display:none;">
                    </div>
                    <div class="carousel-item" data-title="Ranger XLS" data-price="Entrada + Taxa 0%" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/RANGER XLS (1920 x 1080) (2).png" alt="ranger_xls">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-XLSFEV.png" alt="secondary-image" style="display:none;">                    
                    </div>
                    <div class="carousel-item" data-title="Ranger XLT" data-price="Pronta-Entrega" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/RANGER XLT (1920 x 1080).png" alt="ranger_xlt">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-XLTFEV.png" alt="secondary-image" style="display:none;">                    
                    </div> 
                    <div class="carousel-item" data-title="Maverick Lariat" data-price="R$209.990,00" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/MAVERICK (1920 x 1080).png" alt="maverick_lariat">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-MVKFEV.png" alt="secondary-image" style="display:none;">                    
                    </div>
                    <div class="carousel-item" data-title="Maverick Hybrid" data-price="" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/MAVERICK HYBRID (1920 x 1080).png" alt="maverick_hybrid">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-MVKHFEV.png" alt="secondary-image" style="display:none;">                    
                    </div>
                    <div class="carousel-item active" data-title="Bronco Sport" data-price="Taxa 0% + Supervalorização do seu usado" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/BRONCO (1920 x 1080).png" alt="bronco_sport">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-BRONCOFEV.png" alt="secondary-image" style="display:none;">                    
                    </div>
                    <div class="carousel-item" data-title="Territory" data-price="A partir de R$212.000,00" data-price3="Últimas unidades antes do aumento do preço">
                        <img src="Assets/carros-form/TERRITORY (1920 x 1080).png" alt="territory">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-TRTFEV.png" alt="secondary-image" style="display:none;">                    
                    </div>
                    <div class="carousel-item" data-title="F-150 Lariat" data-price="" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/F150 PLATINUM (1920 x 1080) (1).png" alt="f-150_lariat">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-F150FEV.png" alt="secondary-image" style="display:none;">                    
                    </div>  
                    <div class="carousel-item" data-title="Ranger Raptor" data-price="" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/RANGER RAPTOR (1920 x 1080).png" alt="ranger_raptor">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO//LP-RAPTORFEV.png" alt="secondary-image" style="display:none;">                    
                    </div>
                    <div class="carousel-item" data-title="Mustang GT Performance" data-price="" data-price3="É o menor preço do ano para você!">
                        <img src="Assets/carros-form/MUSTANG GT PERFORMANCE (1920 x 1080).png" alt="mustang_gt">
                        <img class="secondary-image" src="Assets/LP FEVEREIRO/LP-MUSTANGHFEV.png" alt="secondary-image" style="display:none;">                    
                    </div>
                </div>
                <button class="carousel-arrow right swiper-button-next"></button>
            </div>

            <div class="main-section-center-content-form-div">
                <div class="main-section-form-title-div">
                    <img id="formCarImage" alt="Imagem do item">
                </div>              
                <form action="" method="post">
                    <div class="form-group">
                        <input type="text" id="name" name="name" placeholder="Nome" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="phone" id="telefone" placeholder="Telefone" required oninput="mascaraPhone(event)">
                    </div>
                    <div class="form-group">
                        <input type="text" id="city" name="city" placeholder="Cidade" required>
                    </div>
                    <div class="form-group">
                        <input type="text" id="car" name="car" placeholder="Carro de interesse" required>
                    </div>
                    <div class="form-group">
                        <p style="font-size: 12px;">Ao preencher nosso formulário você concorda com nossa <a href="https://ford.fancar.com.br/politica-de-privacidade">Politica de Privacidade</a></p>
                    </div>
                    <div class="form-group" style="display: none;">
                        <input type="text" name="var" value="second">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="form-submit">Conversar com consultor</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

    <section class="mobile-section">
        <div class="models-section-center-content-div">
            <h1>Conheça a linha Ford</h1>
            <p>Tudo com preço especial durante o evento</p>
    
            <div class="swiper swiper-container2" style="height: 540px !important; width: 100%;">
                <div class="swiper-wrapper">
                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div" style="text-align: left !important;">
                            <h1>Mustang GT Performance</h1>
                            <p>O MUSTANG GT PERFORMANCE é pura adrenalina. Com motor potente e design icônico, ele oferece uma experiência única de dirigir.</p>
                            <img src="Assets/carros/MUSTANG GT PERFORMANCE (1080x1080).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="Mustang GT Performance">Conversar com um consultor</button>
                          </div>
                    </div>

                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>F-150 Lariat</h1>
                            <p>A F-150 LARIAT combina potência e sofisticação. Com design robusto, tecnologia avançada e acabamento premium, é perfeita para quem busca desempenho e conforto em qualquer terreno.</p>
                            <img src="Assets/F150 PLATINUM (1920 x 1080) (1).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="F150 Lariat">Conversar com um consultor</button>
                          </div>
                    </div>

                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>F-150 Black</h1>
                            <p>A F-150 Black é o auge da exclusividade. Com detalhes refinados, potência imbatível e tecnologia de ponta, ela eleva o conceito de picape a um novo patamar.</p>
                            <img src="Assets/F150 BLACK(1920 x 1080) (1) (1).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name=" ">Conversar com um consultor</button>
                          </div>
                    </div>

                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>Ranger Raptor</h1>
                            <p>Inspirada nas corridas no deserto e com DNA Ford Performance, a Ranger Raptor traz capacidade off-road inigualável, além de  alta performance, tecnologia, conectividade e segurança.</p>
                            <img src="Assets/carros/RANGER RAPTOR (1080x1080).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="Ranger XL">Conversar com um consultor</button>
                          </div>
                        </div>
                    </div>

                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>Ranger Limited</h1>
                            <p>A RANGER LIMITED oferece o equilíbrio ideal entre elegância e força. Com tecnologia avançada e excelente capacidade, ela está pronta para qualquer desafio.</p>
                            <img src="Assets/carros/RANGER LIMITED(1080x1080).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="Ranger Limited">Conversar com um consultor</button>
                          </div>
                    </div>

                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>Ranger XL</h1>
                            <p>Simplicidade e robustez definem a RANGER XL. Feita para o trabalho pesado, ela é a companheira confiável para enfrentar qualquer tarefa.</p>
                            <img src="Assets/carros/RANGER XL (1080x1080).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="Ranger XL">Conversar com um consultor</button>
                          </div>
                    </div>
                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>Bronco</h1>
                            <p>O BRONCO é um ícone do off-road. Feito para aventuras extremas, ele entrega resistência, versatilidade e estilo incomparável para quem vive explorando.</p>
                            <img src="Assets/carros/Bronco (1080x1080).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="Bronco">Conversar com um consultor</button>
                          </div>
                    </div>

                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>Maverick Lariat</h1>
                            <p>Compacta e eficiente, a MAVERICK une praticidade e versatilidade em um design moderno, perfeita para o dia a dia e pequenas aventuras.</p>
                            <img src="Assets/carros/MAVERICK LARIAT(1080x1080).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="Maverick Lariat">Conversar com um consultor</button>
                          </div>
                    </div>

                    <div class="models-section-blocks-item-div swiper-slide">
                        <div class="models-section-blocks-item-data-div">
                            <h1>Maverick Hybrid</h1>
                            <p>A MAVERICK HYBRID revoluciona o segmento com economia excepcional e sustentabilidade, sem abrir mão de capacidade e desempenho.</p>
                            <img src="Assets/carros/MAVERICK HYBRID(1080x1080).png" alt="Bronco">
                            <button class="consultant-btn" data-car-name="Maverick hybrid">Conversar com um consultor</button>
                          </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="models-section">
        <div class="models-section-center-content-div">
            <h1>Conheça a linha Ford</h1>
            <p>Tudo com preço especial durante o evento</p>
    
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="models-section-blocks-div swiper-slide" style="display: flex; justify-items: center; justify-content: center;">
                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div" style="text-align: left !important;">
                                <h1>Mustang GT Performance</h1>
                                <p>O MUSTANG GT PERFORMANCE é pura adrenalina. Com motor potente e design icônico, ele oferece uma experiência única de dirigir.</p>
                                <button class="consultant-btn" data-car-name="Mustang GT Performance">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/MUSTANG GT PERFORMANCE (1080x1080).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>F150 Lariat</h1>
                                <p>A F-150 LARIAT combina potência e sofisticação. Com design robusto, tecnologia avançada e acabamento premium, é perfeita para quem busca desempenho e conforto em qualquer terreno.</p>
                                <button class="consultant-btn" data-car-name="F150 Lariat">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/F150 LARIAT (1080x1080) (1).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>F-150 Black</h1>
                                <p>A F-150 Black é o auge da exclusividade. Com detalhes refinados, potência imbatível e tecnologia de ponta, ela eleva o conceito de picape a um novo patamar.</p>
                                <button class="consultant-btn" data-car-name="F150 Platinum">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/F150 BLACK(1080x1080) (1).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Ranger Raptor</h1>
                                <p>Inspirada nas corridas no deserto e com DNA Ford Performance, a Ranger Raptor traz capacidade off-road inigualável, além de  alta performance, tecnologia, conectividade e segurança.</p>
                                <button class="consultant-btn" data-car-name="F150 Platinum">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/RANGER RAPTOR (1080x1080).png" alt="Bronco">
                              </div>
                        </div>
                    </div>
    
                    <div class="models-section-blocks-div swiper-slide" style="display: flex; justify-items: center; justify-content: center;">
                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Maverick Hybrid</h1>
                                <p>A MAVERICK HYBRID revoluciona o segmento com economia excepcional e sustentabilidade, sem abrir mão de capacidade e desempenho.</p>
                                <button class="consultant-btn" data-car-name="Maverick hybrid">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/MAVERICK HYBRID(1080x1080).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Ranger Limited</h1>
                                <p>A RANGER LIMITED oferece o equilíbrio ideal entre elegância e força. Com tecnologia avançada e excelente capacidade, ela está pronta para qualquer desafio.</p>
                                <button class="consultant-btn" data-car-name="Ranger Limited">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/RANGER LIMITED(1080x1080).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Ranger XL</h1>
                                <p>Simplicidade e robustez definem a RANGER XL. Feita para o trabalho pesado, ela é a companheira confiável para enfrentar qualquer tarefa.</p>
                                <button class="consultant-btn" data-car-name="Ranger XL">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/RANGER XL (1080x1080).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Bronco</h1>
                                <p>O BRONCO é um ícone do off-road. Feito para aventuras extremas, ele entrega resistência, versatilidade e estilo incomparável para quem vive explorando.</p>
                                <button class="consultant-btn" data-car-name="Bronco">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/Bronco (1080x1080).png" alt="Bronco">
                              </div>
                        </div>
                    </div>
                    
                    <div class="models-section-blocks-div swiper-slide" style="display: flex; justify-items: center; justify-content: center;">
                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Ranger XLS</h1>
                                <p>A RANGER XLS traz versatilidade e conforto em uma picape que entrega desempenho excepcional tanto no campo quanto na cidade.</p>
                                <button class="consultant-btn" data-car-name="Ranger XLS">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/RANGER XLS (1080x1080).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Ranger XLT</h1>
                                <p>Combinando tecnologia e potência, a RANGER XLT oferece desempenho superior e uma experiência de condução confortável e segura.</p>
                                <button class="consultant-btn" data-car-name="Ranger XLT">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/RANGER XLT (1080x1080).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Territory</h1>
                                <p>O TERRITORY redefine o conceito de SUV, combinando design sofisticado, tecnologia avançada e conforto excepcional.</p>
                                <button class="consultant-btn" data-car-name="Territory">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/TERRITORY (1080x1080).png" alt="Bronco">
                              </div>
                        </div>

                        <div class="models-section-blocks-item-div">
                            <div class="models-section-blocks-item-data-div">
                                <h1>Transit</h1>
                                <p>A TRANSIT é a solução perfeita para transporte comercial. Espaçosa, confiável e eficiente, ela é ideal para maximizar a produtividade do seu negócio.</p>
                                <button class="consultant-btn" data-car-name="Transit">Conversar com um consultor</button>
                              </div>
                              <div class="models-section-blocks-item-img-div">
                                <img src="Assets/carros/transit (1080x1080).png" alt="Bronco">
                              </div>
                        </div>
                    </div>
                </div>
    
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
    
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <br>
        <br>
        <br>
    </section>

    <section class="adress-section-mob">
        <div class="adress-section-center-content-div">
            <h1>Visite a Fancar mais próxima de você</h1>
        </div>
    
        <div class="adress-section-center-content-carousel-div">
            <div class="swiper">
                <div class="swiper-wrapper" style="display: flex; justify-content: left; justify-items: left; align-items: left;">
                    <div class="swiper-slide">
                        <img src="Assets/PONTA GROSSA.png" alt="Imagem 1">
                        <a href="https://maps.app.goo.gl/FzkVLA7LGdb8gbjn7" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Ford Ponta Grossa</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/cascavel.png" alt="Imagem 2">
                        <a href="https://maps.app.goo.gl/yr9txJUpy7LZRQCv9" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Ford Cascavel</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/ford-fancar-pagina-inicial-umuarama-14072024.jpg" alt="Imagem 3">
                        <a href="https://maps.app.goo.gl/HQgWAT6iTvh7ojBa6" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Ford Umuarama</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/PATO BRANCO.png" alt="Imagem 4">
                        <a href="https://maps.app.goo.gl/71gJEKKnhbQkdgeP9" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Ford Pato Branco</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/foz do iguaçu.jpg" alt="Imagem 5">
                        <a href="" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Ford Foz do Iguaçu</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/guarapuava.jpg" alt="Imagem 5">
                        <a href="https://maps.app.goo.gl/MGC5abi6Xuxkr8nX7" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Ford Guarapuava</p>
                            </div>
                        </a>
                    </div>
                </div>
        
                <div class="swiper-button-prev swiper-color"></div>
                <div class="swiper-button-next swiper-color"></div>
        
                <div class="swiper-pagination"></div>
            </div>
        </div>        
    </section>
    
    <section class="adress-section">
        <div class="adress-section-center-content-div">
            <h1>Visite a Fancar mais próxima de você</h1>
        </div>
    
        <div class="adress-section-center-content-carousel-div">
            <div class="swiper">
                <div class="swiper-wrapper" style="display: flex; justify-content: left; justify-items: left; align-items: left;">
                    <div class="swiper-slide">
                        <img src="Assets/PONTA GROSSA.png" alt="Imagem 1">
                        <a href="https://maps.app.goo.gl/FzkVLA7LGdb8gbjn7" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Como chegar a Ford Ponta Grossa</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/cascavel.png" alt="Imagem 2">
                        <a href="https://maps.app.goo.gl/yr9txJUpy7LZRQCv9" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Como chegar a Ford Cascavel</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/ford-fancar-pagina-inicial-umuarama-14072024.jpg" alt="Imagem 3">
                        <a href="https://maps.app.goo.gl/HQgWAT6iTvh7ojBa6" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Como chegar a Ford Umuarama</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/PATO BRANCO.png" alt="Imagem 4">
                        <a href="https://maps.app.goo.gl/71gJEKKnhbQkdgeP9" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Como chegar a Ford Pato Branco</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/foz do iguaçu.jpg" alt="Imagem 5">
                        <a href="" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Como chegar a Ford Foz do Iguaçu</p>
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <img src="Assets/guarapuava.jpg" alt="Imagem 5">
                        <a href="https://maps.app.goo.gl/MGC5abi6Xuxkr8nX7" class="adress-link">
                            <div class="location-info">
                                <img src="Assets/marker.png" alt="Ícone de Localização" class="location-icon">
                                <p>Como chegar a Ford Guarapuava</p>
                            </div>
                        </a>
                    </div>
                </div>
        
                <div class="swiper-button-prev swiper-color"></div>
                <div class="swiper-button-next swiper-color"></div>
        
                <div class="swiper-pagination"></div>
            </div>
        </div>        
    </section>
    
    <footer class="main-footer">
        <div class="main-footer-center-content-div">
            <div class="main-footer-center-content-lists-div">
                <div class="footer-img-div">
                    <img src="Assets/main-logo.png" alt="main-logo">
                </div>

                <div class="main-footer-lists-div">
                    <h4>Localização</h4>
                    <ul>
                        <a href="https://maps.app.goo.gl/FzkVLA7LGdb8gbjn7"><li>Ponta Grossa</li></a>
                        <a href="https://maps.app.goo.gl/yr9txJUpy7LZRQCv9"><li>Cascavel</li></a>
                        <a href="https://maps.app.goo.gl/3pxHnrWBHPHDanwq7"><li>Foz do Iguaçu</li></a>
                        <a href="https://maps.app.goo.gl/71gJEKKnhbQkdgeP9"><li>Pato Branco</li></a>
                        <a href="https://maps.app.goo.gl/HQgWAT6iTvh7ojBa6"><li>Umuarama</li></a>
                        <a href="https://maps.app.goo.gl/MGC5abi6Xuxkr8nX7"><li>Guarapuava</li></a>
                    </ul>
                </div>

                <div class="main-footer-lists-div list-margin">
                    <h4>Visite nossas redes sociais</h4>
                    <ul>
                        <a href="https://www.facebook.com/fordfancar"><img src="Assets/facebook.png" alt="facebook-icon" class="main-footer-icons"><li>fordfancar</li></a>
                        <a href="https://www.instagram.com/fordfancar/"><img src="Assets/instagram.png" alt="instagram-icon" class="main-footer-icons"><li>fordfancar</li></a>
                    </ul>
                </div>
            </div>
            <hr>
            <p>Copyright &copy; Ford Fancar 2024. All Rights reserved.</p>
        </div>
    </footer>

    <script>
        function mascaraTelefone(event) {
            var input = event.target;
            var valor = input.value.replace(/\D/g, '');

            if (valor.startsWith("595")) {
                if (valor.length <= 3) {
                    input.value = '+' + valor;
                } else if (valor.length <= 6) {
                    input.value = '+595 (' + valor.substring(3);
                } else if (valor.length <= 10) {
                    input.value = '+595 (' + valor.substring(3, 6) + ') ' + valor.substring(6);
                } else {
                    input.value = '+595 (' + valor.substring(3, 6) + ') ' + valor.substring(6, 10) + '-' + valor.substring(10, 14);
                }
            } else if (valor.startsWith("54")) {
                if (valor.length <= 2) {
                    input.value = '+' + valor;
                } else if (valor.length <= 4) {
                    input.value = '+54 ' + valor.substring(2);
                } else if (valor.length <= 6) {
                    input.value = '+54 ' + valor.substring(2, 3) + ' ' + valor.substring(3);
                } else if (valor.length <= 10) {
                    input.value = '+54 ' + valor.substring(2, 3) + ' ' + valor.substring(3, 6) + ' ' + valor.substring(6);
                } else {
                    input.value = '+54 ' + valor.substring(2, 3) + ' ' + valor.substring(3, 6) + ' ' + valor.substring(6, 10) + '-' + valor.substring(10, 14);
                }
            } else {
                if (valor.length <= 2) {
                    input.value = '(' + valor;
                } else if (valor.length <= 6) {
                    input.value = '(' + valor.substring(0, 2) + ') ' + valor.substring(2);
                } else if (valor.length <= 10) {
                    input.value = '(' + valor.substring(0, 2) + ') ' + valor.substring(2, 7) + '-' + valor.substring(7, 11);
                } else {
                    input.value = '(' + valor.substring(0, 2) + ') ' + valor.substring(2, 7) + '-' + valor.substring(7, 12);
                }
            }
        }

        function mascaraPhone(event) {
            var input = event.target;
            var valor = input.value.replace(/\D/g, '');

            if (valor.startsWith("595")) {
                if (valor.length <= 3) {
                    input.value = '+' + valor;
                } else if (valor.length <= 6) {
                    input.value = '+595 (' + valor.substring(3);
                } else if (valor.length <= 10) {
                    input.value = '+595 (' + valor.substring(3, 6) + ') ' + valor.substring(6);
                } else {
                    input.value = '+595 (' + valor.substring(3, 6) + ') ' + valor.substring(6, 10) + '-' + valor.substring(10, 14);
                }
            } else if (valor.startsWith("54")) {
                if (valor.length <= 2) {
                    input.value = '+' + valor;
                } else if (valor.length <= 4) {
                    input.value = '+54 ' + valor.substring(2);
                } else if (valor.length <= 6) {
                    input.value = '+54 ' + valor.substring(2, 3) + ' ' + valor.substring(3);
                } else if (valor.length <= 10) {
                    input.value = '+54 ' + valor.substring(2, 3) + ' ' + valor.substring(3, 6) + ' ' + valor.substring(6);
                } else {
                    input.value = '+54 ' + valor.substring(2, 3) + ' ' + valor.substring(3, 6) + ' ' + valor.substring(6, 10) + '-' + valor.substring(10, 14);
                }
            } else {
                if (valor.length <= 2) {
                    input.value = '(' + valor;
                } else if (valor.length <= 6) {
                    input.value = '(' + valor.substring(0, 2) + ') ' + valor.substring(2);
                } else if (valor.length <= 10) {
                    input.value = '(' + valor.substring(0, 2) + ') ' + valor.substring(2, 7) + '-' + valor.substring(7, 11);
                } else {
                    input.value = '(' + valor.substring(0, 2) + ') ' + valor.substring(2, 7) + '-' + valor.substring(7, 12);
                }
            }
        }

        const whatsappBtn = document.getElementById('whatsapp-btn');
        const formContainer = document.getElementById('wa-container');

        whatsappBtn.addEventListener('click', () => {
            formContainer.style.display = formContainer.style.display === 'none' || formContainer.style.display === '' ? 'block' : 'none';
        });

        const telefoneInput = document.getElementById('telefone');

        telefoneInput.addEventListener('input', (event) => {
            let input = event.target.value.replace(/\D/g, '');
            input = input.substring(0, 11);

            if (input.length > 10) {
                input = input.replace(/^(\d{2})(\d{5})(\d{4})/, '($1) $2-$3');
            } else if (input.length > 6) {
                input = input.replace(/^(\d{2})(\d{4})(\d{0,4})/, '($1) $2-$3');
            } else if (input.length > 2) {
                input = input.replace(/^(\d{2})(\d{0,5})/, '($1) $2');
            } else {
                input = input.replace(/^(\d*)/, '($1');
            }

            event.target.value = input;
        });

        document.addEventListener('DOMContentLoaded', function () {
            new Swiper('.swiper-container2', {
                loop: true,
                navigation: {
                    nextEl: '.swiper-button-next2',
                    prevEl: '.swiper-button-prev2',
                },
                slidesPerView: 1,
                spaceBetween: 30,
                effect: 'slide',
                speed: 800,
                centeredSlides: true,
            });
        });

        document.addEventListener("DOMContentLoaded", function() {
            const swiper = new Swiper('.swiper-container', {
                slidesPerView: 1,
                spaceBetween: 20,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                loop: true,
            });

            const carouselItems = document.querySelectorAll('.carousel-item');
            const formTitle = document.querySelector('.form-title');
            const formPrice = document.querySelector('.form-price');
            const formPrices = document.querySelector('.form-price3');
            const formCarInput = document.getElementById('car');
            const formCarImage = document.querySelector('.form-car-image');
            const leftArrow = document.querySelector('.carousel-arrow.left');
            const rightArrow = document.querySelector('.carousel-arrow.right');

            let currentIndex = 0;

            function updateItemCarousel(index) {
                const carouselItems = document.querySelectorAll('.carousel-item');

                if (carouselItems.length > 0) {
                    // Remove a classe 'active' de todos os itens
                    carouselItems.forEach(item => item.classList.remove('active'));

                    // Seleciona o item ativo com base no índice
                    const activeItem = carouselItems[index];

                    if (activeItem) {
                        // Adiciona a classe 'active' ao item atual
                        activeItem.classList.add('active');

                        // Obtém o src da imagem principal
                        const mainImage = activeItem.querySelector('.main-image');
                        const imageSrc = mainImage ? mainImage.src : ''; // Verifica se a imagem principal existe

                        // Tenta pegar o src da imagem secundária, se existir
                        const secondaryImage = activeItem.querySelector('.secondary-image');
                        let secondaryImageSrc = '';
                        if (secondaryImage) {
                            secondaryImageSrc = secondaryImage.src;
                        }

                        const imageAlt = activeItem.dataset.title || 'Imagem do item';  // Usar o título como alt

                        // Atualiza a imagem no 'form-title' (no caso formCarImage)
                        const formCarImage = document.getElementById('formCarImage');
                        if (formCarImage && secondaryImageSrc) {
                            formCarImage.src = secondaryImageSrc;  // Altera o src da imagem secundária
                            formCarImage.alt = imageAlt;  // Define o alt da imagem
                        }
                    }
                }
            }




            if (leftArrow) {
                leftArrow.addEventListener('click', () => {
                    currentIndex = (currentIndex - 1 + carouselItems.length) % carouselItems.length;
                    updateItemCarousel(currentIndex);
                });
            }

            if (rightArrow) {
                rightArrow.addEventListener('click', () => {
                    currentIndex = (currentIndex + 1) % carouselItems.length;
                    updateItemCarousel(currentIndex);
                });
            }

            updateItemCarousel(currentIndex);




            new Swiper('.swiper', {
                loop: true,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
            });

            document.querySelectorAll('.consultant-btn').forEach(function(button) {
                button.addEventListener('click', function(event) {
                    var carName = event.target.getAttribute('data-car-name');
                    
                    document.getElementById('car').value = carName;

                    const carouselItems = document.querySelectorAll('.carousel-item');
                    const matchingItem = Array.from(carouselItems).find(item => item.dataset.title === carName);
                    if (matchingItem) {
                        const index = Array.from(carouselItems).indexOf(matchingItem);
                        updateItemCarousel(index);
                    }

                    var section = document.querySelector('.main-section-center-content-div');
                    section.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                });
            });
        });
    </script>


    <%
    if (request.getMethod().equals("POST")) {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String car = request.getParameter("car");
        String var = request.getParameter("var");

        Properties mailProps = new Properties();
        mailProps.put("mail.smtp.host", "email@dominio.com.br");
        mailProps.put("mail.smtp.port", "587");
        mailProps.put("mail.smtp.auth", "true");
        mailProps.put("mail.smtp.starttls.enable", "false");

        // Credenciais do email
        String senderEmail = "email@dominio.com.br";
        String senderPassword = "";

        // Destinatário do email
        List<String> recipients = new ArrayList<>();
            recipients.add("email@dominio.com.br");
            recipients.add("email@dominio.com.br");
            recipients.add("email@dominio.com.br");
            recipients.add("email@dominio.com.br");
            
        // Criação da sessão de email
        Session sessions = Session.getInstance(mailProps, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
            // Cria a mensagem de e-mail
            Message message = new MimeMessage(sessions);
            message.setFrom(new InternetAddress(senderEmail));

            for (String recipient : recipients) {
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            }
            
            message.setSubject("Solicitação ShowRural");

            String charset = "UTF-8";
            String conteudoEmail = "<html>" +
            "<head>" +
            "<title>Solicitação de cotação</title>" +"<style>" +
                "body { margin: 0; padding: 0; background-color: black;}" +
                ".main-mail-section {width: 500px; height: 400px; margin: 0 auto; background-color: rgb(19, 19, 19);}" +
                ".main-mail-title {width: 100%; height: 60px;}" +
                ".main-mail-title h1 {position: relative; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-weight: 400; font-size: 25px; padding-top: 35px; margin-left: 35px; color: white;}" +
                ".main-mail-body {width: 100%; height: 350px;}" +
                ".main-body-mail-text {width: 90%; height: 90%; padding: 10px;}" +
                ".grey-text {font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-size: 16px; margin-left: 35px; color: rgb(190, 190, 190); text-align: justify;}" +
                ".main-mail-body-relator {position: relative; margin-left: 35px; max-width: 93%; overflow-wrap: break-word;}" +
                ".main-mail-body-relator h2 {position: relative; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-weight: 400; font-size: 20px; padding-top: 8px; color: white; margin: 0; padding-top: 10px; margin-bottom: 5px;}" +
                ".main-mail-body-relator p {font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-size: 16px; margin-left: 35px; color: rgb(190, 190, 190); text-align: justify; margin: 0; margin-bottom: 3px;}" +
                ".main-mail-body-relator h3 {position: relative; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-weight: 400; font-size: 20px; margin: 0; padding-top: 30px;  margin-bottom: 5px; color: white;}" +
            "</style>" +
            "</head>" +
            "<body>" +
                "<section class='main-mail-section'>" +
                    "<div class='main-mail-title'>" +
                        "<h1>Solicitação da Ford Show Rural</h1>" +
                    "</div>" +

                    "<div class='main-mail-body'>" +
                        "<div class='main-body-mail-text'>" +
                            "<p class='grey-text'>Você recebeu uma solicitação:</p>" +

                            "<div class='main-mail-body-relator'>" +
                                "<h2>Detalhes do solicitante</h2>" +
                                "<p><b>Nome: </b>"+name+"</p>" +
                                "<p><b>Telefone: </b>"+phone+"</p>" +
                                "<p><b>Cidade: </b>"+city+"</p>" +
                                "<p><b>Carro: </b>"+car+"</p>" +
                            "</div>" +
                        "</div>" +
                    "</div>" +
                "</section>" +
            "</body>" +
            "</html>";

            message.setContent(conteudoEmail, "text/html; charset=" + charset);

            // Envio do e-mail
            Transport.send(message);

            if(var.equals("second")){
                out.println("<script>");
                    out.println("window.location.href = 'https://showrural.fancar.com.br/agradecimento.html';");
                    out.println("</script>");
            } else {
                out.println("<script>");
                    out.println("window.location.href = 'https://api.whatsapp.com/send?phone=554230266042&text=Olá, quero saber mais sobre as condições exclusivas Ford Fancar do Show Rural.';");
                    out.println("</script>");
            }
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
    %>
</body>

</html>
