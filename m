Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8117C6B126E
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 20:49:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjCHTtM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 14:49:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbjCHTtK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 14:49:10 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A91A92708
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 11:48:46 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso2099190wmq.1
        for <linux-man@vger.kernel.org>; Wed, 08 Mar 2023 11:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678304924;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1LaF5hCoiGYg/JYoKtDuX94RCLSt5dZaGuthWz4FUjM=;
        b=GwSuTVxCdEULtHmTjXKOZca9ej+sJ3jC09fv6IORNdOnDfNZFpBhfNdTx/fAFYL4j3
         djtyYtLGKFTBKnSWdk0/7a/TF5wFbCcTMe889qy2SWFP4x026knpU139ss9LbjpQKsh8
         UhhAFlOWXH0vDyvgV0MWB+AI3hCLnci3DrdNHFvnAlZn1EoqJHmyZWSVKUlW4vCUVl2Q
         xNgve6pdRSpoLPhMKvjgFG0+hLoqmyCoLANZRDS9/PzI34xucD01G66srwOjPQLmTS7J
         joQR8YZKhEw/RRfPrP37VBT10nFgSyrSNXJKKyMu9c17YsmlCVwYBeEL7gLt8uKwRDv4
         4xRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678304924;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1LaF5hCoiGYg/JYoKtDuX94RCLSt5dZaGuthWz4FUjM=;
        b=1oKTe0/I0dOFphH4BhDfLg2yUv0wrzSMUJvKoNB2rAA1+cSkFmExLF0FKHp96b2BdO
         3F3Nwb2oUxYYIh4vIQqPHdZTf9Fj56zkH++xrTBbE4dab43rLjlYLY0gAkUPvzkNIjWA
         a4/w2xwl6XwaaIMpoOLXu/b+3DIVoQiRr729207fB/7XQXt79c2qmDRhgYt0nXUJ2RZu
         0P2hFDp7eR8KHz6Qkfb1c/s6rmaB0t3PubxbqsrWr9nfzSQD8E1WhZ34iPC0T6e47L5x
         ro/fLWnvjeUHFqT4wNrl4SgmSbDMX0xEPYj5zCD7NMadJiHsGnvSDCqMphQxs6Z/0o9D
         NhaQ==
X-Gm-Message-State: AO0yUKXjp8WjLgREQp7xLlpAUjrXCIxcjsVjDYCy/6Uk3sY7eT4086HQ
        idRsPckgIkPdgsHotpQ9y70WH0uqDro=
X-Google-Smtp-Source: AK7set8y/ic4Pj9HbOk3Y3g/57IkJnA7uQs7sWZRIw3EBaR3kM/y4uQqHKj53rqlS0XkRseI5XDjqQ==
X-Received: by 2002:a05:600c:474c:b0:3eb:2de8:b74e with SMTP id w12-20020a05600c474c00b003eb2de8b74emr18180858wmo.27.1678304924338;
        Wed, 08 Mar 2023 11:48:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id j14-20020a5d564e000000b002cde25fba30sm16054157wrw.1.2023.03.08.11.48.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 11:48:43 -0800 (PST)
Message-ID: <6a8fed8f-c31d-3903-1432-c6cba1ec4c85@gmail.com>
Date:   Wed, 8 Mar 2023 20:48:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] landlock.7: ffix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>, alx@kernel.org
Cc:     linux-man@vger.kernel.org
References: <20230308085623.2942-1-schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230308085623.2942-1-schwindl@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7CMPCC3XoLoS0QJNWF92JiY6"
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
--------------7CMPCC3XoLoS0QJNWF92JiY6
Content-Type: multipart/mixed; boundary="------------6Q5oCxxekBlYViDiLvoD0OXM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>, alx@kernel.org
Cc: linux-man@vger.kernel.org
Message-ID: <6a8fed8f-c31d-3903-1432-c6cba1ec4c85@gmail.com>
Subject: Re: [PATCH] landlock.7: ffix
References: <20230308085623.2942-1-schwindl@posteo.de>
In-Reply-To: <20230308085623.2942-1-schwindl@posteo.de>

--------------6Q5oCxxekBlYViDiLvoD0OXM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 3/8/23 09:56, Tom Schwindl wrote:
> Signed-off-by: Tom Schwindl <schwindl@posteo.de>
> ---
>  man7/landlock.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index b2bc9e10b0c0..bbe00d4c2793 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -245,7 +245,7 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_SYM;
> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
> -if (ruleset_fd =3D=3D -1) {
> +if (ruleset_fd =3D=3D \-1) {
>      perror("Failed to create a ruleset");
>      exit(EXIT_FAILURE);
>  }
> @@ -276,7 +276,7 @@ path_beneath.allowed_access =3D
>          LANDLOCK_ACCESS_FS_READ_DIR;
> =20
>  path_beneath.parent_fd =3D open("/usr", O_PATH | O_CLOEXEC);
> -if (path_beneath.parent_fd =3D=3D -1) {
> +if (path_beneath.parent_fd =3D=3D \-1) {
>      perror("Failed to open file");
>      close(ruleset_fd);
>      exit(EXIT_FAILURE);

Thanks for the patch!  Now that you're at it, would you mind fixing
a few other cases in printf.h.3head in the same patch?  I see the
following:

$ grep -rn '^[^.].* -1' man*
man3head/printf.h.3head:291:    if (register_printf_specifier(\[aq]b\[aq]=
, b_printf, b_arginf_sz) =3D=3D -1)
man3head/printf.h.3head:293:    if (register_printf_specifier(\[aq]B\[aq]=
, b_printf, b_arginf_sz) =3D=3D -1)
man3head/printf.h.3head:413:        return -1;
man7/landlock.7:248:if (ruleset_fd =3D=3D -1) {
man7/landlock.7:279:if (path_beneath.parent_fd =3D=3D -1) {


Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------6Q5oCxxekBlYViDiLvoD0OXM--

--------------7CMPCC3XoLoS0QJNWF92JiY6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQI5poACgkQnowa+77/
2zItZQ/+PU7lJTina3wNIUBLogH8sY8z9Q4cTKsOxHxvD8A2w19gbaLiryViAhg6
OQ7Lxuhj2w30Ph7u695n0E76FNXgdVcWxrQoblHHkUJrP62wHcfI695HQmNDSw2D
Gxa1NqZc/40a8EmMor1Nu1p/LeRczyLYWX3IDoNxzJ7ihmlmgmy4oVxnXKtTTf+X
kGBTq3ryD+JKMGtFd9K04IHpnxyi+xPeMBYHYV8yE8Gosl+ZurB4FTjb/uENJ8Rw
Pp66sm997LeDoZmwXFqtYIShDKLaZLfNA1EehHrOUh7LZ7N06x5nZz+eCdq9XTtp
RRu4hrQ9uo0T0LUO1l2M/j0ldb9KI3rN/7bZyD+jKKL0i1YwCU0AOLX8/RlTkeU2
+UQpySra66F8M7niwer0dvRjbuW+Mz13Xpc4TrH+KaUVF4NDcEJ7lnJXkTjWuNqj
2M753/XRLby/xmO2VBYoBcki9cMVVueyl/xMu4eVVLY/BEO6t4AlAQ569v/pqLPz
bG+0ec3kh/nhJ43/3JMFhmNbCnWypRk9O/FWAty4GfBbc1BDyC/wtkW52VLmtDgx
Ds3aeN3AYHI9uGSVkBExrIYrNytYBUMY3Oz+s0cXIn26y6KEGT62TjS6kFRCmU4S
at0HMIRkT2IfR1/wRV6aMZ/8EfMCcQKqQbuXqTNmAaPmF007Z7U=
=aDWR
-----END PGP SIGNATURE-----

--------------7CMPCC3XoLoS0QJNWF92JiY6--
