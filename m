Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6703F6939A2
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 20:21:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbjBLTVr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 14:21:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjBLTVr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 14:21:47 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9203D531
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:21:45 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id h16so10161683wrz.12
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gVVKoFlGSlHz8TFUthdkrJASMtBwquyEpKz5bG8Lf8M=;
        b=RrDzDEfycrtnjbSEhUnCX7hmY8e+z7jRJYzy9aAiudOCnbroh2JfySPhXXPuv8iV5i
         EeHKu05a4DwaP7AKKN/r4icGltixWYQ7bvlAMEpctXMkH6bqaZlWqv41pZ4M2Ocp8mNM
         X0xq9uNjAci1B8N9Kg6NawAqcNKHpoWrwY/2jSrxc41OxzuhRDQ31VZGLeEDF491ekK3
         i21uoHiDVqnbcK9oxAHGYMc5M/CiKRtz0hGFkl7swKjohOFdbbxLLkMzGjHtzMpkUH8d
         Ifal61GW/LxVH/fwgFQXZrmg0hLYWqPxIE73IKLOkgYwd7F+gyCrvajjOrx2u2371E+a
         PX3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gVVKoFlGSlHz8TFUthdkrJASMtBwquyEpKz5bG8Lf8M=;
        b=x7wHKPpqQb7i1Uyxt+lFmuRbtCSh7y+7byiecLN/Jj/KUxDsgwCrDt+8L5QNqmXti3
         cXN9rK4CCmfgg1nrprD/9F0P2OMkxnzYi/YtMNee6pPb1dXHnM+Re0JEULDcrvflMgv3
         9TMegt+LgV76kb7s7oFcEWTaV7OfmbeJg/AaadR0vH6V8mnBYR2e1ChE9wrrSKQM9D9M
         pYCPuAc+ki9qz1HlPSbbLIO7KnYi28tPU1mnvzyRsSYuz+gMXtvR3IC4+vEQsLgf2l66
         cAHFdJh2T8Dd6PsojYEEXKNXRtm+ddLHpB/MffaRWfExgmwuR1i9zLla9CbdqApmOJoD
         3CSA==
X-Gm-Message-State: AO0yUKXB3+BeefB+GansR1Glw2nnXxzLO4ufN4wQ1Ux9n6hK62GzoZMm
        X+S9EiZDJhtjdJNFqINP2So=
X-Google-Smtp-Source: AK7set+ePqkWJhhvF3Jt3+GaOGkTaWOuZze/FxZ862ky5qvKRQDCEfpdV2M/ak4cwryE00jb8PsUhQ==
X-Received: by 2002:a5d:4ed0:0:b0:2c5:55a1:4b2 with SMTP id s16-20020a5d4ed0000000b002c555a104b2mr1746148wrv.49.1676229704146;
        Sun, 12 Feb 2023 11:21:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d1-20020adffd81000000b002bfe08c566fsm8672829wrr.106.2023.02.12.11.21.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 11:21:43 -0800 (PST)
Message-ID: <926c3b92-c1f6-372d-0089-2320957cf6f3@gmail.com>
Date:   Sun, 12 Feb 2023 20:21:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 03/11] man2/: use consistent closed interval notation
 for value ranges
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <188dd356c182de2de1d362a680ed6af7132543bc.1675830945.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <188dd356c182de2de1d362a680ed6af7132543bc.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8oCt5K40TzYNuMlUrE5TG2Tt"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8oCt5K40TzYNuMlUrE5TG2Tt
Content-Type: multipart/mixed; boundary="------------qfv4GudzMeKcPAxghgzwssFL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <926c3b92-c1f6-372d-0089-2320957cf6f3@gmail.com>
Subject: Re: [PATCH v2 03/11] man2/: use consistent closed interval notation
 for value ranges
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <188dd356c182de2de1d362a680ed6af7132543bc.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <188dd356c182de2de1d362a680ed6af7132543bc.1675830945.git.Brian.Inglis@Shaw.ca>

--------------qfv4GudzMeKcPAxghgzwssFL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 21:27, Brian Inglis wrote:
> ---
>  man2/clock_getres.2    | 2 +-
>  man2/clock_nanosleep.2 | 2 +-
>  man2/getitimer.2       | 4 ++--
>  man2/gettimeofday.2    | 2 +-
>  man2/nanosleep.2       | 4 ++--
>  man2/utimensat.2       | 2 +-
>  6 files changed, 8 insertions(+), 8 deletions(-)
>=20
>=20
> v2-0003-man2-use-consistent-interval-notation-for-value-r.patch

Patch applied.

Cheers,

Alex

>=20
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 501c878cae4e..ee0fa6735865 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -272,7 +272,7 @@ does not refer to a valid instance of a clock objec=
t.
>  .I tp.tv_sec
>  is negative or
>  .I tp.tv_nsec
> -is outside the range [0..999,999,999].
> +is outside the range [0, 999,999,999].
>  .TP
>  .B EINVAL
>  The
> diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
> index 5afc2025c853..5da8d15699c2 100644
> --- a/man2/clock_nanosleep.2
> +++ b/man2/clock_nanosleep.2
> @@ -158,7 +158,7 @@ The sleep was interrupted by a signal handler; see
>  .B EINVAL
>  The value in the
>  .I tv_nsec
> -field was not in the range 0 to 999999999 or
> +field was not in the range [0, 999999999] or
>  .I tv_sec
>  was negative.
>  .TP
> diff --git a/man2/getitimer.2 b/man2/getitimer.2
> index 093752b620ed..80745dd78c99 100644
> --- a/man2/getitimer.2
> +++ b/man2/getitimer.2
> @@ -158,7 +158,7 @@ or (since Linux 2.6.22) one of the
>  .I tv_usec
>  fields in the structure pointed to by
>  .I new_value
> -contains a value outside the range 0 to 999999.
> +contains a value outside the range [0, 999999].
>  .SH STANDARDS
>  POSIX.1-2001, SVr4, 4.4BSD (this call first appeared in 4.2BSD).
>  POSIX.1-2008 marks
> @@ -253,7 +253,7 @@ POSIX.1-2001 says that
>  .BR setitimer ()
>  should fail if a
>  .I tv_usec
> -value is specified that is outside of the range 0 to 999999.
> +value is specified that is outside of the range [0, 999999].
>  However, up to and including Linux 2.6.21,
>  Linux does not give an error, but instead silently
>  adjusts the corresponding seconds value for the timer.
> diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
> index 6f1cd33d6512..d7219f9d42a4 100644
> --- a/man2/gettimeofday.2
> +++ b/man2/gettimeofday.2
> @@ -152,7 +152,7 @@ is invalid.
>  .I tv.tv_sec
>  is negative or
>  .I tv.tv_usec
> -is outside the range [0..999,999].
> +is outside the range [0, 999999].
>  .TP
>  .BR EINVAL " (since Linux 4.3)"
>  .\" commit e1d7ba8735551ed79c7a0463a042353574b96da3
> diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
> index a6f9e627f4eb..12e0cee84b85 100644
> --- a/man2/nanosleep.2
> +++ b/man2/nanosleep.2
> @@ -66,7 +66,7 @@ The
>  structure
>  is used to specify intervals of time with nanosecond precision.
>  .PP
> -The value of the nanoseconds field must be in the range 0 to 999999999=
=2E
> +The value of the nanoseconds field must be in the range [0, 999999999]=
=2E
>  .PP
>  Compared to
>  .BR sleep (3)
> @@ -106,7 +106,7 @@ again and continue with the pause.
>  .B EINVAL
>  The value in the
>  .I tv_nsec
> -field was not in the range 0 to 999999999 or
> +field was not in the range [0, 999999999] or
>  .I tv_sec
>  was negative.
>  .SH STANDARDS
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index 7f43aab7bdcf..1d9206ed0ced 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -272,7 +272,7 @@ Invalid value in
>  .B EINVAL
>  Invalid value in one of the
>  .I tv_nsec
> -fields (value outside range 0 to 999,999,999, and not
> +fields (value outside range [0, 999999999], and not
>  .B UTIME_NOW
>  or
>  .BR UTIME_OMIT );

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------qfv4GudzMeKcPAxghgzwssFL--

--------------8oCt5K40TzYNuMlUrE5TG2Tt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPpPEYACgkQnowa+77/
2zLrNA/9FYIEqIadbKsNnN+2izdgFr2f9UR00yLVAAlI0BNIa7eZ2iDVexUtMSDC
CZWLWUUaCiTJfCAWlZdRw6d8O/CF0Of80kPC8NFwQd4ZcFCZJ9kmZLtCkaPl8cov
ob+CVJum5ZKvjEPJWNF5i+DEd8B4h8A2RkpZXq6fvXLD53LQ7llFL1OCHXakIjcH
3rwb7/BLvSxN6O0qZbxKyEcIL8dzo/6l9Xpaqs4T52ik2IYTQO/ADCVwni4aYcJN
52pZLgy0/JlxQUd8csRQcLAGTH4g18KNao6HRcqD7XeiR9Yy98Bd0mtswldz9DFS
BF0FJ+I6Xkfj4NXBFgfrFeOOFemZ4yh3TNNsHqeCKuoftKTKBbvWWsSArAB/ac0t
2hobzUTDYXKAeUv7ILi8W1u/KqvIuRwYDdDo9em1MDclSwqrIcKsnW26wJMK0jGT
fXBpzMDeeO9Ba4gpGbR0XXPx0wA6e9g2a9me3A26SgeDrAXpDFHfnwYePOalrAsl
LGKKWprgbpDTi0zyT0URA40LxY0+KJMRBQETUwiAxTDAI2qdfdKcygo7V7cciKEJ
aMgqcw1/8Ly/kLRXMNuKkRB6qyWcAlP/TZu6VlgkgHIuw43g7Zl8eQG1LpAhUDyX
BFkEvprYKJ3M9k7ZZ5nT9YbCdUQQFnAL/UB7PwrsiGJ7mDgSl4c=
=c7Pm
-----END PGP SIGNATURE-----

--------------8oCt5K40TzYNuMlUrE5TG2Tt--
