Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87D7A6EA845
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 12:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbjDUKXX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 06:23:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbjDUKXV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 06:23:21 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C8B0C67D
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:22:58 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f09b9ac51dso44316945e9.0
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682072576; x=1684664576;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hK/jBvmJDTji4hlhxOaIjxWaMRJEMsNJdNo5/HRAKMU=;
        b=K1wPRRpxuYR3XTIPkRPNKjBiWOWyk9QZlHCNMAZxssBIfiFmEfu3tXwbHM8ffCL5KY
         SVFF1KiQLwK59S/yXnbl9bH5CmafPaO9Iw9WDC/ydm1evK/cekZMQnfUzAgXYldU8q+o
         w3t7GUUKe1TZ/nanWZ4Kqt6oEW8hkqkVN3G3J8nVSfC5a/HlnwXNtXZ5wP6Ij3J3W3gT
         /yEcqLPBEP9gw0s0OpoV44Vx/s03agCKL7NVvwgPifawbeWg+UDUWPMOyDg/5j9eT2RI
         v1SuOoablZbilFKlObBF3TbvPzr0JRGAN6Cvd7XJ/mjqgVS9M5/E9ae2aJbPbfHTpRPp
         jfzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682072576; x=1684664576;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hK/jBvmJDTji4hlhxOaIjxWaMRJEMsNJdNo5/HRAKMU=;
        b=lpzojZeHVacJkE8MYf7GaFM/OPhN5WKUmR5HJXR24+o6Tl4hjLVh+7udyyLiAutQpb
         93tgCvoxllSjIpONFHAWS4TWPKpktVe4BSf0/hQjRWi1+29YjpbrAw3HdEB6uCWcIpjG
         xUnueyUgIBtKZgHXuwYqIh481kN0vTdE7l7kbm0Ky54yf9UHpBckRWClGiTiF8EIzwEN
         Z0E8LJNy74Sg8Is6ei/Do5i8Odp7arakKXfCS+RtJtUjZ8UZjbXNEVu/SIh8YdrkC5Kp
         TJDLUwq8xh3JW24cx568FZ+Qmq9LP2LnQNKlKsq4MmXs8juw0we6ELd1z0zQUMpFVyJM
         nUmw==
X-Gm-Message-State: AAQBX9f9bI83jnE9cu3+AtjpfcvqfA0BzSNOjBlQkgnjpmfasK33tULb
        FnyiJQZG2Q6/ORggIR0I4u4ta/02o5w=
X-Google-Smtp-Source: AKy350YzbGmwVvu3fa5CRSUtlnzYNwnWLXrcwB1vpABsAAvjQGBi4OyzRRb7pGfStEezFa9NQG6wag==
X-Received: by 2002:a05:600c:21d0:b0:3f1:92aa:4ea6 with SMTP id x16-20020a05600c21d000b003f192aa4ea6mr1315941wmj.7.1682072576102;
        Fri, 21 Apr 2023 03:22:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u8-20020a7bc048000000b003f1952a4bdesm624864wmc.26.2023.04.21.03.22.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 03:22:55 -0700 (PDT)
Message-ID: <8b562f79-f65c-4c71-fc39-b37d57b6c75e@gmail.com>
Date:   Fri, 21 Apr 2023 12:22:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QpOEtWiFXo0CMA6EUsiAdAWs"
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
--------------QpOEtWiFXo0CMA6EUsiAdAWs
Content-Type: multipart/mixed; boundary="------------QE9IqAbYuNSHYBWn4b1gjOg6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, =?UTF-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>
Message-ID: <8b562f79-f65c-4c71-fc39-b37d57b6c75e@gmail.com>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
In-Reply-To: <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>

--------------QE9IqAbYuNSHYBWn4b1gjOg6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub!

On 4/21/23 12:19, Jakub Wilk wrote:
> * =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>, 2023-04-21 04=
:16:
>> /etc/bash.bashrc: line 7: PS1: unbound variable
>=20
> How come? bash is not supposed to read bashrc if the shell is=20
> non-interactive (unless you instruct it otherwise).
>=20
>> Makefile:SHELL :=3D /usr/bin/env bash -Eeuo pipefail
>=20
> Unrelated, but what is /usr/bin/env for?

$ git blame -- Makefile | grep bin/env
26061fbd33 (Alejandro Colomar 2022-06-19 19:55:58 +0200  31) SHELL :=3D /=
usr/bin/env bash -Eeuo pipefail


$ git show 26061fbd33
commit 26061fbd337fbcfb6255def88ef4f0573c090702
Author: Alejandro Colomar <alx@kernel.org>
Date:   Sun Jun 19 19:55:58 2022 +0200

    Makefile: SHELL: Use a portable bash
   =20
    Reported-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/Makefile b/Makefile
index 9beca11de..cb1466370 100644
--- a/Makefile
+++ b/Makefile
@@ -28,7 +28,7 @@
 #
 ########################################################################=

=20
-SHELL :=3D /bin/bash -Eeuo pipefail
+SHELL :=3D /usr/bin/env bash -Eeuo pipefail
=20
=20
 MAKEFLAGS +=3D --no-print-directory


This helps in systems where bash(1) is not a system command (probably
MacOS, and maybe others).

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------QE9IqAbYuNSHYBWn4b1gjOg6--

--------------QpOEtWiFXo0CMA6EUsiAdAWs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCY/4ACgkQnowa+77/
2zLkpA/+Kwj+YpOBcPmj863kTXuubGtUYdlXg3mzVKJKMFCib6TXZ64VzBi+ww7s
1EeLpAuEzoaQUxcEjtYC36oDGqC7GSx5gjA7Pe+nrBMoK/aB1AV8CNZHxQug8vU6
K2BU/2vcvFkLWn51lggK5bo5gq/FYx3pqcobqrk+INUNvQ5IcX/UM2+zDyqlYKU7
fGZNMOdmaAs140o71o8yXLVDAbWpQ8ev6Zz10wTncpYd9SDSmDDpC6fO+eR/nsCk
Un08Jv0Uw9ip6UygzFVgp1GMF9wH8eKuPeYb2TY+1d9maurLhtfZNCx/Cod6lZPl
1mURhFa3FWX4BSaL042kUIcAMpx6Ui40UqAFZMEW1YhCRHYpRWMrnGzIgObr+rNJ
XYQkCIwKZZtnmA5jfqR+3v/QjqjzzE43+k7o3QMmFhGWmtXrzqfMYc2TD9pvKMFm
SOZRjX8A6HE2Lbq7ynp43pyW3QLFurp7TDX18p1pnJI61An8gN7ToVCuIF3CZA3T
KIl1X6PYagbca4GJQ4UG+kKy+dK7XVicY7DA/ljI+z6Wn11SaHqraIlkGpdR1RVP
vRWAk6gjthxO/nkhk+FEdA6OA4hUPDZLndPcH2uaRuXgq9jGGU/2kV7i6Har1s4n
1/7ohpjud465/yZMEIUjiLiOZU95rWykiFnUTkV8pL7d0sUNGGk=
=7bAL
-----END PGP SIGNATURE-----

--------------QpOEtWiFXo0CMA6EUsiAdAWs--
