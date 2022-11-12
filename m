Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1CC162695F
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 13:34:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231814AbiKLMet (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 07:34:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231338AbiKLMes (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 07:34:48 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 496C69581
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 04:34:44 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id h10-20020a1c210a000000b003cfd7f339bdso345490wmh.0
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 04:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3vd8ArMLuR9xhTbsWNmR3/ETDZur0c7gtbfFQP/ES7M=;
        b=W8JGoh2XD4kXUZNPxYpyKuuOe2cTVAkVpr7Vt3OIunfotXvJ1n3wKsbqK3Qhafz+uA
         lEq9WBk+G0Ht2dXpr8736+RQLik7dSPhP9bsYa8qUWGT018xRa5dFjHWj/hFLrRWTHph
         ccFHp8WHku++RWB7H7aI/anylP2RZOjH+72m0isV39+NYbZ+dPVBmqiMVm6JWz+Er6mr
         ICGWqQ6R7WsurUedrhUeIFlh2Rovlfz+Y0haPcHirbTR/TArr5HC5tM+sRwT6cWO3zob
         JwxvwhR3KEAvSISA1Z4BrvqMLFAbCzrMGrWNwrM21WGXstwCDsAnD+u4rQSw0ag0vaDq
         cvFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3vd8ArMLuR9xhTbsWNmR3/ETDZur0c7gtbfFQP/ES7M=;
        b=WsZ+FxrQpTIssc6encDe7hVBbdjHMDBGNw0Q1ev+eBg32r5TcLsviGAC08tTyRWbIn
         FKvWR7/dU5qHJ8ROA5PsqZpPtRosqTVBSF1ykHQfXhx5GtZu1msmlCThITc7fk/LElOU
         UjlzlVhcqtaaz3kBY/oRiBAOnXdPns/sGhi24d5IQQv4yDhz3EVdI1okn7K21Mky0qtw
         6NJVePX2rCxR7rdILK5cdV1QBC0Z1R2oZkBLTEiAYxtZeFhQ2lrayba/tPsVH+7YWSCY
         86Fbazvowc8Vdv63fmmwLYoy72T7xjwt84emnkFMhC+ZgDyiOVVh8Zk86+pGlSOdWyaK
         EMfw==
X-Gm-Message-State: ANoB5pkhFiVTVWjSui0/bH4BpdhD3U6agwWoA8cGjU9u14m/znDpFIKj
        dHFXFz5xQanqW3j7GMehBAyOYPn0Lcs=
X-Google-Smtp-Source: AA0mqf7FkD7nWO4R7PiVCSCmwmfTED3ad8D0kz8YcXf9qIVj9c2nrzM1zLxkXItlpBBdxHYvAK2PpA==
X-Received: by 2002:a05:600c:d2:b0:3cf:68bb:f5b8 with SMTP id u18-20020a05600c00d200b003cf68bbf5b8mr3800251wmm.67.1668256482713;
        Sat, 12 Nov 2022 04:34:42 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f7-20020adfe907000000b0023677081f3asm4239088wrm.42.2022.11.12.04.34.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 04:34:41 -0800 (PST)
Message-ID: <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
Date:   Sat, 12 Nov 2022 13:34:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
To:     Joseph Myers <joseph@codesourcery.com>,
        Martin Uecker <uecker@tugraz.at>
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
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vjz0fEei2iBWLLFfa6bW4Avv"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vjz0fEei2iBWLLFfa6bW4Avv
Content-Type: multipart/mixed; boundary="------------zH94cMDx1Oph7Webahq831O6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>, Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
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
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
In-Reply-To: <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>

--------------zH94cMDx1Oph7Webahq831O6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMS8xMS8yMiAwMDoxOSwgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBUaHUsIDEwIE5vdiAyMDIyLCBNYXJ0aW4gVWVja2VyIHZpYSBHY2Mgd3JvdGU6DQo+
IA0KPj4gT25lIHByb2JsZW0gd2l0aCBXRzE0IHBhcGVycyBpcyB0aGF0IHBlb3BsZSBwdXQg
aW4gdG9vIG11Y2gsDQo+PiBiZWNhdXNlIHRoZSBvdmVyaGVhZCBpcyBzbyBoaWdoIGFuZCB0
aGUgc3RhbmRhcmQgaXMgbm90IHVwZGF0ZWQNCj4+IHZlcnkgb2Z0ZW4uICBJdCB3b3VsZCBi
ZSBiZXR0ZXIgdG8gYnVpbGQgc3VjaCBmZWF0dXJlIG1vcmUNCj4+IGluY3JlbWVudGFsbHks
IHdoaWNoIGNvdWxkIGJlIGRvbmUgbW9yZSBlYXNpbHkgd2l0aCBhIGNvbXBpbGVyDQo+PiBl
eHRlbnNpb24uICBPbmUgY291bGQgc3RhcnQgc3VwcG9ydGluZyBqdXN0IFsueF0gYnV0IG5v
dCBtb3JlDQo+PiBjb21wbGljYXRlZCBleHByZXNzaW9ucy4NCj4gDQo+IEV2ZW4gYSBjb21w
aWxlciBleHRlbnNpb24gcmVxdWlyZXMgdGhlIGxldmVsIG9mIGRldGFpbCBvZiBzcGVjaWZp
Y2F0aW9uDQo+IHRoYXQgeW91IGdldCB3aXRoIGEgV0cxNCBwYXBlciAoYW5kIHRoZSBsZXZl
bCBvZiB3b3JrIG9uIGZpbmRpbmcgYnVncyBpbg0KPiB0aGF0IHNwZWNpZmljYXRpb24pLCB0
byBhdm9pZCB0aGUgcHJvYmxlbSB3ZSd2ZSBoYWQgYmVmb3JlIHdpdGggdG9vIG1hbnkNCj4g
ZmVhdHVyZXMgYWRkZWQgaW4gR0NDIDIueCBkYXlzIHdoZXJlIGEgcG9vcmx5IGRlZmluZWQg
ZmVhdHVyZSBpcyAid2hhdGV2ZXINCj4gdGhlIGNvbXBpbGVyIGFjY2VwdHMiLg0KPiANCj4g
SWYgeW91IHVzZSAueCBhcyB0aGUgbm90YXRpb24gYnV0IGRvbid0IGxpbWl0IGl0IHRvIFsu
eF0sIHlvdSBoYXZlIGENCj4gY29tcGxldGVseSBuZXcgYW1iaWd1aXR5IGJldHdlZW4gb3Jk
aW5hcnkgaWRlbnRpZmllcnMgYW5kIG1lbWJlciBuYW1lcw0KPiANCj4gc3RydWN0IHMgeyBp
bnQgYTsgfTsNCj4gdm9pZCBmKGludCBhLCBpbnQgYlsoKHN0cnVjdCBzKSB7IC5hID0gMSB9
KS5hXSk7DQoNCklzIGl0IHJlYWxseSBhbWJpZ3VvdXM/ICBMZXQncyBzaG93IHNvbWUgY3Vy
cmVudGx5LXZhbGlkIGNvZGU6DQoNCg0Kc3RydWN0IHMgew0KCWludCBhOw0KfTsNCg0Kc3Ry
dWN0IHQgew0KCXN0cnVjdCBzIHM7DQoJaW50IGE7DQp9Ow0KDQp2b2lkIGYodm9pZCkNCnsN
CglzdHJ1Y3QgdCB4ID0gew0KCQkuYSA9IDEsDQoJCS5zID0gew0KCQkJLmEgPSAoKHN0cnVj
dCBzKSB7LmEgPSAxfSkuYSwNCgkJfSwNCgl9Ow0KfQ0KDQoNCkl0IGlzIGFtYmlndW91cyB0
byBhIGh1bWFuIHJlYWRlciwgYnV0IHRoYXQncyBhIHN1YmplY3RpdmUgdGhpbmcsIGFuZCBv
ZiBjb3Vyc2UgDQpzaGFkb3dpbmcgc2hvdWxkIGJlIGF2b2lkZWQgYnkgcHJvZ3JhbW1lcnMu
ICBIb3dldmVyLCBmb3IgYSBjb21waWxlciwgc2NvcGluZyANCmFuZCBzeW50YXggcnVsZXMg
c2hvdWxkIGJlIHVuYW1iaWd1b3VzLCBJIHRoaW5rLiAgSW4geW91ciBjb2RlIGV4YW1wbGUs
IEkgDQpiZWxpZXZlIGl0IGlzIHVuYW1iaWd1b3VzIHRoYXQgYm90aCAnLmEnIHJlZmVyIHRv
IHRoZSBzdHJ1Y3QgbWVtYmVyLg0KDQpCdXQgbWF5YmUgd2UncmUgbm90IGNvbnNpZGVyaW5n
IG1vcmUgY29tcGxleCBzaXR1YXRpb25zIHRoYXQgbWlnaHQgcmVhbGx5IGJlIA0KYW1iaWd1
b3VzIHRvIHRoZSBjb21waWxlciwgc28gYSBmaXJzdCByb3VuZCBvZiBzdXBwb3J0aW5nIG9u
bHkgWy5hXSB3b3VsZCBiZSBhIA0KZ29vZCBmaXJzdCBpbXBsZW1lbnRhdGlvbi4NCg0KPiAN
Cj4gd2hlcmUgaXQncyBuZXdseSBhbWJpZ3VvdXMgd2hldGhlciAiLmEgPSAxIiBpcyBhbiBh
c3NpZ25tZW50IHRvIHRoZQ0KPiBleHByZXNzaW9uICIuYSIgb3IgYSB1c2Ugb2YgYSBkZXNp
Z25hdGVkIGluaXRpYWxpemVyLg0KPiANCj4gKEkgdGhpbmsgdGhhdCBpZiB5b3UgYWRkIGFu
eSBzeW50YXggZm9yIHRoaXMsIEdOVSBWTEEgZm9yd2FyZCBkZWNsYXJhdGlvbnMNCj4gYXJl
IGNsZWFybHkgdG8gYmUgcHJlZmVycmVkIHRvIGludmVudGluZyBzb21ldGhpbmcgbmV3IGxp
a2UgWy54XSB3aGljaA0KPiBpbnRyb2R1Y2VzIGl0cyBvd24gcHJvYmxlbXMuKQ0KPiANCg0K
Q2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------zH94cMDx1Oph7Webahq831O6--

--------------vjz0fEei2iBWLLFfa6bW4Avv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNvktkACgkQnowa+77/
2zJFKQ//bYzZtWYKC+456RHm97erlq80gqkuTZ0QqUCPKXPPIUEyLfmq1utrB4NK
2YTVxV5gtveXt+gA24yiWV88ZwnFp0B+rZ7xV/bSdT+B3zoQDc8g2tZyF7ASNq1I
513UNxOH1R1bC6HJyNap75RLt17EgMOroc8qTaQuTVIt7iYrH1ntP2Y2IrFrBEuu
JZ38VOx8KqT4NcMkUFajt2Bz9RiR2S0seWeW6BInZbHIz3tBo15vmvcayAhHzpCt
Rw1Uo8FFbf74FjMp86KvGqnxiwZDioHNNTOmoznoCsMwWq4RvuW7GBxxQ6iHHqkm
Vv2TAsmpu8egkzN4gxUhOQF2HZDNajbbQMzAJ5g6FooYuwYuEIJleLz5voK9bTrs
VszqQHMiNSQesLcYeHVdLijEVzvjUNcAcb8h8VT6TCp9UiuOQPJAnvSUKjaoiKCH
oSssz7QnD6s4EL1T9LfbOztUw8ZHblYtqXdP7yl539LSHyYuULbcpz9DM4gxntxF
1p9dmk2YZo4rijxbpa/lAdT8m8zUk3yGB2x5FSKcwr2EAGY1IBpwuVeoKeIcuTLk
syjmIKxY98P49lUf9GhcRZfoinoKLFtvK/bSprRABmsUz2294BrtJdoBxxexc0OE
/iNJ8Pyqor/j3lVHK4KEX7IC4PmaQlD6Q0UPewFgZOo5d+xptHw=
=NJs+
-----END PGP SIGNATURE-----

--------------vjz0fEei2iBWLLFfa6bW4Avv--
