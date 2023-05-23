Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6020D70E661
	for <lists+linux-man@lfdr.de>; Tue, 23 May 2023 22:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232151AbjEWUUV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 May 2023 16:20:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbjEWUUU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 May 2023 16:20:20 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1000311D
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 13:20:18 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f42ba32e24so2280405e9.3
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 13:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684873216; x=1687465216;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WKe9kyJ9kd7KfMFBiaDSYwg8OKabtLusK41uaG8FNhU=;
        b=kefG4BYj3ksYrZ6wAQqAQAZHshkten3u7kc5vBCox3lhHcNapy+U+lODy99xES3Ng5
         uESqmUPSAZbWfWjUJTyXMATf0jU8Gt0+JyZWuO26hhnd9YTyYJa2DEM3DG22THYsJ/Xs
         x1OICvchZbmOuyE0gMWx2IphrXwI9r1kXsZdA0EzZitAJazg5EN5XwxkFME4M0rRJzEi
         mmy3l11nk11EZFzJTzx+MQvWrA6Tn90CHtRSKrGINONwQ4p2EI2o/oYWMxLpDWoDYrfV
         N/z0ZlFe2DzCcmfppWhAqvaNTTR49ujCD5RRETL+X2ruxvCr9oe63/KFhaizbyh5EMTi
         Otzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684873216; x=1687465216;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WKe9kyJ9kd7KfMFBiaDSYwg8OKabtLusK41uaG8FNhU=;
        b=YH/4v//eipRPxqcyQ5eTaOgtQDodQIL6y75D3D2bQKWp/ZROcyMkhGC9iEFfOxApXG
         KkVO1s5m5M5Krzv9MWhgHXVkTcH97ng9SR5Kv8TnLIALWVINnCBO0PDN8Mi+5z7U1foV
         DLxw2kO9qNf/pIhg55wxY6HZUHUtXt0EEXpEKAcx1zeaWwOiEoMinxIH+l0WulNGlR1u
         A8IYe/wX5rT/IssabXG8PTOS/zm4mbFuLmJ/4L4Yxcq4IRHeQsdfnM6fpvmjcHFfQq81
         jzT0cqcNpPzsAN6EUkrUyX7tUOXZkej4IV2DQa2oisGGYeIsU78D8oD4+TLtPQmXbxej
         KJAA==
X-Gm-Message-State: AC+VfDymIuHtwV7VwuZGi6/jopIK8UWaeCNdjEih5r5E1R8roK56cEUk
        rkJq/JghcQeRyUT5PSLm2e0=
X-Google-Smtp-Source: ACHHUZ5j07PHa+BweOyZaV+xBerct93GXH2cwPOC7aLJdMV8mEE9viNwDbPDUpEdIkYj520AN98/zg==
X-Received: by 2002:a05:600c:296:b0:3f5:1728:b13f with SMTP id 22-20020a05600c029600b003f51728b13fmr10835541wmk.11.1684873216220;
        Tue, 23 May 2023 13:20:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c4-20020a7bc004000000b003f42461ac75sm16063879wmb.12.2023.05.23.13.20.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 13:20:15 -0700 (PDT)
Message-ID: <389e9350-cb85-9a21-4a06-56344b7057e8@gmail.com>
Date:   Tue, 23 May 2023 22:20:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] putenv.3: originated in SysVr2; in 4.3BSD-Reno; fixed on
 modern systems
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8GfVEPiJccqOclUIqvtvkVBd"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8GfVEPiJccqOclUIqvtvkVBd
Content-Type: multipart/mixed; boundary="------------PkO6ACvxM0kE0qZ47Dy94QeC";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <389e9350-cb85-9a21-4a06-56344b7057e8@gmail.com>
Subject: Re: [PATCH] putenv.3: originated in SysVr2; in 4.3BSD-Reno; fixed on
 modern systems
References: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>
In-Reply-To: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>

--------------PkO6ACvxM0kE0qZ47Dy94QeC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


Hi!

On 5/23/23 22:17, =D0=BD=D0=B0=D0=B1 wrote:
> Fixed in:
>   NetBSD 6     src lib/libc/stdlib/putenv.c 1.13
>   FreeBSD 7    putenv(3) says so
>   OpenBSD 4.6  src lib/libc/stdlib/setenv.c 1.10
> and is correct under current(?) MacOS as well
>=20
> The current wording implies that all of 4.4BSD's descenants also carry
> this bug (at least it did to me): they did until like 2009 but they're
> fine now
> ---
>  man3/putenv.3 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/putenv.3 b/man3/putenv.3
> index 59c2ff1..cb80b29 100644
> --- a/man3/putenv.3
> +++ b/man3/putenv.3
> @@ -83,7 +83,7 @@ .SH ATTRIBUTES
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY
> -POSIX.1-2001, SVr4, 4.3BSD.
> +POSIX.1-2001, SVr2, 4.3BSD-Reno.
>  .PP
>  The
>  .BR putenv ()
> @@ -119,7 +119,8 @@ .SH HISTORY
>  On the one hand this causes a memory leak, and on the other hand
>  it violates SUSv2.
>  .PP
> -The 4.4BSD version, like glibc 2.0, uses a copy.
> +The 4.3BSD-Reno version, like glibc 2.0, uses a copy;

Maybe we should say s/uses/used/?

Cheers,
Alex

> +this is fixed in all modern BSDs.
>  .PP
>  SUSv2 removes the \fIconst\fP from the prototype, and so does glibc 2.=
1.3.
>  .PP

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------PkO6ACvxM0kE0qZ47Dy94QeC--

--------------8GfVEPiJccqOclUIqvtvkVBd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRtH/cACgkQnowa+77/
2zJfIBAAgdX3mZR6ccVczpr4Hw9FQwX1Rjsd47K7lNRZUEn7EqweAyVXr7rXqyI+
PFch+ZYlELjTUleg/3PK2SZh5QFqZcMwvGuaa6Ctwn0A0fs3m5ZArZb5m75/LyrU
k/uZHY7bW2w2UVFoDmm5euBqcchwHVv5H98OGfqzxYUAJLeXF6w11gxcwj4FRl5L
NEdzR+BOSXENOtaSY3xh3o8TG690DvNLx9gV0Eetoe7qK4BLD9KXsrYhBWAzVzKs
YaPCtLOE5JIBezc5+oW8EyYabjnER7WsUAKasvE2Yx4EJPh3wNa9qgQVNY4J26Rs
jccc3EO1m2eOaabupWmN1v5K5vRU8uM5fLMegxjQIY+J6DsLLBgvrDWbfjDWFSIH
rV0efVebWCzYU7owSTwH1cDYZ5FR7vbucXjv5rU405WwHVm64ddXPIRhEYJQBoMH
RPw82EHzYxHbhDwgJ+SQTMjpGgK+JjI2+GdQTq5mZ8e9OLH9H++FMT1bWg0CBVje
OafkkMyWgs2PNZF5Hm6CWcOvyNa3sp6z234YlYKmEkx+mjCi1jt5kgEq0PN8yRuq
jgrQqf+D97tqeEsSxoJ84L2vQ9v+B8f0talYe1J7isOzBEs3iirPNX0G/xEVng/e
NTXhXDTeT6Pl0nGjx4VhzGhDisXMKijaxicwIXzd4uj/1fAuQA0=
=AFFR
-----END PGP SIGNATURE-----

--------------8GfVEPiJccqOclUIqvtvkVBd--
