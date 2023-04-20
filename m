Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2BAA6E9513
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 14:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231616AbjDTMw3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 08:52:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231621AbjDTMwY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 08:52:24 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D1F81FC4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 05:52:23 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id q5so1171522wmo.4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 05:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681995141; x=1684587141;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9h3CDNcgZJAADPzS2AVCv0k6gaQuyhAzCdYzb9mT3M=;
        b=EnJPkngL/icG4A7Q0lv8iYZpuH0wPIe56G4fNeJsHX593R/VwPIoKe8k4jR3XGeDth
         BjZCzcqceEeO/v0jbCaqZDr2sUQ2uxJsMJsf6wyKANL3UKwudqJSZgzOJqQ1vLzrXHnI
         3y54niRoBI/zyUi6aDhlQTOuMl3sUkEAZcHiDsWWwO0KRjtzX6Tx/lVS+L+vkGdpZVi5
         zZC2ihXeKG0e5id7NoypZN1JY6g1XPz+EW5pF7Pu2mD7yVqw6WHidemn8xfodkXZgN8x
         a/KpsYkAGwJZBHxrAgM2wclCcrbFYkks2bSzN71slFlQ0L4qCeoYlTDvw4tADC6ShTBr
         rkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681995141; x=1684587141;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h9h3CDNcgZJAADPzS2AVCv0k6gaQuyhAzCdYzb9mT3M=;
        b=g+d939OkQfGlnbYkWAIxm27/ZWRCLd06Ia4KPZQn7iqrapMy5FNnJ/eiVNQ/g9TSLE
         CEFXTy9DUKzTzbNMgvZzxy16D5jVDRui4NfFsoaozy+92tzNI+6H610snUzL7lebcCso
         2YYwcrs6A8DJi86CMe8wVS56R0rPCEuNVwa/6u4tOHhtfu/ZBpMqlcjS0gGkgOAd1M6o
         YQpGEjpe6d6tc08TVdtEY6Ewy9/QR5tQVTblZtHiBSzS269NTrQwKhl65Z7XEJEusSzt
         fMrj71Qm4+CzSzJH3fV7pj58BY/UIklaTCTf0KwVhpU0SKirlz53Ga7kwAfkjS004Lfh
         QyIg==
X-Gm-Message-State: AAQBX9c/ZPtsvv85+0B7bBCJcREVPk8MUqkpKSrn8eRcr47QvuyIT11e
        APbrKEJN5miAoZjhz2g9bV0=
X-Google-Smtp-Source: AKy350YZgHUgnUw/6taD67Gbp5VZM/1qF+qRlLRcRHzPMtiCZ+Go4gjMkYieFm8p5wNsF20LfpcSfQ==
X-Received: by 2002:a7b:c5d4:0:b0:3f1:79ad:f3a8 with SMTP id n20-20020a7bc5d4000000b003f179adf3a8mr1153919wmk.16.1681995141002;
        Thu, 20 Apr 2023 05:52:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k25-20020a05600c081900b003f17122587bsm5253521wmp.36.2023.04.20.05.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 05:52:20 -0700 (PDT)
Message-ID: <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
Date:   Thu, 20 Apr 2023 14:52:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Eei5v0xjDp2G7g7UQw2K08qY"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Eei5v0xjDp2G7g7UQw2K08qY
Content-Type: multipart/mixed; boundary="------------q3CNWKBPTsoaAhMHtO7UlWpj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
In-Reply-To: <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>

--------------q3CNWKBPTsoaAhMHtO7UlWpj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/20/23 14:12, =D0=BD=D0=B0=D0=B1 wrote:
> Use "bitwise OR" instead of "bitwise-or" (with fonts).
> No other pages spell it like this.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks.

> ---
> Range-diff against v2:
> 1:  1ccffe37b < -:  --------- regex.3: ffix
> -:  --------- > 1:  830173bb5 adjtimex.2, clone.2, mprotect.2, open.2, =
syscall.2, regex.3: ffix, wfix

I rewrote the subject to:

man*/: ffix, wfix

>=20
> idk if this did anything

Heh, it didn't do much.  What happened is that the patches are so
different, that git thinks you just removed one patch, and wrote
a different one from scratch.  Anyway, I find it useful most of
the time.

Cheers,
Alex

>=20
>  man2/adjtimex.2 | 2 +-
>  man2/clone.2    | 2 +-
>  man2/mprotect.2 | 2 +-
>  man2/open.2     | 2 +-
>  man2/syscall.2  | 2 +-
>  man3/regex.3    | 4 ++--
>  6 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> index 523347de2..40b05cb0e 100644
> --- a/man2/adjtimex.2
> +++ b/man2/adjtimex.2
> @@ -90,7 +90,7 @@ the constants used for
>  .BR ntp_adjtime ()
>  are equivalent but differently named.)
>  It is a bit mask containing a
> -.RI bitwise- or
> +bitwise OR
>  combination of zero or more of the following bits:
>  .TP
>  .B ADJ_OFFSET
> diff --git a/man2/clone.2 b/man2/clone.2
> index 42ee3fee8..ec43841eb 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -413,7 +413,7 @@ mask in the remainder of this page.
>  .PP
>  The
>  .I flags
> -mask is specified as a bitwise-OR of zero or more of
> +mask is specified as a bitwise OR of zero or more of
>  the constants listed below.
>  Except as noted below, these flags are available
>  (and have the same effect) in both
> diff --git a/man2/mprotect.2 b/man2/mprotect.2
> index 52c14da05..5a829dafe 100644
> --- a/man2/mprotect.2
> +++ b/man2/mprotect.2
> @@ -43,7 +43,7 @@ signal for the process.
>  .I prot
>  is a combination of the following access flags:
>  .B PROT_NONE
> -or a bitwise-or of the other values in the following list:
> +or a bitwise OR of the other values in the following list:
>  .TP
>  .B PROT_NONE
>  The memory cannot be accessed at all.
> diff --git a/man2/open.2 b/man2/open.2
> index 77c06b55d..b5aff887c 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -123,7 +123,7 @@ respectively.
>  .PP
>  In addition, zero or more file creation flags and file status flags
>  can be
> -.RI bitwise- or 'd
> +bitwise ORed
>  in
>  .IR flags .
>  The
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 3eba62182..55233ac51 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -235,7 +235,7 @@ nuances:
>  In order to indicate that a system call is called under the x32 ABI,
>  an additional bit,
>  .BR __X32_SYSCALL_BIT ,
> -is bitwise-ORed with the system call number.
> +is bitwise ORed with the system call number.
>  The ABI used by a process affects some process behaviors,
>  including signal handling or system call restarting.
>  .IP \[bu]
> diff --git a/man3/regex.3 b/man3/regex.3
> index 3b504a4d5..3ee58f61d 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -56,7 +56,7 @@ pattern buffer.
>  .PP
>  .I cflags
>  is the
> -.RB bitwise- or
> +bitwise OR
>  of zero or more of the following:
>  .TP
>  .B REG_EXTENDED
> @@ -121,7 +121,7 @@ and
>  are used to provide information regarding the location of any matches.=

>  .I eflags
>  is the
> -.RB bitwise- or
> +bitwise OR
>  of zero or more of the following flags:
>  .TP
>  .B REG_NOTBOL

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------q3CNWKBPTsoaAhMHtO7UlWpj--

--------------Eei5v0xjDp2G7g7UQw2K08qY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBNYMACgkQnowa+77/
2zIseg//fzuKQI59y8lOHgswT8GavvWmyuRPcFYfVSSgZRFHvPM1kS3XTT8XoyAY
ja1a0F/2hMXMVTD3sO5NHEYS1ihh+j2YWufzKkjVwJ8CSvp+F5lCrtEUdKaexfeu
+PxdorwMuwvuDnlzaPOycma0mkFvSflqsKFagmZRSnznWiD+YZwTjQApd+CDiUi5
MLWnTeyfa39IFk4MgWDvFjsTgBzp5MRDdlz3HrPrGOVbf3uhtgq2lk8khCJyc/8u
8OawLjL9qyb6I/IHuyaK3C3t66jaFL+viKtzffhNIGIxR1ZiWSUgJmpZoaXyZfpD
Y8yiliTVL9N//L/owLomEcTmPcKPGrCnoZqa1pUM0FRmOejq2Y8L4WKfVX3kzBwJ
U4f0AUi3wpPo8kYJLCIc5cS+RDIFJgGTZ/O/VQpWBudvh4OT8zmu4zKqY3X7Hatp
3gbvN4wwQ3/yndAvo+lD0NbLgKejvyY7r+HI29WwDXgwIjWw+VlXh7808qNIU75u
8EZV7wqnyiy/XXnrc5ULqcYj9YufnVWo2sTrQToez/NuO2SWH4WY6f/LIrO/AlHk
gqZHSO5aIzDbQDDudUGRV48QHH8L2Zd7DlysK4jffKwNDVmfeVpbeQajRpqyJ7Qz
WVd2RkubS/Ld8mEP+rAwqTT7kyIaoJdGf2E+mLrWw5gsT/vGPVI=
=Kk70
-----END PGP SIGNATURE-----

--------------Eei5v0xjDp2G7g7UQw2K08qY--
