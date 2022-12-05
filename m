Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DCA3642846
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 13:20:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231637AbiLEMUh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 07:20:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbiLEMUg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 07:20:36 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B642AF00A
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 04:20:34 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id ay40so1869424wmb.2
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 04:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D058eyqMW9mP6WDaF4BOnhIdoxu0wU8mWY+Uy/dVueo=;
        b=dIEbtvGbvObFtnOeFJCHFBh8vWcV0+GN6dRtHQ/Bf83X9Veakvg3WgkCHs2r67ed6D
         W94lYVCgY8W0srgOO78TmJ2+8vI6BWt3ksgqoo4J/9eBgdtgES2oif3CVykYWxUaLvS5
         0rsu3E/2koHCYv4/SdAxxIDI+sEn9N4fP3Ag3tpT1cdLcfWjy7a3PpIwGuBkFuMBE9zS
         Tch22WvhWYpfAx2Ah88rN2t8hbUrs95/YBK7Mz9Gc7geSO0m9T8oKBRP3hmzPuO/bazm
         eBMTk3KucM0SX/kzDH2oiBxy8fVo+jBKGPnCHgtdQW1KUAwWQ/C/mGgxWlNsgLb7DE0P
         lapw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D058eyqMW9mP6WDaF4BOnhIdoxu0wU8mWY+Uy/dVueo=;
        b=qQf2/pQOlpRlNZ3uM9q+4MF4NuRLc/qloZIqHeHUY+udamfImqrmP+eRsUpeBsBQs/
         epaxoz+JgsagJ4tkzBAat3qD5ArVo2tfJYnZDFcT2m8ZcKE/Rv+U/uHzO7IvwSk58oVS
         0jk7TOkwqhLtexJwQz1r7AjBvanv1oZacU8DFBhbnyBC5mtGcCpkxfWNf6CMznCCgg8Z
         mj9AOiZjGcppexWy5m3AkXVxYWax/OF0msRV7edZ8DE+yUBUmIuNAbHigNawT7bvDydb
         yZTajLwtSQyrgYlr/uhDke+edh61ldujBiVgO82Oj3OUboGqyGr4klBXccfqU4b0RcGj
         hRzA==
X-Gm-Message-State: ANoB5pk4KS3zFbOG5ZZb5kmB2iKrnjzpCRzBTS8sMUzaGjjuyy6V/Lex
        fDZfJ7btlitI8X5imA3XnGw=
X-Google-Smtp-Source: AA0mqf6SxwVaX0158JC1p7tJI+xYuBhNnU0brTEfE631ktWglDe8PXXBTVhJaWbnMzN1UZb/NNkzmQ==
X-Received: by 2002:a05:600c:4f10:b0:3cf:b287:7718 with SMTP id l16-20020a05600c4f1000b003cfb2877718mr53728880wmq.75.1670242833071;
        Mon, 05 Dec 2022 04:20:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i15-20020a05600011cf00b002366e3f1497sm13992785wrx.6.2022.12.05.04.20.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 04:20:32 -0800 (PST)
Message-ID: <b021b2e7-973b-5c07-f314-0e7495fc8ee2@gmail.com>
Date:   Mon, 5 Dec 2022 13:20:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
To:     Jakub Wilk <jwilk@jwilk.net>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
 <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cn360ZBer3rgEjlVUSQYoJp4"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cn360ZBer3rgEjlVUSQYoJp4
Content-Type: multipart/mixed; boundary="------------zrPyE3AqAUg6LHkOB5U9jv0y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Helge Kreutzmann <debian@helgefjell.de>
Cc: =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <b021b2e7-973b-5c07-f314-0e7495fc8ee2@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
 <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
In-Reply-To: <20221205120305.htc2sd7r5qtvte5m@jwilk.net>

--------------zrPyE3AqAUg6LHkOB5U9jv0y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEyLzUvMjIgMTM6MDMsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
SGVsZ2UgS3JldXR6bWFubiA8ZGViaWFuQGhlbGdlZmplbGwuZGU+LCAyMDIyLTEyLTA0IDEw
OjA3Og0KPj4gSXNzdWU6wqDCoMKgIG1vdW50IG9yIHVubW91bnQg4oaSIG1vdW50IG9yIHVt
b3VudA0KPiANCj4gVGhlIHN5c3RlbSBjYWxsIGFuZCB0aGUgY29tbWFuZCBsaW5lIHRvb2wg
YXJlIHdyaXR0ZW4gd2l0aG91dCAibiIgZm9yIGhpc3RvcmljYWwgDQo+IHJlYXNvbnMsIGJ1
dCBpdCdzIHNwZWxsZWQgInVubW91bnQiIG90aGVyd2lzZS4NCg0KWWVwLCB3aGF0IEkgZGlk
IGlzIGNoYW5nZSB0aGUgRW5nbGlzaCB3b3JkcyBmb3IgdGhlIHN5c3RlbSBjYWxscywgc28g
aXQgbm93IA0KcmVhZHMgYXMgbW91bnQoMikgb3IgdW1vdW50KDIpLiAgSXQncyBhIGJpdCBt
b3JlIG5vaXNlLCBidXQgZXhwZXJpZW5jZWQgDQpwcm9ncmFtbWVycyBjYW4gcHJvYmFibHkg
anVzdCByZWFkIGl0IGFzIGVhc2lseSwgYW5kIGl0IGlzIGEgYml0IG1vcmUgDQppbmZvcm1h
dGl2ZSB0byBwcm9ncmFtbWVycyBub3Qgc28gZmFtaWxpYXIgd2l0aCB0aGUgc3lzY2FsbHMu
DQoNCj4gDQo+PiAiVGhpcyBtb3VudCBzaGFyZXMgZXZlbnRzIHdpdGggbWVtYmVycyBvZiBh
IHBlZXIgZ3JvdXAuwqAgTW91bnQgYW5kIHVubW91bnQgIg0KPj4gImV2ZW50cyBpbW1lZGlh
dGVseSB1bmRlciB0aGlzIG1vdW50IHdpbGwgcHJvcGFnYXRlIHRvIHRoZSBvdGhlciBtb3Vu
dHMgdGhhdCAiDQo+PiAiYXJlIG1lbWJlcnMgb2YgdGhlIHBlZXIgZ3JvdXAuwqAgSTxQcm9w
YWdhdGlvbj4gaGVyZSBtZWFucyB0aGF0IHRoZSBzYW1lICINCj4+ICJtb3VudCBvciB1bm1v
dW50IHdpbGwgYXV0b21hdGljYWxseSBvY2N1ciB1bmRlciBhbGwgb2YgdGhlIG90aGVyIG1v
dW50cyBpbiAiDQo+PiAidGhlIHBlZXIgZ3JvdXAuwqAgQ29udmVyc2VseSwgbW91bnQgYW5k
IHVubW91bnQgZXZlbnRzIHRoYXQgdGFrZSBwbGFjZSB1bmRlciAiDQo+PiAicGVlciBtb3Vu
dHMgd2lsbCBwcm9wYWdhdGUgdG8gdGhpcyBtb3VudC4iDQo+IA0KPiBUaGlzIHRleHQgbG9v
a3MgY29ycmVjdCB0byBtZS4NCj4gDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------zrPyE3AqAUg6LHkOB5U9jv0y--

--------------cn360ZBer3rgEjlVUSQYoJp4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmON4gcACgkQnowa+77/
2zLP/BAAjd1uS9wXkrgOlYw7b+V94OZ1SuqTTPF5xuolpV0nb3v+3X68ebpbd4y4
WoWyzq2h8apINHo7WIjiyBqLaYSMLfkMG+S5QJjcrHXtbAaH2f2zY8npIq4jEiDE
RrPOtDJazEJx477a+hvYD/zablqzzCnhKHl63UW7HT3JuT9GLfDYYHSVQ/MJJMtg
4f3GuI04H/NPgoRlDuqARcWi9XUKCQ3YC51CQH+nq2LY6Q4cBQgod1cx/nyG72Sa
F3x96BM9uHOQdwZgSZlrIqRsMNOzM52ccLghi6OdQEwBbPF959qK+DhJNqvO0vxs
oTl/LW2TODwgrit0d8bkIUtOp6dI5+lFwOueG05vHYn4eiiqQwssibkY8Tn9Wt5m
nlD4m58K9jOHus9Z8JdybOvSIdgiLee1tsVvTXY+ataxA0XCFkFIKDopTLt1yjBh
DGUw0DTy+5Yl+JVuipD4xr7WTnAo8a7KzStSzPkEsGiRgA20rXorf4ZCqbYklQKu
NQISgQzIGnVVUSAD8/2dEqnx4kSsw/qnDxp4OgfouVK4OTSi3ZgcxQMHfbjDzoSa
VnR7ZuIxWeC5Oh2aOmSRxDH6w3M9eOjctgceX30ADky1aHCFugkSHQmCQnLb5+Tv
v3mxpBMBARvmIU0qmESI63n9YiBHp/Ee2sh92KuZph97PiRSpQ0=
=qXjV
-----END PGP SIGNATURE-----

--------------cn360ZBer3rgEjlVUSQYoJp4--
