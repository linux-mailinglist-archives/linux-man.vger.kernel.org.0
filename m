Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCE6E6EA9C0
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:57:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbjDUL5R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231161AbjDUL5O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:57:14 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77E09AF23
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:57:13 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2a8b766322bso14826551fa.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682078232; x=1684670232;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C42cNfydm7q+GYR0GB/eRkl8LcxrPdv8O4C7gXtN3iM=;
        b=q6LWgkd4YCo+zf5Rd32wnqOxJyySrt+FpEW09mDhP0sVlEs9fnfLg/uLkVkj7UM6Gx
         iKBZRMp3sC1T3zjDSS9GNxDmvzp6UlMbVNjEQiUAtvEvENf/w16TUAkz/bC1VOyaARSu
         qQJ9QS1LXJgHXfcwaJM4SiBMkxSu9XiPcaAAO2Me39LuYErOO9Gig8Fbb8XHpkLoLTFS
         EsFyd0PYGHyRGCqV2ATpU052g86lSoq3bcARdDvAb56nr9BoL6ZSV4apUosHcbAd2kzM
         zSLnoKETdaqLbz5WA6CsjpCPJo4guhx4+aHsGlTHTFo4QHWta2gnqpJmLxsDELRfQHW3
         Y7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682078232; x=1684670232;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C42cNfydm7q+GYR0GB/eRkl8LcxrPdv8O4C7gXtN3iM=;
        b=GZ6kWUq9WP3Quwogz5sTb/QKDEjfcImVHiZGPVM1bLqZ8FHIOoqipV/KXBL3jNVbAE
         RWKYbDNgn+bQIRI6o0OuCejUXV2oXhzmJrg2T3fbX84ZZfQUsAHGyjzRkhMEVy05L8kh
         F3c7xWZQIz1VtbZuJCfDVNMixrEMM208VNCsHArvs7hxsQUCbQwK+oDuqxZb3TVGldjU
         K09FM3VRzFifWOjqag7yW5wSzHwRCkk6gZFuthaMOSKyCwsgfFi2wZSoueao0YSRwTfP
         oY/n5LzcS1WBLRCwMkYM4Np7jd6MLfFaRKQ6sgK8kjEqWOdds+1un4vf/WVc3SfnNa6D
         rdJA==
X-Gm-Message-State: AAQBX9ffCWDUoCWQZJELYDurfILghLLaJ3EHyj52JnWQ8KRGWZ2m1WuH
        5C97/p7RGMq84Q+w8wV+px19tjRh2Mw=
X-Google-Smtp-Source: AKy350a2mqKI6g0D6k71acmYBYOQI32Lo6CKLaz2d3o5pwyY52OM75EPzGlorCUu21H4Ipk8W1fVkQ==
X-Received: by 2002:a2e:855a:0:b0:2a8:bafe:900c with SMTP id u26-20020a2e855a000000b002a8bafe900cmr551478ljj.25.1682078231547;
        Fri, 21 Apr 2023 04:57:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p19-20020a2e9a93000000b002a9f022e8bcsm577070lji.65.2023.04.21.04.57.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:57:11 -0700 (PDT)
Message-ID: <e8425e9e-9980-34a3-f434-c8351da446ca@gmail.com>
Date:   Fri, 21 Apr 2023 13:57:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 2/5] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>
In-Reply-To: <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IO7fbiV2khSLOsoeXQkMXR6l"
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
--------------IO7fbiV2khSLOsoeXQkMXR6l
Content-Type: multipart/mixed; boundary="------------8kHGOSz3qOOfSswiy68LJx0a";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <e8425e9e-9980-34a3-f434-c8351da446ca@gmail.com>
Subject: Re: [PATCH v8 2/5] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>
In-Reply-To: <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>

--------------8kHGOSz3qOOfSswiy68LJx0a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 13:55, Alejandro Colomar wrote:
>=20
>=20
> On 4/21/23 04:48, =D0=BD=D0=B0=D0=B1 wrote:
>> Move-only commit.
>>
>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli=
=2Exyz>
>> ---
>>  man3/regex.3              | 30 ++++++++++++++++++
>>  man3type/regex_t.3type    | 64 +-------------------------------------=
-
>>  man3type/regmatch_t.3type |  2 +-
>>  man3type/regoff_t.3type   |  2 +-
>>  4 files changed, 33 insertions(+), 65 deletions(-)
>>
> [...]
>=20
>> diff --git a/man3type/regex_t.3type b/man3type/regex_t.3type
>> index 176d2c7a6..c0daaf0ff 100644
>> --- a/man3type/regex_t.3type
>> +++ b/man3type/regex_t.3type
>> @@ -1,63 +1 @@
>> -.\" Copyright (c) 2020-2022 by Alejandro Colomar <alx@kernel.org>
>> -.\" and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com=
>
>> -.\"
>> -.\" SPDX-License-Identifier: Linux-man-pages-copyleft
>> -.\"
>> -.\"
>> -.TH regex_t 3type (date) "Linux man-pages (unreleased)"
>> -.SH NAME
>> -regex_t, regmatch_t, regoff_t
>=20
> Should we keep the names in regex.3?

Although that probably confuses man(1), since it will believe those are
in main section 3, while they are in 3type.  Branden, any opinions?

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------8kHGOSz3qOOfSswiy68LJx0a--

--------------IO7fbiV2khSLOsoeXQkMXR6l
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCehUACgkQnowa+77/
2zICmBAAiJr1tWfUkl6685DILwps+am07WmnRAArcmQajKp6JqSstVm6Ucepn8MW
QLG2PnKWejexjaoQrdou8Fvjj2gqcs++qs3GFWzDsVoT5QKbOzhnBpb4LbZW5xIW
fOZ8NAZooiehEcrDhyDwmpwF4Wnjbp321RK0qpR7ge6E6LBWPwNFYmqFnc04nboW
NGo5RCaivfr1D1Ru2mBNZHpN9CJTeVXMFDNDhrP0yoAYcSZq5RSDLOReRPUDFo6U
75VkRczlMaRR3wI6xGLiVLT0U29XL3wuoflNbXvf4p4eclV6WLRoJ8KLcL5Pj9Q5
WEKMuCoKRHlOjxcRn6dkMRsCDLv6GAJf95j1WyApvjYoaYbbd0AUe3Y6z5W1iiX/
36TIEKEJkkns+BshRnCJUFh65n0VVQ9/whB98403hnbxQmD87Ia11JCck8J4To71
ky9gMO2dsFQDOKKqxHybU47fG51jwSy7ogInEc+fZHene2yt89BfsKVFt1c37IJ+
NjXtOPUEW49Vs+CU+w283PfS0ZBtMTIsXlAAL9SE2pgchRigX4NYm9SsQnXBNX20
qY+blDkCLOTkjQaCwF+NPtvhK+IMoPM9ImoOGAqe8scqN5/1OBTvMPTNuz8rC3P3
+A1e0upZ30OIjHOWRYh5PM2Njbm38D9mgTFcR/ZmEX/umPPzDE4=
=taSm
-----END PGP SIGNATURE-----

--------------IO7fbiV2khSLOsoeXQkMXR6l--
