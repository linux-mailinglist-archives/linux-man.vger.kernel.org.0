Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35E2F6EA9DA
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:03:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbjDUMDK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:03:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbjDUMDJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:03:09 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC380AF0B
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:03:06 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f1950f5676so4027955e9.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682078585; x=1684670585;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bgm089s2kUXQxcWBW7IiG/TUc/eDHUbXWnJD1vO1eA0=;
        b=lijniKmHI4Yjuc1XGNU2j0xWyBDqVP7QY4cq51O2hsKSsKvkYLNJFW/SPF5XDECIRs
         dUJo/Kb2jyBen8CJn3ovsuYarooiFCMFLlWnHB+T0fDTb/lHRehVaSlY0VOt7eYMq8Dh
         gyKAQK+92Yys/Z6RYhoDSz23Y6UP7L5dEqDUHiVGDZLwgwxlV9NQxJSOBtx61Lxn+yoE
         P3mtfEgT+hhqhnQjR4qAsvmVOSBPJBH+qOgxSQu6JxuFw4Jhjr0DU6cOgE1jgQihqvsi
         paqx1OSWn8LJsqm+HnxJ4iuQVDRQY3nJqlJ/mH9uB7XVAqRDMkNaghAepvmR17ZWzpTD
         ZHKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682078585; x=1684670585;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Bgm089s2kUXQxcWBW7IiG/TUc/eDHUbXWnJD1vO1eA0=;
        b=TY2UKpJEMPSe+tfRB1bThEqp1OOG3xQBSauhDMmULypLZT0SVxL0iaqnuZ+JYOazTM
         kLr73RPaUJTm6fO1hkobkjM3xsUVgTAd5izHYN3py7kkOpeHh8L1tt9jgHQNyiaFKmB/
         d5iSMqikU0H8DQLjNt5ylV4RHvUbBlSWOd1oswJG+074815OQNHvZix9QcHe0foU+LOq
         48k0Er4ShjAc7L5aN9s4Q01mykvtbT95R7mbDUefH+HVp4chSRTKk4uM06dHChmJWJjw
         LEuYGMQrQU8d3nq+kCNG8nvyLHWuJ0YjGNItWH0ULGMt1W30dtTaaHEYpw4L9Edhm1Rm
         LaNQ==
X-Gm-Message-State: AAQBX9f3Eiv91Ci1wH49TVUY9cdzUqimjZ1Kk68jxlSks1ccw90uMCDJ
        3EI3APdTw0aViBbgb4SxOXkrHcA14Ko=
X-Google-Smtp-Source: AKy350bymqeNrvLHtRQf9ga+WuThTGs+V1FP+ChmLetIIEvy7UwNP6Ci0EeOzeRNNwcXtJfTKv1q/g==
X-Received: by 2002:a7b:ce86:0:b0:3f1:82a1:122 with SMTP id q6-20020a7bce86000000b003f182a10122mr1707789wmj.21.1682078584377;
        Fri, 21 Apr 2023 05:03:04 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z16-20020a05600c221000b003ee1b2ab9a0sm4659937wml.11.2023.04.21.05.03.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 05:03:04 -0700 (PDT)
Message-ID: <c0674bc2-f6fd-e68f-f246-c49d3f8315c6@gmail.com>
Date:   Fri, 21 Apr 2023 14:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Ralph Corderoy <ralph@inputplus.co.uk>, linux-man@vger.kernel.org,
        groff@gnu.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <1d2d0aa8-cb28-2d7f-c48b-7a02f907cb5b@gmail.com>
 <20230421115735.770B9201A5@orac.inputplus.co.uk>
 <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>
In-Reply-To: <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------54ABNu68x93fYz2op7z1YeS0"
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
--------------54ABNu68x93fYz2op7z1YeS0
Content-Type: multipart/mixed; boundary="------------XjyKXWcuu8pQVRYC09USsM54";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ralph Corderoy <ralph@inputplus.co.uk>, linux-man@vger.kernel.org,
 groff@gnu.org
Message-ID: <c0674bc2-f6fd-e68f-f246-c49d3f8315c6@gmail.com>
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <1d2d0aa8-cb28-2d7f-c48b-7a02f907cb5b@gmail.com>
 <20230421115735.770B9201A5@orac.inputplus.co.uk>
 <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>
In-Reply-To: <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>

--------------XjyKXWcuu8pQVRYC09USsM54
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 13:59, Alejandro Colomar wrote:
> Hi Ralph,
>=20
> On 4/21/23 13:57, Ralph Corderoy wrote:
>> Hi Alejandro,
>>
>>>> (a)  Use .nf/.fi for the function prototypes, and .EX/.EE for the
>>>>      types.
>>>>
>>>> (b)  .EX/.EE for everything, as you did.
>>>>
>>>> Please have a look at the PDF versions
>> ...
>>> Which one looks better to you?  I've attached two PDF files
>>
>> The Synopsis should not be in a fixed-width font.
>=20
> I know and agree most of the time, but when it has structure types with=

> multi-line comments, you see what happens in the first PDFs I sent
> (mis-aligned comments).

Now I think twice, maybe the answer is to remove those comments, now
that the page better explains what these are in the DESCRIPTION.

>=20
> Cheers,
> Alex
>=20
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------XjyKXWcuu8pQVRYC09USsM54--

--------------54ABNu68x93fYz2op7z1YeS0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCe3YACgkQnowa+77/
2zKXGw//YisruL8jt4DmzBPDPhIa5dBKLwDvoRL0c9GFcfHqJRPDvrcLbl8LuHe8
0rtBIs7b2ae9ovi/o1mfegJS4Y77jn7WiJyyeMSXVm8gGmApupLFsmOxb9uPj6jg
bSOQWB+Hm7ypGBZHePO8kv+JZJAYRw8DS72wM5Q+XgNy0w4wjpxFDYVlO3lzSDOr
e02eL7Ycw6ACTR3o50oK0XHNwyOPc8yNbNuzJPBZPoq+PySoRQchThwNQjgbP19C
MmraVyKW/cc0drNFMmpwPXoq4kgrTeeuqL2VnHqVAaNPYqj22xp5qy/gz680yOIv
myAa5taxyloYmHn5HyzLyhEZb9klwT1xctLH+NxGV94WA5YoDYc6R12sTrKkvDNa
qmKx/fIXpjYCHf62DtnnuqJuTphaWeTy3aeTIvmq08li1PcvhQ3ynzO0bj2t+hrI
Pk9a/B+xxxRnsHmioLmZTJbh+K2xQbvwTSfmkY57+LmxGwoopHguUWkcMNDKAaUr
Vx4jMVskM/DCQR9LZeaqzvGqwxybcH8gUxQbo2xoK7WWVT09pnSx2PEcoGTXa8Ms
fXGsTj7MVkZJzipM6DAtCuWGZB47CFHaoFqpqgb5T9qyzeOXq+Z93+7RP1UAijCG
gEU2J53iVGyk9Zug+TybnQmpw4sl/AKh922PAnLei8M5FpBOaqA=
=eX8U
-----END PGP SIGNATURE-----

--------------54ABNu68x93fYz2op7z1YeS0--
