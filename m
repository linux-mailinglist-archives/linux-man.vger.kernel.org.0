Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BD0B6C7DF4
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 13:22:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231839AbjCXMWM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Mar 2023 08:22:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231443AbjCXMWL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Mar 2023 08:22:11 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF3D91A7
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 05:22:08 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id v4-20020a05600c470400b003ee4f06428fso900539wmo.4
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 05:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679660527;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YnOyZREHHBBcaOKAy230ws/q4WIgHyS+huWbqGDNruE=;
        b=BJxr1UH6twJO5TE4nWnfeaijcM6WPiUw2m/vsL++CY1QGrrUk1srrrn6LWgdduh5uZ
         hXLDaRZBx/ArAPGSxPuRqp+YdUAGh1ewsSGF59m1SQzvJ/8aAArttHcODbQ9zzJmyXbI
         8KEmQT3e/AQIWkjqZmLEL9/gYaGQcNjQXK7+V6QCB8kFgSQHeUIjxFedxrIUKnONzFY5
         bjUjel6z4mhGPSuOprCL8p12/Cxx16rMB5OSR/pRgVcoxcmugJ/yCWyvKBp7J7ffBp3o
         rIB6ey/kPdzyKBcc+B1XFLqHQaE2xiazDfKFMY8s1XMpxzdS4DF9g/t2pv2jerzEzyXs
         DuwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679660527;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YnOyZREHHBBcaOKAy230ws/q4WIgHyS+huWbqGDNruE=;
        b=nEvRPP78+R4/d7JFSf8COjjqz7upSwsYwt+QuXh1hdthwv5x6ZyPTgaGl7LhGU7MhY
         W8V4HrguJ6dPz694ZvLpx9CU6Xhhi5cf3wBilscQg38ESqtbz1DLGWuWoaWul2z21Z57
         zhPeFP7RIbVg21qhJ6YOJKJZdtwCjrO57j+F2o3vrVYNJy8tlhUVmN+aoccLc7VvfnzT
         SmPrFlkYgG3XcEm7Kd/r1DbnNP5AGjdP7C7V0rog0QcHeIhaC8Bm+X9zXqismr+6WHeF
         is/o/6MZskz/sIfa7pK6A2JA2fmRptIjEduBRXsor1oFaQ0qQHJQQZAYdlJpBrNI3+vY
         60jg==
X-Gm-Message-State: AO0yUKWlC533n+nqqQ2sFLCdbTu/soSzYkXauvujIw8uhZ6FjP8dSsvg
        pIEw6JwJyZdcHw6KnH9hZFg=
X-Google-Smtp-Source: AK7set/xyVVGX0tTx55nVqamQhkD7mschUYWJ1H3p3obQsOYjfELhqKDKW0JK/3hgOVUt8fW0GQF+A==
X-Received: by 2002:a7b:c40d:0:b0:3da:2ba4:b97 with SMTP id k13-20020a7bc40d000000b003da2ba40b97mr1851781wmi.19.1679660526991;
        Fri, 24 Mar 2023 05:22:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s12-20020a1cf20c000000b003ed1f111fdesm4680421wmc.20.2023.03.24.05.22.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 05:22:06 -0700 (PDT)
Message-ID: <a16c019b-66dd-adc1-769c-8a6fb813e288@gmail.com>
Date:   Fri, 24 Mar 2023 13:21:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] stdc: some improvements
To:     Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Sam James <sam@gentoo.org>
References: <ZB0v95XCMia3ibVj@dj3ntoo>
Content-Language: en-US
Cc:     linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>,
        Guillem Jover <guillem@hadrons.org>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZB0v95XCMia3ibVj@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uEsDkUBTdmWgTI4Ilrpe5UkX"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------uEsDkUBTdmWgTI4Ilrpe5UkX
Content-Type: multipart/mixed; boundary="------------EVJ0sH3uBfhqu0CgwxnmJIZe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Oskari Pirhonen <xxc3ncoredxx@gmail.com>, Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>,
 Guillem Jover <guillem@hadrons.org>, Brian Inglis <Brian.Inglis@Shaw.ca>,
 Matt Jolly <Matt.Jolly@footclan.ninja>
Message-ID: <a16c019b-66dd-adc1-769c-8a6fb813e288@gmail.com>
Subject: Re: [PATCH v2] stdc: some improvements
References: <ZB0v95XCMia3ibVj@dj3ntoo>
In-Reply-To: <ZB0v95XCMia3ibVj@dj3ntoo>

--------------EVJ0sH3uBfhqu0CgwxnmJIZe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari, Sam,

On 3/24/23 06:07, Oskari Pirhonen wrote:
> - Some small stylistic changes such as removing trailing semicolons and=

>   noisy `shift` calls.

But they are sooo pretty =3D)  That's a little OCD of mine putting
semicolons in shell scripts.  Maybe I read too much C, but it feels
good to see punctuation marks at the end of sentences.  I prefer to
keep semicolons.

> - Ensure pcregrep exists. It is installed as pcre2grep on my machine, s=
o
>   check for both and error out if neither is found. Prefer pcre2grep
>   (installed by libpcre2) because libpcre is EOL.

Hmm, I didn't know about pcre2grep(1).  I've applied the following:

commit 40049b4d55f6ba2f392aa3b48835b4555ef79ee2 (HEAD -> main, alx/main)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Mar 24 12:39:33 2023 +0100

    bin/: Use pcre2grep(1) instead of pcregrep(1)
   =20
    PCRE is EOL, and replaced by PCRE2.
   =20
    Reported-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
    Reported-by: Sam James <sam@gentoo.org>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/bin/stdc b/bin/stdc
index 8c725a2..e70e067 100755
--- a/bin/stdc
+++ b/bin/stdc
@@ -14,7 +14,7 @@ err()
=20
 grep_proto()
 {
-       pcregrep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
+       pcre2grep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
 }
=20
 libc_summ_c89()

> - Make libc_summ() standard-agnostics by passing in the filter
>   expression and the path to the doc as arguments.

It's really standards agnostic except for C89.  ISO C drafts
are pretty much all the same except for the original one, since
I was really ANSI C.  That's why C99 and C11 (and C2x if we add
it) can reuse libc_summ(), but C89 is an exception.

> - Make libc_summ() error out if the doc is not found.

The shell already errors out with a quite readable message:

$ ./bin/stdc c99 fgets
=2E/bin/stdc: line 54: /usr/local/share/doc/c/c99/n1256.foo: No such file=
 or directory
$ echo $?
1

Is it not good enough?

> - Give basic usage information on usage errors.

I prefer writing a man page.  It keeps the source code simpler.
Please keep this suggestion around, and resend it if you feel it's
necessary after having a man page (1 or 2 weeks maybe).

> - Make the standard version match case insensitive.

Okay.

>=20
> Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>

Please send individual patches for each of the logical changes.

> ---
> v1 -> v2:
> - Prefer pcre2grep from libpcre2. Suggested by Sam on IRC.
>=20
>  bin/stdc | 101 +++++++++++++++++++++++++++++++++++++------------------=

>  1 file changed, 68 insertions(+), 33 deletions(-)
>=20
> diff --git a/bin/stdc b/bin/stdc
> index 8c725a2..0d322af 100755
> --- a/bin/stdc
> +++ b/bin/stdc
> @@ -1,65 +1,100 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
> =20
> -set -Eefuo pipefail;
> +set -Efuo pipefail

Why not set -e?  It's not documented in the commit message.

> =20
> -prefix=3D"/usr/local";
> -datarootdir=3D"$prefix/share";
> -docdir=3D"$datarootdir/doc";
> +prefix=3D"/usr/local"
> +datarootdir=3D"$prefix/share"
> +docdir=3D"$datarootdir/doc"
> +
> +c89_filter=3D'/A.3 LIBRARY SUMMARY/,$p'
> +c89_doc=3D"$docdir/c/c89/c89-draft.txt"
> +c99_filter=3D'/Library summary$/,/Sequence points$/p'
> +c99_doc=3D"$docdir/c/c99/n1256.txt"
> +c11_filter=3D'/Library summary$/,/Sequence points$/p'

This filter is really non_c89_filter :)

> +c11_doc=3D"$docdir/c/c11/n1570.txt"
> +
> +pcregrep=3D"$(type -P pcre2grep)"
> +if [[ -z "$pcregrep" ]]; then
> +	pcregrep=3D"$(type -P pcregrep)"
> +fi

Not necessary anymore.  I switched to pcre2grep after your
suggestion.  I prefer not adding legacy fallbacks.  If someone
wants to backport this to an old system, that's not our problem.

> =20
>  err()
>  {
> -	>&2 echo "$(basename "$0"): error: $*";
> -	exit 1;
> +	>&2 echo "$*"
>  }
> =20
> -grep_proto()
> +die()
> +{
> +	err "$(basename "$0"): error: $*"
> +	exit 1
> +}
> +
> +# Args:
> +# 	1: usage error
> +usage()
>  {
> -	pcregrep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
> +	err "$*"
> +	err
> +	err "usage: $(basename "$0") <version> <function>"
> +	err
> +	err "    version    ISO C version. Supported versions:"
> +	err "               C89, C99, C11"
> +	err "               (case insensitive)"
> +	err "    function   Function to look for"
> +	exit 1
>  }
> =20
> -libc_summ_c89()
> +# Args:
> +# 	1: declaration to look for
> +grep_proto()
>  {
> -	sed -n '/A.3 LIBRARY SUMMARY/,$p' <"$docdir/c/c89/c89-draft.txt";
> +	"$pcregrep" -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);\$"
>  }
> =20
> +# Args:
> +# 	1: filter expression
> +# 	2: path to plaintext standard
>  libc_summ()
>  {
> -	sed -n '/Library summary$/,/Sequence points$/p';
> +	if [[ ! -r "$2" ]]; then
> +		die "cannot find or read '$2'"
> +	fi
> +	sed -n -e "$1" "$2"
>  }
> =20
> +if [[ -z "$pcregrep" ]]; then
> +	die "pcre2grep or pcregrep required but is not installed"
> +fi
> +
>  case $# in
> -0)
> -	err "missing ISO C version.";
> -	;;
> -1)
> -	err "missing function name.";
> +0|1)
> +	usage "missing ISO C version and/or function name."
>  	;;
>  2)
>  	;;
>  *)
> -	shift;
> -	shift;
> -	err "unsupported extra argument(s): $*";
> +	shift
> +	shift
> +	usage "unsupported extra argument(s): ${*@Q}"
>  	;;
> -esac;
> +esac
> =20
> -case "$1" in
> +case "${1@L}" in

I'm not a fan of shell features.  I prefer some command like
    "$(printf "%s" "$1" | tr [[:upper:]] [[:lower:]])"
which is much more readable (IMO).  Does that look good to you?

>  c89)
> -	shift;
> -	libc_summ_c89 \
> -	| grep_proto $@;
> +	libc_summ "$c89_filter" "$c89_doc" \
> +	| grep_proto "$2"

I applied the following:

commit 0e54f2590d9689c9b5cef2369d4664f4096fdd37 (HEAD -> main)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Mar 24 12:56:37 2023 +0100

    bin/: Remove some unnecessary shifts and `$@`s
   =20
    Reported-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/bin/stdc b/bin/stdc
index e70e067..1067cf8 100755
--- a/bin/stdc
+++ b/bin/stdc
@@ -45,19 +45,16 @@ esac;
=20
 case "$1" in
 c89)
-       shift;
        libc_summ_c89 \
-       | grep_proto $@;
+       | grep_proto "$2";
        ;;
 c99)
-       shift;
        libc_summ <"$docdir/c/c99/n1256.txt" \
-       | grep_proto $@;
+       | grep_proto "$2";
        ;;
 c11)
-       shift;
        libc_summ <"$docdir/c/c11/n1570.txt" \
-       | grep_proto $@;
+       | grep_proto "$2";
        ;;
 *)
        err "$1: unsupported ISO C version.";

>  	;;
>  c99)
> -	shift;
> -	libc_summ <"$docdir/c/c99/n1256.txt" \
> -	| grep_proto $@;
> +	libc_summ "$c99_filter" "$c99_doc" \
> +	| grep_proto "$2"
>  	;;
>  c11)
> -	shift;
> -	libc_summ <"$docdir/c/c11/n1570.txt" \
> -	| grep_proto $@;
> +	libc_summ "$c11_filter" "$c11_doc" \
> +	| grep_proto "$2"
>  	;;
>  *)
> -	err "$1: unsupported ISO C version.";
> +	usage "$1: unsupported ISO C version."
>  	;;
> -esac;
> +esac
> +
> +# vim: set noexpandtab:

I'm not sure we want vim comments like this one for every file.  Aren't
they too noisy?  But maybe it's just me.  I use things like the following=

for when I contribute regularly to projects that use a different rule for=

indentation:

au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal expandtab
au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal shiftwidth=3D=
4
au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal softtabstop=
=3D4
au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal tabstop=3D5=


au bufnewfile,bufread ~/src/nginx/* setlocal expandtab
au bufnewfile,bufread ~/src/nginx/* setlocal shiftwidth=3D4
au bufnewfile,bufread ~/src/nginx/* setlocal softtabstop=3D4
au bufnewfile,bufread ~/src/nginx/* setlocal tabstop=3D5

(tabstop=3D5 is for realizing when something is actually a tab, which for=

example happens in Makefiles in NGINX.)


Thanks!

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EVJ0sH3uBfhqu0CgwxnmJIZe--

--------------uEsDkUBTdmWgTI4Ilrpe5UkX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQdleYACgkQnowa+77/
2zIithAAjpw9KvCJfi2FC9a+qtv3ZjvPhYWFQJ0fSrtma3Qq/qEp4vCSQVBwMF/m
KhLqe6qKoHI8jRtHV2TAKp8ChrqfVOLokwkrcPn0562D10TXBa68rpzR+ONPqM1B
n/v4jmThiUYvwl4YDC+ACXzJwevpELZA0suuPk+16at5/FhnzLH+Ny5VXge0vL/w
SLbRB976C2+EC/WWjVvbzWOcXr6B6ppDrLUBVlwL9SlYBN8MvF97ip8sEK0cG8E9
xCjRAepP/UjdGV5CaaP6/g2CtAISH9EpDYKkT76L5g8zGwJFyPf3NNw+PAN1vA1Q
OEdXw7AAFRvwu7zx/EBXaRaUtu+SOnAZCoE0TBfp3FoQkkUhqdNjbsc1PQ/kt/Oq
Bk+dqNSpNm7QzNK6eNEJoyTLp7EfVqXgfJgxwaZRJ3Xzpsl/3kIMJm2L7i2clYBL
U5+pOsprqWXF6uF6Xn5EuyPam3L6M2cmHimc7o3tQ8H59LQiDSdZaEOVovTCCZ8B
tGaeR+t04ALBnfbu0b90chyRIYkSyYunhaRFWMH2BtrufheW6/OhHorXuVnmsl8A
guyxPlJLOdEr1e1jjX2WBevAkEQyKcJye65Zvl7nkq7PcgWkqPyGM+a7AqZ0fPL3
jHK0Mvvt1FDx92pvcbNwb8P/65pymGvaGzaS3g3yEjdSEuAMohY=
=+om3
-----END PGP SIGNATURE-----

--------------uEsDkUBTdmWgTI4Ilrpe5UkX--
