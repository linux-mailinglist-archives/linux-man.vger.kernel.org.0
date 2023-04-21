Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3BC36EA85A
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 12:33:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjDUKdh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 06:33:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjDUKdh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 06:33:37 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5E1272C
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:33:35 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f19323259dso4592175e9.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682073214; x=1684665214;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PTDj2OEs3l/nEvNE1hoc6Vn079H4eue4Ezo0jWxE8II=;
        b=WcPwA5NGxWIUqbZzmT/F1eYAJHEBExBj2vj0rbGEk1EH+re4WJmQPAWjJBtGrf107V
         jrSxDp3YoXHR0sEZL3oGkZSjtIYu9JU+MlwWAVpg73Z1ZacmOTtKMcR4TKuSqbhL4s9c
         1oVSi8QidpaWgLnUCXxELI2wIEcc+jQBjzLje3W5hERrYoeVXTnI7cOBnUTFOXWBLzkb
         Q3Z8V/dgoeLCr2JP6Pq39rIpk9mcH62YOsSNluUJ7ajogROBZCmPNwQMyeVwoWnqTo+i
         j3KM9aLJl6uQSDuCuAqfderhwoDAQ/1fWgcXXYywYML/9aHRmYy77LNHml20Aln75sTL
         XpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682073214; x=1684665214;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PTDj2OEs3l/nEvNE1hoc6Vn079H4eue4Ezo0jWxE8II=;
        b=k3QsZhKO+/PQsQNskrJK6D2d/vDyLwDnkx6CVU9NXGvppmwoUronlgb2iQ6qpk0IRx
         O9UNvrHKfC2PP2VNfISyx6fXh7FcNXfIKL9s9Y6hGmkq8oc37Egnb6fybVhgfINhlMbs
         hnsliuxPt8DH2sTOpJLYmRzDzvXDUl0tqYlOmWpHBEWdbhonxupBkPmqc7+PlXukYUNU
         mdZnxG/QpGNBXGXG4u/FsKOxzbXxZ2y3AyrKQhEfMCeTZj0aENY3InFSH8/n95SG7C/g
         fYnqxA4kAY2COZzHiTMk1TbJIgkWCJd+hv5cyPhE52EJwR5P5+1tyHKg79Lc/YHarNLk
         uH8g==
X-Gm-Message-State: AAQBX9eN+ixs7h9nAl6gF/xsFR5F5k8WeWb3zLyV3jy7ADY5g8tPjZQW
        bkRTfMxhVlIVm/aCbcVRUy3eEgwz9+M=
X-Google-Smtp-Source: AKy350Z7R75P61mvceemPDWYQ30yodPUaXRAGj4eOBv5TpUh1k61CzO73xDDwuCKUvGh786mtAlaDQ==
X-Received: by 2002:a05:600c:ac5:b0:3ed:276d:81a4 with SMTP id c5-20020a05600c0ac500b003ed276d81a4mr1417502wmr.32.1682073213498;
        Fri, 21 Apr 2023 03:33:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s12-20020a7bc38c000000b003f1739a0116sm4426255wmj.33.2023.04.21.03.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 03:33:33 -0700 (PDT)
Message-ID: <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
Date:   Fri, 21 Apr 2023 12:33:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xXvZDw0fyeTKbz4pOJMoh00H"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xXvZDw0fyeTKbz4pOJMoh00H
Content-Type: multipart/mixed; boundary="------------ds78hiOnWX0ZzeyL00YzRWr1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>

--------------ds78hiOnWX0ZzeyL00YzRWr1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/21/23 04:48, =D0=BD=D0=B0=D0=B1 wrote:
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

Patch applied, with minor tweaks; see below (I guess you approve them).

Cheers,
Alex

> ---
>  man3/regex.3 | 54 +++++++++++++++++++++++++++++++++-------------------=

>  1 file changed, 34 insertions(+), 20 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index f6465d484..46fd3adef 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -15,7 +15,7 @@ .SH LIBRARY
>  Standard C library
>  .RI ( libc ", " \-lc )
>  .SH SYNOPSIS
> -.nf
> +.EX

I've been thinking about this, but am not yet fully convinced.  I'll
propose you the two alternatives, and let you decide what looks best.

(a)  Use .nf/.fi for the function prototypes, and .EX/.EE for the
     types.

(b)  .EX/.EE for everything, as you did.

Please have a look at the PDF versions (you can run
`pdfman ./man3/regex.3` after you `source ./scripts/bash_aliases`).

If you're going to use it often, I suggest the following in
~/.bash_aliases:

if [ -f ~/src/linux/man-pages/man-pages/main/scripts/bash_aliases ]; then=

	. ~/src/linux/man-pages/man-pages/main/scripts/bash_aliases;
fi;


I've remove these bits from this patch, since the rest seems
uncontroversial to me.


>  .B #include <regex.h>
>  .PP
>  .BI "int regcomp(regex_t *restrict " preg ", const char *restrict " re=
gex ,
> @@ -43,7 +43,7 @@ .SH SYNOPSIS
>  .B } regmatch_t;
>  .PP
>  .BR typedef " /* ... */  " regoff_t;
> -.fi
> +.EE
>  .SH DESCRIPTION
>  .SS Compilation
>  .BR regcomp ()
> @@ -60,6 +60,21 @@ .SS Compilation
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
> @@ -192,22 +207,6 @@ .SS Match offsets
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

> @@ -218,7 +217,7 @@ .SS Match offsets
>  which is the offset of the first character after the matching text.
>  .PP
>  .I regoff_t
> -It is a signed integer type
> +is a signed integer type
>  capable of storing the largest value that can be stored in either an
>  .I ptrdiff_t
>  type or a
> @@ -344,12 +343,27 @@ .SH HISTORY
>  POSIX.1-2001.
>  .PP
>  Prior to POSIX.1-2008,
> -the type was
> +.I regoff_t
> +was required to be
>  capable of storing the largest value that can be stored in either an
>  .I off_t
>  type or a
>  .I ssize_t
>  type.
> +.SH NOTES

NOTES is dreaded, and only used when no other section would work.
CAVEATS (recently added to the Linux man-pages) is more suitable;
I've edited your patch to use it.

> +.I re_nsub
> +is only required to be initialized if
> +.B REG_NOSUB
> +wasn't specified, but all known implementations initialize it regardle=
ss.
> +.\" glibc, musl, 4.4BSD, illumos
> +.PP
> +Both
> +.I regex_t
> +and
> +.I regmatch_t
> +may (and do) have more members, in any order.
> +Always reference them by name.
> +.\" illumos has two more start/end pairs and the first one is of point=
ers
>  .SH EXAMPLES
>  .EX
>  #include <stdint.h>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ds78hiOnWX0ZzeyL00YzRWr1--

--------------xXvZDw0fyeTKbz4pOJMoh00H
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCZnsACgkQnowa+77/
2zIXqg/7BowHZOnQkyQPJa/Gah103428DBjBWkWko/DX5BpGLZMi8FahBBFx74x7
Aro7kd1bM4ilRx+rKORjzio2bfbRzbEgDisnk0DxFUJ+i+lKlbCUp++HI9URybkV
jT0q5m7qVGbWB39dgNp9tN9KU7u27OAgY1lQHG1fWeJHaXOhAZf6AbaTWZGg4Tnk
7g3SIQX+PG/HB3XQ3S6vb1eZJGE3jWCflHw7jmf+Ub0bM5ZcgAb4fdAd2wXUmnhA
6Eoj1FcxrC2bm3F49QKikM0RV+Ycwn2uPKzVQRtiXHUtZenDMd5ATbmliISYZk1f
rH6vmyP1dFEVGBVtIs8uRYmJxJ88/hX2yALodsRPWHqvJXDBV6gDrD+X/8EewfP0
CX4MU2FxDWCGl7TQ4V+rcolrA39xO5AbU4AMibXd+J/l0rhcO2VzoU21zTR9z9b7
TvArRW8PJ1ad23sglLFm1rNhjaKnS7eQB5ky9Atq6vIqNANBTB08Vx6vLmPSkm8I
TnC9zzn6l36qUTEAucJoNQFnRo7/l86XlNUmmrQ8Tj+SsoxeRFGVkgR8f5lnszZ8
qHSgNpD819UtmF5RZtvb0HZ+Lx5jODUKHzQW7ifEUu8jekxJOwhbW+0WxML7LjpA
CNKle68cD/zH1dDTymYAwiw1ajyyQ8Y+Wa755eZ0Qrvg9DytUe8=
=PGpL
-----END PGP SIGNATURE-----

--------------xXvZDw0fyeTKbz4pOJMoh00H--
