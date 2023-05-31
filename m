Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52CC9718DF8
	for <lists+linux-man@lfdr.de>; Thu,  1 Jun 2023 00:02:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229851AbjEaWCX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 May 2023 18:02:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbjEaWCW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 May 2023 18:02:22 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE41B11D
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 15:02:20 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f6d7abe934so1567375e9.2
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 15:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685570539; x=1688162539;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/yhRxpIlx4cKCig0ayM806O00ScmMTrmxIC7yQNMIko=;
        b=QafVZdIGkcAhZIRBc+j4HHdtGrBgQRg0jzrn2q2jvdOrXJOJTc+gO0CPHwPCw8XjSz
         ZQuOxzrUwPBXSQqt9xXWBiOJ/wi0wN8d/ruu3tJAtYo1MZxKgZNLG+WFmw73FiXqOrqT
         RnV6Z3YUqEeq0Cbl3+o7MQrwdAwJ4SIOE3JOYblRSXP1qFSLdt8vwt/UQNVp/jqmvxok
         /D0lDdAAd0daPs+M+ylmcnAEtyLPxl1jZT7GlGLATI7poYrSP0hpN73ylRDvV8naEnYw
         YXQ2yebNlwtuYq/5bmsWjNo2ILurRXZGV8i3UJu1RtjXykSWkripH/B58YHn0rJ24uLY
         dX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685570539; x=1688162539;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/yhRxpIlx4cKCig0ayM806O00ScmMTrmxIC7yQNMIko=;
        b=dvJuUArxJOB0eXylfTo1JtRE9OwRKvbqmmtMPBnAWR2LC1c+cmuxKm3j1GviBEvPg2
         Jz4k6JXbzUZurUe/ZneZ9bTCQ9JO9v80s1xFCzfib8cpCzioiB0BaTFH3UEtVBKR4Jh+
         hGQ1F4ZXF0tEmN7PuoAU0xH5Mr8WZQXrlXll+6oDH9KZpS2IXbTKEycr6P2UQrEuBMNu
         +BlSWIfWHVeDLGso41Q36dFb54/SOVDIOpcqhIEOypHw4HNyOXsA2HOKBmbOH5tm1UWI
         Mf/r3ghLW+6nUg0n6oiw6BE3cjW3hPV9SFyrGZOqbkyYvuMHD3aj+TMsY34LAUCVDzAq
         p89Q==
X-Gm-Message-State: AC+VfDy8xU7WXvuBVgdhPlSUhclmijfCH8JRltDsE4z6kVIObqfkR2VP
        Qu2hq66m4uC9AlAglv7duTg=
X-Google-Smtp-Source: ACHHUZ4wh1AXxF3CEyWOgfKJl3JjRvX8H1CRYCqOYma8pt+7PyDDKi71AKoS84MbapI/CRHQuvfaRg==
X-Received: by 2002:a05:600c:384:b0:3f1:70a2:ceb5 with SMTP id w4-20020a05600c038400b003f170a2ceb5mr497012wmd.13.1685570539101;
        Wed, 31 May 2023 15:02:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y20-20020a05600c365400b003f60fb2addbsm7711wmq.44.2023.05.31.15.02.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 15:02:18 -0700 (PDT)
Message-ID: <601ab2c2-e610-fbc1-ba82-92220873057a@gmail.com>
Date:   Thu, 1 Jun 2023 00:02:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] statx.2: Document STAT_ATTR_MOUNT_ROOT
Content-Language: en-US
To:     "Yang Xu (Fujitsu)" <xuyang2018.jy@fujitsu.com>,
        "alx@kernel.org" <alx@kernel.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <c8dab0c8-7cda-52a5-8c4e-64c5a9a90fc2@gmail.com>
 <a50e90a3-3564-b1a9-ae60-1eb7090c8eb1@fujitsu.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <a50e90a3-3564-b1a9-ae60-1eb7090c8eb1@fujitsu.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8G0L5HHMO4JY2Sm0tDSTOsJE"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8G0L5HHMO4JY2Sm0tDSTOsJE
Content-Type: multipart/mixed; boundary="------------KEkgT10M7HPeIaq1rdJ03IbK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Yang Xu (Fujitsu)" <xuyang2018.jy@fujitsu.com>,
 "alx@kernel.org" <alx@kernel.org>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <601ab2c2-e610-fbc1-ba82-92220873057a@gmail.com>
Subject: Re: [PATCH] statx.2: Document STAT_ATTR_MOUNT_ROOT
References: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <c8dab0c8-7cda-52a5-8c4e-64c5a9a90fc2@gmail.com>
 <a50e90a3-3564-b1a9-ae60-1eb7090c8eb1@fujitsu.com>
In-Reply-To: <a50e90a3-3564-b1a9-ae60-1eb7090c8eb1@fujitsu.com>

--------------KEkgT10M7HPeIaq1rdJ03IbK
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Yang,

On 5/30/23 07:43, Yang Xu (Fujitsu) wrote:
>=20
> Hi Alejandro
>=20
>> Hello Yang,
>>
>> On 5/23/23 07:17, Yang Xu wrote:
>>> Linux 5.10 adds STATX_ATTR_MOUNT_ROOT support.
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/co=
mmit/?id=3D80340fe3605c
>>>
>>> Add the text to the statx man page.
>>>
>>> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
>>
>> Patch applied.
>>
>> Thanks,
>> Alex
>>
>>> ---
>>>   man2/statx.2 | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>>
>>> diff --git a/man2/statx.2 b/man2/statx.2
>>> index 3bc4932b0..9610e171a 100644
>>> --- a/man2/statx.2
>>> +++ b/man2/statx.2
>>> @@ -521,6 +521,10 @@ without an explicit
>>>   See
>>>   .BR mmap (2)
>>>   for more information.
>>> +.TP
>>> +.B STATX_ATTR_MOUNT_ROOT " (since Linux 5.10)"
>=20
> I used the following command to search linux tag and then miss 5.8
> #git tag --contains 80340fe3

You should use git-describe(1):

$ git describe --contains 80340fe3
v5.8-rc1~203^2~4

> v5.10
> v5.10-rc1
> v5.10-rc2
> v5.10-rc3
> v5.10-rc4
> v5.10-rc5
> v5.10-rc6
> v5.10-rc7
> v5.11
> v5.11-rc1
> v5.11-rc2
> v5.11-rc3
> v5.11-rc4
> v5.11-rc5
> v5.11-rc6
> v5.11-rc7
> v5.12
> v5.12-rc1
> v5.12-rc1-dontuse
> v5.12-rc2
> v5.12-rc3
> v5.12-rc4
> v5.12-rc5
> v5.12-rc6
> v5.12-rc7
> ....
> v5.8-rc1
>=20
> so, we should fix this incorrect linux version. Sorry for introducing t=
his.

No problem.  Fixed.  :)

Cheers,
Alex

>=20
> Best Regards
> Yang Xu
>>> +.\" commit 80340fe3605c0e78cfe496c3b3878be828cfdbfe
>>> +The file is the root of a mount.
>>>   .SH RETURN VALUE
>>>   On success, zero is returned.
>>>   On error, \-1 is returned, and

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------KEkgT10M7HPeIaq1rdJ03IbK--

--------------8G0L5HHMO4JY2Sm0tDSTOsJE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR3w+kACgkQnowa+77/
2zKozQ/9ENYoZrW1k8cn1J57X6A6kr4Vdf1X1qR1jvVwvdN460EszTMN0PkI4+Gx
Ek3SUkUy7dn+5xH1yCj+ZZ/4f37mTrYYORbt/O2qD1NNfMMHHBXkDMiP4sCIInA4
KpMg71CvDeQ1EsscYmZ2FGfuuUMTGxcVE9lu1fMvvNWrBXgqUswkIOggDbohiNz4
uv0IShhtgOjcQJtS/9z+gpUKiVO/g6W74jM1uv8Ili0/jFmRYKQ9+Z4zTvHPNCA2
nL1DzA8VJrxvV1RMobwlJ8WKyfXe+CsS2TIxDQmLkMrldcc3DEUr5idxcpSwtvXz
MqKsA3ggn/Y9VprhuLogpy25O5wRbD7gLpOwEtDu0Z+vVW26tUYcy+uW8oLidARQ
DHQo54ZSwv0Vmt91Aen1xrxrTT/y6lKl/8ZlFT/sz0b4Zpb30KgBi/CJ+eW5obhD
tQmz4w2+2Oh8UwrxZZ93BQPhxaLcd7fze3ExLnqRquPSSiMFFrXnh+29UzjD9ltb
eN9zZfJR/hAB+/nYof8Bbi0VVC53TGwSZcMWULRLcf5XlTyWtjSOwcc0qnCCVf/B
4vPDlmySVajREDgXyZKzebCAEEw5br5giuwwZj1Odm3czpNVxZc9P53HKiNOj46W
cIPXk3vsv59CEEWAyQ7C9YihjcCkhzSKCUn1nNN+SC2ObI5jBMA=
=NRuw
-----END PGP SIGNATURE-----

--------------8G0L5HHMO4JY2Sm0tDSTOsJE--
