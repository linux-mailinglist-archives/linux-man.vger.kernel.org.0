Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E32996E9597
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:14:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbjDTNOa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjDTNO2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:14:28 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2582F271C
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:14:00 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f17b967bfbso18899885e9.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681996436; x=1684588436;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nH9Ft8lfE3ssKDzI/xNTYx5AVJAHFZvLKdA1fCzR8Vc=;
        b=XbTdRRG378zJOSCdejiniHsU/uxxfapsKlcP7CYYjGtAMYuERJ/XlngORGBsGGSq54
         n31oGjvlQeB609C418lEJbBmUDV49eZD7f85gRhBDW93kwPenkonH7ba/VGFI40DsSNJ
         JSay+Rsl19lCPVqpI1inIl7juhxhYNd6umO6SweLpOEQAQA9tMsrycxapAt+M1nFH06k
         GZVjMAoTHVPSBfBuvQlUg/H9eMnGfta+8OP5TCtrQ1vd0P9XtgbeVHyV59Zv9rB6Cjy+
         1mXjV+03DgfeM5VORz2s6zmV7clj0DGtTrX5P3TqTl84k9YYqZ+6ymze6/DoxcTh33oT
         rkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681996436; x=1684588436;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nH9Ft8lfE3ssKDzI/xNTYx5AVJAHFZvLKdA1fCzR8Vc=;
        b=Dn/Roglsr5ROc9AIu3lBbooHo36kn2pIoS1ExN/M5tIpYMVvec/dfuIOEYf7GKGdLx
         8g8FAxalYDBmdGjHNlIWN7ZEVlp64f6OkTdmVa1y/jQWTAe3AaEHLCITybtfD7TFZJr0
         pFJ9k/1P4O+DIq6rBrTMvaKxdgwQTI+r8HCBYIiqIFftlrCYzJ1YqGvi8fRBtIPlmiLi
         z/RJpRq7xci1NiJf+FsJyIWDrJpERQfyYF5+jyvKiUi7ML8yCq4kzl9iFdoQrt13Cc/u
         rN9pbC5TvM1f/7FGA96h1T3cxejxjid7GvY6aj6g+5cHcSnIJjcxCUyU+z+IwkqtyHa1
         jO9w==
X-Gm-Message-State: AAQBX9eVuCPqobS0zirBAr4OyEbWORz6aWxV/AEh1rIa+UY52MUYJjNo
        3zKenOgaTZxY6n9nefpQjWldrY4qgJ4=
X-Google-Smtp-Source: AKy350YzmFMTYVsw+aHC6j1YIgEQbpb+Pq5E+mgoH2+xexxQrBTmGlP0utpLsCNK3PTVmYhl2+38mA==
X-Received: by 2002:adf:f089:0:b0:2f4:e2d5:401 with SMTP id n9-20020adff089000000b002f4e2d50401mr4071821wro.25.1681996436088;
        Thu, 20 Apr 2023 06:13:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u6-20020adff886000000b002f7780eee10sm1957456wrp.59.2023.04.20.06.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 06:13:55 -0700 (PDT)
Message-ID: <32792f94-a74c-2956-1ae0-4538d27f1e5a@gmail.com>
Date:   Thu, 20 Apr 2023 15:13:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/6] regex.3: Fix subsection headings
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BC2dW9m5TZ0ARs7u4cuNl3va"
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
--------------BC2dW9m5TZ0ARs7u4cuNl3va
Content-Type: multipart/mixed; boundary="------------1NIVlESf0w0Z9AYjYzKgqhvO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <32792f94-a74c-2956-1ae0-4538d27f1e5a@gmail.com>
Subject: Re: [PATCH v4 1/6] regex.3: Fix subsection headings
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>

--------------1NIVlESf0w0Z9AYjYzKgqhvO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> $ git diff v3
>=20
> But the patches are re-ordered (and a new move-only one added);
> --range-diff, humorously, /only/ picks up that one, and doesn't
> understand the rest, which is worse than if it failed entirely.
>=20
> The 3type move is as far back as I could make it I think,
> 6/6 wants to come after regoff_t deduplication.
>=20
>  man3/regex.3 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 3ee58f61d..637cb2231 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -31,7 +31,7 @@ size_t " errbuf_size );
>  .BI "void regfree(regex_t *" preg );
>  .fi
>  .SH DESCRIPTION
> -.SS POSIX regex compiling
> +.SS Compilation
>  .BR regcomp ()
>  is used to compile a regular expression into a form that is suitable
>  for subsequent
> @@ -110,7 +110,7 @@ whether
>  .I eflags
>  contains
>  .BR REG_NOTEOL .
> -.SS POSIX regex matching
> +.SS Matching
>  .BR regexec ()
>  is used to match a null-terminated string
>  against the precompiled pattern buffer,
> @@ -159,7 +159,7 @@ or
>  .B REG_NEWLINE
>  processing.
>  This flag is a BSD extension, not present in POSIX.
> -.SS Byte offsets
> +.SS Match offsets

I think it might be a bit clearer as "Subexpression match offsets" or
something like that?  What do you think?

>  Unless
>  .B REG_NOSUB
>  was set for the compilation of the pattern buffer, it is possible to
> @@ -209,7 +209,7 @@ The relative
>  .I rm_eo
>  element indicates the end offset of the match,
>  which is the offset of the first character after the matching text.
> -.SS POSIX error reporting
> +.SS Error reporting
>  .BR regerror ()
>  is used to turn the error codes that can be returned by both
>  .BR regcomp ()
> @@ -238,7 +238,7 @@ are nonzero,
>  is filled in with the first
>  .I "errbuf_size \- 1"
>  characters of the error message and a terminating null byte (\[aq]\e0\=
[aq]).
> -.SS POSIX pattern buffer freeing
> +.SS Freeing
>  Supplying
>  .BR regfree ()
>  with a precompiled pattern buffer,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------1NIVlESf0w0Z9AYjYzKgqhvO--

--------------BC2dW9m5TZ0ARs7u4cuNl3va
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBOpIACgkQnowa+77/
2zIdnA//ZO/LqCPNpNU+uLsGbFhmIldXqcJHCYm90pfp5wGukHCgdr/9mOUMTTHr
teD1HI1wHEt2K/r84CZmUHHHTiXDlrmlzXWlcDq6laAQFkLgSZeMBHKtjGoKljWa
wEp2BAUCa9EcVxQSE7Hbyxp5WJzYxDCMZi742MVBRyFUlVkxZXhdiFtGk9edoflr
drHW98MqE69R0d9cPcnkZVxVV+dSbJSfmj2t4tl2xri6HeRX2UK5mvz9vFkwBn5D
YMrMgUQW5tYgXYJn16tqh/CCI/tDLfYNPCU2zN9zpWUeSWDti/ktKygunbt3HoK0
w+2GH4lKYHlQIO0CRJUo3E3mE1wgMzSMAKOYW/elquK1uRrGEAOm/Z+J1c1Fpwlu
UEt0ZHvwb56WMdPSS1Ngs78G1Snb0U9nAXasYrKviMSjs+8ijwChSnAXxufUjtRY
I9NC0WIbP0yq5xjI1zWtqGTieJuZkUvZLdq7ge+zj0Xmr8SDsNDAbZnEWdgFfHzS
HdMqMLY2hzzLTvJ/DPfDaDhy0swc+nN9JB3lY96ME5nmOtY7Op7NeonGT8BRsY2U
ZB+wMUG7YE00UpGjXCXlLBN9bJJdG7EMaIOP2LrU9nADBAAkYeZJNgiieWeO4W5D
Q/fgmHE2Sw4lW3PfWnHujPNJ5kkZew/oNAHEo5DI9G1LJib0qzA=
=nLWx
-----END PGP SIGNATURE-----

--------------BC2dW9m5TZ0ARs7u4cuNl3va--
