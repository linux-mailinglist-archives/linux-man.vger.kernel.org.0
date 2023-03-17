Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB5706BF5F1
	for <lists+linux-man@lfdr.de>; Sat, 18 Mar 2023 00:05:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjCQXFU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 19:05:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbjCQXEp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 19:04:45 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CD373770B
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 16:04:36 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id r18so5738019wrx.1
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 16:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679094274;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lfl8Yq6tqOqgzkYZcjxSzLEWT3CrmXxhl0f3O+/q/Ak=;
        b=FeShV7qiJBZmH0WuyYI2H0zvaeZt7nmSgxGlzWZ/Gf7tAa6KVfxC1i+9viPFJWl5ax
         1HXycrKj3s3Mnw/QYf5I8wohJwnIjEcyJ6Wj3gStPkuSeD5vZSQOWLiyjNVf87xF6hmu
         ml4zFPqM2yf98bZvPLDRDNigJHtB2bn7fXjJkURykJu1HkqKugEY6Ti3FsYTWL86Z9/m
         Ny0+2+/5C6x/rQaR5jhm+p5MwgLaSBk1JG6isUsBWNJYRm9Qjwi2R2gIaECS4Ngr8BpQ
         pghFKf84RyOls9L1siAimB/Uhndj5owTZleWTDvQBctfVcpkMP3ybY8QkEH5OivBlz/m
         a+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679094274;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lfl8Yq6tqOqgzkYZcjxSzLEWT3CrmXxhl0f3O+/q/Ak=;
        b=sfLtwQh+vIieL3F5rEgnNT9EpTr6EYm2UTzV5ySYhUULo+tkIjEchZH22xNFGUljbt
         0mGhUPtGawslaMArmp61B72OjW7heEqMk35iGQ4b2hJ7L6eUy05t2RZIthgmbrQZKyFX
         X7DIf+ssyJZEH1lUyPB24UBAnplsSvA8NC+/iiyXjGOVhz9K0OoTsKRENIE4yrVGa2db
         1SWb2vSRzGf89vB4sGh0g9Po71da3LXO8N7AIsJ6p+IepSw22ptec0ZyhiUlv56GlFsQ
         regyS3uvsVc8FGsHzG1uP8BUGuuVDkT5Z4k8u9s0foT3k1rEXBlVfQpITFBaPuzOKyeT
         YH7g==
X-Gm-Message-State: AO0yUKXblm5SD/9UEJLimSZfNC6ufGnifWmmXyyECSsD3qMYW+WbObBt
        fId0wOzdDna1WZRB5YY/HZs=
X-Google-Smtp-Source: AK7set9n1fQcu9YUoLq2MqntfkgZmJZpRvO7TTTCuZ+nx/LRYmpSqZrSoduuk3yfhGY0A8FTyQyEbw==
X-Received: by 2002:a5d:40ca:0:b0:2d4:493c:81ad with SMTP id b10-20020a5d40ca000000b002d4493c81admr1106509wrq.5.1679094274503;
        Fri, 17 Mar 2023 16:04:34 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b5-20020adfee85000000b002c573778432sm2926152wro.102.2023.03.17.16.04.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 16:04:34 -0700 (PDT)
Message-ID: <e86e7e9f-64bd-7d08-38c6-a892dc08af46@gmail.com>
Date:   Sat, 18 Mar 2023 00:04:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] pthreads.7: tfix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230317220419.1348-1-schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230317220419.1348-1-schwindl@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Lqo5NPG52WrqCBw0f0ykF6b0"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Lqo5NPG52WrqCBw0f0ykF6b0
Content-Type: multipart/mixed; boundary="------------8N4zWdNflQxIMcpoCYLoNFJg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <e86e7e9f-64bd-7d08-38c6-a892dc08af46@gmail.com>
Subject: Re: [PATCH] pthreads.7: tfix
References: <20230317220419.1348-1-schwindl@posteo.de>
In-Reply-To: <20230317220419.1348-1-schwindl@posteo.de>

--------------8N4zWdNflQxIMcpoCYLoNFJg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 3/17/23 23:04, Tom Schwindl wrote:
> Signed-off-by: Tom Schwindl <schwindl@posteo.de>
> ---
>  man7/pthreads.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Please also fix the other cases:

$ grep -rni cancellation man*
man3/pthread_cancel.3:64:Cancellation clean-up handlers are popped
man7/pthreads.7:238:.SS Cancellation points
man7/attributes.7:70:.\" AC in AC-Safe stands for Asynchronous Cancellati=
on.

Thanks,

Alex

>=20
> diff --git a/man7/pthreads.7 b/man7/pthreads.7
> index e0aad99215d4..50d211a9adba 100644
> --- a/man7/pthreads.7
> +++ b/man7/pthreads.7
> @@ -235,7 +235,7 @@ pthread_setcancelstate()
>  pthread_setcanceltype()
>  .EE
>  .in
> -.SS Cancellation points
> +.SS Cancelation points
>  POSIX.1 specifies that certain functions must,
>  and certain other functions may, be cancelation points.
>  If a thread is cancelable, its cancelability type is deferred,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------8N4zWdNflQxIMcpoCYLoNFJg--

--------------Lqo5NPG52WrqCBw0f0ykF6b0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQU8fkACgkQnowa+77/
2zKjXw/8CL/7YiY2IcZie1zOWWUWneZwfCmZu7VVdv+IdmI+L7eilquX34L/0NhI
HJv+tJQR4smSsSpr2WczG7dyuT7dCTnYgTelsucXRIcoGh4kGtRsTv4szwhJWv4x
jxtao4Wa6zWXt/iMEP9pqnodypIDfU+Zz6/ns6uWV9EHDKvYw18zo2wGS5OPND8O
BnMdykX+hUC4+cIBzkOhDtbWh8TvRIKQZHe5KpYV1wsMZpKBneqjfhmHgZykIbVK
de4a7pNcvcJgXCJslZB2i7eeINlhkYphNliiTEPlIpnNMQgpVv/4OIxpJgOmNjPc
WBWWKtvPE9ilawLpk0TXMap/CdhREeLO989535iX2pbZJS/bOO3icDlN+srLckp6
+k1KkKG5zXipykp2xCKvvcyRMpMIaaxolzw7Oq/+VHaCUTRZQQDOu8CSKm+ncasQ
ghQjKEc8imhrAts/o1zbgih3Kf1e51QZ6aM2xcMeC+brB9Euuc7uZOi35P8+7VB4
C+zv/v5vH0DZLmBBrU4OYDubvGMum3uV0eYW+YFQ+tvhpMrSyXkHc+eCMq7nN6Uu
SFTcD39bj8nJibs57F6fzE7GXVKYHfipLwyuY261kTtPXKOr1pLncUnRE/xAku4i
LwrhAK3r4/Guji338xyd/MExxbbQrRQ1gUp517HyFe97hWMhZrw=
=Tbv7
-----END PGP SIGNATURE-----

--------------Lqo5NPG52WrqCBw0f0ykF6b0--
