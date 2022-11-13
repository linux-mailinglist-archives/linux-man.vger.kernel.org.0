Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 066F0626FAC
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 14:19:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235156AbiKMNTh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 08:19:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233029AbiKMNTg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 08:19:36 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9372BB855
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 05:19:35 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id o30so5591101wms.2
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 05:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fs614nzfTCdi6zdT5CtV9dJSrZ5e8eqz8Xgh1y2Ltpw=;
        b=DS3JQ+iJltasSDvYa8NEilxlXQ3W6i30FFvQtflFnlIZ7V+xCSPVcsyKANPFM1bNq7
         Wso3IOJegPmIsj4lrHRXl+2c4jMM+b8oao1i6LHdG5MeDVaDWUEAtDpreI7AGnLDzmJ3
         OhkMehInIzSHUSLSL7hcJWMtVgBuCtz+DPkOZ810h6p6qgT0+bwbIcWHcBIk33IhzfYj
         AwQBz4SyGhT34WoKOUuMiJgR4UfM8MqxrmBQhQP2+IWEWDehm8yYZpFlkatz5KSpP8fD
         +oew6Iz8lFNGP3t0wsSSCinweF+QKC/zzEytLwnvSQCifpikhh6HTL2eKocTevXP3d9N
         Q2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fs614nzfTCdi6zdT5CtV9dJSrZ5e8eqz8Xgh1y2Ltpw=;
        b=1pg9e/EMf1apxLeAB2gTHtaLDCPI5h0Fu2+lV8GTcTRmExsl4FxeB2Rr2jnqyHFtmm
         sOlgaKcsc3XhwjySVxkuzdBdHODSr5yaoK9lRvKnyBgufTahImC7c2Sx6yylJL790+Lx
         g+B9lm1NLxobnYZdplXcVz2C1y0Z4WF9jw0L8ANeDHkxPuu3QeazQ4PO/PrE5tlxelOq
         QUbyFipw8S5ax9njQN5mcXn6GbUhXX+smwEeENtwJyBmSJaKFwJZD62hABJuNHao/utm
         2jNEGSzW0Qkts1hnTk0SxDvwNPA690wJIqrk1yoQDiGC3tXr5xyLAao+ghzrL/Q9gTRM
         3s+g==
X-Gm-Message-State: ANoB5pnHzAhTnTMVh6D4gD15Pbx4mkWCGwvvZvFMiUoOJifSU8H35Bus
        vgs8oG+3Ypo1L4ReE9m7k3M=
X-Google-Smtp-Source: AA0mqf4e/8ClM+J0wp55lRL4ZXUpuqIzWYSQv40Rk5qMjkdmCltEwwPh0Qg0QfEYQw6/vcD6kpqrnA==
X-Received: by 2002:a05:600c:a54:b0:3cf:a18d:39a4 with SMTP id c20-20020a05600c0a5400b003cfa18d39a4mr5606706wmq.125.1668345573937;
        Sun, 13 Nov 2022 05:19:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h8-20020a05600c2ca800b003b4a699ce8esm15589974wmc.6.2022.11.13.05.19.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 05:19:33 -0800 (PST)
Message-ID: <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
Date:   Sun, 13 Nov 2022 14:19:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HNHEr1MJyD1Yl0K03IpK1y9x"
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
--------------HNHEr1MJyD1Yl0K03IpK1y9x
Content-Type: multipart/mixed; boundary="------------Kswth0kWlVIH28Eu60q60ZVJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
In-Reply-To: <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>

--------------Kswth0kWlVIH28Eu60q60ZVJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluIQ0KDQpPbiAxMS8xMi8yMiAxNjo1NiwgTWFydGluIFVlY2tlciB3cm90ZToN
Cj4gQW0gU2Ftc3RhZywgZGVuIDEyLjExLjIwMjIsIDE0OjU0ICswMDAwIHNjaHJpZWIgSm9z
ZXBoIE15ZXJzOg0KPj4gT24gU2F0LCAxMiBOb3YgMjAyMiwgQWxlamFuZHJvIENvbG9tYXIg
dmlhIEdjYyB3cm90ZToNCj4+DQo+Pj4gU2luY2UgaXQncyB0byBiZSB1c2VkIGFzIGFuIHJ2
YWx1ZSwgbm90IGFzIGEgbHZhbHVlLCBJIGd1ZXNzIGENCj4+PiBwb3N0Zml4LWV4cHJlc3Np
b24gd291bGRuJ3QgYmUgdGhlIHJpZ2h0IG9uZS4NCj4+DQo+PiBTZXZlcmFsIGZvcm1zIG9m
IHBvc3RmaXgtZXhwcmVzc2lvbiBhcmUgb25seSBydmFsdWVzLg0KPj4NCj4+Pj4gKHdpdGgg
YSBzcGVjaWFsIHJ1bGUgYWJvdXQgaG93IHRoZSBpZGVudGlmaWVyIGlzIGludGVycHJldGVk
LCBkaWZmZXJlbnQNCj4+Pj4gZnJvbSB0aGUgbm9ybWFsIHNjb3BlIHJ1bGVzKT8gIElmIHNv
LCB0aGVuICIuYSA9IDEiIGNvdWxkIGVpdGhlciBtYXRjaA0KPj4+PiBhc3NpZ25tZW50LWV4
cHJlc3Npb24gZGlyZWN0bHkgKGFzc2lnbmluZyB0byB0aGUgcG9zdGZpeC1leHByZXNzaW9u
ICIuYSIpLg0KPj4+DQo+Pj4gTm8sIGFzc2lnbmluZyB0byBhIGZ1bmN0aW9uIHBhcmFtZXRl
ciBmcm9tIHdpdGhpbiBhbm90aGVyIHBhcmFtZXRlcg0KPj4+IGRlY2xhcmF0aW9uIHdvdWxk
bid0IG1ha2Ugc2Vuc2UuICBUaGV5IHNob3VsZCBiZSByZWFkb25seS4gIFNpZGUgZWZmZWN0
cw0KPj4+IHNob3VsZCBiZSBmb3JiaWRkZW4sIEkgdGhpbmsuDQo+Pg0KPj4gU3VjaCBhc3Np
Z25tZW50cyBhcmUgYWxyZWFkeSBhbGxvd2VkLiAgSW4gYSBmdW5jdGlvbiBkZWZpbml0aW9u
LCB0aGUgc2lkZQ0KPj4gZWZmZWN0cyAoaW5jbHVkaW5nIGluIHNpemUgZXhwcmVzc2lvbnMg
Zm9yIGFycmF5IHBhcmFtZXRlcnMgYWRqdXN0ZWQgdG8NCj4+IHBvaW50ZXJzKSB0YWtlIHBs
YWNlIGJlZm9yZSBlbnRyeSB0byB0aGUgZnVuY3Rpb24gYm9keS4NCj4+DQo+PiBBbmQsIGlu
IGFueSBjYXNlLCBpZiB5b3UgZGlkIGhhdmUgYSBjb25zdHJhaW50IGRpc2FsbG93aW5nIHN1
Y2gNCj4+IGFzc2lnbm1lbnRzLCBpdCB3b3VsZG4ndCBzdWZmaWNlIGZvciBzeW50YWN0aWMg
ZGlzYW1iaWd1YXRpb24gKHNlZSB0aGUNCj4+IHByZXZpb3VzIHBvaW50IEkgbWFkZSBhYm91
dCB0aGF0OyBJIGhhdmUgc29tZSByb3VnaCBub3RlcyB0b3dhcmRzIGEgV0cxNA0KPj4gcGFw
ZXIgb24gc3ludGFjdGljIGRpc2FtYmlndWF0aW9uLCBidXQgaGF2ZW4ndCBjb252ZXJ0ZWQg
dGhlbSBpbnRvIGENCj4+IGNvaGVyZW50IHBhcGVyKS4NCj4gDQo+IE15IGlkZWEgd2FzIHRv
IG9ubHkgYWxsb3cNCj4gDQo+IGFycmF5LWRlY2xhcmF0b3IgOiBkaXJlY3QtZGVjbGFyYXRv
ciBbIC4gaWRlbnRpZmllciBdDQo+IA0KPiBhbmQgb25seSBmb3IgcGFyYW1ldGVyIChub3Qg
bmVzdGVkIGluc2lkZSBzdHJ1Y3RzIGRlY2xhcmVkDQo+IGluIHBhcmFtZXRlciBsaXN0KSBh
cyBhIGZpcnN0IHN0ZXAgYmVjYXVzZSBpdCBzZWVtcyB0aGlzDQo+IHdvdWxkIGV4Y2x1ZGUg
YWxsIGRpZmZpY3VsdCBjYXNlcy4NCj4gDQo+IEJ1dCBpZiB3ZSBuZWVkIHRvIGFsbG93IG1v
cmUgY29tcGxpY2F0ZWQgZXhwcmVzc2lvbnMsIHRoZW4NCj4gaXQgc3RhcnRzIGdldHRpbmcg
bW9yZSBjb21wbGljYXRlZC4NCg0KQWhoLCBJIGd1ZXNzIG15IHdvcmsgaW4gZG9jdW1lbnRp
bmcgdGhlIG1hbi1wYWdlcyBwcm90b3R5cGVzIGdvdCBtZSB0aGlua2luZyBvZiANCnRob3Nl
IGV4dGVuc2lvbnMgdG8gdGhlIGlkZWEuICBJIGRvbid0IHJlbWVtYmVyIGFsbCB0aGUgZGV0
YWlscyA6KQ0KDQo+IA0KPiBPbmUgY291bGQgY291bGQgYWxsb3cgbW9yZSBnZW5lcmljIGV4
cHJlc3Npb25zLCBhbmQNCj4gc3BlY2lmeSB0aGF0IHRoZSAuaWRlbnRpZmllciByZWZlcnMg
dG8gYQ0KPiBwYXJhbWV0ZXIgaW4NCj4gdGhlIG5lYXJlc3QgbGV4aWNhbGx5IGVuY2xvc2lu
ZyBwYXJhbWV0ZXIgbGlzdCBvcg0KPiBzdHJ1Y3QvdW5pb24uDQo+IA0KPiBUaGVuDQo+IA0K
PiB2b2lkIGZvbyhzdHJ1Y3QgYmFyIHsgaW50IHg7IGNoYXIgY1sueF0gfSBhLCBpbnQgeCk7
DQo+IA0KPiB3b3VsZCBub3QgYmUgYWxsb3dlZCAod2hpY2ggaXMgZ29vZCBiZWNhdXNlIHRo
ZW4gd2UNCj4gY291bGQgbGF0ZXIgdXNlIHRoZSBzeW50YXggYWxzbyBpbnNpZGUgc3RydWN0
cykuIElmDQo+IHdlIGFwcGx5IHNjb3BpbmcgcnVsZXMsIHRoZSBmb2xsb3dpbmcgd291bGQg
d29yazoNCj4gDQo+IHN0cnVjdCBiYXIgeyBpbnQgeTsgfTsNCj4gdm9pZCBmb28oY2hhciBw
Wygoc3RydWN0IGJhcil7IC55ID0gLnggfSkueV0sIGludCB4KTsNCg0KTWFrZXMgc2Vuc2Uu
DQoNCj4gDQo+IEJ1dCBub3Q6DQo+IA0KPiBzdHJ1Y3QgYmFyIHsgaW50IHk7IH07DQo+IHZv
aWQgZm9vKGNoYXIgcFsoKHN0cnVjdCBiYXIpeyAueSA9IC55IH0pLnldLCBpbnQgeSk7DQoN
CkFsdGhvdWdoIGl0IGNsZWFybHkgaXMgbm9uc2Vuc2UsIEknbSBub3Qgc3VyZSBJJ2QgbWFr
ZSBpdCBhIGNvbnN0cmFpbnQgDQp2aW9sYXRpb24sIGJ1dCByYXRoZXIgVW5kZWZpbmVkIEJl
aGF2aW9yLiAgSG93IGlzIGl0IGRpZmZlcmVudCB0aGFuIHRoaXM/Og0KDQokIGNhdCBmb28u
Yw0KaW50IG1haW4odm9pZCkNCnsNCglpbnQgaSA9IGk7DQoJcmV0dXJuIGk7DQp9DQoNCg0K
JCBnY2MgLS12ZXJzaW9uIHwgaGVhZCAtbjENCmdjYyAoRGViaWFuIDEyLjIuMC05KSAxMi4y
LjANCiQgZ2NjIC1XYWxsIC1XZXh0cmEgLVdlcnJvciBmb28uYw0KJA0KDQokIGNsYW5nIC0t
dmVyc2lvbiB8IGhlYWQgLW4xDQpEZWJpYW4gY2xhbmcgdmVyc2lvbiAxNC4wLjYNCiQgY2xh
bmcgLVdhbGwgLVdleHRyYSAtV2Vycm9yIGZvby5jDQpmb28uYzozOjEwOiBlcnJvcjogdmFy
aWFibGUgJ2knIGlzIHVuaW5pdGlhbGl6ZWQgd2hlbiB1c2VkIHdpdGhpbiBpdHMgb3duIA0K
aW5pdGlhbGl6YXRpb24gWy1XZXJyb3IsLVd1bmluaXRpYWxpemVkXQ0KICAgICAgICAgaW50
IGkgPSBpOw0KICAgICAgICAgICAgIH4gICBeDQoxIGVycm9yIGdlbmVyYXRlZC4NCg0KDQpC
VFcsIEkganVzdCBmcmVha2VkIG91dCB0aGF0IEdDQyBjYW4ndCBjYXRjaCB0aGlzIHRyaXZp
YWwgYnVnLiAgU2hvdWxkIEkgb3BlbiBhIA0KYnVnIHJlcG9ydD8NCg0KPiANCj4gDQo+IEJ1
dCB0aGVyZSBhcmUgbm90IG9ubHkgc3ludGFjdGljYWwgcHJvYmxlbXMsIGJlY2F1c2UNCj4g
YWxzbyB0aGUgdHlwZSBvZiB0aGUgcGFyYW1ldGVyIG1pZ2h0IGJlY29tZSByZWxldmFudA0K
PiBhbmQgdGhlbiB5b3UgY2FuIGdldCBjaXJjdWxhciBkZXBlbmRlbmNpZXM6DQo+IA0KPiB2
b2lkIGZvbyhjaGFyICgqYSlbc2l6ZW9mICouYl0sIGNoYXIgKCpiKVtzaXplb2YgKi5hXSk7
DQoNClRoaXMgc2VlbXMgdG8gYmUgYSBkaWZmaWN1bHQgc3RvbmUgaW4gdGhlIHJvYWQuDQoN
Cj4gDQo+IEkgYW0gbm90IHN1cmUgd2hhdCB3b3VsZCB0aGUgYmVzdCB3YXkgdG8gZml4IGl0
LiBPbmUNCj4gY291bGQgc3BlY2lmaXkgdGhhdCBwYXJhbWV0ZXJzIHJlZmVycmVkIHRvIGJ5
DQo+IHRoZSAuaWRlbnRpZmVyIHN5bnRheCBtdXN0IG9mIHNvbWUgaW50ZWdlciB0eXBlIGFu
ZA0KPiB0aGF0IHRoZSBzdWItZXhwcmVzc2lvbiAuaWRlbnRpZmVyIGlzIGFsd2F5cw0KPiBj
b252ZXJ0ZWQgdG8gYSAnc2l6ZV90Jy4NCg0KVGhhdCBtYWtlcyBzZW5zZSwgYnV0IHRoZW4g
b3Zlcm5pZ2h0IHNvbWUgcXVpdGUgdXNlZnVsIHRoaW5nIGNhbWUgdG8gbXkgbWluZCANCnRo
YXQgd291bGQgbm90IGJlIHBvc3NpYmxlIHdpdGggdGhpcyBsaW1pdGF0aW9uOg0KDQoNCjxo
dHRwczovL3NvZnR3YXJlLmNvZGlkYWN0LmNvbS9wb3N0cy8yODU5NDY+DQoNCmNoYXIgKg0K
c3RwZWNweShjaGFyIGRzdFsuZW5kIC0gLmRzdF0sIGNoYXIgKnNyYywgY2hhciBlbmRbMV0p
DQp7DQoJZm9yICgvKiB2b2lkICovOyBkc3QgPD0gZW5kOyBkc3QrKykgew0KCQkqZHN0ID0g
KnNyYysrOw0KCQlpZiAoKmRzdCA9PSAnXDAnKQ0KCQkJcmV0dXJuIGRzdDsNCgl9DQoJLyog
VHJ1bmNhdGlvbiBkZXRlY3RlZCAqLw0KCSplbmQgPSAnXDAnOw0KDQojaWYgIWRlZmluZWQo
TkRFQlVHKQ0KCS8qIENvbnN1bWUgdGhlIHJlc3Qgb2YgdGhlIGlucHV0IHN0cmluZy4gKi8N
Cgl3aGlsZSAoKnNyYysrKSB7fTsNCiNlbmRpZg0KDQoJcmV0dXJuIGVuZCArIDE7DQp9DQoN
Cg0Kc3RwZWNweSgpIGlzIGEgZnVuY3Rpb24gc2ltaWxhciB0byBzdHJsY2F0KDMpIHRoYXQg
Z2V0cyBhIHBvaW50ZXIgdG8gdGhlIGVuZCBvZiANCnRoZSBhcnJheSBpbnN0ZWFkIG9mIHRo
ZSBzaXplIG9mIHRoZSBidWZmZXIuICBUaGlzIGFsbG93cyBjaGFpbmluZyB3aXRob3V0IA0K
aGF2aW5nIHBlcmZvcm1hbmNlIGlzc3Vlc1sxXS4NCg0KWzFdOiA8aHR0cHM6Ly9lbi53aWtp
Y2hpcC5vcmcvd2lraS9zY2hsZW1pZWxfdGhlX3BhaW50ZXIlMjdzX2FsZ29yaXRobT4NCg0K
DQpNYXliZSBhbGxvd2luZyBpbnRlZ3JhbCB0eXBlcyBhbmQgcG9pbnRlcnMgd291bGQgYmUg
ZW5vdWdoLiAgSG93ZXZlciwgZm9yZXNlZWluZyANCnRoYXQgdGhlIF9MZW5ndGhvZigpIHBy
b3Bvc2FsIChCVFcsIHdoaWNoIHBhcGVyIHdhcyBpdD8pIHdpbGwgc3VjY2VlZCwgYW5kIA0K
Y29tYmluaW5nIGl0IHdpdGggdGhpcyBvbmUsIF9MZW5ndGhvZihwb2ludGVyKSB3b3VsZCBp
ZGVhbGx5IGdpdmUgdGhlIGxlbmd0aCBvZiANCnRoZSBhcnJheSwgc28gYWxsb3dpbmcgcG9p
bnRlcnMgd291bGQgY29uZmxpY3QuDQoNCk15IHNvbHV0aW9uIGlzIHRvIGRpc2FsbG93IHNp
emVvZigpIGFuZCBfTGVuZ3Rob2YoKSBvbiAuaWRlbnRpZmllci4gIFRoYXQgY291bGQgDQpi
ZSBkb25lIHNpbXBseSBieSBzYXlpbmcgdGhhdCB2YXJpYWJseS1tb2RpZmllZCB0eXBlcyAo
Vk1UKSBhcmUgaW5jb21wbGV0ZSB0eXBlcyANCnVudGlsIGltbWVkaWF0ZWx5IGFmdGVyIHRo
ZSBjb21tYSB0aGF0IGZvbGxvd3MgdGhlIHBhcmFtZXRlciBkZWNsYXJhdGlvbi4gDQpUaGVy
ZWZvcmUgaXQgd291bGQgYmUgYWxsb3dlZCBvbmx5IGluIHRoZSBzYW1lIHdheSBhcyBpdCBp
cyBhbGxvd2VkIHJpZ2h0IG5vdyANCndpdGggdGhlIG5vcm1hbCBzeW50YXggKGkuZS4sIGFm
dGVyIHRoZSBwYXJhbWV0ZXIgaGFzIGJlZW4gc2VlbikuDQoNCkJUVywgd2hhdCB3YXMgdGhl
IG51bWJlciBvZiB0aGUgbGF0ZXN0IHBhcGVyIGZvciBfTGVuZ3Rob2YoKSBhbmQgd2hhdCBo
YXBwZW5lZCANCnRvIGl0PyAgSSBndWVzcyBpdCdzIGxpa2VseSB0byBiZSBhZGRlZCB0byBD
M3gsIGlzbid0IGl0Pw0KDQpBbmQgYW5vdGhlciBCVFc6ICB0aGVyZSdzIHNvbWUga2luZCBv
ZiBjb25zaXN0ZW5jeSBpbiAoc29tZSkgcHJvamVjdHMgZm9yIG5hbWluZyANCnNpemVzLCBh
bmQgSSBoYXZlIHBlbmRpbmcgYSByZXZpZXcgb2YgdGhlIExpbnV4IG1hbi1wYWdlcyB0byBt
YWtlIGl0IGNvbnNpc3RlbnQgDQp0aGVyZSB0b28uDQoNClNlZSB0aGUgZm9sbG93aW5nIHRh
YmxlIG9mIHVzdWFsIGNvbnZlbnRpb25zOg0KDQpPcGVyYXRvci9tYWNybzogICAgICAgICAg
ICAgICAgIHZhcmlhYmxlIG5hbWVzOyAgICBEZXNjcmlwdGlvbi4NCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQpzdHJsZW4oMyk6ICAgICAgICAgICAgICAgICAgICAgIGxlbmd0aCwgbGVuLCBsOyAg
ICBTdHJpbmcgbGVuZ3RoLg0Kc2l6ZW9mKCk6ICAgICAgICAgICAgICAgICAgICAgICBzaXpl
LCBzeiwgbmJ5dGVzOyAgSWRlbnRpZmllciBzaXplIGluIGJ5dGVzLg0Kbml0ZW1zKCksIG5l
bGVtcygpOiAgICAgICAgICAgICBuLCBuZWxlbSwgbml0ZW1zOyAgQXJyYXkgbnVtYmVyIG9m
IGVsZW1lbnRzLg0Kc2l6ZW9mX2FycmF5KCksIGFycmF5X2J5dGVzKCk6ICBzaXplLCBzeiwg
bmJ5dGVzOyAgQXJyYXkgc2l6ZSBpbiBieXRlcy4NCg0KDQpOYW1pbmcgX0xlbmd0aG9mKCkg
dGhlIG9wZXJhdG9yIHRoYXQgZ2V0cyB0aGUgbnVtYmVyIG9mIGVsZW1lbnRzIGluIGFuIGFy
cmF5IA0Kd291bGQgY3JlYXRlIG5hbWluZyBjb25mdXNpb24sIHNpbmNlIHRoZW4gbGVuZ3Ro
IGNhbiBtZWFuIHR3byBkaWZmZXJlbnQgdGhpbmdzLiANCkkgc3VnZ2VzdCBfTml0ZW1zb2Yo
KS4NCg0KDQo+IA0KPiBNYXliZSBvbmUgc2hvdWxkIGFsc28gYWRkIGEgY29uc3RyYWludCB0
aGF0IGFsbCBuZXcNCj4gdHlwZSBsZW5ndGggZXhwcmVzc2lvbnMsIGkuZS4gdXNpbmcgdGhl
IHN5bnRheCwNCj4gY2FuIG5vdCBoYXZlIHNpZGUgZWZmZWN0cy4gT3IgZXZlbiB0aGF0IHRo
ZXkgZm9sbG93DQo+IGFsbCB0aGUgcnVsZXMgb2YgaW50ZWdlciBjb25zdGFudCBleHByZXNz
aW9ucyB3aXRoDQo+IHRoZSBmaWN0aXRpb3VzIGFzc3VtcHRpb24gdGhhdCBhbGwgLiBpZGVu
dGlmZXINCj4gc3ViLWV4cHJlc3Npb25zIGFyZSBpbnRlZ2VyIGNvbnN0YW50IGV4cHJlc3Np
b25zLg0KPiBUaGUgcmF0aW9uYWxlIGJlaW5nIHRoYXQgdGhpcyB3b3VsZCBmYWNpbGl0YXRl
DQo+IGNvbXBpbGUgdGltZSByZWFzb25pbmcgYWJvdXQgbGVuZ3RoIGV4cHJlc3Npb25zLg0K
PiAgIA0KPiANCj4gTWFydGluDQo+IA0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------Kswth0kWlVIH28Eu60q60ZVJ--

--------------HNHEr1MJyD1Yl0K03IpK1y9x
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNw7twACgkQnowa+77/
2zIXtxAAorgVhbmw7JFEumEvnFcmz2Zv1vppzvdetkhDjmd3iQ+z44sRyxCZme70
n+QmStYnVKRNwJ69dm57fUtF0rA6xOS9RMpZtKjhp8bi6eRcTywb1XsoU4o0u0Hu
pXsTGDFWI4dmsqd8UgC0R8A5yodk4lfZQhZrcpBk4Rn4bGOLVLvdklzaaWqK0+jJ
UVgWwCmhTsqNbmqyUQD8t1Mwax+r+FqtocKDDPdkWjZPhsGjPGQPtFyzg6AcQtUT
lD0tt/YZpTDB9btciUntyvDawGbwZyRxWJIrYpwUkpITZKSrYblQyzvk9Fgl1y5e
TqTXfPf4rX9oBc2hVKbVaI0yGebZUSpmZN9b0GKhrSC6N1VxBF6hGg9aH/rB3DEj
YotJMiHKaf3lruBMjVjeNvnHshYgmzXRObPFwM7bR+bpcUGmPmnDAXXzDimv0df+
rkcHfuIOf9ekPP5XXZVDTHrVaN8Jd6LCPB/aFf8QRkV/VfKUfRAojiDOe7zHd4vj
qmJCYo0NMZyrlSQfGQcbaM6IZG/I5r8lli2O87tnFVZEasc4ztROSNDFjgfZ9S0A
79K9hqSJSGCY8DK8gULAt7C1hOrCT/eIHdNrgbMNM4l7n839UffcewZqYV3pOsNh
5m/hQl5NGQ0o8UL8nbj8jx6Bh5uUPwkytZ2F/dZna2F3iYcVqc8=
=/owY
-----END PGP SIGNATURE-----

--------------HNHEr1MJyD1Yl0K03IpK1y9x--
