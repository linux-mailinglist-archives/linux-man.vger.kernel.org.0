Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B69C6C5243
	for <lists+linux-man@lfdr.de>; Wed, 22 Mar 2023 18:20:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbjCVRUS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Mar 2023 13:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbjCVRT7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Mar 2023 13:19:59 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18C096772B
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 10:19:39 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id o32so5605384wms.1
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 10:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679505577;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVcZ2T1BvYq8vkKV+cJkug5MO/cFyerANzhX5lHP2PI=;
        b=OvJWomGO+2dqxXKJt8WpaWe3j5IRhaNtdkhG5EaeDGxuPY5k6joiSIheSrpnqANhiR
         ub+vT9q/ddO3yivbdrSp09RXWkYCTN8abWq9W6m/eZUvRQfYRustiE16m8s+hCTn8bDQ
         AgKAfto3pDWboYJ5mCX0I6+nvnmiosdA8ad+uSfSEPsWZwW5UXniC835fnfg6eqcpV/r
         8FpW44VEKL1hxSow4W8MqmZ7o+OFfKN50AZS3/OyN9Ds2wvzTG1wjAnIqWA80IyePyC5
         pkmFVQywKiTsQFTfamrsFFnj/Px2vkHioAXOS1LbgAKFni33Ib0PJJfaLhhT1yeTNGzu
         8iRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679505577;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fVcZ2T1BvYq8vkKV+cJkug5MO/cFyerANzhX5lHP2PI=;
        b=ZECbsnrKGyowOoqEDPELnIHjA9KFxaaq1hKFtlZLZuKqJT2cpHuTUyCwIQLDVBH0KQ
         woTfGJeQtKC6OcHRNZz0SAudGieMbnWYCMFxiDRB6JoIc/2ZHW4taPDcAVX3dVJWwuom
         FAulHPIapBJGQI+Cr5aZf9fgylEjgWNlwpOaCNuogIj1xUPBaNUl4Yw+Gb0urgBvYL3v
         o2ch8/7UYt/y8bfjrFLQQpXXWxaoTy+Uh3mEyPAUYePGRp3aqCiwzH6Ek7hWuT9gO9wS
         OHhKUDzxgoTnzYj9+s4B1HLHoY08ijcTJnn1vMJePQ8ADS+hKFHVMAx71LUSVlQ2+WV/
         8feg==
X-Gm-Message-State: AO0yUKWLcbiAMeTmxt0/6k/OudgCjIys/HiKm5jsMDb+PU51TblWJOHI
        N/1jtgQT47UgFqJ/IxvnyiY=
X-Google-Smtp-Source: AK7set9hRIcrylEj68KMRPAL79DnRbwFqN97PwhImIh6mtXcWg8k1OBQkWvkw77+E03LJLIJJpohIg==
X-Received: by 2002:a1c:4c0d:0:b0:3ed:ba4d:f081 with SMTP id z13-20020a1c4c0d000000b003edba4df081mr226426wmf.23.1679505577049;
        Wed, 22 Mar 2023 10:19:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y6-20020a05600c364600b003ed2c0a0f37sm17348219wmq.35.2023.03.22.10.19.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 10:19:36 -0700 (PDT)
Message-ID: <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
Date:   Wed, 22 Mar 2023 18:19:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] feature_test_macros.7: document clang fortify support
Content-Language: en-US
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>,
        Erik Pilkington <erik.pilkington@gmail.com>
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------a0ZeyNEpFgvhCKtKE0jJs1KD"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------a0ZeyNEpFgvhCKtKE0jJs1KD
Content-Type: multipart/mixed; boundary="------------6egiKOu1CQEp9r0tbozZvYGh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man@vger.kernel.org, Sam James <sam@gentoo.org>,
 Erik Pilkington <erik.pilkington@gmail.com>
Message-ID: <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
Subject: Re: [PATCH] feature_test_macros.7: document clang fortify support
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
In-Reply-To: <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>

--------------6egiKOu1CQEp9r0tbozZvYGh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mingye,

On 3/22/23 09:39, Mingye Wang wrote:
> Hi Alex,
>=20
> It looks like Sam James has already documented level 3 of the macro.
> The attached (no, git send-email is not happy with my proxy setup)
> patch only adds some language related to clang. Here's to hoping the
> system is happy with multipart mail.
>=20
> I've CCed Erik Pilington, since he is the author of the LLVM-svn
> 352665, the change that introduced __builtin_dynamic_object_size() in
> 2019.

Thanks!

>=20
> Regards,
> Mingye Wang

> From b21bc416f0772b3c7783a1cb396cce5c0a170713 Mon Sep 17 00:00:00 2001
> From: Mingye Wang <arthur200126@gmail.com>
> Date: Wed, 22 Mar 2023 16:18:27 +0800
> Subject: [PATCH] feature_test_macros.7: document clang fortify support
>=20
> This commit lists both gcc and clang versions. It also happens to fix
> the "glibc 4.0" mistake in b324e17d3208c940622ab192609b836928d5aa8d.
>=20
> Signed-off-by: Mingye Wang <arthur200126@gmail.com>
> ---
>  man7/feature_test_macros.7 | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
>=20
> diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
> index 4dc9b9594..1c2719a80 100644
> --- a/man7/feature_test_macros.7
> +++ b/man7/feature_test_macros.7
> @@ -655,15 +655,22 @@ For example, a program where
>  size argument is variable
>  can now be fortified.
>  .IP
> -Use of this macro requires compiler support, available with
> +Use of this macro requires compiler support, available since
>  .BR gcc (1)
> -since glibc 4.0.
> -.IP
> +4.0

Please follow the style used since this commit:

commit b324e17d3208c940622ab192609b836928d5aa8d
Author: Alejandro Colomar <alx@kernel.org>
Date:   Sun Dec 4 20:38:06 2022 +0100

    Many pages: wfix
   =20
    Refer consistently to software versions.  In most cases, it is done a=
s
    <software> <version>.  In the case of Linux and glibc, use the projec=
t
    name, instead of other terms such as 'kernel' or 'library'.
   =20
    I found the uses of inconsistent language with the following:
   =20
    $ find man* -type f \
    | xargs grep -i '\(since\|before\|after\|until\|to\|from\|in\|between=
\|version\|with\) \(kernel\|version\|2\.\|3\.\|4\.\|5\.\)' \
    | sort
   =20
    However, I might have missed some cases.  Anyway, 99% consistency is
    pretty good consistency.  We'll fix the remaining cases as we see the=
m.
   =20
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


That means, unformatted GCC 4.0 and Clang 2.6.

> +and
> +.BR clang (1)
> +2.6.
>  Use of
>  .B _FORTIFY_SOURCE
>  set to 3 requires
>  .BR gcc (1)
> -version 12.0 or later.
> +version 12.0 or later, or

Remove the "version" word.

Cheers,
Alex

> +.BR clang (1)
> +version 9.0 or later, in conjunction with glibc 2.33 or later.
> +.\" glibc is not an absolute requirement (gcc has libssp; NetBSD/newli=
b
> +.\" and Darwin each have their own implementation), but let's keep it
> +.\" simple.
>  .SS Default definitions, implicit definitions, and combining definitio=
ns
>  If no feature test macros are explicitly defined,
>  then the following feature test macros are defined by default:
> --=20
> 2.40.0.windows.1
>=20


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------6egiKOu1CQEp9r0tbozZvYGh--

--------------a0ZeyNEpFgvhCKtKE0jJs1KD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQbOKEACgkQnowa+77/
2zJlsw/+Of+48G+5FTgDhww/hXFOwRhR/mD/q5LHk7frvmMvVi7xn1ukPPsH0zmS
aL6Mr89JNya7zrIKbN1yr+Vp9hDBG0tFE4ssPn0Qf9mjJAPNPE7n3LInR7WoS4HV
uW9ID9urTKg2e+kSLeCpD9b03ar5Zw/BcjIGwAgiJ+Fvf78CB0SjWwaFyzq0+8t/
w+h2TyO3al5H5t0N6qTCj7RIHpGSGjL7sSiUbgwMY10eNxlRNxOE1SUj/5279S9V
W/aJHgQRhoGnGUPIuf8MikILzwJr0im3ePMZUFr4sbGSDVVUORxfEwsfyCCf0rMb
eXGrPCHB8dIZwiAHWcoNj6X0Vz0JSJeaWi/oWEE5trYy8DV6crQ7Ev2OfVDyUmNX
lv/URjMoMXS24IjnV6jIGjvYbV8brUK18RMMWTpoJpMdPqALqI6Iuc/92773VIDX
tqgV5Ahgy/1h/KEabfhQVrGxhZCeTPcYkW6A12zMVLR52kEAu2kVbEkxDMd8I6pd
DKGsji7VDriyPRAuKBQxm7U9/ZhGrBNVH00jHB/UJwamqog94i5G5T4WJA2mNP2x
HNKpO7ZEsvfwqWDqhogEe13lLX7I+OksT1tYFT6hGBg8Wghv+dsvNIWuLQAAK5U+
FLuwcrjnjkk+gmosSzOaN3m9/lqJ8etsaZsSNOdK35xNmDPlxPo=
=8gOa
-----END PGP SIGNATURE-----

--------------a0ZeyNEpFgvhCKtKE0jJs1KD--
