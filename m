Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C67D16EC0F5
	for <lists+linux-man@lfdr.de>; Sun, 23 Apr 2023 18:03:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbjDWQDw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Apr 2023 12:03:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjDWQDv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Apr 2023 12:03:51 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 631531702
        for <linux-man@vger.kernel.org>; Sun, 23 Apr 2023 09:03:50 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f19c473b9eso20083485e9.0
        for <linux-man@vger.kernel.org>; Sun, 23 Apr 2023 09:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682265829; x=1684857829;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VhwSJV1bO0e0qcqBpfDU2TOyeSPSmYAQaI7qPGkxyCk=;
        b=EP4G5ow8KjCjGJ9j4SMZlYVNcuIkpzkBG3fGt2WLsa/ryJJCxk4QNplBwv3UCdGNIB
         lK+BuDqpFJZcO4cHcs1WxHZK/Jkk8qJX9cM2U8KECOoABu1vn/DAJSj28zp6ANQvbdLk
         BTDEK8IWd0sbsIXhtmGgsfPaB+lv7yICogpsKpHB9+mYEdjXGXvzLy6TU5FDb2wAgpVO
         /0RajkocdbzZkptce9++Vjgdgo0yxgrSryMzN0iZaiopfaqoonJqHSie41zT4sFFKx70
         LcG2UthzTT+VA/V4Jz4trzt1E9DxGCS+r7PstUOuBfQUrSivtkobCPvG1xmvr2P7015a
         De0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682265829; x=1684857829;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VhwSJV1bO0e0qcqBpfDU2TOyeSPSmYAQaI7qPGkxyCk=;
        b=j+8YAHfC39etaPK41By/nJjn3aQHfpgnAMlcECv/bdYwhFlEqObZQ76ww6S3Un1cQx
         N/a/E+SwJ4V9o4S8cSLM9sbFpq6IW6U6ZbU75RIB+SSaqgPww0Exzwg7yf1joyPt2CP6
         iq9w6O82qA+BNBhNmhZjtMAE/eS5TBqvhq0h11KXag+cqgGebSIIqCdTT66aIUJ1JWLG
         qgkB0vIApv7ZZcQyvXY/pxZnsxpK5kjTHoYtuGoGo9nj3/jhMT6c/mQwM4Ry8Oeb5f8+
         3s6yxHrS4KsPYLknoLMAajgnzX1m/Db7nlSDq6kCKTFAIvb//gFtzYwLoLXj6w7UyPhz
         xZbA==
X-Gm-Message-State: AAQBX9dzQhWoqposv+1ajvUsPFLj0QVDqr4nYF+JcdO/cmwqDUhXbE/1
        441GngegBLff/UuGnv+R/7U=
X-Google-Smtp-Source: AKy350bvjrxLaQpHKOgvk07nwJrOyNLA2VNTBGDFCweshg9+lyzQ00pYV3yMRdfYHtkmD+jbHYL9Wg==
X-Received: by 2002:adf:fa10:0:b0:2f0:244c:277b with SMTP id m16-20020adffa10000000b002f0244c277bmr11686249wrr.27.1682265828713;
        Sun, 23 Apr 2023 09:03:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e5-20020a5d5305000000b002cf1c435afcsm8955907wrv.11.2023.04.23.09.03.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Apr 2023 09:03:48 -0700 (PDT)
Message-ID: <15a16ee5-edbb-3974-6470-9ba14f1634e8@gmail.com>
Date:   Sun, 23 Apr 2023 18:03:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] mount_setattr.2, openat2.2, landlock.7: wfix
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     Quentin Monnet <quentin@isovalent.com>, linux-man@vger.kernel.org
References: <20230422150646.5263-1-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230422150646.5263-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZWaO8FHzsa4QJka4KRUfeLoD"
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ZWaO8FHzsa4QJka4KRUfeLoD
Content-Type: multipart/mixed; boundary="------------PC4k0lB9SY2qfschkyQBy4AN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: Quentin Monnet <quentin@isovalent.com>, linux-man@vger.kernel.org
Message-ID: <15a16ee5-edbb-3974-6470-9ba14f1634e8@gmail.com>
Subject: Re: [PATCH] mount_setattr.2, openat2.2, landlock.7: wfix
References: <20230422150646.5263-1-gnoack3000@gmail.com>
In-Reply-To: <20230422150646.5263-1-gnoack3000@gmail.com>

--------------PC4k0lB9SY2qfschkyQBy4AN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/22/23 17:06, G=C3=BCnther Noack wrote:
> Fix spelling of "run time", as documented in man-pages(7):
>=20
> * "run time" in two words when used as a noun
> * "run-time" with hyphen when used as an adjective
>=20
> There is another occurrence in bpf-helpers.7,
> but that content gets generated from the kernel source
> and should be fixed there.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

Patch applied, with minor tweaks to the commit log:

    man*/: wfix
   =20
    Fix spelling of "run time", as documented in man-pages(7):
   =20
    -  "run time" in two words when used as a noun
    -  "run-time" with hyphen when used as an adjective
   =20
    There is another occurrence in bpf-helpers.7,
    but that content gets generated from the kernel source
    and should be fixed there.
   =20
    Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


Cheers!
Alex

> ---
>  man2/mount_setattr.2 | 2 +-
>  man2/openat2.2       | 2 +-
>  man7/landlock.7      | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index 24801a4bd..8df02641a 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -862,7 +862,7 @@ may change in the future
>  user-space applications should zero-fill
>  .I struct mount_attr
>  to ensure that recompiling the program with new headers will not resul=
t in
> -spurious errors at runtime.
> +spurious errors at run time.
>  The simplest way is to use a designated initializer:
>  .PP
>  .in +4n
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index e90211fad..182851089 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -545,7 +545,7 @@ may change in the future (with new fields being add=
ed when system headers are
>  updated), user-space applications should zero-fill
>  .I struct open_how
>  to ensure that recompiling the program with new headers will not resul=
t in
> -spurious errors at runtime.
> +spurious errors at run time.
>  The simplest way is to use a designated
>  initializer:
>  .PP
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index b6c9d3821..df7b87e80 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -251,7 +251,7 @@ will stay enforced on all this thread's descendants=
=2E
>  This allows creating standalone and modular security policies
>  per application,
>  which will automatically be composed between themselves
> -according to their runtime parent policies.
> +according to their run-time parent policies.
>  .\"
>  .SS Ptrace restrictions
>  A sandboxed process has less privileges than a non-sandboxed process a=
nd
>=20
> base-commit: 59e44e4511391a98f531c08aaba17391f3b7075b

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------PC4k0lB9SY2qfschkyQBy4AN--

--------------ZWaO8FHzsa4QJka4KRUfeLoD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRFVuMACgkQnowa+77/
2zKEOxAAh3goBNZk4+oAoH7hX9pnzGaHLQXYCsSmrJYZS1uKzkoePXt5M8Me5VOz
QmbSH2fzsEXvYom5Dw+CVe7CD3cASc1x9TiTfs5oGo7NLwqjCQW/XXgw3tFwytKW
hQDFbbudgSmAl6f7XfutU6VfPej2b3g7GxL9Ib1w7cKLo7366EoqjoxXTab/AvAl
SuIiNkvVpxX6igvUvAIDRNC82VCt1w4YW9Z5mD8kLxeLCeIfZ1T7Gj0ppGfK6jUs
Dcsi3VSD/uG7w7MvARz0JHyM6YUP2SoWsFhW9flUcJ0zca+eyPYAtnjmDgvQBf6h
nxvlNlPrO7TRo7PBbu4sNftIOSvIHqU2eXSva+mH0bRCEMCKjwS84EzI2le/bYHS
oz0cF7w/ts7dTP70EHIo6pV0VdaFfmMrYnYQsxEywJB+7V9EoxI0OwFv2mQa5K03
iaIwu17zhzkcXsH0ZYZIhnvb1P7o6m+yM/TJpyIpueb8QSz6yPSfnpt7BSx2hYnq
Lr4ye4XjVYcIE923ASOHTx7ekEtJSTcYc3N6NHeyXtzoTu7aOJBkPW2rgU2tNjDo
jjCvN81FaOZuB6iW4z1NuXVYPw3MLVBcOxEm3dXUZDMmGBAbL6f1YfgfScpBnRwc
aZ3gqP+01jSeEeXDEhit3eMnqFx9NK6+OPxnQQ/93C7AjnWmkZc=
=VksF
-----END PGP SIGNATURE-----

--------------ZWaO8FHzsa4QJka4KRUfeLoD--
