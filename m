Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4A026EA078
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:11:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232767AbjDUALe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:11:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbjDUALd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:11:33 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDD44EC0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:11:32 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-2f6401ce8f8so694380f8f.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682035891; x=1684627891;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLcFlYMLMSfMicT8QT+eyyvdzjLH+OdzpA6CsE3vk1o=;
        b=VLzCrvc/7z6lv5M676Ffd8RO+zJ/cNvYFb1zwZXBi3fJ4aA08f7GQ27NxUNCLKnnC9
         Dy4wQXLW4En4LN/qE0TSlNiUAFGyAGjoc+l4YNiGWBFvij5pbBOaMNgxY3lU9iYvo+fk
         jNlwkmPvG+MUB39yU0Vdye95oDAHJvnVdQxejOc0flLesK+58X2+qg7iV+mSZ9b0JpcC
         lJ4PXJ3r3wpcygFAk7MZiIDPNjMP5d+zml0vTxlDVczEylN2Ul6Mbl3+C5XeSpMekGan
         yAEdLLzNHYDHn52aT5kjmvWk/6M4cG8jL8U689mKD3+5uMmsGIXutm9gRBYEHoRUbfxy
         03XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682035891; x=1684627891;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dLcFlYMLMSfMicT8QT+eyyvdzjLH+OdzpA6CsE3vk1o=;
        b=ZewLkFC/8g5eQVdseInuVveXJao3KMNWWeU1cCr2BoLRujrYjLLL+xZmDqtEZyLwsL
         pM9lsnkQkTeROXYudKIAJD69qPAetMLmwmR4DWhFqTySmq+pJqY6/qjOOgSQxnglFspg
         r/eOXgh+WXu2z0cmdBq0aHIsdJqTN0tisWSB9JcbdnCwRclwikGmNLUhr/d1DT2a41ix
         07ajmKZypWfS11McGoDvOpXfi1zxCrsFtCrD98ha1igSq+VymCozgCxUh/eGpf8sv0zM
         ETqOeZCb3jheNtw+k/e+MVbSo5l9ntejxPVYY0IJ8ZsGkqPbAxxnJq90U0w9OD+KC+bs
         nkSQ==
X-Gm-Message-State: AAQBX9dhj0lFeXSh6Y0+QzryEW7F2ewuvbEl1rJrT1lIa6BvB17Q8HTp
        lY1/V6yjh4v4OAIRXQFlXiPM1os/HB4=
X-Google-Smtp-Source: AKy350ZYtf0Vb0vnGE5nzPk+5q3XKeF1/WnRDjY7DMHIfhyJNEL4ohAny93CNK7QtY0F1gT2jNjfVg==
X-Received: by 2002:adf:f98f:0:b0:2fd:c43a:b713 with SMTP id f15-20020adff98f000000b002fdc43ab713mr561703wrr.7.1682035890821;
        Thu, 20 Apr 2023 17:11:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l18-20020a05600012d200b002ceacff44c7sm3114619wrx.83.2023.04.20.17.11.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 17:11:30 -0700 (PDT)
Message-ID: <91390ddb-19e9-baec-3886-4a88434ca446@gmail.com>
Date:   Fri, 21 Apr 2023 02:11:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] syscall.2: Document ENOSYS error
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230420200841.14527-1-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230420200841.14527-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0DMhjG0H0xSVu9K3JLOcowW9"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0DMhjG0H0xSVu9K3JLOcowW9
Content-Type: multipart/mixed; boundary="------------0wHCd49BeIGUYnQ1qLl53ct9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <91390ddb-19e9-baec-3886-4a88434ca446@gmail.com>
Subject: Re: [PATCH] syscall.2: Document ENOSYS error
References: <20230420200841.14527-1-gnoack3000@gmail.com>
In-Reply-To: <20230420200841.14527-1-gnoack3000@gmail.com>

--------------0wHCd49BeIGUYnQ1qLl53ct9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 22:08, G=C3=BCnther Noack wrote:
> Link: <https://lore.kernel.org/linux-man/31ecebc5-1b97-b610-a097-f260ec=
4d4c8d@gmail.com/>
> Suggested-by: Alejandro Colomar <alx.manpages@gmail.com>
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

Patch applied.  Thanks!

Alex

> ---
>  man2/syscall.2 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 55233ac51..0ba537f4f 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -64,6 +64,12 @@ In general, a 0 return value indicates success.
>  A \-1 return value indicates an error,
>  and an error number is stored in
>  .IR errno .
> +.SH ERRORS
> +.TP
> +.B ENOSYS
> +The requested system call number is not implemented.
> +.PP
> +Other errors are specific to the invoked system call.
>  .SH NOTES
>  .BR syscall ()
>  first appeared in
>=20
> base-commit: 04e686326f03a28c187e00821e234b2ecd0fab5b

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0wHCd49BeIGUYnQ1qLl53ct9--

--------------0DMhjG0H0xSVu9K3JLOcowW9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRB1LEACgkQnowa+77/
2zKVKQ/+M2su3rr8o7Z7YHmISTXDFmmTzDwXIN4+8LuZxcKal/QiD6PqjEfbjs46
325WgLM48PMX7O3bZ9rRgZh7Jnvh0C8R8rzPlt2jp1tinyCbsLft8ck6zCPG3lQT
YkTCUW0Cs06DVPAk2FDMxPpT6PlABpKRRBVoDtDbXLFmotEft/8z0V0nnvKlqFvA
yGxfWayIYA5ddFQNa5TvYR+z6eOPGBjDNALiWhEescS0L1vAeWvVrbKepPuTwnpd
Hjbyl0I6g/JWzH3E82i9tnHc/k0jL117uZ2XfTlZWByoFjdU8sxOWi/uzI/D7nmy
7UrMAE+n0kdXWWi8yAq2ISCIg3awg7MEvFoAlceHl4qtq+eaC30xAMTkG8SCCG8j
BpNdVI9t3y6AxA1l3/xjTmYAFp5/B+GWVDb8mn9OULFKjhbIZRFNs62Da52A6I9K
V0AaerWZK9oVOf9RLOar1l3crPRD9R6rEoVYyc7o95HImscTf6bwvwQ1vDNommny
YjHIqjWlGYh9/iqpYEi7zK9Pw+N52b5q7SJB8Eb7klcZhBr0YUNJHoP1104AS5SL
XnW2lHnPpP2AgXei11kcU6qUk9TBFrByl7fzzHFbm3tmkl2gxSzSUoggxfO33zSn
g7fz0mpDkcK+UnQDl/uhYfbxND83VkIqBRNqoukWQurbmO610qo=
=hudL
-----END PGP SIGNATURE-----

--------------0DMhjG0H0xSVu9K3JLOcowW9--
