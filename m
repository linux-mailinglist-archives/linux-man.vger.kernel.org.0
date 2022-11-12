Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D6C462699E
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 14:40:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231404AbiKLNkO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 08:40:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230383AbiKLNkO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 08:40:14 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBA5F13FAC
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 05:40:12 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id a11-20020a05600c2d4b00b003cf6f5fd9f1so4767788wmg.2
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 05:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fovN5kG5Jzh16XAsZ40IWD/uIA1w+mpX3BAWflS8Szk=;
        b=ALUJov4A3hmyQb6rQ/1wtyzVTL0YpAJHq9ju5D+4xCPg3Wl5ipDfqzLyOcTZ/iotrI
         R2+0BG2XuGOvqlBjbL5hBKp1IDBJIBG2j5HoEbRhLKdWkjvBKFz/TVpP/VkKtzcw68vq
         FpeywnpnBHnr1RbFG9hhk3ez0sH0Xw4A/fQhLjtgwlokGQ+dyoxyqLLWt+AWiXMwNGeO
         E5FgQxJSSQ8t2w6wvdwBUGp2MfHEihMyQDsQY8gNvpwXWWW88qhmKonbmkQQ3SVXQ5Ft
         XVcfmLHAbEUhfeTnfwfPNybFHYXP8oRsnHcYD4hTFnoVUJh85YQHA5HaYZ2rR0M5PkcV
         UkDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fovN5kG5Jzh16XAsZ40IWD/uIA1w+mpX3BAWflS8Szk=;
        b=6g2wNrrAeXaEUKJKhJ2OnDeGbtMlyOZ1dBbnTNahGmwsgArEkvfGRkEfSSXNGx6k+P
         QAQlGZQQCofWoi0ZW2Ct773kRcCqHEgS2BKh0kTP2I57L2Kn3kGBZsQkIb3jtkUHqeyv
         kNSDNZD/8mHV8ZiHvJ7uqlnujwTiJBQBY2DY8C2bjHsyLwvUsXuEIOfAwCdTTvYbkwTL
         XvnukGuOvKC1MgqXoOH4zrzRuvdDJhtr+jkpl3X8OpBR+qacRSUy7ii2sNtK1zjOKKSC
         pvljs17NTjEmCxIPyfon9hvkGKAiuKeH4jLsIjW4jKLcW0B0rARvK5IG0EbybzIdwJyz
         NVhw==
X-Gm-Message-State: ANoB5pnFsOjv2PJvzt661t/PzV46O/Se3fgAMC47MXNkPmG/1DUR1QLX
        1yb2MMSNmNUJ5J7h9dPXThaKIGMaPp0=
X-Google-Smtp-Source: AA0mqf4+qUAH0Th2UOew7dAB+df+yJkMBQP9IdsQanWSK78v8y/Su56aXf0UoplVM9svohL/TPEfEQ==
X-Received: by 2002:a05:600c:35ca:b0:3cf:a343:9a28 with SMTP id r10-20020a05600c35ca00b003cfa3439a28mr3912237wmq.186.1668260411017;
        Sat, 12 Nov 2022 05:40:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l26-20020a05600c2cda00b003cf774c31a0sm12784390wmc.16.2022.11.12.05.40.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 05:40:10 -0800 (PST)
Message-ID: <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
Date:   Sat, 12 Nov 2022 14:40:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------a4y4PoBhN0ISyCw2aPiGIk1f"
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
--------------a4y4PoBhN0ISyCw2aPiGIk1f
Content-Type: multipart/mixed; boundary="------------d7eiKsy0pboW89QGbQa3NiCL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
In-Reply-To: <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>

--------------d7eiKsy0pboW89QGbQa3NiCL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMS8xMi8yMiAxNDowMywgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBTYXQsIDEyIE5vdiAyMDIyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgR2NjIHdyb3Rl
Og0KPiANCj4+PiBzdHJ1Y3QgcyB7IGludCBhOyB9Ow0KPj4+IHZvaWQgZihpbnQgYSwgaW50
IGJbKChzdHJ1Y3QgcykgeyAuYSA9IDEgfSkuYV0pOw0KPj4NCj4+IElzIGl0IHJlYWxseSBh
bWJpZ3VvdXM/ICBMZXQncyBzaG93IHNvbWUgY3VycmVudGx5LXZhbGlkIGNvZGU6DQo+IA0K
PiBXZWxsLCBJIHN0aWxsIGRvbid0IGtub3cgd2hhdCB0aGUgc3ludGF4IGFkZGl0aW9uIHlv
dSBwcm9wb3NlIGlzLiAgSXMgaXQNCj4gDQo+IHBvc3RmaXgtZXhwcmVzc2lvbiA6IC4gaWRl
bnRpZmllcg0KDQpJJ2xsIHRyeSB0byBleHBsYWluIGl0IGluIHN0YW5kYXJkZWVzZSwgYnV0
IEknbSBub3Qgc3VyZSBpZiBJJ2xsIGdldCBpdCByaWdodCwgDQpzbyBJJ2xsIGFjY29tcGFu
eSBpdCB3aXRoIHBsYWluIEVuZ2xpc2guDQoNCk1heWJlIE1hcnRpbiBjYW4gaGVscC4NCg0K
U2luY2UgaXQncyB0byBiZSB1c2VkIGFzIGFuIHJ2YWx1ZSwgbm90IGFzIGEgbHZhbHVlLCBJ
IGd1ZXNzIGEgDQpwb3N0Zml4LWV4cHJlc3Npb24gd291bGRuJ3QgYmUgdGhlIHJpZ2h0IG9u
ZS4NCg0KPiANCj4gKHdpdGggYSBzcGVjaWFsIHJ1bGUgYWJvdXQgaG93IHRoZSBpZGVudGlm
aWVyIGlzIGludGVycHJldGVkLCBkaWZmZXJlbnQNCj4gZnJvbSB0aGUgbm9ybWFsIHNjb3Bl
IHJ1bGVzKT8gIElmIHNvLCB0aGVuICIuYSA9IDEiIGNvdWxkIGVpdGhlciBtYXRjaA0KPiBh
c3NpZ25tZW50LWV4cHJlc3Npb24gZGlyZWN0bHkgKGFzc2lnbmluZyB0byB0aGUgcG9zdGZp
eC1leHByZXNzaW9uICIuYSIpLg0KDQpObywgYXNzaWduaW5nIHRvIGEgZnVuY3Rpb24gcGFy
YW1ldGVyIGZyb20gd2l0aGluIGFub3RoZXIgcGFyYW1ldGVyIGRlY2xhcmF0aW9uIA0Kd291
bGRuJ3QgbWFrZSBzZW5zZS4gIFRoZXkgc2hvdWxkIGJlIHJlYWRvbmx5LiAgU2lkZSBlZmZl
Y3RzIHNob3VsZCBiZSANCmZvcmJpZGRlbiwgSSB0aGluay4NCg0KPiBPciBpdCBjb3VsZCBt
YXRjaCBkZXNpZ25hdGlvbltvcHRdIGluaXRpYWxpemVyLCB3aGVyZSAiLmEiIGlzIGENCj4g
ZGVzaWduYXRvci4gIEFuZCBhcyBJJ3ZlIG5vdGVkIG1hbnkgdGltZXMgaW4gZGlzY3Vzc2lv
bnMgb2YgQzJ4IHByb3Bvc2Fscw0KPiBvbiB0aGUgV0cxNCByZWZsZWN0b3IsIGlmIHNvbWUg
c2VxdWVuY2Ugb2YgdG9rZW5zIGNhbiBtYXRjaCB0aGUgc3ludGF4IGluDQo+IG1vcmUgdGhh
biBvbmUgd2F5LCB0aGVyZSBhbHdheXMgbmVlZHMgdG8gYmUgZXhwbGljaXQgbm9ybWF0aXZl
IHRleHQgdG8NCj4gZGlzYW1iaWd1YXRlIHRoZSBpbnRlbmRlZCBwYXJzZSAtIGl0J3Mgbm90
IGVub3VnaCB0aGF0IG9uZSBwYXJzZSBtaWdodA0KPiBsZWFkIGxhdGVyIHRvIGEgdmlvbGF0
aW9uIG9mIHNvbWUgb3RoZXIgY29uc3RyYWludCAobm90IHRoYXQgZWl0aGVyIHBhcnNlDQo+
IGxlYWRzIHRvIGEgY29uc3RyYWludCB2aW9sYXRpb24gaW4gdGhpcyBjYXNlKS4NCj4gDQo+
IE9yIGlzIHRoZSBzeW50YXgNCj4gDQo+IGFycmF5LWRlY2xhcmF0b3IgOiBkaXJlY3QtZGVj
bGFyYXRvciBbIC4gYXNzaWdubWVudC1leHByZXNzaW9uIF0NCg0KTm90IGdvb2QgZWl0aGVy
LiAgVGhlICcuJyBzaG91bGQgcHJlZml4IHRoZSBpZGVudGlmaWVyLCBub3QgdGhlIGV4cHJl
c3Npb24uICBTbywgDQpmb3IgZXhhbXBsZSwgeW91IHdvdWxkIGhhdmU6DQoNCiAgICAgICAg
dm9pZCAqYnNlYXJjaChjb25zdCB2b2lkIGtleVsuc2l6ZV0sIGNvbnN0IHZvaWQgYmFzZVsu
c2l6ZSAqIC5ubWVtYl0sDQogICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IG5tZW1iLCBz
aXplX3Qgc2l6ZSwNCiAgICAgICAgICAgICAgICAgICAgICBpbnQgKCpjb21wYXIpKGNvbnN0
IHZvaWQgWy5zaXplXSwgY29uc3Qgdm9pZCBbLnNpemVdKSk7DQoNClRoYXQncyB0YWtlbiBm
cm9tIHRoZSBjdXJyZW50IG1hbnVhbCBwYWdlIGZyb20gZ2l0IEhFQUQuICBTZWUgJ2Jhc2Un
LCB3aGljaCBnZXRzIA0KaXRzIHNpemUgZnJvbSB0aGUgbXVsdGlwbGljYXRpb24gb2YgJ3Np
emUnIGFuZCAnbm1lbWInLg0KDQo+IA0KPiAod2l0aCBhcHByb3ByaWF0ZSB2YXJpYW50cyB3
aXRoIHN0YXRpYyBhbmQgdHlwZS1xdWFsaWZpZXItbGlzdCBhbmQgZm9yDQo+IGFycmF5LWFi
c3RyYWN0LWRlY2xhcmF0b3IgYXMgd2VsbCwgYW5kIHdpdGggZGlmZmVyZW50IGlkZW50aWZp
ZXINCj4gaW50ZXJwcmV0YXRpb24gcnVsZXMgaW5zaWRlIHRoZSBhc3NpZ25tZW50LWV4cHJl
c3Npb24pPyAgSWYgc28sIHRoZW4gdGhlcmUNCj4gYXJlIGJpZyBwcm9ibGVtcyBwYXJzaW5n
IFsgLiAoIGEgKSArICggYiApIF0sIHdoZXJlICdhJyBpcyBhIHR5cGVkZWYgbmFtZQ0KPiBp
biBhbiBvdXRlciBzY29wZSwgYmVjYXVzZSB0aGUgYXBwcm9wcmlhdGUgcGFyc2Ugd291bGQg
ZGVwZW5kIG9uIHdoZXRoZXINCj4gJ2EnIGlzIHNoYWRvd2VkIGJ5IGEgcGFyYW1ldGVyIC0g
dW5sZXNzIG9mIGNvdXJzZSB5b3UgYWRkIGFwcHJvcHJpYXRlDQo+IHdvcmRpbmcgbGlrZSB0
aGF0IHByZXNlbnQgaW4gc29tZSBwbGFjZXMgYWJvdXQgbm90IGJlaW5nIGFibGUgdG8gdXNl
IHRoaXMNCj4gc3ludGF4IHRvIHNoYWRvdyBhIHR5cGVkZWYgbmFtZS4NCj4gDQo+IE9yIGlz
IGl0IGp1c3QNCj4gDQo+IGFycmF5LWRlY2xhcmF0b3IgOiBkaXJlY3QtZGVjbGFyYXRvciBb
IC4gaWRlbnRpZmllciBdDQoNCkZvciB0aGUgaW5pdGlhbCBpbXBsZW1lbnRhdGlvbiwgaXQg
d291bGQgYmUsIEkgdGhpbmsuDQoNCj4gDQo+IHdoaWNoIG1pZ2h0IGF2b2lkIHNvbWUgb2Yg
dGhlc2UgcHJvYmxlbXMgYXQgdGhlIGV4cGVuc2Ugb2YgYmVpbmcgbGVzcw0KPiBleHByZXNz
aXZlPw0KDQpZZXMuDQoNCj4gDQo+IElmIHlvdSdyZSBwcm9wb3NpbmcgYSBDIHN5bnRheCBh
ZGRpdGlvbiwgeW91IGFsd2F5cyBuZWVkIHRvIGJlIGNsZWFyIGFib3V0DQo+IGV4YWN0bHkg
d2hhdCB0aGUgbmV3IGNhc2VzIGluIHRoZSBzeW50YXggd291bGQgYmUsIGFuZCBob3cgeW91
IHJlc29sdmUNCj4gYW1iaWd1aXRpZXMgd2l0aCBhbnkgb3RoZXIgZXhpc3RpbmcgcGFydCBv
ZiB0aGUgc3ludGF4LCBob3cgeW91IGludGVyYWN0DQo+IHdpdGggcnVsZXMgb24gc2NvcGVz
LCBuYW1lc3BhY2VzIGFuZCBsaW5rYWdlIG9mIGlkZW50aWZpZXJzLCBldGMuDQoNClllYWgs
IEknbGwgdHJ5Lg0KDQpJIHRoaW5rIHRoYXQgdGhlIGNvbXBsZXRlIGZlYXR1cmUgd291bGQg
YWxsb3cgJ2Rlc2lnbmF0b3InIHRvIGJlIHVzZWQgd2l0aGluIA0KdW5hcnktZXhwcmVzc2lv
bjoNCg0KdW5hcnktZXhwcmVzc2lvbjogZGVzaWduYXRvcg0KDQpTaW5jZSBzaXplb2YoZm9v
KSBpcyBhIHVuYXJ5LWV4cHJlc3Npb24gYW5kIHlvdSBjYW4ndCBhc3NpZ24gdG8gaXQsIEkn
bSBndWVzc2luZyANCnRoYXQgc2ltaWxhciBydWxlcyBjb3VsZCBiZSB1c2VkIGZvciAnLnNp
emUnLg0KDQoNClRoYXQgd291bGQgaGF2ZSB0aGUgZWZmZWN0IG9mIGFsbG93aW5nIGJvdGgg
ZmVhdHVyZXMgc3VnZ2VzdGVkIGJ5IE1hcnRpbjogYmVpbmcgDQphYmxlIHRvIHVzZWQgZGVz
aWduYXRvcnMgaW4gYm90aCBzdHJ1Y3R1cmVzIChhcyBkZW1vbnN0cmF0ZWQgaW4gbXkgbGFz
dCBlbWFpbCkgDQphbmQgZnVuY3Rpb24gcHJvdG90eXBlcyAoYXMgaW4gdGhlIHRoaW5nIHdl
J3JlIGRpc2N1c3NpbmcpLg0KDQpJIGhvcGUgSSBnb3QgaXQgcmlnaHQuICBJJ20gbm90IHVz
ZWQgdG8gbGV4aWNhbCBncmFtbWFyIHNvIG11Y2guDQoNCkNoZWVycywNCg0KQWxleA0KDQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------d7eiKsy0pboW89QGbQa3NiCL--

--------------a4y4PoBhN0ISyCw2aPiGIk1f
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNvojEACgkQnowa+77/
2zK5Qg//Zn30mwRJ9UaKBALBWq81omX6E9ue+jMVGVrWcMwPN9tRzd1iTWXev0uC
GKvUrRzpq3GYe8j0mrAAcbHkYvTI5sdaLjvpWs5s0lh44V1xvUg3inPr9V29Izmy
Qj/Pv+SQy4/mks0YQnFg8EVX9zP1TdQq4sGZ9LJRNGW/nc0m5BhPEI+/NlsZM8iQ
NUyKjHdgv5QDBJqcmArzXVaICLl5aCMVY88eRg8nTk7FoaYvLhG9QJHUuYni9in/
Ek78ITWy5v5dut/f9qbMZwrdaEyRu22gHuNCTICz/XPmz+FGYRGPpzUj9OXeXcg0
+Ix2DdL+lYrrLGlI5OiDxRm074bOx2FFY5Ga2pxKA1pDL66R+6OBl9lxZSKbqkAp
IgsBi3W2uUH0bsx98eaCSV++ZQGnLNA/DutQQ8Dx8CIRdJUgPzRTVJQbugoW5kKi
NocrQPezuXIz2o0sOFrYjJiyAKCgNTKBzE2YqZz5A/wYe6QMuOUALr/hplIJa/Y5
AYvaQiBRWx/+hRmNmFyNtquF7mqA4msoRQPKpgPrwRm6JQGIqrCd1BVdVXPczhQX
aZ/zDpAeKJh/aGPbvECnmm+mAgChkjLlDCRcNYDKU4u0b1Es5hJiCajjXRtheHMH
BkYUmjd7+4kABj/4FpcI/o+9Er5b45OC4SdANC0822hS9ZPubnw=
=22Wu
-----END PGP SIGNATURE-----

--------------a4y4PoBhN0ISyCw2aPiGIk1f--
