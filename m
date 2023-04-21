Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A0146EA129
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 03:42:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232677AbjDUBmz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 21:42:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbjDUBmy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 21:42:54 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69BC71724
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 18:42:51 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f17b967bfbso33988665e9.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 18:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682041370; x=1684633370;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPhcAW1TmpXwmghvP4EX3j34NVLAIIqn4QLHpC7AGzA=;
        b=NnLcFV6McV/oB3HscxuxlAZMfrk4eZ8GB1FOg2+ipAuirZGY1oaSBOWBNUxDZ+O9Oj
         zDianjhelXWRB+AE9SAtsyu5zkml3Dpyygg/sQ06t0PyT8Nn+T4vlPPONoiopU/vF1R8
         0TV2BuVTAUIH1PmmWkui7dfQR6z3PiG+4j7xE965WWJ5th3FWBDi5ATecG0TiJweUCbC
         FYKHJn2yQdeDHT3GwlZF63UmdVIQM/htPOtw1+GrVeZQRi4SkxS2CEqYENrEFOVPJB3A
         ihmN0JYtYUuwbr9bgfChXV0Szck1/i6pQ6IJ9mI5wxHwI2Ce9Pj0NMyxZA0ycnB009AI
         6cfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682041370; x=1684633370;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jPhcAW1TmpXwmghvP4EX3j34NVLAIIqn4QLHpC7AGzA=;
        b=dOvIGys2AvjocgqqarHswQf9SURihCZdyoV7YEJuyp5oqeI0Vruu8kzt7PeafOGCSl
         EdokiIFwjTL0O/BstfHsBubDoDFgZf3iuSmeKACNSrK4SMv59mzUbr/XLAkSULpREUUM
         zkO97wu1KHSfoK7L4d3e5+4v4OSjFHep0mtJw6vWUm8dco3wRABQVE7wBh1/Iva9Y51T
         0Q5wXlKDPGp6HYOrbT6LBjJZpV3T56k+U8wrL3UTVKHt7YFTzIXvnv6wlNmR1TJNV2RA
         u/+pe70WgYsM6eVueKO3iLLWPwiqltd0Y+cxn60GE0Cv2k6ctn8KKbmC/msvrU2vKpaV
         Xh/Q==
X-Gm-Message-State: AAQBX9flnyHGDo1EEXNQ3CJEthLbInU0pbKHzu1Zj+q+cMAdpmXr8zK9
        lHzfE9txdia3j7adFkfF+dhgoXdY+9o=
X-Google-Smtp-Source: AKy350YUUXVNaEDfJHSlfdTBkpnL9xst/qfDcEsO60Bp9YqXnkvMtJygX8BajL8kx9nSckJ7QUWH/g==
X-Received: by 2002:a05:600c:3b1b:b0:3f1:89de:7e51 with SMTP id m27-20020a05600c3b1b00b003f189de7e51mr444237wms.12.1682041369626;
        Thu, 20 Apr 2023 18:42:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i11-20020adfe48b000000b002c3f81c51b6sm3244690wrm.90.2023.04.20.18.42.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 18:42:49 -0700 (PDT)
Message-ID: <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
Date:   Fri, 21 Apr 2023 03:42:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------opBwdvvSWwMQk908m9I1gLRH"
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
--------------opBwdvvSWwMQk908m9I1gLRH
Content-Type: multipart/mixed; boundary="------------BLC0cqKjHtHKLEDx0uBFvkpV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
In-Reply-To: <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>

--------------BLC0cqKjHtHKLEDx0uBFvkpV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/21/23 02:39, =D0=BD=D0=B0=D0=B1 wrote:
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

Patch applied.

> ---
> Range-diff against v6:
> 1:  4b7971a5e < -:  --------- regex.3: Desoupify regfree() description
> 2:  5fb4cc16f ! 1:  ed050649b regex.3: Improve REG_STARTEND
>     @@ man3/regex.3: .SS Matching
>      -and ending before byte
>      -.IR pmatch[0].rm_eo .
>      +Match
>     -+.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm=
_eo )
>     ++.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
>      +instead of
>     -+.RI [ string ", " string " + \fBstrlen\fP(" string )).
>     ++.RI [ string , " string + strlen(string)" ).
>       This allows matching embedded NUL bytes
>       and avoids a
>       .BR strlen (3)
>     @@ man3/regex.3: .SS Matching
>      +as usual, and the match offsets remain relative to
>      +.IR string
>      +(not
>     -+.IR string " + " pmatch[0].rm_so ).
>     ++.IR "string + pmatch[0].rm_so" ).
>       This flag is a BSD extension, not present in POSIX.
>       .SS Match offsets
>       Unless
>=20
>  man3/regex.3 | 29 ++++++++++++++++-------------
>  1 file changed, 16 insertions(+), 13 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 46a4a12b9..099c2c17f 100644
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
> +.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
> +instead of
> +.RI [ string , " string + strlen(string)" ).
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

Minor glitch: s/IR/I/

I fixed it.  BTW, don't know if you knew, but you can run some linters
to check these accidents by yourself.


$ make lint check -t >/dev/null
$ echo .IR foo >> man3/regex.3
$ make lint check -k
LINT (mandoc)	.tmp/man/man3/regex.3.lint-man.mandoc.touch
LINT (tbl comment)	.tmp/man/man3/regex.3.lint-man.tbl.touch
PRECONV	.tmp/man/man3/regex.3.tbl
TBL	.tmp/man/man3/regex.3.eqn
EQN	.tmp/man/man3/regex.3.cat.troff
TROFF	.tmp/man/man3/regex.3.cat.grotty
an.tmac:man3/regex.3:376: style: .IR expects at least 2 arguments, got 1
found style problems; aborting
make: *** [share/mk/build/catman.mk:80: .tmp/man/man3/regex.3.cat.grotty]=
 Error 1
make: *** Deleting file '.tmp/man/man3/regex.3.cat.grotty'
make: Target 'check' not remade because of errors.
$ git restore -p
diff --git a/man3/regex.3 b/man3/regex.3
index e91504986..4840edb83 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -373,3 +373,4 @@ .SH SEE ALSO
 .PP
 The glibc manual section,
 .I "Regular Expressions"
+.IR foo
(1/1) Discard this hunk from worktree [y,n,q,a,d,e,?]? y

alx@asus5775:~/src/linux/man-pages/man-pages/main$ make lint check -k
LINT (mandoc)	.tmp/man/man3/regex.3.lint-man.mandoc.touch
LINT (tbl comment)	.tmp/man/man3/regex.3.lint-man.tbl.touch
PRECONV	.tmp/man/man3/regex.3.tbl
TBL	.tmp/man/man3/regex.3.eqn
EQN	.tmp/man/man3/regex.3.cat.troff
TROFF	.tmp/man/man3/regex.3.cat.grotty
GROTTY	.tmp/man/man3/regex.3.cat
COL	.tmp/man/man3/regex.3.cat.grep
GREP	.tmp/man/man3/regex.3.check-catman.touch


If you want to read more about this, see the CONTRIBUTING file, or the
Makefile itself (or rather, themselves).


Cheers,
Alex


> +(not
> +.IR "string + pmatch[0].rm_so" ).
>  This flag is a BSD extension, not present in POSIX.
>  .SS Match offsets
>  Unless

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------BLC0cqKjHtHKLEDx0uBFvkpV--

--------------opBwdvvSWwMQk908m9I1gLRH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRB6hgACgkQnowa+77/
2zKCwRAAgjDgAEOmebNQfVbWdUc6M0EGUD6oxOIdyumvMDegyM9jBa+qeDI0JLWo
0x1zQOKT9cos22q3mjJcrrOe1xKui97tWWjzz4XvYf5O2/7ubfqsaDWSJINNYpLw
WWWuP36BNSDZwwUX9wB69ER1rWPhjkJerdRPmIw0V12cw+EyFwWJAAok1+/bRCj0
kR71saFvjrowq1Pj8HUiiOzM8Jemq85UZQUyQph2KVvOGHd97mgHMP0LeiP5mAda
UQwmCjLpbDtoJ/BToEZu5KovvjAukvnLe3fHqtK3lz5xE81X6Bm3EkbMNzh+cBwK
0o9dsZc8XC2eA59o/On3cxgRrN35MHWc+/on7+qsYkJSBmHFuWpMEwZ0rSDU4DFd
eJNfIPviMIWjf36youhMdlamrH9rf/BLOGdW+LjWvapMtnzVyVdMBrwDfZaj2FL+
wpWh20O7NDgMsEVVExlkCDlTwKi6xP5QVg9EYb4UsEArVYc0MJl69jFXX3xp+QU0
gLcInrQ10c40iUscAar6M3ZVGLMdYr/MSo3nH74Tx1wZqgy68m/tdUYm4FnnULcY
pFzZ3rohjkp4q5CR79ghmUNlCunRBgj3MIAEnaoVTbATpSVy5EXAuysElixbXyN8
PlepDRg8pGvpDH5jaVFlpA87DP9v02QtrWuATyRnnoPX/VCD2VU=
=dpiU
-----END PGP SIGNATURE-----

--------------opBwdvvSWwMQk908m9I1gLRH--
