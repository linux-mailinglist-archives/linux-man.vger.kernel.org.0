Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E215F6E9681
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 16:01:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbjDTOA7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 10:00:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231259AbjDTOA5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 10:00:57 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79E4E4C2D
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:00:50 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l31-20020a05600c1d1f00b003f1718d89b2so3151606wms.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681999249; x=1684591249;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPIMzgo57SKC5XfAhDtA6deCjn22Z36qa5hR3Cjbf1M=;
        b=HNm51xLPjIgrKmXw+iSwLcbCG4BbKGE9sAyfRdJf/TrajGVxOgw0S4qjQjWA6hnGUo
         67zvEZFlsNHoy27DGn+TA5pip0jFxIfk6wGyrDYAkhz70LS0fv3qvPGS62VAH+UjJ8Cn
         HlB2NxD02pkxI1GeaHR33MQhXtMUZ6StNuuer1wD0YnZRba38B350iQevLqUmfgGIvyC
         egNuE2p9OfSqhz4Cyu/yIs+bKgDENEF9mF9RO33ULg+ZlDpaI3uV7y/IwAsjksV5qrxp
         2/55US4BzUcelKyChyizxBwYKvcyXfmh1RFfRx8veKSsR5bgIEkegN+jQqOte7vqcaKr
         AMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681999249; x=1684591249;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qPIMzgo57SKC5XfAhDtA6deCjn22Z36qa5hR3Cjbf1M=;
        b=cYM/gQd4HGl0x5xbUwi7IK660mlepePzM6myhom3EZ1SH2aAWcEfIdYvBQrbPf1F0o
         xU+JDF2OPnNYR+6N9lF5kEDHIwoIhHFIgvIFOQg/0VzF3QF73j4iYkJKrtFdpibKx1lt
         hEyV9m9DA4rnZAyFVrnHLu6xBTOfscnr4S5FDQr/9je1/9awYIMLE6e3rGiRigttRcxr
         St/+BRmxyKVTK2X5q3tn0ZLcBhjZ4iEJ9coEeGD+fgeiwI3NpZzz07Ym09/UtiLBUo8L
         hvQqUsu6J1nX6pNixDu4o5kj7FDrAUj1ZnuCa/X5uxavXzpSrhbxW3fW86ZbM+uyZoue
         FHWQ==
X-Gm-Message-State: AAQBX9e58U25lekGe1lBKrPHEtsqhmVwsyjsU06C5eJ0WAaqaNBRETxJ
        L/4YQa2HeDJVQwPzIkVSNRs84vF38jg=
X-Google-Smtp-Source: AKy350bU010RJzk1ZG+onqh5Kdcn5FHHl59/X/EnCwJjKUbgpAxI1ee/EglDuyjU67RW6/LCqBOasA==
X-Received: by 2002:a05:600c:3659:b0:3f1:7372:f98f with SMTP id y25-20020a05600c365900b003f17372f98fmr1213723wmq.41.1681999248554;
        Thu, 20 Apr 2023 07:00:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f22-20020a1c6a16000000b003f17e79d74asm2142804wmc.7.2023.04.20.07.00.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 07:00:48 -0700 (PDT)
Message-ID: <5077ebc2-d5bf-1869-bf9e-e60e28969efd@gmail.com>
Date:   Thu, 20 Apr 2023 16:00:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 2/6] regex.3: Desoupify function descriptions
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <93265aabd86cf84d93bf80af1e56b12258f0ab08.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <93265aabd86cf84d93bf80af1e56b12258f0ab08.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------efcZbQ7G9MMpPA0JxhHIIaML"
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
--------------efcZbQ7G9MMpPA0JxhHIIaML
Content-Type: multipart/mixed; boundary="------------yisDf7VkfngxiOkj00epuHsa";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <5077ebc2-d5bf-1869-bf9e-e60e28969efd@gmail.com>
Subject: Re: [PATCH v4 2/6] regex.3: Desoupify function descriptions
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <93265aabd86cf84d93bf80af1e56b12258f0ab08.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <93265aabd86cf84d93bf80af1e56b12258f0ab08.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>

--------------yisDf7VkfngxiOkj00epuHsa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> Behold:
>   regerror() is passed the error code, errcode, the pattern buffer,
>   preg, a pointer to a character string buffer, errbuf, and the size
>   of the string buffer, errbuf_size.
>=20
> Absolute soup. This reads to me like an ill-conceived copy from a very
> early standard version. It looks fine in source form but is horrific to=

> read as running text.
>=20
> Instead, replace all of these with just the descriptions of what they d=
o
> with their arguments. What the arguments are is very clearly noted in
> big bold in the prototypes.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Please break this patch into smaller ones.

> ---
>  man3/regex.3 | 80 +++++++++++++++++++++-------------------------------=

>  1 file changed, 32 insertions(+), 48 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 637cb2231..b4feaba19 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -25,8 +25,8 @@ Standard C library
>  .BI "            size_t " nmatch ", regmatch_t " pmatch "[restrict ." =
nmatch ],
>  .BI "            int " eflags );
>  .PP
> -.BI "size_t regerror(int " errcode ", const regex_t *restrict " preg ,=

> -.BI "            char " errbuf "[restrict ." errbuf_size "], \
> +.BI "size_t regerror(int " errcode ", const regex_t *_Nullable restric=
t " preg ,
> +.BI "                char " errbuf "[restrict ." errbuf_size "], \
>  size_t " errbuf_size );
>  .BI "void regfree(regex_t *" preg );
>  .fi
> @@ -38,21 +38,13 @@ for subsequent
>  .BR regexec ()
>  searches.
>  .PP
> -.BR regcomp ()
> -is supplied with
> -.IR preg ,
> -a pointer to a pattern buffer storage area;
> -.IR regex ,
> -a pointer to the null-terminated string and
> -.IR cflags ,
> -flags used to determine the type of compilation.
> -.PP
> -All regular expression searching must be done via a compiled pattern
> -buffer, thus
> -.BR regexec ()
> -must always be supplied with the address of a
> -.BR regcomp ()-initialized
> -pattern buffer.
> +The pattern buffer at
> +.I *preg
> +is initialized.

I think I prefer avoiding passive voice here.  No?
It initializes the pattern buffer at *preg?

Thanks,
Alex

> +.I regex
> +is a null-terminated string.
> +The locale must be the same when running
> +.BR regexec ().
>  .PP
>  .I cflags
>  is the
> @@ -113,12 +105,10 @@ contains
>  .SS Matching
>  .BR regexec ()
>  is used to match a null-terminated string
> -against the precompiled pattern buffer,
> -.IR preg .
> -.I nmatch
> -and
> -.I pmatch
> -are used to provide information regarding the location of any matches.=

> +against the compiled pattern buffer in
> +.IR *preg ,
> +which must have been initialised with
> +.BR regexec ().
>  .I eflags
>  is the
>  bitwise OR
> @@ -217,34 +207,28 @@ and
>  .BR regexec ()
>  into error message strings.
>  .PP
> -.BR regerror ()
> -is passed the error code,
> -.IR errcode ,
> -the pattern buffer,
> -.IR preg ,
> -a pointer to a character string buffer,
> -.IR errbuf ,
> -and the size of the string buffer,
> -.IR errbuf_size .
> -It returns the size of the
> -.I errbuf
> -required to contain the null-terminated error message string.
> -If both
> -.I errbuf
> -and
> +.I errcode
> +must be the latest error returned from an operation on
> +.IR preg .
> +If
> +.I preg
> +is a null pointer\(emthe latest error.
> +.PP
> +If
> +.I errbuf_size
> +is
> +.BR 0 ,
> +the size of the required buffer is returned.
> +Otherwise, up to
>  .I errbuf_size
> -are nonzero,
> -.I errbuf
> -is filled in with the first
> -.I "errbuf_size \- 1"
> -characters of the error message and a terminating null byte (\[aq]\e0\=
[aq]).
> +bytes are copied to
> +.IR errbuf ;
> +the error string is always null-terminated, and truncated to fit.
>  .SS Freeing
> -Supplying
>  .BR regfree ()
> -with a precompiled pattern buffer,
> -.IR preg ,
> -will free the memory allocated to the pattern buffer by the compiling
> -process,
> +invalidates the pattern buffer at
> +.IR *preg ,
> +which must have been initialized via
>  .BR regcomp ().
>  .SH RETURN VALUE
>  .BR regcomp ()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------yisDf7VkfngxiOkj00epuHsa--

--------------efcZbQ7G9MMpPA0JxhHIIaML
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBRYgACgkQnowa+77/
2zK9VQ//W30l4X+RsIVE39SeudzXrK4sRIHr0JLX5jkElu2Z2yldWE+Wrd9RaKqH
LUszzX6d23CooRYYsL1RepTcqQncWTUo7snwQu8aA1rsBHW8Anvj4qesaushFnSo
yVybb3BCU8yqN9L2z+Zyw1QdfO7O9QlmCNX+Twhbq0Cp+Pbje/xlhRmr38TweTVD
ld7wfwVVUS3Kr2rwxaA9jmdkM//obcCqObs802zJYnY0+D44gysVkXUstvd5tA+M
+v3zRLBU8jz9YyNJdu97WkVw+HAd+h7DpV67mJCe8IedeSz8as/EL2FOc6/QPx5c
WucL2tPNogNfzNqFvybvrNO/RL3b0mLjqioxYbFPZqDiEz3iKlW3Uhhe9VeBpUtg
2OQ4lLo01BsaR6CrgFUIZqzMQ1xfmVCR9C2YHRs66b2m2vIEs4baLS/SyZmYF8rm
FHGVhfHR/eHzHNX0UdTWcqiTSAn/6sYM5K1kivKNKGM/6p3jyEohtx+Sw8yLYkZy
INEkllYW1ASPXfmGNSElQZGe9wXKwE4R4uqT7bajs9AndPN+uJBmVuHtjhlAunEx
IkqpdYQSj9scb8dVXRqeY1ouw0v9Ys+MSSI/LJ8DLnI7/bhIN4FWiLwukTd4lu/T
XrLz+eh74n/LAb6QnUJ7JHsAZLdmcbweo14AQlA8DOB5cYG38bk=
=sIMy
-----END PGP SIGNATURE-----

--------------efcZbQ7G9MMpPA0JxhHIIaML--
