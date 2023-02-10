Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB581691603
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:02:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbjBJBCy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:02:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbjBJBCx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:02:53 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF7CD5C8B2
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:02:51 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id ba1so3618992wrb.5
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQK+/hMQND0zeFc0z7wNao2cMG0zlsG/3yK3Ou2DpDE=;
        b=DC0om3+OatMY9Y7pIiXLvL+De64vsv7PYv+J/2Y8rjAHgAJh80eraXEt85jd1OXM1Z
         d1/mCkSd6Xpbh54eFaSTNtis0Sr01a4lMUZv6OvEbDp1+9JF9mASx4BEr/mEF3rIO3cz
         zReXr9alpQ2TxXJym4ypGxqFY0XHPg4Fd9H8cggZVQCGo1ZmEbhcm0gfWlDeuM7PTy6V
         IMce9XVrtquuzqbO+vOOEL7uBZjc0V/y+zOc5ysD3StmsOMk5QL/uulQM7+TLnF6mRBj
         iVK1jH8FVcgJeYgFZu2xtiz3QPiokZ3zEP1yM0y82proOyQ7PlC9zOiZk6Ug++d+EtOj
         mpAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nQK+/hMQND0zeFc0z7wNao2cMG0zlsG/3yK3Ou2DpDE=;
        b=H0AgBbDhgOb7FVG0ZUZOWmHyFLt1pfakVUQqQspxeGS9L7xkC9qqLOtIRhe9lX4fpX
         dhJ7MiNA83ViUPPndP1mAW8Dbl6i7U3gFsbKr8qQi7g7VQIl/MStuMuNli6lN0RBLPld
         8TYyaFkQ4W8RnFzEW5TEs4j+bZNgEqOis54NkF3FN9WbGUUeWMidgOSFWdH6hBB/g1Do
         OteyBnd43cbTtfweMFX7kET+yjlD0KnNGiYE9tGPjtjwXNGomJY3nYIQJk/wEMRmi+fT
         F6/GrClOKc0HRsKVD/NhVkbzs6mfR78eY5TfqaFROqKorIG9NEyjSUxr5E2lH8ALpXz4
         swDg==
X-Gm-Message-State: AO0yUKVU8+HJ5ABQv4jjuyE0+0ZzohqDcTv2m/R+wVOGs4TgVZR1GLZJ
        Q8J/d2oywBKRcGI0oAUBqV0=
X-Google-Smtp-Source: AK7set8v1IyoXu6ueKJYzYsS8TiQC+YSHraPRfk0Md05hsJyKW5aLp1aJe63C3HcN1tquH4Y0TvAPw==
X-Received: by 2002:adf:f7d1:0:b0:2bf:e449:e72a with SMTP id a17-20020adff7d1000000b002bfe449e72amr10973622wrq.60.1675990970300;
        Thu, 09 Feb 2023 17:02:50 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b003dc43a10fa5sm3607282wmp.13.2023.02.09.17.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:02:49 -0800 (PST)
Message-ID: <c5d52800-0dd1-07f0-16d4-a8c1936429af@gmail.com>
Date:   Fri, 10 Feb 2023 02:02:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] vdso.7: fix deadlinks to Linux Documentation/
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20230209164939.kejinsncbdazdgpw@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209164939.kejinsncbdazdgpw@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4GdsigNDM3h0j0dwxJwZWdjM"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4GdsigNDM3h0j0dwxJwZWdjM
Content-Type: multipart/mixed; boundary="------------grWcGdvQd5QBYJjBEfzNAlus";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <c5d52800-0dd1-07f0-16d4-a8c1936429af@gmail.com>
Subject: Re: [PATCH] vdso.7: fix deadlinks to Linux Documentation/
References: <20230209164939.kejinsncbdazdgpw@tarta.nabijaczleweli.xyz>
In-Reply-To: <20230209164939.kejinsncbdazdgpw@tarta.nabijaczleweli.xyz>

--------------grWcGdvQd5QBYJjBEfzNAlus
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

On 2/9/23 17:49, =D0=BD=D0=B0=D0=B1 wrote:
> Resp.:

What does Resp. mean?

> commit dc7a12bdfccd94c31f79e294f16f7549bd411b49 ("docs: arm: convert
> docs to ReST and rename to *.rst")
> commit db9a0975a20c1f21c108b9d44545792d790593e4 ("docs: ia64: convert t=
o
> ReST")
> commit e77e9187ae1caf2d83dd5e7f0c1466254b644a4c ("docs: parisc: convert=

> to ReST and add to documentation body")

Did you forget to sign the patch?

Cheers,

Alex

> ---
>  man7/vdso.7 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index 9bfac91b1..c48735f8c 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -213,7 +213,7 @@ __vdso_clock_gettime	LINUX_2.6 (exported since Linu=
x 4.1)
>  \}
>  .PP
>  .\" See linux/arch/arm/kernel/entry-armv.S
> -.\" See linux/Documentation/arm/kernel_user_helpers.txt
> +.\" See linux/Documentation/arm/kernel_user_helpers.rst
>  Additionally, the ARM port has a code page full of utility functions.
>  Since it's just a raw page of code, there is no ELF information for do=
ing
>  symbol lookups or versioning.
> @@ -222,7 +222,7 @@ It does provide support for different versions thou=
gh.
>  For information on this code page,
>  it's best to refer to the kernel documentation
>  as it's extremely detailed and covers everything you need to know:
> -.IR Documentation/arm/kernel_user_helpers.txt .
> +.IR Documentation/arm/kernel_user_helpers.rst .
>  .SS aarch64 functions
>  .\" See linux/arch/arm64/kernel/vdso/vdso.lds.S
>  The table below lists the symbols exported by the vDSO.
> @@ -278,7 +278,7 @@ __kernel_clock_gettime	LINUX_2.6 (exported since Li=
nux 4.4)
>  \}
>  .SS ia64 (Itanium) functions
>  .\" See linux/arch/ia64/kernel/gate.lds.S
> -.\" Also linux/arch/ia64/kernel/fsys.S and linux/Documentation/ia64/fs=
ys.txt
> +.\" Also linux/arch/ia64/kernel/fsys.S and linux/Documentation/ia64/fs=
ys.rst
>  The table below lists the symbols exported by the vDSO.
>  .if t \{\
>  .ft CW
> @@ -328,7 +328,7 @@ set_tid_address
>  \}
>  .SS parisc (hppa) functions
>  .\" See linux/arch/parisc/kernel/syscall.S
> -.\" See linux/Documentation/parisc/registers
> +.\" See linux/Documentation/parisc/registers.rst
>  The parisc port has a code page with utility functions
>  called a gateway page.
>  Rather than use the normal ELF auxiliary vector approach,
> @@ -604,7 +604,7 @@ The documents, examples, and source code in the Lin=
ux source code tree:
>  .in +4n
>  .EX
>  Documentation/ABI/stable/vdso
> -Documentation/ia64/fsys.txt
> +Documentation/ia64/fsys.rst
>  Documentation/vDSO/* (includes examples of using the vDSO)
> =20
>  find arch/ \-iname \[aq]*vdso*\[aq] \-o \-iname \[aq]*gate*\[aq]

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------grWcGdvQd5QBYJjBEfzNAlus--

--------------4GdsigNDM3h0j0dwxJwZWdjM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPll7IACgkQnowa+77/
2zJOlxAAgBQjoPYicXnlAYlYgcN6PzMwemoIPgIVg3zuIwP4+V8LTnxaqzR+Z80O
1pWNrnjsXoBkjghTl/ZHjohJRKqHK7+2RMlWv4+hNudYTQCCf/r1YxH5TMAp+ABO
UHLuQH8n8i1XhqeVbUaiu+LmssK+rAx5eKIad76JSePoreMRRXhw5+NDm6fFzG3B
9xFiZ1QtBR5/wreRpsu41F+QdmRO/9ZglFJPzovYgybKvsMKAU6ylarfz4ByQLcP
Xw8YOBX9mh06SsevQv0n7Jt76BHl0gTHlpIdKXxyl53uK30k731HHQfF7qKZUM20
nKfqpgxbKXU1wrItiZN9qLKcCyQPOgRuia9MCKI5FFoS1G9GWfR2+u53EV4yYqqx
aYZI/kBZdncZ5dRmy7hARFSKErYce1l9vsCd3YfmKCDv9RU18AVPStZ+gWESRh2G
VnTAZNr2EhVws+CjSKXheXf6oHBNyuprcj3HLXna7eEys0MJiCcmt7QBDEEwuQo3
5T+Pbwm2mFcVdOeEu1/hIMEmc1S8eka2mHKmQCdyjtMWtBkj2NhgyM3LBQ3ndhlQ
U6f1asg1Dz6yyj1LQJqmdZGg06951rVvF7nviJmichdZAjjbbbFQKk+BuSFA/4Li
9GuhOvG9YZgJ/HQqhk/kxCDnp0i7FQZBrIIL6ySUYqcMYHpXN/Y=
=O7kR
-----END PGP SIGNATURE-----

--------------4GdsigNDM3h0j0dwxJwZWdjM--
