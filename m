Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 316C465F7E2
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 00:50:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235327AbjAEXuX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 18:50:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbjAEXuU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 18:50:20 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9480B5F8D
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 15:50:19 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id co23so37677012wrb.4
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 15:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLIxw1Cr/CuxaAOBppLsGtXysuabZum8qYW+I5n/sKE=;
        b=GbgC1DRHbVDb8U4kTcUrdTSMwwt8LKaCWXso4EF32ilJas3AgUXsjhgxBX3Ex1BzKm
         5Htio08C5C20CIzG0dVDdV6kf7/sWYKzZOdYwQAY94JSahvkWmcwr93aLc+OskgXBbWH
         bpTWLUX38OnHGxJYLvcuB3b7C5vN7NEo7doLB6Y00xYoQPDfoEoXBN9as4iUVC1BH44e
         ZxLWq7KjvLPiYFmTy5JGdqltGYeyldURIjj3URJw17vy8h2Drk0YSggwwRJV71dxwwOR
         Y2PBa6Qhy4olOVELQsl/agUu6m3f2eWUkBLGiNlQzGW5Dw/1CVHIT2dlFiKSb8AFOycp
         yKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gLIxw1Cr/CuxaAOBppLsGtXysuabZum8qYW+I5n/sKE=;
        b=nZCOMk/seLjGLy/Oo0znsPs2jNCnAM8T+yWiSp2nt6UsavlqnqvnSvqOA9hO1JfLgr
         ibLcXGmrn9M5TnC3DyQJJ+cmOr6s7kGaD2YBg0pZ4bEROSXq6KMJpJ0Mz0Cq0BhlF0xl
         VJe31VtZxvVXvtMeZoP0ei8HvXJK+axIQYPTZWCDAhZaPuxt6VkhMKdydaGsPUwVuiW/
         W2Xsp29kBQzxiG7+Zo8fIb0zGfxX1Ibd34jTUyzJsmfGmR4Y/QJmvNjXrA+0dFnMPZ9q
         /CCO6N9gYKpyB67ePQWllESu4PAZjnzRM/0VWS6tyX2rhc276/o8ThAxkKFQ78uqYUuv
         xtZw==
X-Gm-Message-State: AFqh2koorTgo1EwdffyBeEh+b4ontntOvcNPC2iNCV4hSmeGqHBxBOvq
        te8SKhArGXHF2twRZ3quTwp2oCrJ3L8=
X-Google-Smtp-Source: AMrXdXuXerskxu0S3STW+FdMCOhpnqqjSm4EAoCja+4wLKwbpWWBNREe2lbZfUQloxXC0G/E1rALYQ==
X-Received: by 2002:adf:fcc6:0:b0:277:7243:5cef with SMTP id f6-20020adffcc6000000b0027772435cefmr35114388wrs.67.1672962618005;
        Thu, 05 Jan 2023 15:50:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i10-20020adfdeca000000b002b6667d3adfsm1825454wrn.80.2023.01.05.15.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 15:50:17 -0800 (PST)
Message-ID: <844ea58f-1394-7da2-a2e7-f6893ea76209@gmail.com>
Date:   Fri, 6 Jan 2023 00:50:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 06/13] libc.7: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225255.kisdrhrxzd4aikv2@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225255.kisdrhrxzd4aikv2@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------X8yzXx63dqUZAgBrRJw0PODX"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------X8yzXx63dqUZAgBrRJw0PODX
Content-Type: multipart/mixed; boundary="------------uO5O4Y0QbLZ7JgNkW8wXgo27";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <844ea58f-1394-7da2-a2e7-f6893ea76209@gmail.com>
Subject: Re: [PATCH v3 06/13] libc.7: srcfix
References: <20230105225255.kisdrhrxzd4aikv2@illithid>
In-Reply-To: <20230105225255.kisdrhrxzd4aikv2@illithid>

--------------uO5O4Y0QbLZ7JgNkW8wXgo27
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNS8yMyAyMzo1MiwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gKiBT
ZXQgbXVsdGktd29yZCBwYXJlbnRoZXRpY2FscyBvbiB0aGVpciBvd24gaW5wdXQgbGluZXMu
DQo+ICogQnJlYWsgaW5wdXQgbGluZXMgYWZ0ZXIgY29tbWFzLg0KPiAqIEFkZCBoeXBoZW5s
ZXNzIGJyZWFrIHBvaW50cyB0byBVUkxzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogRy4gQnJh
bmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVuLnJvYmluc29uQGdtYWlsLmNvbT4NCg0KUGF0Y2gg
YXBwbGllZC4gIFRoYW5rcyENCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjcvbGliYy43IHwg
NDAgKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQ0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9tYW43L2xpYmMuNyBiL21hbjcvbGliYy43DQo+IGluZGV4IDEyYzc5ZGMx
MS4uNWRlYmEwYThlIDEwMDY0NA0KPiAtLS0gYS9tYW43L2xpYmMuNw0KPiArKysgYi9tYW43
L2xpYmMuNw0KPiBAQCAtMTEsNyArMTEsOSBAQCBUaGUgdGVybSAibGliYyIgaXMgY29tbW9u
bHkgdXNlZCBhcyBhIHNob3J0aGFuZCBmb3INCj4gICB0aGUgInN0YW5kYXJkIEMgbGlicmFy
eSIsDQo+ICAgYSBsaWJyYXJ5IG9mIHN0YW5kYXJkIGZ1bmN0aW9ucyB0aGF0IGNhbiBiZSB1
c2VkIGJ5IGFsbCBDIHByb2dyYW1zDQo+ICAgKGFuZCBzb21ldGltZXMgYnkgcHJvZ3JhbXMg
aW4gb3RoZXIgbGFuZ3VhZ2VzKS4NCj4gLUJlY2F1c2Ugb2Ygc29tZSBoaXN0b3J5IChzZWUg
YmVsb3cpLCB1c2Ugb2YgdGhlIHRlcm0gImxpYmMiDQo+ICtCZWNhdXNlIG9mIHNvbWUgaGlz
dG9yeQ0KPiArKHNlZSBiZWxvdyksDQo+ICt1c2Ugb2YgdGhlIHRlcm0gImxpYmMiDQo+ICAg
dG8gcmVmZXIgdG8gdGhlIHN0YW5kYXJkIEMgbGlicmFyeSBpcyBzb21ld2hhdCBhbWJpZ3Vv
dXMgb24gTGludXguDQo+ICAgLlNTIGdsaWJjDQo+ICAgQnkgZmFyIHRoZSBtb3N0IHdpZGVs
eSB1c2VkIEMgbGlicmFyeSBvbiBMaW51eCBpcyB0aGUgR05VIEMgTGlicmFyeQ0KPiBAQCAt
MjQsMjYgKzI2LDMxIEBAIG1ham9yIExpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+ICAgSXQgaXMg
YWxzbyB0aGUgQyBsaWJyYXJ5IHdob3NlIGRldGFpbHMgYXJlIGRvY3VtZW50ZWQNCj4gICBp
biB0aGUgcmVsZXZhbnQgcGFnZXMgb2YgdGhlDQo+ICAgLkkgbWFuLXBhZ2VzDQo+IC1wcm9q
ZWN0IChwcmltYXJpbHkgaW4gU2VjdGlvbiAzIG9mIHRoZSBtYW51YWwpLg0KPiArcHJvamVj
dA0KPiArKHByaW1hcmlseSBpbiBTZWN0aW9uIDMgb2YgdGhlIG1hbnVhbCkuDQo+ICAgRG9j
dW1lbnRhdGlvbiBvZiBnbGliYyBpcyBhbHNvIGF2YWlsYWJsZSBpbiB0aGUgZ2xpYmMgbWFu
dWFsLA0KPiAgIGF2YWlsYWJsZSB2aWEgdGhlIGNvbW1hbmQNCj4gICAuSVIgImluZm8gbGli
YyIgLg0KPiAgIFJlbGVhc2UgMS4wIG9mIGdsaWJjIHdhcyBtYWRlIGluIFNlcHRlbWJlciAx
OTkyLg0KPiAgIChUaGVyZSB3ZXJlIGVhcmxpZXIgMC54IHJlbGVhc2VzLikNCj4gLVRoZSBu
ZXh0IG1ham9yIHJlbGVhc2Ugb2YgZ2xpYmMgd2FzIDIuMCwgYXQgdGhlIGJlZ2lubmluZyBv
ZiAxOTk3Lg0KPiArVGhlIG5leHQgbWFqb3IgcmVsZWFzZSBvZiBnbGliYyB3YXMgMi4wLA0K
PiArYXQgdGhlIGJlZ2lubmluZyBvZiAxOTk3Lg0KPiAgIC5QUA0KPiAgIFRoZSBwYXRobmFt
ZQ0KPiAgIC5JIC9saWIvbGliYy5zby42DQo+IC0ob3Igc29tZXRoaW5nIHNpbWlsYXIpIGlz
IG5vcm1hbGx5IGEgc3ltYm9saWMgbGluayB0aGF0DQo+ICsob3Igc29tZXRoaW5nIHNpbWls
YXIpDQo+ICtpcyBub3JtYWxseSBhIHN5bWJvbGljIGxpbmsgdGhhdA0KPiAgIHBvaW50cyB0
byB0aGUgbG9jYXRpb24gb2YgdGhlIGdsaWJjIGxpYnJhcnksDQo+ICAgYW5kIGV4ZWN1dGlu
ZyB0aGlzIHBhdGhuYW1lIHdpbGwgY2F1c2UgZ2xpYmMgdG8gZGlzcGxheQ0KPiAgIHZhcmlv
dXMgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHZlcnNpb24gaW5zdGFsbGVkIG9uIHlvdXIgc3lz
dGVtLg0KPiAgIC5TUyBMaW51eCBsaWJjDQo+IC1JbiB0aGUgZWFybHkgdG8gbWlkIDE5OTBz
LCB0aGVyZSB3YXMgZm9yIGEgd2hpbGUNCj4gK0luIHRoZSBlYXJseSB0byBtaWQgMTk5MHMs
DQo+ICt0aGVyZSB3YXMgZm9yIGEgd2hpbGUNCj4gICAuSVIgIkxpbnV4IGxpYmMiICwNCj4g
ICBhIGZvcmsgb2YgZ2xpYmMgMS54IGNyZWF0ZWQgYnkgTGludXggZGV2ZWxvcGVycyB3aG8g
ZmVsdCB0aGF0IGdsaWJjDQo+ICAgZGV2ZWxvcG1lbnQgYXQgdGhlIHRpbWUgd2FzIG5vdCBz
dWZmaWNpbmcgZm9yIHRoZSBuZWVkcyBvZiBMaW51eC4NCj4gLU9mdGVuLCB0aGlzIGxpYnJh
cnkgd2FzIHJlZmVycmVkIHRvIChhbWJpZ3VvdXNseSkgYXMganVzdCAibGliYyIuDQo+ICtP
ZnRlbiwNCj4gK3RoaXMgbGlicmFyeSB3YXMgcmVmZXJyZWQgdG8gKGFtYmlndW91c2x5KSBh
cyBqdXN0ICJsaWJjIi4NCj4gICBMaW51eCBsaWJjIHJlbGVhc2VkIG1ham9yIHZlcnNpb25z
IDIsIDMsIDQsIGFuZCA1LA0KPiAgIGFzIHdlbGwgYXMgbWFueSBtaW5vciB2ZXJzaW9ucyBv
ZiB0aG9zZSByZWxlYXNlcy4NCj4gICBMaW51eCBsaWJjNCB3YXMgdGhlIGxhc3QgdmVyc2lv
biB0byB1c2UgdGhlIGEub3V0IGJpbmFyeSBmb3JtYXQsDQo+IEBAIC01NCw4ICs2MSwxMCBA
QCB0aGlzIHZlcnNpb24gdXNlZCB0aGUgc2hhcmVkIGxpYnJhcnkgc29uYW1lDQo+ICAgRm9y
IGEgd2hpbGUsDQo+ICAgTGludXggbGliYyB3YXMgdGhlIHN0YW5kYXJkIEMgbGlicmFyeSBp
biBtYW55IExpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+ICAgLlBQDQo+IC1Ib3dldmVyLCBub3R3
aXRoc3RhbmRpbmcgdGhlIG9yaWdpbmFsIG1vdGl2YXRpb25zIG9mIHRoZSBMaW51eCBsaWJj
IGVmZm9ydCwNCj4gLWJ5IHRoZSB0aW1lIGdsaWJjIDIuMCB3YXMgcmVsZWFzZWQgKGluIDE5
OTcpLA0KPiArSG93ZXZlciwNCj4gK25vdHdpdGhzdGFuZGluZyB0aGUgb3JpZ2luYWwgbW90
aXZhdGlvbnMgb2YgdGhlIExpbnV4IGxpYmMgZWZmb3J0LA0KPiArYnkgdGhlIHRpbWUgZ2xp
YmMgMi4wIHdhcyByZWxlYXNlZA0KPiArKGluIDE5OTcpLA0KPiAgIGl0IHdhcyBjbGVhcmx5
IHN1cGVyaW9yIHRvIExpbnV4IGxpYmMsDQo+ICAgYW5kIGFsbCBtYWpvciBMaW51eCBkaXN0
cmlidXRpb25zIHRoYXQgaGFkIGJlZW4gdXNpbmcgTGludXggbGliYw0KPiAgIHNvb24gc3dp
dGNoZWQgYmFjayB0byBnbGliYy4NCj4gQEAgLTY2LDkgKzc1LDExIEBAIGdsaWJjIDIuMCBh
bmQgbGF0ZXIgdXNlZCB0aGUgc2hhcmVkIGxpYnJhcnkgc29uYW1lDQo+ICAgU2luY2UgdGhl
IHN3aXRjaCBmcm9tIExpbnV4IGxpYmMgdG8gZ2xpYmMgMi4wIG9jY3VycmVkIGxvbmcgYWdv
LA0KPiAgIC5JIG1hbi1wYWdlcw0KPiAgIG5vIGxvbmdlciB0YWtlcyBjYXJlIHRvIGRvY3Vt
ZW50IExpbnV4IGxpYmMgZGV0YWlscy4NCj4gLU5ldmVydGhlbGVzcywgdGhlIGhpc3Rvcnkg
aXMgdmlzaWJsZSBpbiB2ZXN0aWdlcyBvZiBpbmZvcm1hdGlvbg0KPiArTmV2ZXJ0aGVsZXNz
LA0KPiArdGhlIGhpc3RvcnkgaXMgdmlzaWJsZSBpbiB2ZXN0aWdlcyBvZiBpbmZvcm1hdGlv
bg0KPiAgIGFib3V0IExpbnV4IGxpYmMgdGhhdCByZW1haW4gaW4gYSBmZXcgbWFudWFsIHBh
Z2VzLA0KPiAtaW4gcGFydGljdWxhciwgcmVmZXJlbmNlcyB0bw0KPiAraW4gcGFydGljdWxh
ciwNCj4gK3JlZmVyZW5jZXMgdG8NCj4gICAuSSBsaWJjNA0KPiAgIGFuZA0KPiAgIC5JUiBs
aWJjNSAuDQo+IEBAIC03OSwxOSArOTAsMjAgQEAgYm90aCBpbiB0ZXJtcyBvZiBmZWF0dXJl
cyBhbmQgbWVtb3J5IGZvb3RwcmludCwNCj4gICBhbmQgb2Z0ZW4gaW50ZW5kZWQgZm9yIGJ1
aWxkaW5nIHNtYWxsIGJpbmFyaWVzLA0KPiAgIHBlcmhhcHMgdGFyZ2V0ZWQgYXQgZGV2ZWxv
cG1lbnQgZm9yIGVtYmVkZGVkIExpbnV4IHN5c3RlbXMuDQo+ICAgQW1vbmcgc3VjaCBsaWJy
YXJpZXMgYXJlDQo+IC0uVVIgaHR0cDovL3d3dy51Y2xpYmMub3JnLw0KPiArLlVSIGh0dHA6
Ly93d3dcOi51Y2xpYmNcOi5vcmcvDQo+ICAgLkkgdUNsaWJjDQo+ICAgLlVFICwNCj4gLS5V
UiBodHRwOi8vd3d3LmZlZmUuZGUvZGlldGxpYmMvDQo+ICsuVVIgaHR0cDovL3d3d1w6LmZl
ZmVcOi5kZS9cOmRpZXRsaWJjLw0KPiAgIC5JIGRpZXRsaWJjDQo+ICAgLlVFICwNCj4gICBh
bmQNCj4gLS5VUiBodHRwOi8vd3d3Lm11c2xcLWxpYmMub3JnLw0KPiArLlVSIGh0dHA6Ly93
d3dcOi5tdXNsXC1saWJjXDoub3JnLw0KPiAgIC5JICJtdXNsIGxpYmMiDQo+ICAgLlVFIC4N
Cj4gICBEZXRhaWxzIG9mIHRoZXNlIGxpYnJhcmllcyBhcmUgY292ZXJlZCBieSB0aGUNCj4g
ICAuSSBtYW4tcGFnZXMNCj4gLXByb2plY3QsIHdoZXJlIHRoZXkgYXJlIGtub3duLg0KPiAr
cHJvamVjdCwNCj4gK3doZXJlIHRoZXkgYXJlIGtub3duLg0KPiAgIC5TSCBTRUUgQUxTTw0K
PiAgIC5CUiBzeXNjYWxscyAoMiksDQo+ICAgLkJSIGdldGF1eHZhbCAoMyksDQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------uO5O4Y0QbLZ7JgNkW8wXgo27--

--------------X8yzXx63dqUZAgBrRJw0PODX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3YjgACgkQnowa+77/
2zLJgxAAjEbmUA1OH++WvAmWOTiDKRAwOJCWwaGt6ow2D9G+333dOpd90+vTdjWq
Td5T8dnJybU20kAQVz4uAQB5q1MjUH8VkESPrfbzz+lCkVR9zUoJ6yetngDWiRTP
RON1zUv1KEJRU/XxETl4pxn7RzCijXW7R94QFv9WF8o01EIBFYGAdBR2HZ7+ix8Z
2cuAKMqKtyrslTBnifNzYBQPBwzqeOqUn1lrCiPDuIZ9h3tCIP/4fhvIWMxitOxx
VIWjBdaYjQuAL7ugsxOso1Ie6RPk2YVw6d0xnwcOAvxwGRWAvMI5KW5HdiIV854E
C9iFWeB+RibYWzjhgT2LS8AeJRYB5Dq/gjhgeadbl0dpf8ab2Qryc1a/J93a16x4
dDM3fDy9Kd1tNTipM5faJAZrDatfFxEv8gCaZFK+vvoKImBbj1QKSdfUrEGJzC90
2YBwxoF++zFq1rPqZgISx7IBYgZmRKnR8iWbUB2nosO8V9ELQVYBrUVpvLBbkb/N
YuieEddLo4WV9nvPq4mxuwHEFBYGM82OGB8mbe5jwiDUF1RD3uqhrnlniO1XzdlB
vMC+O3jI241vDLXRfbLEuhotC0dX/0ts4ijtogTv9+M7ISJxLLJZB+rO6Bkg0F/Z
98nCUxMy/U+pKemkq0wYraJ67rsaZP5YeOd+Xtc7v3ZNQRAgRXE=
=Khc0
-----END PGP SIGNATURE-----

--------------X8yzXx63dqUZAgBrRJw0PODX--
