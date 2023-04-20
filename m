Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B2BB6E9FB8
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 01:15:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbjDTXPu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 19:15:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231454AbjDTXPt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 19:15:49 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30D0E26B3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:15:48 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-2fa0ce30ac2so994954f8f.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682032546; x=1684624546;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G529CsisKioVC4MIiWFdvWrD5OMysdVMAT+tf3lkT44=;
        b=B3wRl5wni/zznQlIn3cMmnerLERJk6uLhD9MWSL2mEtCiJdrcjccX6XT7yOx9KGhlZ
         uTSkEg9ptIxgC7PgdSqByXEpeyRDYyANdEButImiTLfRQKAd96PjHR+ClUqdRnWgVQgw
         0ocldGsHJOsFFzFazObyM+lXmXUOkSvxXAPMkC1sEW2uBZ109vU4Vwdo6bBJnLp8sXTp
         4Vrpx8YqvAgsNAhP4wKNwGowbpbGu0jHSZP+NnVzDwLOQirONSqc3IW1e5Ur7arTZx4l
         bkPwfr8K7q8CH8WsfXUbch7nzwy97S31ickDW4lKfxUdOAF1kaQwAvYE3i1ecZTt+tVL
         tEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682032546; x=1684624546;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G529CsisKioVC4MIiWFdvWrD5OMysdVMAT+tf3lkT44=;
        b=i63f6F1HRVyIusLYwCPuN+0nqbaKVvjKDJJyhBXMwgdsRjUwi6V9Zxt6nsNlQlf4m+
         rpym9alr8Ym88c6+73ub4/9dh2NeDTkMW6dt7jwx0H5rSMDdRxeiRcbtXDyoCbKS77zy
         EXNpAkbLS38Rrto2fqLAm9GR3ne5ZeJwthXoGxR8kXPmCQfWmKcdAh714FXf6A1Wy8QV
         AumiPiRZd142l6T5vS5x5Mys7FFa4lGdsKBvFHPD40ggfhNlkpTbXD14ZVNuD6JJNvD1
         rNsMkCK4zBWk9PJ5EM344bhOD2NZrMRqVRBT64rQFq3n5Lul+WCBh4yJzwBpV+LFxWZq
         73QA==
X-Gm-Message-State: AAQBX9dQA/SxejPex+RCllEItm2yw/oLUoMtbmvXZSPNRPIeHptk60lX
        qvuVEGGH6I+Tf0pGdXdGYTk=
X-Google-Smtp-Source: AKy350bbOwjuXPg11FgbkUZ45QUyutm6kvrvB5qx0XRhJG5Lz8YTRusOELvvKNkLjrWmpAcgyMdILw==
X-Received: by 2002:adf:e5c9:0:b0:2e9:bb2f:ce03 with SMTP id a9-20020adfe5c9000000b002e9bb2fce03mr2741509wrn.0.1682032546628;
        Thu, 20 Apr 2023 16:15:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y4-20020a5d6204000000b002f900cfc262sm3012314wru.66.2023.04.20.16.15.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 16:15:46 -0700 (PDT)
Message-ID: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
Date:   Fri, 21 Apr 2023 01:15:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <5fb4cc16fc25787cade8b6a93b3ac272c57c7808.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5fb4cc16fc25787cade8b6a93b3ac272c57c7808.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uTvDGmRjwNgop6pyNsQET5Ns"
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
--------------uTvDGmRjwNgop6pyNsQET5Ns
Content-Type: multipart/mixed; boundary="------------5yEdI8YF5arkrvF0XR7KzJU4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
Subject: Re: [PATCH v6 4/8] regex.3: Improve REG_STARTEND
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <5fb4cc16fc25787cade8b6a93b3ac272c57c7808.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <5fb4cc16fc25787cade8b6a93b3ac272c57c7808.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>

--------------5yEdI8YF5arkrvF0XR7KzJU4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/20/23 21:37, =D0=BD=D0=B0=D0=B1 wrote:
> Explicitly spell out the ranges involved. The original wording always
> confused me, but it's actually very sane.
>=20
> Remove "this doesn't change R_NOTBOL & R_NEWLINE" =E2=80=92 so does it =
change
> R_NOTEOL? No. That's weird and confusing.
>=20
> String largeness doesn't matter, known-lengthness does.
>=20
> Explicitly spell out the influence on returned matches
> (relative to string, not start of range).
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 29 ++++++++++++++++-------------
>  1 file changed, 16 insertions(+), 13 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index e3dd72a74..a9bec59a9 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -131,23 +131,26 @@ .SS Matching
>  above).
>  .TP
>  .B REG_STARTEND
> -Use
> -.I pmatch[0]
> -on the input string, starting at byte
> -.I pmatch[0].rm_so
> -and ending before byte
> -.IR pmatch[0].rm_eo .
> +Match
> +.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm_eo )=

> +instead of
> +.RI [ string ", " string " + \fBstrlen\fP(" string )).

See man-pages(7):

       Expressions, if not written on a separate indented line, should
       be  specified in italics.  Again, the use of nonbreaking spaces
       may be appropriate if the expression  is  inlined  with  normal
       text.

strlen(string) is an expression, not a man page reference, so it should
go in full italics.  The + is also part of the expression, so it should
also go in italics.  I suggest:

=2ERI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
=2ERI [ string , " string + strlen(string)" ).

>  This allows matching embedded NUL bytes
>  and avoids a
>  .BR strlen (3)
> -on large strings.
> -It does not use
> +on known-length strings.
> +If any matches are returned
> +.RB ( REG_NOSUB
> +wasn't passed to
> +.BR regcomp (),
> +the match succeeded, and
>  .I nmatch
> -on input, and does not change
> -.B REG_NOTBOL
> -or
> -.B REG_NEWLINE
> -processing.
> +> 0), they overwrite
> +.I pmatch
> +as usual, and the match offsets remain relative to
> +.IR string
> +(not
> +.IR string " + " pmatch[0].rm_so ).

Similar stuff here.

>  This flag is a BSD extension, not present in POSIX.
>  .SS Match offsets
>  Unless

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5yEdI8YF5arkrvF0XR7KzJU4--

--------------uTvDGmRjwNgop6pyNsQET5Ns
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBx5kACgkQnowa+77/
2zIybA/9GiBExnrOxUeihx73asWEZf4Uoyw/x7u2SE0FFPvdOZCfyvXA7ouUDF5q
6bwqO18t0Rg6JpVfoDLvUcxzrFbRI7R/XTj15OBkrc4Gd3Vj3xX85Vx+rokv9ouB
Xo+tN9u3QJV2qSTFcO9dOemYMtCg/BCppWxGdk/z5k8VEuP23QiPht9k5UsE8TYR
hzpVZPwSzldxS2JkQRKlZazlIZEn9XiKNQnFAV0EjK9e6J9aWJ43NZYNRnBnoepn
7dBrMoPMxM0Y9gCpvcdw7YB01e0tJqNWdbKgjx9eH6S023Z04pL3NpCpH4HMqHHm
7YXfJEN0yA41MLxiN6w7SVmVWwBRsFgwU6N7ZLsRrPQk6T7GHm81QCI4TEkNlmPJ
DAM1TYOWzHCkunmY+6FiDGt1epNvuhSKOKkLpTG1ZxGKTKliVGrZyjKALE51OxTL
rU1qU8rSUpUURUAkBY/YgupZ9D9WRqMLL3LLKyU6s3H+Dc2cr45hr38iG6kxVYl5
JJpsjpcb0dBP5NyFxKc2skSEO6tYDf0qnpTXx1hZajFuWF38uLGm3FpQ1gf9Aonm
0UOFlQ7BbxyUpmXwrGRvqukQTRaYPXBIfFlpAendVU96CTBAkzIFIJWew8gabBxC
1ENhmkj9o7xuNGhmCU2Lp7zsEncvQQmQRllxG32AtdZOCcqU3t4=
=zpO7
-----END PGP SIGNATURE-----

--------------uTvDGmRjwNgop6pyNsQET5Ns--
