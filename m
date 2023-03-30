Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3341D6D04F7
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 14:39:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231349AbjC3MjM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 08:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231355AbjC3MjG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 08:39:06 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3D91868B
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 05:38:58 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id bg13-20020a05600c3c8d00b003ef90adc168so3893307wmb.5
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 05:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680179937; x=1682771937;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rxH8jkTQzSpC37JpOfl43v3AJ81U6CXiJj5bcMAIjyc=;
        b=HfRhwGGxurFs1DI2733M+yJHmGLVer8TkI1YC0ZKnzX0b9BbZFMxp5Gam3ihEmwSL1
         wZGfORSFxGter3gM9VEJSTQYmaL13MzvzKlCXEq4cfrlTrbtufBwawkOzawW35iIr9ac
         kkmen+LaAJ0MOtbiWro/Vmryhe1kAU6AK04CSa+MeiuXpAEU7qru2mGEuevqaYFUTa26
         gYoHDRc+Ws1mZZ0xwzx0zsd4nfwHLA70ye0q6wyG5/ASETVUqKKmZxXOy34s2TewSKVA
         uE9DuzuALQADjmrkNpZKGP8AC9lyiPuzSvoNJRv9PYsihWEWM4HqkGeW5VENhu/2+KFx
         JIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680179937; x=1682771937;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rxH8jkTQzSpC37JpOfl43v3AJ81U6CXiJj5bcMAIjyc=;
        b=43R/HwPVwzLQEokyYk7E5vCcDZ/789EJc9GCpJLGVlzCwq1uH7eeymHduJ+rmH9hnf
         8Adt8dsaIZdwTmBNCiLginQGhL9vFWVtNO7nmJtU35WrZBJuKVchtxZbMPY037gt2NM0
         N68YpfK3RkLbSAYY3v7oMh5E6mHQTI7hzsLwuzxvSvC+QpH3arAtJIDUCGxUw7D2za+v
         FcZqETLaYRugyDa8R8hoSw/owTe9ib8zgC8f5VAysuEZfP3zMVP1wbn433YgsVQJ04+F
         CgY6t7OWWRNTCBzCICOFTKTfEHbKkAm3Ly9GVAKQyZnuav0fv6OgX4z+vQuMN/zdc5S+
         GsxA==
X-Gm-Message-State: AO0yUKW5/+6nNaB6geHF2teEdwGqCuk5e3c8/RRgCO/zYpKsQLjiIV3B
        jBdINoISRQrVdyeOPminSeUTsYqmgyo=
X-Google-Smtp-Source: AK7set+PIqWIIFkbuI8wnv4Znq34/T5eebrISDAjpeI9q/PAdpB4E8zlP8Ku2ZuafRSYzUSR5NYLgQ==
X-Received: by 2002:a7b:cbcc:0:b0:3ee:1afc:c14 with SMTP id n12-20020a7bcbcc000000b003ee1afc0c14mr18143549wmi.11.1680179936544;
        Thu, 30 Mar 2023 05:38:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s7-20020a05600c45c700b003ee2a0d49dbsm6023941wmo.25.2023.03.30.05.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 05:38:56 -0700 (PDT)
Message-ID: <4265aa4c-baeb-cbd7-fca4-ba62cb9cf9ae@gmail.com>
Date:   Thu, 30 Mar 2023 14:38:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] bin/stdc: Case-insensitive standard
Content-Language: en-US
To:     linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
References: <ZCTvhG3a0A5N8enU@dj3ntoo>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZCTvhG3a0A5N8enU@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------O2x6c0Z6Sl6WHIYqpuf8NODd"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------O2x6c0Z6Sl6WHIYqpuf8NODd
Content-Type: multipart/mixed; boundary="------------y0sdUoJz7PHU7s8q0yvMK3U0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Message-ID: <4265aa4c-baeb-cbd7-fca4-ba62cb9cf9ae@gmail.com>
Subject: Re: [PATCH] bin/stdc: Case-insensitive standard
References: <ZCTvhG3a0A5N8enU@dj3ntoo>
In-Reply-To: <ZCTvhG3a0A5N8enU@dj3ntoo>

--------------y0sdUoJz7PHU7s8q0yvMK3U0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari,

On 3/30/23 04:10, Oskari Pirhonen wrote:
> Perform a case-insensitive match on the standard given on the cli so
> that the following works as expected:
>=20
>     $ stdc c89 printf
>              int printf(const char *format, ...);
>     $ stdc C89 printf
>              int printf(const char *format, ...);
>=20
> Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>

Patch applied.  Thanks!

> ---
>  bin/stdc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/bin/stdc b/bin/stdc
> index 1067cf8..5630825 100755
> --- a/bin/stdc
> +++ b/bin/stdc
> @@ -43,7 +43,7 @@ case $# in
>  	;;
>  esac;
> =20
> -case "$1" in
> +case "$(printf "%s" "$1" | tr "[:upper:]" "[:lower:]")" in

I changed this slightly, to use single quotes when possible.

Cheers,
Alex

>  c89)
>  	libc_summ_c89 \
>  	| grep_proto "$2";

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------y0sdUoJz7PHU7s8q0yvMK3U0--

--------------O2x6c0Z6Sl6WHIYqpuf8NODd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQlgtAACgkQnowa+77/
2zJY2g/9Gvo/Qc/7JRobEKowRJQdKym6vlCbkU+k6RrxGd0YBFEvp1tgJulMhyg8
f8Gyjmv0OvxC6oyrkSb+z+H2u8vcv4sPUjyT022NL3EqI1tI0iAuLnb0U8kYNASw
qt3MP4YzBk8+zAcB2n/TeE8d4G8i4wRIfAokSVUoClVbuOP+6OB/Hbtg/AabJETL
/g2fE90zDd5Qw2CXSySC1+pYXlcix9SpDcDKLrQNGgzYZQjHl5oaFBO52MoaQk7C
ifXb1UqZcSkGMj8fZ8P1sijralK+7ZfMwJ5Ju7ijEGfSisKgDr/4IUJ054Jk71Zj
jhP2PT7aHxs0i6gmzMbii4G8peDqOQRTZe3kJ+G15eGKrSKjxT+CRCeituYFjQ0j
Z8p85VFE4L8GzfwFgJENUdhn6nRedLX24UsjjxgquFdHwuhIpHQBj1dH4JFYrY3A
zgepdWWRXSdqc6fJ1xnaaoHDwzMKy8z8g0USudE3Vwdy9zvZK5GK1HIMULURmss9
3Vln7n+cn0CNqPiFzKNYlkPASYJliiKTwrPCbOSjMUaJqhb7HwhhOCvKS1KMAbEU
u6Q2Lm9DANN0ROtGcSKRnnJf8jJk6XCjOozg3EH5eKbT3TxFfDlc4xFUQdH++cwz
djsY7ARBi+OEjlNYp0ulcd6Pjd29CK7DCx3Cvlo226m58IxPK4s=
=iFKg
-----END PGP SIGNATURE-----

--------------O2x6c0Z6Sl6WHIYqpuf8NODd--
