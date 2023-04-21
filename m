Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56E146EA9C4
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:57:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbjDUL5s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:57:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231161AbjDUL5r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:57:47 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46FA68E
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:57:46 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f1957e80a2so7484965e9.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682078265; x=1684670265;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YEiVlEfFMnSvnxPjHamH7ozUlR4kXZrwkv5lpuL3i2s=;
        b=IqkE/ayKUcSn26/AarmPOms/jECTPq4yIS8m1qPdoXh6nGv3kYEP6JPA/hVJpcMtZm
         n9PzxPT82TMei5WXZ/1NUYRN0Xw310D5eANJUSepdAi+JTLivftfytVqaJvCmxkGnrlM
         /Wuk0l246jcRoYo8yrM6xapX61hoqqeuWWbZTSSDfMmTvbjkjBvQjWsaSF7IutHslfu7
         j5cHVIpJ7yEq6YVfyB7nmAyXCfrrGT3fwPKzJs5aw/6wTDrPKa7ugvHCJf6LFVf8ylwL
         FkqK8dCreUefvvIdiVs/rUgqWnnd3lswbdgZMyr5oHBCGyl0EV+pZ4aHc+oxVMH9S/o5
         6abQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682078265; x=1684670265;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YEiVlEfFMnSvnxPjHamH7ozUlR4kXZrwkv5lpuL3i2s=;
        b=AenJ5oNWQ0BHmHIN3/C1zWxTAT921gQPD1vJGW6CBtFPck0XLUEUtvNtjpmUSyZNcF
         Yv5XYcH2vBErea405PaxvBY0AaRGYP9lstykpOHTM9EYlzLdUPkAHDAe2ixZZM/VBDH7
         rRJU2CkA3wBLJtGX1/qH7WfipUhT0PjxkluW/5FabaQ3TjvJB/n6E03TphDU5QYWAiOl
         EqaYHWq4r7w3d8jMKdSZml51nox7WcXYS5FBapLNZymlGWa4S42qDPABlfXKCA49Mt6x
         eBWwpE9e4aM23J1IMYSjeWKKtzLxIxgSLaWKxOAW43G3olXwMziuR3MqhQImgaZqhSnJ
         okGg==
X-Gm-Message-State: AAQBX9dcTQFDKN4O3eAp8DRp6ndJnOg/5v7NgaDPGPZgQhfsHyMLsjdY
        umada5oGty8yNYz6s1Rodis=
X-Google-Smtp-Source: AKy350Ys7u/qlKI3YsHNd2B8doVD3ox1dXgJng3u19JjiLTS3wu178u6wNpAtXZ+VwpD93hTXHgggg==
X-Received: by 2002:a5d:6346:0:b0:2f1:b74:5d8a with SMTP id b6-20020a5d6346000000b002f10b745d8amr7459085wrw.5.1682078264739;
        Fri, 21 Apr 2023 04:57:44 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id r17-20020adff711000000b002f2b8cb5d9csm4289976wrp.28.2023.04.21.04.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:57:44 -0700 (PDT)
Message-ID: <9e9f91aa-a53d-955f-386c-363cf2c1de8e@gmail.com>
Date:   Fri, 21 Apr 2023 13:57:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 2/5] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>
 <e8425e9e-9980-34a3-f434-c8351da446ca@gmail.com>
In-Reply-To: <e8425e9e-9980-34a3-f434-c8351da446ca@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NOT0yTGI8khwCeiVhSvnXyKe"
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
--------------NOT0yTGI8khwCeiVhSvnXyKe
Content-Type: multipart/mixed; boundary="------------Bhtzkh80KDBr3Lx7sPX0BeaY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <9e9f91aa-a53d-955f-386c-363cf2c1de8e@gmail.com>
Subject: Re: [PATCH v8 2/5] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>
 <e8425e9e-9980-34a3-f434-c8351da446ca@gmail.com>
In-Reply-To: <e8425e9e-9980-34a3-f434-c8351da446ca@gmail.com>

--------------Bhtzkh80KDBr3Lx7sPX0BeaY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

(forgot to TO Branden)

On 4/21/23 13:57, Alejandro Colomar wrote:
>=20
>=20
> On 4/21/23 13:55, Alejandro Colomar wrote:
>>
>>
>> On 4/21/23 04:48, =D0=BD=D0=B0=D0=B1 wrote:
>>> Move-only commit.
>>>
>>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
>>> ---
>>>  man3/regex.3              | 30 ++++++++++++++++++
>>>  man3type/regex_t.3type    | 64 +------------------------------------=
--
>>>  man3type/regmatch_t.3type |  2 +-
>>>  man3type/regoff_t.3type   |  2 +-
>>>  4 files changed, 33 insertions(+), 65 deletions(-)
>>>
>> [...]
>>
>>> diff --git a/man3type/regex_t.3type b/man3type/regex_t.3type
>>> index 176d2c7a6..c0daaf0ff 100644
>>> --- a/man3type/regex_t.3type
>>> +++ b/man3type/regex_t.3type
>>> @@ -1,63 +1 @@
>>> -.\" Copyright (c) 2020-2022 by Alejandro Colomar <alx@kernel.org>
>>> -.\" and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.co=
m>
>>> -.\"
>>> -.\" SPDX-License-Identifier: Linux-man-pages-copyleft
>>> -.\"
>>> -.\"
>>> -.TH regex_t 3type (date) "Linux man-pages (unreleased)"
>>> -.SH NAME
>>> -regex_t, regmatch_t, regoff_t
>>
>> Should we keep the names in regex.3?
>=20
> Although that probably confuses man(1), since it will believe those are=

> in main section 3, while they are in 3type.  Branden, any opinions?
>=20
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Bhtzkh80KDBr3Lx7sPX0BeaY--

--------------NOT0yTGI8khwCeiVhSvnXyKe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCejcACgkQnowa+77/
2zIhbw//eXXThpTg/WSosk27NxSXs35pFnPUrS3tQ04hiUF/cRnNTIfIUQgKYmDo
RquOHL3P8x5FzTvymdoqkKnXenE+sAkhPiF6ns5wsj1NeUmu32/rYsTlXuhk4yxu
93r1j5dXRZxxqSd8tcgbT8OAPst376CBhcNan1gnfkRw3V3u1hQ1yHo7jySM/xFk
oXmK0pyrA/RwTeLPqpiCQ0T+lK+CNEBtToPsUUpzU7CNJ4W4wqBNSDRPF7t12H79
C9MGk5xPmHN8sO8ZiMwNanMH3cMlQnsjZ8dE6kikYusuBGE+e5xVvOYwgNAo3ep1
NtSppg3Jd4ZVV9Anx4y3dm9YuNcrOr6574dINYZF9pnVe1CiDSnRgflZPQeuboDd
XKVfZAooTlku9XUEeMmK9gIPK2qaZkPtmE0CKJObZ8jas5nd5Z0H+XKGLtdNpSDM
quAuy0MIonW2U+oklJYJT7LHRPyLAyH8FTB/zYKSIxBvBFiUUcP/fNP+mVqguNhp
/JoHjYKr91ZWye+Z366ZLuLD2n2ltrEGq98vgVcAeWK3T18Ukn7PUZs2204kWpeO
0GBdVq17lcZ14BJr1JaW8rYES88YhtW9WnX7G01T2GZRHtKHqDWrA5VEchD6C+W1
JSAXEpOawirHYEZ8+3ukXj0VijphYExQSNg7p40jcLE+C0H6Vrc=
=vknr
-----END PGP SIGNATURE-----

--------------NOT0yTGI8khwCeiVhSvnXyKe--
