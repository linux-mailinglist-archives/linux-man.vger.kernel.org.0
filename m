Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A45136DB73A
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 01:34:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbjDGXeK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 19:34:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbjDGXeE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 19:34:04 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20933E1BE
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 16:33:44 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id j1-20020a05600c1c0100b003f04da00d07so4902196wms.1
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 16:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680910407; x=1683502407;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H05m65Ct/a+86CrODfK0WoIKqu3VXCzdEMtywLZVSbg=;
        b=GoLOBvxeM5LjzF9y3+tYPbTFE5wyT8quJtDMvnydrMUAHIhyP+ScBPUf/rRltrw/yN
         n0PZ/JRSXel+XwXhBXlnDhbvqZkwpWBA+mXYua1eLxeLEPvkZjQ1jlO+s4kPNsn8o25h
         U441iM1MLDw24e2tsQov5+v4gXkVzyP1M+Ba6gOqqvDy6Og+5hPeBZCMc+QCQyw3rwor
         3i8tsIcJNYQgEBmiGEKOktvmrzECgwnh+2u1JBowdxonVQcj69PImCHqzh02ht+GRIc5
         cI7actkg5CEeRWdbLDxqAJPrGn1HLGjyOlRR0Y8chqinR7MGV6W/ITv7mJnEK3rr0mFQ
         op+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680910407; x=1683502407;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H05m65Ct/a+86CrODfK0WoIKqu3VXCzdEMtywLZVSbg=;
        b=ACmmh+5+w5zbbg7Y/+kDl6nPoyXJrd4KwP7kCcFBOpOo1nVQTdrMGHsKIagnaxCfVJ
         Ub/NIZNgWB/lhwxukNzAV+qgNMKKYMCXdN1w9XQC93MK8V7CDX7zZPS5F8xDtu74+9Rp
         DKN3wZCBB605brw/fQJQdw5TsoZ0080EXfWWKqXi6hmfEplT2vMebj87q4CZ8gmb9X06
         /iP65N1iIpc4eHIyyFxD7pSC1rX0hjyYVkeG/QmVbAG94dKSg8NPD0ckshpgL8iDdNgW
         kXFTrHdbq5ZFqvHBEwJIkfJNx2tOOWBCzUR5u6/Pz/QXf6gbbcRPFv1LnMpeFkKk3fMd
         nwdg==
X-Gm-Message-State: AAQBX9djnglpFNUwH12Uo+qFyFugG6twGFvyxXUKobhATlojfpl2p+IK
        9Nl4qvzrP70Y3T6QxjGePJc=
X-Google-Smtp-Source: AKy350bqM0Sj6aZ4/5DOGk6hXJVkVeH0zmo8k5gyPsd5M+WCbk9f1T9KkcFYlpGX7D33Z2GMf3lnpQ==
X-Received: by 2002:a1c:7501:0:b0:3ea:e834:d0d1 with SMTP id o1-20020a1c7501000000b003eae834d0d1mr2280382wmc.36.1680910406736;
        Fri, 07 Apr 2023 16:33:26 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c210f00b003ee20b4b2dasm5996309wml.46.2023.04.07.16.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 16:33:26 -0700 (PDT)
Message-ID: <70457ddc-2210-f453-c70b-23a286a404dd@gmail.com>
Date:   Sat, 8 Apr 2023 01:33:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] stat.3type: tfix
Content-Language: en-US
To:     Daniel Verkamp <daniel@drv.nu>, linux-man@vger.kernel.org
References: <20230406065803.3646818-1-daniel@drv.nu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230406065803.3646818-1-daniel@drv.nu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RC4isoxl0qTCemp2v1vGtMtp"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------RC4isoxl0qTCemp2v1vGtMtp
Content-Type: multipart/mixed; boundary="------------uYW3e2gJ3bijefxzEwAW6O0C";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Daniel Verkamp <daniel@drv.nu>, linux-man@vger.kernel.org
Message-ID: <70457ddc-2210-f453-c70b-23a286a404dd@gmail.com>
Subject: Re: [PATCH] stat.3type: tfix
References: <20230406065803.3646818-1-daniel@drv.nu>
In-Reply-To: <20230406065803.3646818-1-daniel@drv.nu>

--------------uYW3e2gJ3bijefxzEwAW6O0C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

On 4/6/23 08:58, Daniel Verkamp wrote:
> Signed-off-by: Daniel Verkamp <daniel@drv.nu>

Patch applied.  Thanks,

Alex

> ---
>  man3type/stat.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3type/stat.3type b/man3type/stat.3type
> index c511b4337..dd3c0aca5 100644
> --- a/man3type/stat.3type
> +++ b/man3type/stat.3type
> @@ -35,7 +35,7 @@ Standard C library
>  .BR "    struct timespec  st_ctim;" "  /* Time of last status change *=
/"
> =20
>  .BR "#define st_atime  st_atim.tv_sec" "  /* Backward compatibility */=
"
> -.B "#define st_mtine  st_mtim.tv_sec"
> +.B "#define st_mtime  st_mtim.tv_sec"
>  .B "#define st_ctime  st_ctim.tv_sec"
>  .B };
>  .EE

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------uYW3e2gJ3bijefxzEwAW6O0C--

--------------RC4isoxl0qTCemp2v1vGtMtp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwqEUACgkQnowa+77/
2zIsyw/9Hn4GYFozrD+SKQskkM5H2MF13IA0dVwvyqPmv4vQj/g4SbkHJ5cuoy2n
qyXyKz/JvtSQ0gXdD21mO2Jlm8c9kXuhmz5H1ER/0q3LSv1PAOw/Au9dPlYlJqSj
nqkX+lUylfWk/XGOF5qzyqzwUoIv+GBW+ijbz54vS0gNlnjKlCxwxyZ4zp+wj1cx
WV1zW06qd8ENx3sTcp7QtU21Az/dK4LsyGvPAIZf32i3RMvs245QxSIkQXtMqGCO
ShzNo6c3hMV55hwp82BP4DOaWVrLAprK0kkt8RzOMZTNg/YZZMgsN8ezk9lPEpgS
iJJVnSbTqo4E1za5hg9jdsrFtmYBLHydgRlCEpdI/W6EPBBjwQcpIqwLEScvcgw/
CATX3YewQE1Sq7CWdkYWbvSZJ6fL/E269nFxh9MzzMVXMb3uD/klIyJ9i8Ilt7uM
aNzcMEStEZjSGrYAh4+qz+9M6yDvj2MdiStuYVGa47jJTGP9npcly2Knn7T+Ymie
Tw9hpNYnlrQ//nv172OX4IAOD3PQBaxjshG11lg9F48KN2ibSmwhOhAc0H5DKShL
ThKUvnhujvw5srI65DyB9xr9AfAQ7uuOl+k5IDNDnwJboV0yAPLG7mrqtuoI4oKw
53DxKcj8bMejWbRQ4BGu4fX6Kws/s18fF6hM9iOrUG3rgBxKNF4=
=O6UC
-----END PGP SIGNATURE-----

--------------RC4isoxl0qTCemp2v1vGtMtp--
