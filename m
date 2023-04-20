Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B42616E96A3
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 16:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231666AbjDTOHx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 10:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbjDTOHw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 10:07:52 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E473212D
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:07:51 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id m39-20020a05600c3b2700b003f170e75bd3so3494121wms.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681999670; x=1684591670;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3hDy6kcFFR7AzutRmnm73IdbcfcAq2huAdONvErxS/E=;
        b=TuavRKzoEKYAcYLI/0X1lqeRyXgG9bdvnzUK8EKxci3Xvg8njhiIwvbKE+y9mcNOWI
         myqRkcRTANsBDXPb2T7JXsZgY9846KPb/0mIjkqqJmeZM5yWBP5KlYxLmx7q08aqlrsP
         RqgFXjJ53BpI67CSdHlf3f8wzTq5A1oDMi/093hbaj0Cg0DMqxfGAdeNmMGDWMEDJbvY
         pw2rgyZDButWgWrJ64kN8bd+JWrXgAuvPH6ahWwNpu5MnYcT/nf5gXNH33oh1Ca0dU/L
         H02uAUIaCBB9WXHjIyQN7aNZ3b1vKLoLbKcOwu3F58vDDJnUJsmdlIC2ajUqkb6gnLzf
         TB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681999670; x=1684591670;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3hDy6kcFFR7AzutRmnm73IdbcfcAq2huAdONvErxS/E=;
        b=N8BG0o7gvL+Jxo2wZ92pTtlOZWR10k3YKzLfOvJB12uqwA62tAU+k/hfizr9BFJV/5
         F4MqYVBzctslejmh8wM0tFmcBxPs10eeDhJHAQZ5sue36ejc+QJ2aFQACqFkvcRYS9M0
         KuC/ylfm9uI5ZfQmaFkvuXZrOXCqKBS17dIstUXgu+4OqMbqzCIRSTni7F484p6YpM7y
         UUFIEzaAMEX5bEoAxFIVU6OLXSggRf1tNngSfHCU11yO9Jy0uVrwZdb+Qqsty3hbENgj
         wQHpYb4aDpxsZ+xo8E/qvxESm/97mR3bYjWcL/00X0O8nTEmsEWr0Z9CTj8st/BvbrYy
         qw3Q==
X-Gm-Message-State: AAQBX9cJTRCubNB7finnYVrPWHZkqDz7tJzz8gRK+81WUe5FhVU7Rkd4
        b7dR9R4g8fezLW8nJ3GVeENaREkpqH4=
X-Google-Smtp-Source: AKy350Yjrwj5dS1HVq4xnX51VFDhhuEZwbBp9Klo8LVSg2X0saPW9DzTbOsuD7uezFT3m3ylLcH9bg==
X-Received: by 2002:a05:600c:1d09:b0:3f1:7a31:2c86 with SMTP id l9-20020a05600c1d0900b003f17a312c86mr5131190wms.16.1681999669521;
        Thu, 20 Apr 2023 07:07:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g10-20020a7bc4ca000000b003f171234a08sm2118450wmk.20.2023.04.20.07.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 07:07:48 -0700 (PDT)
Message-ID: <bae6abb8-6f75-5176-97e5-64df6f446799@gmail.com>
Date:   Thu, 20 Apr 2023 16:07:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 5/6] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move in with regex.3
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <685b4fb7b12c8e99beedd75d65a000748b771ee4.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <685b4fb7b12c8e99beedd75d65a000748b771ee4.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9Fe0s8PK2u77H5brkrtT77Et"
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
--------------9Fe0s8PK2u77H5brkrtT77Et
Content-Type: multipart/mixed; boundary="------------5I0Z5k2yUpjzWGyo96G46Cl1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <bae6abb8-6f75-5176-97e5-64df6f446799@gmail.com>
Subject: Re: [PATCH v4 5/6] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move in with regex.3
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <685b4fb7b12c8e99beedd75d65a000748b771ee4.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <685b4fb7b12c8e99beedd75d65a000748b771ee4.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>

--------------5I0Z5k2yUpjzWGyo96G46Cl1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> They're inextricably linked, not cross-referenced at all,
> and not used anywhere else.
>=20
> Now that they (realistically) exist to the reader, add a note
> on how big nmatch can be; POSIX even says "The application developer
> should note that there is probably no reason for using a value of
> nmatch that is larger than preg=E2=88=92>re_nsub+1.".
>=20
> Also remove the now-duplicate regmatch_t declaration.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3              | 40 +++++++++++++++++++--------------------=

>  man3type/regex_t.3type    |  1 +
>  man3type/regmatch_t.3type |  2 +-
>  man3type/regoff_t.3type   |  2 +-
>  4 files changed, 23 insertions(+), 22 deletions(-)
>  create mode 100644 man3type/regex_t.3type
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 615e065de..6d203fa22 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -15,7 +15,7 @@ regcomp, regexec, regerror, regfree \- POSIX regex fu=
nctions
>  Standard C library
>  .RI ( libc ", " \-lc )
>  .SH SYNOPSIS
> -.nf
> +.EX
>  .B #include <regex.h>
>  .PP
>  .BI "int regcomp(regex_t *restrict " preg ", const char *restrict " re=
gex ,
> @@ -43,7 +43,7 @@ size_t " errbuf_size );
>  .B } regmatch_t;
>  .PP
>  .BR typedef " /* ... */  " regoff_t;
> -.fi
> +.EE
>  .SH DESCRIPTION
>  .SS Compilation
>  .BR regcomp ()
> @@ -60,6 +60,21 @@ is a null-terminated string.
>  The locale must be the same when running
>  .BR regexec ().
>  .PP
> +After
> +.BR regcomp ()
> +succeeds,
> +.I preg->re_nsub
> +holds the number of subexpressions in
> +.IR regex .
> +Thus, a value of
> +.I preg->re_nsub
> ++ 1
> +passed as
> +.I nmatch
> +to
> +.BR regexec ()
> +is sufficient to capture all matches.
> +.PP
>  .I cflags
>  is the
>  bitwise OR
> @@ -196,22 +211,6 @@ must be at least
>  .IR N+1 .)
>  Any unused structure elements will contain the value \-1.
>  .PP
> -The
> -.I regmatch_t
> -structure which is the type of
> -.I pmatch
> -is defined in
> -.IR <regex.h> .
> -.PP
> -.in +4n
> -.EX
> -typedef struct {
> -    regoff_t rm_so;
> -    regoff_t rm_eo;
> -} regmatch_t;
> -.EE
> -.in
> -.PP
>  Each
>  .I rm_so
>  element that is not \-1 indicates the start offset of the next largest=

> @@ -222,7 +221,7 @@ element indicates the end offset of the match,
>  which is the offset of the first character after the matching text.
>  .PP
>  .I regoff_t
> -It is a signed integer type
> +is a signed integer type
>  capable of storing the largest value that can be stored in either an
>  .I ptrdiff_t
>  type or a
> @@ -346,7 +345,8 @@ POSIX.1-2008.
>  POSIX.1-2001.
>  .PP
>  Prior to POSIX.1-2008,
> -the type was
> +.I regoff_t
> +was required to be
>  capable of storing the largest value that can be stored in either an
>  .I off_t
>  type or a
> diff --git a/man3type/regex_t.3type b/man3type/regex_t.3type
> new file mode 100644
> index 000000000..c0daaf0ff
> --- /dev/null
> +++ b/man3type/regex_t.3type

The link changes in the same patch that does the move are fine.
git should be smart enough to follow that, and it will help
humans too.  This short removal of the file might be worse than
than the previous approach, I fear.

> @@ -0,0 +1 @@
> +.so man3/regex.3
> diff --git a/man3type/regmatch_t.3type b/man3type/regmatch_t.3type
> index dc78f2cf2..c0daaf0ff 100644
> --- a/man3type/regmatch_t.3type
> +++ b/man3type/regmatch_t.3type
> @@ -1 +1 @@
> -.so man3type/regex_t.3type
> +.so man3/regex.3
> diff --git a/man3type/regoff_t.3type b/man3type/regoff_t.3type
> index dc78f2cf2..c0daaf0ff 100644
> --- a/man3type/regoff_t.3type
> +++ b/man3type/regoff_t.3type
> @@ -1 +1 @@
> -.so man3type/regex_t.3type
> +.so man3/regex.3


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5I0Z5k2yUpjzWGyo96G46Cl1--

--------------9Fe0s8PK2u77H5brkrtT77Et
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBRzMACgkQnowa+77/
2zIO2w//ejsJz5vaOXx93E2aRe+ajjX0ckPq1YIkwSkVhnpxZ537X3zFxSQtV0ly
6sBkpvN+XvP/FkurcrLYbrh4C8s9ivS2lnEqLLw+8CsiQWYbyXoMC1MfqXsFw8FY
JZjFUFdAWd4vmSU6O4f9V3SvZkd44QvByyDcNdthKoDGe3E0Sia3yfcURZxqrFo3
1gpgCX1wgICENnUdD5TNh17J3k65x295QnvnLpRZ5THtESNsjtfFQCdpGO2JpH+s
TjlQ4lbSGMkWcvqE/DQnnFssinE1nJdeUGTAxNPO80eGf58Qi65sgv0o/8WHVXcj
OFCnDBOR6rQtz22O02t+ZZKvU9veQkzT1dfZPW41Eis6jRQ6aU7CFgvEaSqe2fT3
3Hf2BIdOVybkUxe7XgHPk9SzkvOIVSaAQPboiHAs46Ux2Yk4vxEpE3iu1YJbw6ZI
eqZ7n/EvIn4kELMUxNUsw7qtWph3Owim8DhZ+waOXLW6jCP6FSCcV7xBnLQxj2My
W38PS8LDzuh0EoiR0qo9te1eY4Zr9YngLvFR5p46ExQoCQgorMcRpDcsLGFspLCC
ba7V14f/0Okc6Z5wIAZDSv290mwn4hNgP0eWHsAzuBnAD0m14Ilx2n1fUqX6q6Av
Vks+eE5+nMCsYbh1ak1VJ/8mSxhaCZkh3Naj/2RVWE3UqEX3ytw=
=90OB
-----END PGP SIGNATURE-----

--------------9Fe0s8PK2u77H5brkrtT77Et--
