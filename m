Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59D626E92D4
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234817AbjDTLcw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:32:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234687AbjDTLcY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:32:24 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E8C330F5
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:31:50 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id he13so1074480wmb.2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681990309; x=1684582309;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KcW1R/F9aH7ek2gDN5JDTzYzhyIeDg9dakqznSJJHtA=;
        b=blu3FQvzLs0nSxII4jcoKoJ3sX9TYFgnrnzKkKR2prZKBNGsopMhw6T0WT+x666Hrw
         T+lunHmnHv2OONLLTHB+iVPGEr9lEzKIsAELGxUvCQyN1ui5F8ZH4CRGmONwSba6NUwS
         mMIfN8WJRR8Sk3uQH/1cJE5Qs+Bt+2pY8eFsBEY8TY3mSDtm+lnnD6uZTLZmE82AWR/B
         93iItok9yYKjGkLue3AVcW5KVhiQgSdAPIqnBa25RD4sfJL7OD7CSebf2XQvlVOo71fd
         2LjJDdj0iMyCh2BbQtF9Ektl9WBi32JC2iQavZ+s42YjIpiwb7kJKpIm+3Lh9R+OXej8
         xWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681990309; x=1684582309;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KcW1R/F9aH7ek2gDN5JDTzYzhyIeDg9dakqznSJJHtA=;
        b=hlTU4OHVkONDNcRYCOen7En/chcfNKrxgVvZ63dt2dGCJ9RMU8rics9KmWr2LyuUSx
         Ab5dwEeTCoyjOORuoSisSuOGH/ibViKjgUsM59ge/kJ7y3cDMbiLMNKEu/8PVYxgYV01
         lCguy+b5ZfbIyz0jL5TopMkflRDs3PdNEhL3dCfEgT4KEG7l4b0UHG8j8IGM+OoT0e1K
         q02M6XoWVW53GhLc3FIm5kPC8y/qeLXH2L/My/NG2Yu3PERC0agt4AFbgFjm2h/vklq6
         +I+FnJY6zRcoKAlJ1cgoHIl+AZPGMPDwkwZb9T0ZGNux3BDHQ5tJ9crPp4QCPtPv9i5z
         hYxw==
X-Gm-Message-State: AAQBX9eGZBQKCqg54LZHhVvC+mP8K+EruM+wX2MzNgAz97MHnwlYl5M/
        7+ADdKhu+2QtuPJDC2vMeByxxmwYLK4=
X-Google-Smtp-Source: AKy350YNrQUzGS7AwAVOduNP6S9DGJBm2eVRuY8qCzRJwXVU16/MNOSfP0osvlo6CRDmd+qTnfKBJA==
X-Received: by 2002:a1c:4b1a:0:b0:3ed:a07b:c591 with SMTP id y26-20020a1c4b1a000000b003eda07bc591mr1037142wma.1.1681990308473;
        Thu, 20 Apr 2023 04:31:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n17-20020a5d4c51000000b002d6f285c0a2sm1751251wrt.42.2023.04.20.04.31.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 04:31:48 -0700 (PDT)
Message-ID: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
Date:   Thu, 20 Apr 2023 13:31:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 6/9] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: move in with regex.3
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <60165209cca7a64f1e281be54e15db1d8d52df35.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <60165209cca7a64f1e281be54e15db1d8d52df35.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KCiSnq1uDFV26i3mc9VSpsKU"
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
--------------KCiSnq1uDFV26i3mc9VSpsKU
Content-Type: multipart/mixed; boundary="------------qly5fiquMW47voyNkdtzutn7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
Subject: Re: [PATCH v2 6/9] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: move in with regex.3
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <60165209cca7a64f1e281be54e15db1d8d52df35.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <60165209cca7a64f1e281be54e15db1d8d52df35.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>

--------------qly5fiquMW47voyNkdtzutn7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 01:25, =D0=BD=D0=B0=D0=B1 wrote:
> They're inextricably linked, not cross-referenced at all,
> and not used anywhere else.
>=20
> Now that they (realistically) exist to the reader, add a note

I prefer if the text movement is done in a separate commit that does
the minimum, so that git(1) has it easier to follow the changes.

Also, this is a big change.  Could you please move it closer to the
end of the patch set?

Thanks,

Alex

> on how big nmatch can be; POSIX even says "The application develope
> should note that there is probably no reason for using a value of
> nmatch that is larger than preg=E2=88=92>re_nsub+1.".
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3              | 66 ++++++++++++++++++++++++++++-----------=

>  man3type/regex_t.3type    | 64 +------------------------------------
>  man3type/regmatch_t.3type |  2 +-
>  man3type/regoff_t.3type   |  2 +-
>  4 files changed, 51 insertions(+), 83 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index fa2669544..b95b3c3b0 100644
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
> @@ -29,7 +29,21 @@ Standard C library
>  .BI "            char " errbuf "[restrict ." errbuf_size "], \
>  size_t " errbuf_size );
>  .BI "void regfree(regex_t *" preg );
> -.fi
> +.PP
> +.B typedef struct {
> +.BR "    size_t    re_nsub;" "  /* Number of parenthesized subexpressi=
ons */"
> +.B } regex_t;
> +.PP
> +.B typedef struct {
> +.BR "    regoff_t  rm_so;" "    /* Byte offset from start of string"
> +                           to start of substring */
> +.BR "    regoff_t  rm_eo;" "    /* Byte offset from start of string to=
"
> +                           the first character after the end of
> +                           substring */
> +.B } regmatch_t;
> +.PP
> +.BR typedef " /* ... */  " regoff_t;
> +.EE
>  .SH DESCRIPTION
>  .SS POSIX regex compiling
>  .BR regcomp ()
> @@ -54,6 +68,21 @@ must always be supplied with the address of a
>  .BR regcomp ()-initialized
>  pattern buffer.
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
> @@ -192,22 +221,6 @@ must be at least
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

> @@ -216,6 +229,14 @@ The relative
>  .I rm_eo
>  element indicates the end offset of the match,
>  which is the offset of the first character after the matching text.
> +.PP
> +.I regoff_t
> +is a signed integer type
> +capable of storing the largest value that can be stored in either an
> +.I ptrdiff_t
> +type or a
> +.I ssize_t
> +type.
>  .SS POSIX error reporting
>  .BR regerror ()
>  is used to turn the error codes that can be returned by both
> @@ -338,6 +359,15 @@ T}	Thread safety	MT-Safe
>  POSIX.1-2008.
>  .SH HISTORY
>  POSIX.1-2001.
> +.PP
> +Prior to POSIX.1-2008,
> +.I regoff_t
> +was required to be
> +capable of storing the largest value that can be stored in either an
> +.I off_t
> +type or a
> +.I ssize_t
> +type.
>  .SH EXAMPLES
>  .EX
>  #include <stdint.h>
> diff --git a/man3type/regex_t.3type b/man3type/regex_t.3type
> index 176d2c7a6..c0daaf0ff 100644
> --- a/man3type/regex_t.3type
> +++ b/man3type/regex_t.3type
> @@ -1,63 +1 @@
> -.\" Copyright (c) 2020-2022 by Alejandro Colomar <alx@kernel.org>
> -.\" and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com>=

> -.\"
> -.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> -.\"
> -.\"
> -.TH regex_t 3type (date) "Linux man-pages (unreleased)"
> -.SH NAME
> -regex_t, regmatch_t, regoff_t
> -\- regular expression matching
> -.SH LIBRARY
> -Standard C library
> -.RI ( libc )
> -.SH SYNOPSIS
> -.EX
> -.B #include <regex.h>
> -.PP
> -.B typedef struct {
> -.BR "    size_t    re_nsub;" "  /* Number of parenthesized subexpressi=
ons */"
> -.B } regex_t;
> -.PP
> -.B typedef struct {
> -.BR "    regoff_t  rm_so;" "    /* Byte offset from start of string"
> -                           to start of substring */
> -.BR "    regoff_t  rm_eo;" "    /* Byte offset from start of string to=
"
> -                           the first character after the end of
> -                           substring */
> -.B } regmatch_t;
> -.PP
> -.BR typedef " /* ... */  " regoff_t;
> -.EE
> -.SH DESCRIPTION
> -.TP
> -.I regex_t
> -This is a structure type used in regular expression matching.
> -It holds a compiled regular expression,
> -compiled with
> -.BR regcomp (3).
> -.TP
> -.I regmatch_t
> -This is a structure type used in regular expression matching.
> -.TP
> -.I regoff_t
> -It is a signed integer type
> -capable of storing the largest value that can be stored in either an
> -.I ptrdiff_t
> -type or a
> -.I ssize_t
> -type.
> -.SH STANDARDS
> -POSIX.1-2008.
> -.SH HISTORY
> -POSIX.1-2001.
> -.PP
> -Prior to POSIX.1-2008,
> -the type was
> -capable of storing the largest value that can be stored in either an
> -.I off_t
> -type or a
> -.I ssize_t
> -type.
> -.SH SEE ALSO
> -.BR regex (3)
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

--------------qly5fiquMW47voyNkdtzutn7--

--------------KCiSnq1uDFV26i3mc9VSpsKU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBIqMACgkQnowa+77/
2zKHURAAkU7zFLj9q+5dpOQJNFDiU42jxOapZJqmeVq/Gv3hQIY/kgH87LFBzuwD
bepoFr1TtCBYSM/aCniK/Fskbb1JHhduMUJW/kgj6XtEdXN90kxNagfYh2Xbyl8I
JwKpsnuuHrfdAMmGg6HkvW9AEb6d7JhWjryW4SUu868R0MJyb2F6RkFG5xA0/E5U
1Yj4qNorAR0Pz4hwCbqywVLSZx5Xu9Gd8azm43FxfPw3f+TjUQyvSlvrB7cPmUEd
QLkw37sqhHkB7JaHIuM2sLYOghPyLfm6/y2xEM1I+wQHfH3MmD2EzKwZH5ju0xlG
/WaQLF/HaLnyeRjHdahhvtN4ReMyGkxAiuQbNqSSsIKTVLASDnxb2dAbisU15+p0
OB6VHbrXMdux7V3qIuTZHhdQynIB054qUmuaFJbq4GxWG+q07QciAe5/d5ILJoTX
TNG/ruc37hsNVCy2uRYu/3jV/aIQWig3urSPL55RIjRhfAdDHdtpch1DIs/W0toO
XKgcS1cXS9GrYMXXPv3H/LUgu1MHOxXL5wtw6z0nwfIUb7Ds7vb/adtr28OnqUEW
wIJgG0+b+7lWpVCSzLFOcPOznomKptoFnmtUxFLka6XPIEiGschFVC/y6VvQmJcT
dKfow/QFqQL0rPsrPZqbWJUzD1HnkkLsdDO/+ywZlHcMVYp5rDE=
=1G2o
-----END PGP SIGNATURE-----

--------------KCiSnq1uDFV26i3mc9VSpsKU--
