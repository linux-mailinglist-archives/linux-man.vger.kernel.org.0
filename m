Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 225476EA161
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:01:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233417AbjDUCBv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231643AbjDUCBp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:01:45 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2E613C34
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:01:43 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-2f833bda191so740177f8f.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682042502; x=1684634502;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8PSVTdIK0tJ/KSyuvF9tOW0MynQRg8oWpvTxih+XcPE=;
        b=FmqERRbpNVgbErx9EKXKEIQI6flDWvveVkCgG3sMmoQOP3O+6SMVZBNITMcvqJ+uwl
         nsNISXo8qsXx4nH+iCRgSmzBE7bAYkRKqDcdj6bzacPyRZDa8hVdN575FGjb64+zjd6q
         ug1lEIZMVb94/a8Z7a+Ysa1dsOUtW7R6CJWT3wBeNltOSXoyooJMHxDhZIy1QvumOXlE
         Gjmq4e0U7Ad6+gQBZf5WrWTB1oqCPXhk9S40n97xFwq/gzT/Eu1kSVwPZp4shsd9TyfE
         h5Ag5VUh6hFn0m7yBJct662z6b4BO1re8SrNMTmvpA0CdEamIzmxH7cAOG1ciAnU0f5d
         2w7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682042502; x=1684634502;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8PSVTdIK0tJ/KSyuvF9tOW0MynQRg8oWpvTxih+XcPE=;
        b=bkui7Yt40cOIq9d3zmR5hgtxZfSiLWLtK+ecnpCUstrmkq2+j+708Zwql1dpEJ9ycZ
         Fzj3J+8zAIY3aI1zmupHBLtidBt4s5rbDtud3XkPeU+KR6/Q9C42WvrDOZVnRxrHgIyo
         bvkuXanAUDinU0S4CfY48QAGDCT5V75GV22EiRFBXPqFw+I0yMsXdZGv217Uer39ofB3
         QrEl27n3n7YDfu3X1caDAxQE28d8afgMz4lEMBNeSyq0OtozLEMO4MI2qZ7yp6grDKtv
         6h6H0/ItEICiCo/uiM6v9f20I9rH8Uwa+DAsXRNGaX5C0rC8cLEGIJIFRfofGmqQRZXa
         b5QA==
X-Gm-Message-State: AAQBX9f92xSCZo33LK1uA6Yrq2I6IEVDAzFcA/ynm/r1n8IwPsQGbeCy
        5Ur8uiauAHM1Er70N6sQvzg=
X-Google-Smtp-Source: AKy350bWAexcQchNjL5z5CZsyx7h5Q9d5oLq1sRs0OJhDIxEwBISn/CBuqBm1JdoNo6r40R76rJ6Bw==
X-Received: by 2002:a5d:4110:0:b0:2f4:a60f:3cd8 with SMTP id l16-20020a5d4110000000b002f4a60f3cd8mr2414380wrp.49.1682042502258;
        Thu, 20 Apr 2023 19:01:42 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id a18-20020a056000101200b002e61e002943sm3257621wrx.116.2023.04.20.19.01.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 19:01:41 -0700 (PDT)
Message-ID: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
Date:   Fri, 21 Apr 2023 04:01:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 0/8] regex.3 momento
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bkbU5ga7qfaS8JWJmjXXEeCH"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bkbU5ga7qfaS8JWJmjXXEeCH
Content-Type: multipart/mixed; boundary="------------zKUIqJFUxHJ6VATv8pinJZ1D";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
Subject: Re: [PATCH v6 0/8] regex.3 momento
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>

--------------zKUIqJFUxHJ6VATv8pinJZ1D
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey =D0=BD=D0=B0=D0=B1!

On 4/20/23 21:36, =D0=BD=D0=B0=D0=B1 wrote:
> Should include all comments; includes Branden's wording.


I'm going to sleep.  Would you please rebase and send tomorrow whatever
I didn't yet apply?  I've got a mess of mailbox by now =3D)

Let's see what I find in the git-log(1)...

>=20
> =D0=BD=D0=B0=D0=B1 (8):
>   regex.3: Desoupify regexec() description

Applied.

>   regex.3: Desoupify regerror() description

Not yet it seems;  please resend.

>   regex.3: Desoupify regfree() description

Applied.

>   regex.3: Improve REG_STARTEND

Applied.

>   regex.3, regex_t.3type, regmatch_t.3type, regoff_t.3type: Move & link=

>     regex_t.3type into regex.3
>   regex.3: Finalise move of reg*.3type

Both not yet; please resend.

>   regex.3: Destandardeseify Match offsets

Not yet; please resend.

>   regex.3: Further clarify the sole purpose of REG_NOSUB

And not yet; please resend.

Cheers,
Alex

>=20
>  man3/regex.3              | 226 ++++++++++++++++++++++----------------=

>  man3type/regex_t.3type    |  64 +----------
>  man3type/regmatch_t.3type |   2 +-
>  man3type/regoff_t.3type   |   2 +-
>  4 files changed, 133 insertions(+), 161 deletions(-)
>=20
> Range-diff against v5:
> 1:  fcb8df21b < -:  --------- regex.3: Desoupify regcomp() description
> 2:  7240de5b7 =3D 1:  1ad1aa6e9 regex.3: Desoupify regexec() descriptio=
n
> 3:  108f30cd7 ! 2:  6c4d26f89 regex.3: Desoupify regerror() description=

>     @@ Commit message
>          Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabija=
czleweli.xyz>
>     =20
>       ## man3/regex.3 ##
>     -@@ man3/regex.3: .SH SYNOPSIS
>     - .BI "            int " eflags );
>     - .PP
>     - .BI "size_t regerror(int " errcode ", const regex_t *_Nullable re=
strict " preg ,
>     --.BI "            char " errbuf "[restrict ." errbuf_size "], \
>     -+.BI "                char " errbuf "[restrict ." errbuf_size "], =
\
>     - size_t " errbuf_size );
>     - .BI "void regfree(regex_t *" preg );
>     - .fi
>      @@ man3/regex.3: .SS Error reporting
>       .BR regexec ()
>       into error message strings.
>     @@ man3/regex.3: .SS Error reporting
>      -If both
>      -.I errbuf
>      -and
>     ++If
>     ++.I preg
>     ++isn't a null pointer,
>      +.I errcode
>      +must be the latest error returned from an operation on
>      +.IR preg .
>     -+If
>     -+.I preg
>     -+is a null pointer\(emthe latest error.
>      +.PP
>      +If
>     ++.I errbuf_size
>     ++is
>     ++.BR 0 ,
>     ++the size of the required buffer is returned.
>     ++Otherwise, up to
>       .I errbuf_size
>      -are nonzero,
>      -.I errbuf
>      -is filled in with the first
>      -.I "errbuf_size \- 1"
>      -characters of the error message and a terminating null byte (\[aq=
]\e0\[aq]).
>     -+is
>     -+.BR 0 ,
>     -+the size of the required buffer is returned.
>     -+Otherwise, up to
>     -+.I errbuf_size
>      +bytes are copied to
>      +.IR errbuf ;
>      +the error string is always null-terminated, and truncated to fit.=

>       .SS Freeing
>     --Supplying
>     + Supplying
>       .BR regfree ()
>     --with a precompiled pattern buffer,
>     --.IR preg ,
>     --will free the memory allocated to the pattern buffer by the compi=
ling
>     --process,
>     -+invalidates the pattern buffer at
>     -+.IR *preg ,
>     -+which must have been initialized via
>     - .BR regcomp ().
>     - .SH RETURN VALUE
>     - .BR regcomp ()
> -:  --------- > 3:  4b7971a5e regex.3: Desoupify regfree() description
> 4:  fd1a104d6 ! 4:  5fb4cc16f regex.3: Improve REG_STARTEND
>     @@ man3/regex.3: .SS Matching
>      -on large strings.
>      -It does not use
>      +on known-length strings.
>     -+.I pmatch
>     -+must point to a valid readable object.
>      +If any matches are returned
>      +.RB ( REG_NOSUB
>      +wasn't passed to
>     @@ man3/regex.3: .SS Matching
>      -processing.
>      +> 0), they overwrite
>      +.I pmatch
>     -+as usual, and the
>     -+.B Match offsets
>     -+remain relative to
>     ++as usual, and the match offsets remain relative to
>      +.IR string
>      +(not
>      +.IR string " + " pmatch[0].rm_so ).
> 5:  198b7b4fa ! 5:  057a4a522 regex.3, regex_t.3type, regmatch_t.3type,=
 regoff_t.3type: Move & link regex_t.3type into regex.3
>     @@ Commit message
>     =20
>       ## man3/regex.3 ##
>      @@ man3/regex.3: .SH SYNOPSIS
>     - .BI "                char " errbuf "[restrict ." errbuf_size "], =
\
>     - size_t " errbuf_size );
>     + .BI "            char " errbuf "[_Nullable restrict ." errbuf_siz=
e ],
>     + .BI "            size_t " errbuf_size );
>       .BI "void regfree(regex_t *" preg );
>      +.PP
>      +.B typedef struct {
> 6:  c6bc9cfd0 =3D 6:  60ac1a4d1 regex.3: Finalise move of reg*.3type
> 7:  59b8294c8 =3D 7:  3313546db regex.3: Destandardeseify Match offsets=

> 8:  2e199fc3c ! 8:  7fa669481 regex.3: Further clarify the sole purpose=
 of REG_NOSUB
>     @@ man3/regex.3: .SS Compilation
>      -.I nmatch
>      -and
>      -.I pmatch
>     -+Only report overall success:
>     ++Report only overall success.
>       .BR regexec ()
>      -arguments will be ignored for this purpose (but
>     -+will only use
>     ++will use only
>       .I pmatch
>      -may still be used for
>      -.BR REG_STARTEND ).
>      +for
>      +.BR REG_STARTEND ,
>     -+and ignore
>     ++ignoring
>      +.IR nmatch .
>       .TP
>       .B REG_NEWLINE

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------zKUIqJFUxHJ6VATv8pinJZ1D--

--------------bkbU5ga7qfaS8JWJmjXXEeCH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRB7oQACgkQnowa+77/
2zI3qRAAiWnwFVseMUiU2r3Pk5gysP+cgvhZhb4WIH/2SrLP+xtzLQfMx/iGGOUl
nEYwxJ5G9WOTWY4BkUH8XzdJqzH5Mm0v0nElYQH+ZwGWfZRVqfSHZrUh/DQYTOCs
LMF2TNGWw8oeja+IIzquJ51/s3UTPxi+73Cds9CJAxAVw/P5ME/hxlKbLzky2LxS
pfRr+QBG8pE34KDqjLFlBnEv4FI/nupt5GSM7kgrz9F11EGo+zGPjtW2KCC9Wns9
drZiBlrsJC4dpV+qcqX1xyOLbkYlkSPzw4Sqg+qpySdXMoEpfXWPTCguJHM+2Mry
Xs7qIiy9Aymixt7jrVPJqaF59sY1Bpo81Qp2XRyJESTmSnX7ghiqZmbM0w8H70+g
87k04++TAwflkJwEkcrvqusXiEj7Y/tNIK/EO276yUymovPe6BLyoqDVFMmQQK/N
y9JB4o5OEn7NjbpMYjYMx9J1MoK2ie/Sz+7BLXM0VqeNiiQp+A5R2Nz3da6O3NKn
y8ExlJsA5lHvQ0Dmo+rx0ZDlt/ysBxjMW/hwemiFu1Gki8nR8vxOXcpzJeUrEB1w
EC1Q9EOHvgAG5qQzrrTpfz5PG9A2wT0aq3Il3M/r3l78tU3PMNuxD8lQKoEJokSY
G39LaVbJkxuspjydEkDCr2BsMrJnaRSZ/hJXCa+QABheFsp3lnw=
=1sKF
-----END PGP SIGNATURE-----

--------------bkbU5ga7qfaS8JWJmjXXEeCH--
