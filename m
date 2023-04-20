Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8C3A6E9AC1
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 19:29:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbjDTR3d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 13:29:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231561AbjDTR3c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 13:29:32 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F5402D5E
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 10:29:30 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id v20-20020a05600c471400b003ed8826253aso3902651wmo.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 10:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682011769; x=1684603769;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNoz2Ll6qAl7ar2xhBklXkCnG3s2MezWgQiZVIiRe4k=;
        b=C+BI/2TFh71nloETW9/uiNUJVqSoIjV6i4hKROGbYEhYpSlLVYiV1EtU9/jBX+48uz
         xHMl7z8IcrAw4j4EJbTJh2kxfSdYmzsvQoIMsEDC6F+Fn90AFLr//pPbYldsqXNMC6hH
         ZsRf5p4jnX8JlXPDTICV1H9zezpx3ah/ho/J87SUiqCZ0bHrBv2SzZvygWAI+H5KrECT
         U7ev2pS2DfCRjC2BQZC0WawPV4HzR24RUnOtXsrsyPmLQ91N267Si0fGJKoxXrTfUVqO
         TGCnlE/jcDQ7nghFhF89Tc+2fPCeQo4TK7Tg/kTw7gK9Y/SYzWrkTPfm/WL98uTQy8Ic
         PrYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682011769; x=1684603769;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YNoz2Ll6qAl7ar2xhBklXkCnG3s2MezWgQiZVIiRe4k=;
        b=dFykzRMGjarQ5VUEabkN1O2RwhrUR/iessETB/GNLapAFqcUsM06SmEsHjO9M3FP+W
         kPvyBbGkiR8m0xLAUZfABcnEoKjy0FVEHJtwXfL3AVG6ldUHOEdNexhOW0wMx+Jtd+3d
         bT7Z2GTLghrQvU9BbHYJmyhMeomn0sQ6EEqplRVMOi936OsklhNiBicHGou5OxRZDrJK
         wxcTbjKSqIiDjK/yfTK4nuBcmvg7zOJgEm20DVv7ljf+Xl8Y4ITaV5WhgyNCAwS86Ziv
         Uefo5pH7gZ4AlKFWyTKl45sbEMfl27bqIxHUCVaw+xd/Nspc0ae6vHJNzYBelTHhD7Fj
         OwWg==
X-Gm-Message-State: AAQBX9dFhR6uQRbRDyQAwm/CAI6800qRzrTh6UxXPllObVNTHsALYlnj
        0u8XMmpBiVgsIcZr0IOjWoRV1YEszKU=
X-Google-Smtp-Source: AKy350attCazn0RRHf0+VWVAVuzv9EWO5Ooj9isE+rxcPtmqy8v+mC4Z84vYGjfm2wzstaxd0uxgDw==
X-Received: by 2002:a7b:c388:0:b0:3f1:72ee:97b7 with SMTP id s8-20020a7bc388000000b003f172ee97b7mr1945704wmj.15.1682011768980;
        Thu, 20 Apr 2023 10:29:28 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id v16-20020a05600c471000b003ede3f5c81fsm6044123wmo.41.2023.04.20.10.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 10:29:28 -0700 (PDT)
Message-ID: <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
Date:   Thu, 20 Apr 2023 19:29:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EqY8nOvP0Sf8Ognh064n6EVD"
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
--------------EqY8nOvP0Sf8Ognh064n6EVD
Content-Type: multipart/mixed; boundary="------------5T10wyuKHe5sDcDMAgnN7iwC";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
Subject: Re: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>

--------------5T10wyuKHe5sDcDMAgnN7iwC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
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
>  man3/regex.3 | 33 ++++++++++++++++++++-------------
>  1 file changed, 20 insertions(+), 13 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index c5185549b..1ce0a3b7e 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -131,23 +131,30 @@ .SS Matching
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
>  This allows matching embedded NUL bytes
>  and avoids a
>  .BR strlen (3)
> -on large strings.
> -It does not use
> +on known-length strings.
> +.I pmatch
> +must point to a valid readable object.

I think this is redundant, since we showed that [0] is accessed by
the function.

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

And of course, nmatch must be at least 1, since otherwise, [0] was
not valid, and the whole call would have been UB; right?  So that
third condition must be true to not invoke UB, so we can omit it too,
I think.

> +.I pmatch
> +as usual, and the
> +.B Match offsets
> +remain relative to
> +.IR string
> +(not
> +.IR string " + " pmatch[0].rm_so ).
>  This flag is a BSD extension, not present in POSIX.
>  .SS Match offsets
>  Unless

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5T10wyuKHe5sDcDMAgnN7iwC--

--------------EqY8nOvP0Sf8Ognh064n6EVD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBdncACgkQnowa+77/
2zIpIQ/8D4Xmt1smIZHE5OMVA91TwqrTF+3cu+CwnoRHB1+MbszDcW5t8pn4/uS4
aO5JzNWezvVeqehsuGnLyGFrZm9KIvJP6vJH2tKcHcLAKXog4b9E7Hg8gKWncFb0
QlBHLWdcZfvHTX2AmxuHInRnzInIEfM+usBknyguwdtTfPwGdPH/X4zgaswn+ZJR
+3gZ9vEu3pTJhnTQoIRcpHA98pLBt48kzF2yQ+tCa9BM6GyPnL9MO0ad9NU9/Ur3
Fp/nxdY8xWY0IBC/JYEzvoLBjpXrX1f1uK7Fiwi+uRDbtFIuKees1fpn86B5CwmX
vnDNpajF5mwCOPqKHp95hfuSKEk2GJmMGvFxiHSG/phv2sEj81KCAUs8xzCyOzYm
Z8JFpbtgZqOLdDYzapz/OrgT7WUaUngMn3tapE4GS+jSTsCZlboHBWeTfBRXi5u2
R5wwb4ubGn0+9CcJl1ZoD1hxDCKNcKRM9oOd6+SR8UF6MeX/UjKa2wb0M3aU4Fld
RD3vCHDmCutF3YG3wlPDO6F0Dt60G/7ow8RreWnfXRKXZQInnALI+8WPSqwwJTBq
tsmat1esF/9uX8RQ5XIiXCtBO4gDacbTCehY7hTc6SBtxNwmw4a771rvfpB67X/y
k5432Nril9DB5EtGiSlYbwJzmeHqwQH0y6lC9Afm+EFoUIe5MOQ=
=eTMh
-----END PGP SIGNATURE-----

--------------EqY8nOvP0Sf8Ognh064n6EVD--
