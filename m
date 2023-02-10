Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7209169163F
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:31:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjBJBby (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:31:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbjBJBbv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:31:51 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E24EC6BA91
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:31:45 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id y1so3670893wru.2
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=22SFNa9oVBT7zqt+WU8Wn8mvvLk8elmTxgQV68dYGaA=;
        b=aQWMbG51qvqCuiVkjqyTQeg4Pz0ysUFoYvix9UPbg3g7t1EPRAkT1xeOFpTnQw3M9B
         HgmsGoZj5Ymfgr+1zaxdmSQa89eQ0J2jpe4Bi1aVOmMxD9AbRBz44Ew/NjTimwsZpJec
         E76HwFvzwXdwQUycWtgrhNAO/dswdHGnhDnHY3me1b/+8llHSyskeUWLaQOa2u+ZRtXn
         1XdQb1epotGqfr20csaBAKZa9KdNOe/wJcfQcb43+ETlHHX5LidAhH+/7XnVF8LbJkSP
         xys1P2jy9nJ9Z8uYcsm4mGizo5axjOzstcqI2MXBXXczpheFxBPrhvB2yoROKQnEM7xA
         cFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=22SFNa9oVBT7zqt+WU8Wn8mvvLk8elmTxgQV68dYGaA=;
        b=GI8bkDomoOHaAf/0XUTTmv3fpNJYU071aoxNDr6TJKcGDXeQj+omZeIR9TkzRP6IZL
         fm7n76p2Z4REDQVDOuCqB08Ss1b7gqLinLlxsFMAJD/NNHzhzJY47rv4x4SOcgPPfxKK
         jf0VT73ywq8LJPs4RSeQP81ZXOxvRL0YlYR7zWTExZrvnLMF9zMoLc+VUPe3wZpRfFh3
         N9AYwtgqNeOafmuVu1/bLFq2IXdfnI27Q+06mRJJ/Dyo2xmrEFcKsQJ26Vzn297LM8A0
         JwgjqVEBa+LAuLNB8gepiZ8XnlNVcIqo63Wy1nsZ0LFjyRItEcENnoyUM3ScajgHOjNk
         8E/A==
X-Gm-Message-State: AO0yUKUWRprEcdVeE+iL+RZV2Gak9AkPbu360oFVrn3ru1GDWHcIxCC8
        0Jnbr/cv3NI1u3z2pVXxTQMTAiTWW1U=
X-Google-Smtp-Source: AK7set/TSRphuV3MnKZN52gwpYG6KYV7R4ZvFHuBpnIitrWdXQsLFqn0VBqHvQ4I9Qfl9VAlG+bj5Q==
X-Received: by 2002:adf:ef03:0:b0:2c4:43f9:62f9 with SMTP id e3-20020adfef03000000b002c443f962f9mr4100101wro.57.1675992704429;
        Thu, 09 Feb 2023 17:31:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r8-20020adff708000000b002c53cd6d281sm2106503wrp.4.2023.02.09.17.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:31:43 -0800 (PST)
Message-ID: <ed7a1e82-7820-bc28-3c29-2e2886029cb2@gmail.com>
Date:   Fri, 10 Feb 2023 02:31:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2] vdso.7: fix deadlinks to Linux Documentation/
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <c5d52800-0dd1-07f0-16d4-a8c1936429af@gmail.com>
 <20230210013016.nac4zo2javxt455b@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230210013016.nac4zo2javxt455b@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OuFCcoDfIyoS2OEkCqgE2aoZ"
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
--------------OuFCcoDfIyoS2OEkCqgE2aoZ
Content-Type: multipart/mixed; boundary="------------9a0oyG6ZLml9Pz0oTwYAc6QZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <ed7a1e82-7820-bc28-3c29-2e2886029cb2@gmail.com>
Subject: Re: [PATCH v2] vdso.7: fix deadlinks to Linux Documentation/
References: <c5d52800-0dd1-07f0-16d4-a8c1936429af@gmail.com>
 <20230210013016.nac4zo2javxt455b@tarta.nabijaczleweli.xyz>
In-Reply-To: <20230210013016.nac4zo2javxt455b@tarta.nabijaczleweli.xyz>

--------------9a0oyG6ZLml9Pz0oTwYAc6QZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2/10/23 02:30, =D0=BD=D0=B0=D0=B1 wrote:
> Respectively:
> commit dc7a12bdfccd94c31f79e294f16f7549bd411b49 ("docs: arm: convert
> docs to ReST and rename to *.rst")
> commit db9a0975a20c1f21c108b9d44545792d790593e4 ("docs: ia64: convert t=
o
> ReST")
> commit e77e9187ae1caf2d83dd5e7f0c1466254b644a4c ("docs: parisc: convert=

> to ReST and add to documentation body")
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks!

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

--------------9a0oyG6ZLml9Pz0oTwYAc6QZ--

--------------OuFCcoDfIyoS2OEkCqgE2aoZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPlnn4ACgkQnowa+77/
2zKBoA/+Lj00/QWQTIEw5nPiykkjKnbaaWixVnM20735QcbDUKefV99bj6qLZaMN
DdG+p7JGzmR69Oh6zy7nlu163Wq981h3wPkLC0mLK9rcJpP2n6z+glh1KZcwBzg5
/eTM09Krg8eCRMsCqroSpxZegWDzGCNdl/evQL7ggDmUS5wd/uwmhkg/CoSPdLB6
m1bShU9K+XG+JjqhWJr3b3ohmkXHSM1CW2QOQtF7MQQCe2re1Ab7EESM6xUh1LFK
3Dos6qYTWfL55cRvHdX3up8iHfkY76zWrPs1ZiOuQOYch7RrNmGF+KePT6VuxwVK
hXSz3YChRC6JeffaTz2HJHuVzX7Y2b+5aD/q0C17BLkxdsTQ/2by4lCa2Fdzuv8w
PzFC5jn4U3jv84YWPgmrFl5UELRCOQSVV5zb6M50cLUIJmYn0tde7L8SloNZA9au
+Ona9XM1ApUaxiKz71NXRIRofxyUoK+xdmy0PuNkfwYQQCoyzwRQMDwu2YJl4zXG
703p9b5hBuVGEk3NqhtJlz6PWUN1yeGNuMSFGnG4TGOK+qehS3NEmN6Wqem6RjNC
i2BbWGZHXjYbjURA5BNgYtkZKqKYZXEKUVyd3AZXDvcRKrn/gZSrnRKr2TXqVfYA
nyO6yf856eEQHBPFJkmkFjjtSGOWc3JM7FEXPRWqt+jbQMM29TI=
=QOXd
-----END PGP SIGNATURE-----

--------------OuFCcoDfIyoS2OEkCqgE2aoZ--
