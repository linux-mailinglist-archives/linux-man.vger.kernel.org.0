Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B19B065139A
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 21:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232199AbiLSUGB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 15:06:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232100AbiLSUGA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 15:06:00 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04D6113FBD
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 12:05:59 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id f18so9806752wrj.5
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 12:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+khzaRD2cGsKPoDR9y/w7H/3Nuxy/ZDkwrmDS/XFkOQ=;
        b=JLTTwl88Oorh+O1B5l8wl6HoNxkTO3LeEr2GR03Vm6JIkLVZc6T0EvJSSykiUTvWrF
         NjPmTSM/AcQMF5qn7ivBd/2qQqo8/ryJc35RNZK605x4iN0ZUTV1mxHW19uJZRUu6hsa
         VTPl7ISEfOtDr1UhLiYomdDTLVEmbvznwgMBZ066zwsOUA5K/QnNLMrGMmtvRlL55IEb
         yXdb3KAUR3hTWy2vjjkAonH9n92RWbhqwqiZApK0yaOqqkKjsZqQqa5z2JW91usaIMbW
         qfpxhZkBly1dg1k/+jkjNrar3KHOpcMO4USS97pjQfFVxkjxLk8xT0QNvXB10jPQHuqN
         Uz4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+khzaRD2cGsKPoDR9y/w7H/3Nuxy/ZDkwrmDS/XFkOQ=;
        b=DTZ3u9l3Wib5U94ikDqIKfWTn9MxF3Q7iEZMx2FjJxCqlAQYF+fOHWycjb4ijl8Dex
         kgx+zey/hBqdps9d4zj1dAiC+max2SH4o6ic/MYHn24maHZ0d6edX0PdgvwxloLJqMEq
         WrgJKBi4l2+jnfeAKQTtwXC25qh1FT6UkUMA2CYnBE6vKz8TcRfj0jm8f4ALKJqHSaca
         PgToKl4/84znX1es5HGNm8FSyBKGgwwJ03vZfpH0X3qpXnF4wqPUJccTiNAeJDf2Fvx4
         6WeWThZFFpkmtiLu6WOEEU9avdHUVZI4yUUKRQgtqhhTslBpu747PVyoZBTFaiadnwdY
         3rhA==
X-Gm-Message-State: ANoB5pl+APNptOx0UpNuh3kwW1AVoNw9lCLZ9EFWQciocTv84hZsFULo
        +o1p23TSkyFBd1qSX/EWHNbB7S0jj1g=
X-Google-Smtp-Source: AA0mqf5vAHVthLn5oUbhkVkIbcQB8t8gC1EO4tliGlhnPUfa12cGJxVGJkdILHNEAMefZ+NF4/ai8Q==
X-Received: by 2002:a5d:4152:0:b0:24f:11eb:2988 with SMTP id c18-20020a5d4152000000b0024f11eb2988mr22370800wrq.71.1671480357567;
        Mon, 19 Dec 2022 12:05:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p6-20020a5d48c6000000b002366553eca7sm10580923wrs.83.2022.12.19.12.05.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 12:05:57 -0800 (PST)
Message-ID: <7cf103f8-d100-8ecc-24c0-4dad0b99578a@gmail.com>
Date:   Mon, 19 Dec 2022 21:05:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: prehistory branch (was: patching suffixes(7) (was: groff
 1.23.0.rc2 status report))
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
 <20221219165900.dfgjj5spciy4cqlt@illithid>
 <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
 <f6a144a8-0c27-c523-718b-c98f09e44e07@gmail.com>
In-Reply-To: <f6a144a8-0c27-c523-718b-c98f09e44e07@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Cs8Tscsxj3y620K5x9vnOVV2"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Cs8Tscsxj3y620K5x9vnOVV2
Content-Type: multipart/mixed; boundary="------------IYpb60kNTWZo080r10cIboPT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <7cf103f8-d100-8ecc-24c0-4dad0b99578a@gmail.com>
Subject: Re: prehistory branch (was: patching suffixes(7) (was: groff
 1.23.0.rc2 status report))
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
 <20221219165900.dfgjj5spciy4cqlt@illithid>
 <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
 <f6a144a8-0c27-c523-718b-c98f09e44e07@gmail.com>
In-Reply-To: <f6a144a8-0c27-c523-718b-c98f09e44e07@gmail.com>

--------------IYpb60kNTWZo080r10cIboPT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W3NlbGYtY29ycmVjdGlvbl0NCg0KT24gMTIvMTkvMjIgMjA6NTQsIEFsZWphbmRybyBDb2xv
bWFyIHdyb3RlOg0KPiANCj4gDQo+IE9uIDEyLzE5LzIyIDIwOjEwLCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4+IEJUVywgSSBhZ3JlZSB3aXRoIHlvdSB0aGF0IHRoZSByZXZlcnNl
ZCBoaXN0b3J5IGlzIGEgYml0IHdlaXJkIGFuZCBjb25mdXNpbmcuICANCj4+IEkgdGhvdWdo
dCBvZiBhIG5ldyBtZXRob2QgdGhhdCB3b3VsZCBjb25uZWN0IGJvdGggaGlzdG9yaWVzIHdo
aWxlIGtlZXBpbmcgYSANCj4+IGZvcndhcmQgaGlzdG9yeToNCj4+DQo+PiBBIHNlcGFyYXRl
IG9ycGhhbiBicmFuY2ggaW4gbm9ybWFsIG9yZGVyLCBzdGFydGluZyBhdCAxLjAsIHdoaWNo
IGVuZHMgYXQgMS43MC4gDQo+PiBBbmQgdGhlbiBnaXQgYWxsb3dzIG1lcmdpbmcgb3JwaGFu
IGJyYW5jaGVzLCBzbyBJIGNhbiBjcmVhdGUgYSBtZXJnZSBjb21taXQgDQo+PiBiZXR3ZWVu
IGJvdGggMS43MCBjb21taXRzLCB3aGljaCBvZiBjb3Vyc2UgaXMgYSBuby1vcCwgYnV0IG9u
ZSB0aGF0IHRlbGxzIGdpdCANCj4+IHdoZXJlIGFuZCBob3cgdGhlc2UgYnJhbmNoZXMgam9p
bi4NCj4gDQo+IEl0IHdhcyBlYXN5IHRvIHJldmVyc2UgdGhlIGhpc3RvcnkuwqAgQWZ0ZXIg
cmVuYW1pbmcgdGhlIG9sZCBwcmVoaXN0b3J5IGJyYW5jaCB0byANCj4gcHJlaGlzdG9yeS1i
YWNrd2FyZHMsIGFuZCBjcmVhdGluZyBhbiBvcnBoYW4gYnJhbmNoLCBhbmQgbWFudWFsbHkg
cGlja2luZyB0aGUgDQo+IGZpcnN0IHR3byBjb21taXRzIHRvIHNlZSBob3cgaXQgd29ya3Mg
KHRodXMgdGhlIHRhaWwoMSkgaW52b2thdGlvbiksIGl0J3MgDQo+IGF1dG9tYXRlZCBhczoN
Cj4gDQo+ICQgZ2l0IGxvZyBwcmVoaXN0b3J5LWJhY2t3YXJkcyBcDQo+ICDCoCB8IGdyZXAg
XmNvbW1pdCBcDQo+ICDCoCB8IGN1dCAtZjIgLWQnICcgXA0KPiAgwqAgfCB0YWlsIC1uKzMg
XA0KPiAgwqAgfCB3aGlsZSByZWFkIGhhc2g7IGRvDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqAg
Z2l0IGNoZWNrb3V0ICRoYXNoIC0tIC4gXA0KPiAgwqDCoMKgwqDCoMKgICYmIGdpdCBjb21t
aXQgLS1yZXVzZS1tZXNzYWdlPSRoYXNoOw0KPiAgwqAgZG9uZTsNCj4gDQo+IEFuZCBhZnRl
ciB0aGUgbWVyZ2UsIHdlIGhhdmUgc29tZXRoaW5nIHdpdGggd2hpY2ggSSdtIHF1aXRlIGhh
cHB5OiBjb25uZWN0ZWQgDQo+IGZvcndhcmQgaGlzdG9yaWVzLg0KPiANCg0KVGhhdCBzY3Jp
cHQgd2FzIGEgYml0IGJ1Z2d5LiAgVGhlIGdvb2Qgb25lIGlzOg0KDQokIGdpdCBsb2cgcHJl
aGlzdG9yeS1iYWNrd2FyZHMgXA0KICAgfCBncmVwIF5jb21taXQgXA0KICAgfCBjdXQgLWYy
IC1kJyAnIFwNCiAgIHwgd2hpbGUgcmVhZCBoYXNoOyBkbw0KICAgICAgICAgICBybSAtcmYg
KjsNCiAgICAgICAgICAgZ2l0IGNoZWNrb3V0ICRoYXNoIC0tIC4gXA0KICAgICAgICAmJiBn
aXQgYWRkIC4gXA0KICAgICAgICAmJiBnaXQgY29tbWl0IC0tcmV1c2UtbWVzc2FnZT0kaGFz
aDsNCiAgIGRvbmU7DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------IYpb60kNTWZo080r10cIboPT--

--------------Cs8Tscsxj3y620K5x9vnOVV2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOgxA8ACgkQnowa+77/
2zKy9w//XEGknOX3u1vq7wwiBaFf7quZjD5LGa8daCAfMywVBOr3fAX8kr+E6V6n
1EaxQ4YX2hYL1biyZQkFIB5d8U7yOND1Eab8mJ7zSGNiqX8Bkb5M4CZw4LuPe8wb
b8re02eIY2jgeeejeHmG0Img93L+Untui/PJXIIU+KDtJTWzjdu+7UGkbv3DMPKF
Or28VctmTN20AuedS0RlnJxqK+/wuldSeFLPN5oGBGnnPydFB+fsYJ3kJQbOX+Ng
Wa6Ke6jm/nB45SqO2jHXNWc8UY+DVIovTsQqE6i/ME6qHeb3evwMRczpMspegKzi
SOdQmb4FzO0XxAe2l9eqq9Efdbc+WEcx3mDlaVn6iY6wv3K+lgTS/dTrm4aC3Vss
a1bO5BqWheQt9WE/i3Z8fqkjAsMr2jgfVaUjUIB6Boxgt0EfsfxolBW+JFYeC07H
vnY2+YrXSRyFIH1av7YMQ+k7/nqvzpZtifHcYGkGbNp/F+uQMbiMxXzleuBAh3PI
nMmGoi2KH7E4y2vw50MkdZCYg4iUpLd+Tkgx+rjm27zJGZtQss/UXIP5sl0OjZyL
QRfEmlCJ1svEVh0ft3FvPFVokzGn2xJ6Ee5cP3G6hIxssSClQQjtRs/fF982s80w
2tH0Y9rUHwDSM26Nk2d+buUrpdNFa0BnvFYLlfkaKxSTOnPNAhc=
=yhIb
-----END PGP SIGNATURE-----

--------------Cs8Tscsxj3y620K5x9vnOVV2--
