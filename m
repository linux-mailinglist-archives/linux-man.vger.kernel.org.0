Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECFEE5AD4D9
	for <lists+linux-man@lfdr.de>; Mon,  5 Sep 2022 16:32:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237672AbiIEOcS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Sep 2022 10:32:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236555AbiIEOcS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Sep 2022 10:32:18 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFCA75A3F2
        for <linux-man@vger.kernel.org>; Mon,  5 Sep 2022 07:32:16 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id n23-20020a7bc5d7000000b003a62f19b453so7911029wmk.3
        for <linux-man@vger.kernel.org>; Mon, 05 Sep 2022 07:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=iHgOG5iRxEY0sgNRkxE6JiZY8TBwgwsdH3qIpJZ4Yok=;
        b=FISylsEMHnjynMCv46wtnF73QVM7wRjOQPmgOWo89IQiw3uJafA9ujtrajJsWttwIY
         BrE1ooqpYNF/v8SPQWWo3f/qE8ab5OsnaAGRruiR891H7Uh6SSizh5/EUoqq8o5dhIHb
         XOrr8tcO4KdjXE5/Fqd8PS92Kpa8KHU2A9a5V/uLmD6QB2u1oZx8iqMsdiZDrT0892Om
         8B0E9/+7463Vn2JVt44p7L28ot0CltHBLXnUP71349SFlgcsxE9uGGQlZ5qOTn2ht3zU
         paqbhweDw5PHH27ocvSRqM8hB7V3oXu3Q0x+c1Z4jippW5YexYpb143VSHmBPHIkE9of
         lx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=iHgOG5iRxEY0sgNRkxE6JiZY8TBwgwsdH3qIpJZ4Yok=;
        b=Wi7OGcWMXLEyRiG/dabhLKF5hAcB1E1xloL2hwBR58di1bE/vmvG87kgAmV1jc8cfs
         PfwUb2p2cgcfJzZxf1Ygp2sUae9E2VWDw3wMtuchSBUcbeK99nF0TZY9KXo8p8BVzJ0z
         J+xtP1AqP8Hha9GgH6aDnLAqz7GlK50Dmgg8w9UzRmB96naH2CDViZs6+hUrcUUdbCKy
         o+e1seGRbGqGfVBA11uavfdyfuGvVY8GBVURpm1StxrZfwOAxAhDMy1v12R4zPvlPlsZ
         s31s/pNl39/FCxGoWlHWrYEmz++eIMYeAIbjMo+3re0mwrqVJ3+UiJ5NlPxF/v3AUiGa
         Escg==
X-Gm-Message-State: ACgBeo0CBNP6UPL1JWdYgg+dkZYyyezV878Kqiv6U6FsQIjZw1rN4Xvb
        Yw2PFRNzYLsW8Y47Hgrb/kc=
X-Google-Smtp-Source: AA6agR59EfTdNmdkmzf++Gwl4s/4jC4zh+4zhOBfFdSyOTNDcogJputfZbBrFiwmwwdbyIXuyY73LA==
X-Received: by 2002:a05:600c:410d:b0:3a6:1db8:b419 with SMTP id j13-20020a05600c410d00b003a61db8b419mr10978789wmi.119.1662388335335;
        Mon, 05 Sep 2022 07:32:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d17-20020adffbd1000000b002253d865715sm9028634wrs.87.2022.09.05.07.32.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 07:32:14 -0700 (PDT)
Message-ID: <da301fda-5319-dff0-23c2-c56bdf35105a@gmail.com>
Date:   Mon, 5 Sep 2022 16:31:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <d9865e28-fc81-9878-769b-471652a8be94@gmail.com>
Content-Language: en-US
In-Reply-To: <d9865e28-fc81-9878-769b-471652a8be94@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Yfqqtr9qqMNZG6TQ0LLnv8oy"
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
--------------Yfqqtr9qqMNZG6TQ0LLnv8oy
Content-Type: multipart/mixed; boundary="------------85MA9OcUyjtPh4qKP1We6YG8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <da301fda-5319-dff0-23c2-c56bdf35105a@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <d9865e28-fc81-9878-769b-471652a8be94@gmail.com>
In-Reply-To: <d9865e28-fc81-9878-769b-471652a8be94@gmail.com>

--------------85MA9OcUyjtPh4qKP1We6YG8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiA5LzMvMjIgMjI6MDIsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPj4+PiBXZSB0aG91Z2h0IGFib3V0IHVzaW5nIHRoaXMgc3ludGF4DQo+Pj4+DQo+Pj4+
IGludCBmb28oY2hhciBidWZbLm5dLCBpbnQgbik7DQoNCkJUVywgaXQgd291bGQgYmUgdXNl
ZnVsIGlmIHRoaXMgc3ludGF4IHdhcyBhY2NlcHRlZCBmb3Igdm9pZCAqIHRvbywgDQplc3Bl
Y2lhbGx5IHNpbmNlIEdOVSBDIGFsbG93cyBwb2ludGVyIGFyaXRobWV0aWMgb24gdm9pZCAq
Lg0KDQogICAgIHZvaWQgKm1lbW1vdmUodm9pZCBkZXN0Wy5uXSwgY29uc3Qgdm9pZCBzcmNb
Lm5dLCBzaXplX3Qgbik7DQoNCkkgdW5kZXJzdGFuZCB0aGF0IGEgdm9pZCBhcnJheSBkb2Vz
bid0IG1ha2Ugc2Vuc2UsIHNvIGRlZmluaW5nIGEgVkxBIG9mIA0KdHlwZSB2b2lkIGlzIGFu
IGVycm9yIGVsc2V3aGVyZSwgYnV0IHNpbmNlIGFycmF5IHBhcmFtZXRlcnMgYXJlIG5vdCAN
CnJlYWxseSBhcnJheXMsIGFuZCBpbnN0ZWFkIHBvaW50ZXJzLCB0aGlzIGNvdWxkIGJlIHJl
YXNvbmFibGUuDQoNClRoZSBzYW1lIHRoYXQgdGhlc2UgImFycmF5cyIgY2FuIGhhdmUgemVy
byBzaXplcywgb3IgZXZlbiBuZWdhdGl2ZSBvbmVzIA0KaW4gc29tZSB3ZWlyZCBjYXNlcy4N
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------85MA9OcUyjtPh4qKP1We6YG8--

--------------Yfqqtr9qqMNZG6TQ0LLnv8oy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMWCF0ACgkQnowa+77/
2zKFkRAAn20alN7Zwd0MrI8B/XHJs+/V8MYj6YU8EoBGq9qcbYa1ZEJ96NI9Eogm
rZZVRmq5ACRXSe+CeswJb2OZhQRXci9Hk4Lb9G7MTyoaO/PuEWXC1+PmSBg9wpqR
voDX0OQ3X7Puc+yTkCtalMfGeF3MCbWA1gcPSdo6HB+rw/8TGiYA0tIAcMcZ3dz4
GSYUth1r77Qt1YHx1fdX3MRSurKkQRaHm8l/qbRtVb0W6yHepaSO6DVU2NReZWE/
wNSzQw0LHiSyyIPIxFyBBFgEdDdLhNrtytM4Z9AscSRh/gaoOVKJ00oFSouc2yKx
4cV7vEluGo96iYC3HglpK3LHrZZvi0+Osmj3I/kS7EbHvtV2+6KmbZ/4hU6/5lfp
SJ/Sz9QRYy6V2lk2KYnNfm5DcImclvwXGow0Uj4eXSk60nmA5fDwadkJQBpmeKKR
QcYlC+sgJe734xanXEzzKcZzTj5TYn1EEOmcIusFF2nU7TGviVGi1A1lDfM2cv8W
OTW9Ni0OpIMdBqzM+dKYjzdF0wrjqhHEC7reNwajowBPRopALEmzjc7lfJVcOqs5
r5Qbccl6Lbba8e1kH75/+SL++U0kthtaM1zmj9V1kYom3owpzpPR8MeyalI2r8Iq
y1sdT4cXZW1zNUO5p6Pq1f1GMWU/pJHsdwoLC21YV2RiztDtOoQ=
=xZme
-----END PGP SIGNATURE-----

--------------Yfqqtr9qqMNZG6TQ0LLnv8oy--
