Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58F876EA86A
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 12:37:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbjDUKhI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 06:37:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbjDUKhH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 06:37:07 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 735459025
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:37:06 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f173af665fso10468535e9.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682073425; x=1684665425;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oHZcZpZjW/FKUbLy9t7g5kKhxwcz9E+05o9QHqa4wXA=;
        b=Gv6qMtJvkf0olkZC58Hst8Yz6iu2AZo4XNAoPE+uQNPFpB1DBgK9HhW1EekbFeIPVL
         nrxgm+hvHyBtU+feGiIMKht5Orjxn4aYPhV7ton+URYumskdIS8KeCOn5ncQA90/myFg
         0Au2PyasEPV3G+KU4bYM/DQ+TVYOdpOPE5llvVQ86LUbCfuBL+QS7sFUkU2qVFe3oJlQ
         G7cYdZe1pbEHPJgc/pXdeICZmZi5h3RiY0XzWTxODe8J0CvHFrkbUkOa0m+0IOVTNf3E
         sdb4Z4ntYZnGtp1Dewd/pHUu+Npyh10ejRaPS4KhcK0/qhBczYbDGGOheroOVEl1lluM
         draw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682073425; x=1684665425;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oHZcZpZjW/FKUbLy9t7g5kKhxwcz9E+05o9QHqa4wXA=;
        b=UbLJypPZVODPK7H+82haEY40agm2pC2YAglpfmriAn5mfNo0vIOmSoC/YfNUpoNE55
         RhR+4eJ3bgb3aYGYN46apaX/HyaRAR5vEy/s0wHbtU4IvyLegxGLIA+BnDG3EZ5LjcR1
         ZdTIBT1KA5cVSnLeDMiR275ysBTCa/HyOmbyTy69kbtudzvK6/qw/gs2u4QHsBOZHMyZ
         05Y/QkZKW9efToWUM4U/ZpWj6Q89mU8/ZIX/4OSfQDr7NKNlYHhJuZlkhR57bt72IqyD
         XBYZBiYe7pix5wcpZqATnrt/Zs9KrPQAf2rg9CHMC3nTZAkMJS5iWkS70DlNikntL7Mx
         vZkw==
X-Gm-Message-State: AAQBX9cT4a6j0WTUzK3l75piekWL6mLlhhepV7q19clS6P5Rroa+7eNQ
        SKGKWzbMJjpBv+P2pFfbAqo=
X-Google-Smtp-Source: AKy350Z6fGKSeLaMV8ughBw/7t3tKj3LKs8gqKIwUIOhuxHIqd42Q73qJqxoJ4nDKIFkgvgWj14DOw==
X-Received: by 2002:a7b:cb96:0:b0:3f1:6f3a:fcbc with SMTP id m22-20020a7bcb96000000b003f16f3afcbcmr1497931wmi.16.1682073424887;
        Fri, 21 Apr 2023 03:37:04 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z19-20020a1c4c13000000b003f173419e7asm4392998wmf.43.2023.04.21.03.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 03:36:55 -0700 (PDT)
Message-ID: <3522d12e-de7d-11c4-c5b4-80667e3b2b0f@gmail.com>
Date:   Fri, 21 Apr 2023 12:36:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 4/5] regex.3: Destandardeseify Match offsets
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <500070a5e10b4a63771ceb729596cf334aefec9b.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <500070a5e10b4a63771ceb729596cf334aefec9b.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------b59HZbLmg86boCjipq2u6GVm"
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
--------------b59HZbLmg86boCjipq2u6GVm
Content-Type: multipart/mixed; boundary="------------0fWgUBedbnAwsz8Vwdep5qyP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <3522d12e-de7d-11c4-c5b4-80667e3b2b0f@gmail.com>
Subject: Re: [PATCH v8 4/5] regex.3: Destandardeseify Match offsets
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <500070a5e10b4a63771ceb729596cf334aefec9b.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <500070a5e10b4a63771ceb729596cf334aefec9b.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>

--------------0fWgUBedbnAwsz8Vwdep5qyP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/21/23 04:49, =D0=BD=D0=B0=D0=B1 wrote:
> This section reads like it were (and pretty much is) lifted from POSIX.=

> That's hard to read, because POSIX is horrendously verbose, as usual.
>=20
> Instead, synopsise it into something less formal but more reasonable,
> and describe the resulting range with a range instead of a paragraph.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 53 +++++++++++++++++++++++++---------------------------=

>  1 file changed, 25 insertions(+), 28 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 46fd3adef..55fddd88e 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -184,37 +184,34 @@ .SS Matching

[...]

> +Each returned valid
> +.RB (non- \-1 )
> +match corresponds to the range
> +.RI [ string " + " rm_so ", " string " + " rm_eo ).

These be expressions :)

>  .PP
>  .I regoff_t
>  is a signed integer type

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0fWgUBedbnAwsz8Vwdep5qyP--

--------------b59HZbLmg86boCjipq2u6GVm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCZ0EACgkQnowa+77/
2zLZZxAAmrS11ny72yf7mEhzkyVy1LghkzIHWFQD0UHRiUERiRsFFeGpwajYOeX9
UX4nBn+18UMJDzRG4fFy04pcjqQ9BC86Y7eclFi48PK5kGseoIDpNhtCg7bMunje
caq12GDuxyRvWlYzXsyyNckI5Vf4kiIb+0OGPJbhNrsMbtFeOlmAcJFZY7Uh5ctq
ecJ5Kxv/py1cpxxeiAu88+mq1tAzYc06CHJwG9Dcagc4bzCpIpIGKvvFtkKAH2w9
mIyjO2JuhY12HDaRGGXG0gj41P9HlYnx1ULqPZHW8li4hEFpqq70JEyFD9NUNoJl
hVYPKYYhWAmjm1er0UR4U1HW8rP4s37IMnxuFW/o3AN/343N11QJmr5ZK8gaL8tu
IveNpcZGZLCvidzDGXFdPAVXtjLf7NjEx13mfsqlfLnMGLN/jGNNAqHBShsD22ok
lslFBnOcrorXfmyE0GSyuhtbpW+WP7w7Jes+dlz4H4e64ukMPXhVRLy+ewaqWJEJ
AsegaIDYS4L6mK2nOHEkxgfhuZoCEm+WIgVxloTL74kEHEBogRS/teUec+fqcDQS
N9WRAxvtMFCbRSmki1PBHUIV47xRuWeDc1oiv7g74kvIyyrv6KiXiK//Xzk1KnVT
AyDcPswVXNk5fQgoI3TTK2q9SGNOjF4cieATXLiz69GuAJeve8g=
=uvhz
-----END PGP SIGNATURE-----

--------------b59HZbLmg86boCjipq2u6GVm--
