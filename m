Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED16357D750
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 01:17:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbiGUXRT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 19:17:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbiGUXRT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 19:17:19 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 522DB8E4EC
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 16:17:17 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id b6so1846873wmq.5
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 16:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=AehFZb79ZToztyuCADawBnpEUwLy6/QFD5n9xy5qZhU=;
        b=hUjbBVBriB5L7PWOFOLhVwy2nAnu9/aNQ6SBgW/bSyoOkuhiDYPXVoNRQdjCtR0KRx
         QCppoHas379gp6p7EnoC0Ng+n3btmXfy5mOAtLp+HT6Ce8vayasQgxZA8mj2DzmWi9wT
         hKgcmC5zCHgyNo7vfFYpOEZ3kKb1mJRxl11+M+XLdzj+c7/ZfDt2O8keXsLSEUG2S4Wj
         O7yb6ezY0h/sw7f7A+Nq/haISwnkelXIu11kzW2pzJZGpXK/caAN7B+O41W63gtiwerR
         Y8uAuVdJERFgM2/IFY1lUUiWl2HZ/xmW3cJx+1zOcvTQB4TMnfeBJtKNoEdWmnahDo/0
         UxOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=AehFZb79ZToztyuCADawBnpEUwLy6/QFD5n9xy5qZhU=;
        b=eiuf9IV+w9cgia1/qFcmkjEjuBCzPY2T8K0zfdsFOHdBjrzQ5wJhaeypyJ1D76PAk2
         gbbnDon8tRcyiwqEYCbO5vT4StA/FLE5gpz4/92St+7/100fxcJaxQ6WUlHAbDgwpFVQ
         Y+a5R30pnOylBqs/RFQIH6+ULUm1F4sOwZtrvZcadW9tqVT1Yce5FrZW85lV3xr3d98c
         F/0hZC7Yso0Tq22+EmbyUww5fxW78OdxAoaaHaTsOn7bT23g1S9qobWVJg3b4MFieZaj
         5pkCUfcG0uTwUsZs06bU11p3QAZ/kopQVnEpkHScTIAW9O1Iro3OP7kKe+D6tz8ikdRc
         tmGg==
X-Gm-Message-State: AJIora+GazjSmoPfGryogVgKNuGwdq32EC1ShdSMZP/UNQAoruSetIAb
        +MQrLi7qwiBeXvFL5LXq9al7PFMbxgk=
X-Google-Smtp-Source: AGRyM1uYd3zZbz29hVjNTER6yHhBuFyxP8c2FF7WR4dBKAtrJkchMVgBJxg9VnlR+1yzCM7mVhvKwg==
X-Received: by 2002:a05:600c:1e1e:b0:3a3:10f9:aa02 with SMTP id ay30-20020a05600c1e1e00b003a310f9aa02mr286264wmb.124.1658445435591;
        Thu, 21 Jul 2022 16:17:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l37-20020a05600c1d2500b003a33227e49bsm2868169wms.4.2022.07.21.16.17.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 16:17:14 -0700 (PDT)
Message-ID: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
Date:   Fri, 22 Jul 2022 01:16:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: All caps .TH page title
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>,
        Colin Watson <cjwatson@debian.org>, groff <groff@gnu.org>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220721183620.hdvgwwef66hmrgln@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bPPE2jRh0yTh3nlbpgMWBK0X"
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
--------------bPPE2jRh0yTh3nlbpgMWBK0X
Content-Type: multipart/mixed; boundary="------------iWPhWmIHY8aLHTtdyK7gHDql";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man <linux-man@vger.kernel.org>,
 Colin Watson <cjwatson@debian.org>, groff <groff@gnu.org>
Message-ID: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
Subject: Re: All caps .TH page title
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
In-Reply-To: <20220721183620.hdvgwwef66hmrgln@illithid>

--------------iWPhWmIHY8aLHTtdyK7gHDql
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gNy8yMS8yMiAyMDozNiwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSGkgQWxleCwNCj4gDQo+IEF0IDIwMjItMDctMjFUMTY6Mjk6MjErMDIwMCwg
QWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBJJ3ZlIG5ldmVyIGJlZW4gY29udmluY2Vk
IGFib3V0IHRoZSBwYWdlIHRpdGxlIGJlaW5nIGluIGFsbCBjYXBzIGluDQo+PiB0aGUgLlRI
IGxpbmUuICBGcm9tIHJlY2VudCBncm9mZkAgZGlzY3Vzc2lvbnMsIEkgZ3Vlc3MgdGhhdCBu
ZWl0aGVyIG9mDQo+PiB5b3UgYXJlIGVpdGhlci4NCj4gDQo+IFdlbGwsIEluZ28gd2FzIG1v
cmUgY29tZm9ydGFibGUgd2l0aCBpdCB0aGFuIEkgd2FzLg0KPiANCj4+IEknZCBsaWtlIHRv
IGtub3cgd2h5IHRoaXMgaGFzIGJlZW4gdGhlIGNhc2UgaGlzdG9yaWNhbGx5LCBhbmQgYW55
DQo+PiBvcGluaW9ucyB5b3UgbWlnaHQgaGF2ZSBhYm91dCBtZSBjaGFuZ2luZyB0aGUgbWFu
LXBhZ2VzIHRvIHVzZSB0aGUNCj4+IHNhbWUgY2FwcyBhcyB0aGUgYWN0dWFsIGlkZW50aWZp
ZXIgdGhhdCBJJ20gZG9jdW1lbnRpbmcgKG1vc3Qgb2YgdGhlDQo+PiB0aW1lIHRoYXQgd291
bGQgbWVhbiBsb3dlcmNhc2UpLiAgQmFzaWNhbGx5LCB0aGUgc2FtZSBydWxlcyBhcyB3aXRo
aW4NCj4+IC5TSCBOQU1FLg0KPiANCj4gSSd2ZSByZWFkIGV2ZXJ5IGVkaXRpb24gb2YgdGhl
IFVuaXggbWFudWFsIGZyb20gVmVyc2lvbiAxICgxOTcxKSB0bw0KPiBWZXJzaW9uIDcgKDE5
NzkpIGFuZCBteSBzdXJtaXNlIGlzIHRoYXQgaXQgd2FzIHNoZWVyIGluZXJ0aWEuICBUaGUN
Cj4gVGVsZXR5cGUgbWFjaGluZXMgdGhhdCB3ZXJlIHVzZWQgdG8gc2V0IHRoZSBvcmlnaW5h
bCB2ZXJzaW9ucyBvZiB0aGUNCj4gbWFudWFsLS1yZW1lbWJlciwgdGhpcyBpcyBiZWZvcmUg
dHJvZmYgZXZlbiBleGlzdGVkLS1taWdodCBoYXZlIGJlZW4NCj4gY2FwYWJsZSBvZiBib2xk
ZmFjZSB0aHJvdWdoIG92ZXJzdHJpa2luZywgYnV0IHdhcyBub3QgdXNlZCB0aGlzIHdheSBh
cw0KPiBmYXIgYXMgSSBjYW4gdGVsbCBpbiB0aGUgVjEgdGhyb3VnaCBWMyBtYW51YWwuDQo+
IA0KPiBTbyB0aGlzIG1lYW5zIHRoYXQsIGZvciBlbXBoYXNpcywgeW91IGhhZCByZWd1bGFy
IHR5cGUgYW5kIHVuZGVybGluZWQNCj4gdHlwZSBhbmQgdGhhdCB3YXMgaXQuDQo+IA0KPiBV
bmRlciBzdWNoIGxpbWl0YXRpb25zLCB0aGUgdXNlIG9mIGZ1bGwgY2FwaXRhbHMgZm9yIGVt
cGhhc2lzIGlzIG5vdA0KPiBzdXJwcmlzaW5nLg0KDQpUaGF0IG1ha2VzIHNlbnNlLg0KDQo+
IA0KPiBBZnRlciB0aGF0LS10aGUgVjQgbWFudWFsIHdhcyB0aGUgZmlyc3QgdG8gYmUgdHlw
ZXNldCB3aXRoIHRyb2ZmLS10aGUNCj4gcHJhY3RpY2Ugb2YgZnVsbC1jYXBwaW5nIHRoZSBw
YWdlIHRpdGxlcyBpbiB0aGUgaGVhZGVycyB3YXMgcmV0YWluZWQuDQo+IA0KPiBIb3cgZGVs
aWJlcmF0ZSBhIGNob2ljZSB0aGlzIHdhcyBpcyBub3Qgc29tZXRoaW5nIEkgY2FuIGFuc3dl
ci4gIFRoZQ0KPiBkZWNpc2lvbiB3YXMgbWFkZSBpbiAxOTcyLiAgWW91IGNvdWxkIGFzayBz
b21lIG9mIHRoZSBzdXJ2aXZpbmcNCj4gcHJpbmNpcGFsIEJlbGwgTGFicyBDU1JDIGZpZ3Vy
ZXMgb24gdGhlIFRVSFMgbWFpbGluZyBsaXN0Lg0KDQpJcyBEb3VnIG9uZSBvZiB0aGVtPyAg
SSd2ZSBzZWVtIGhpbSBvbiB0aGUgZ3JvZmZAIGxpc3QgZnJvbSB0aW1lIHRvIA0KdGltZS4g
IEkgYWRkZWQgdGhlIGdyb2ZmQCBsaXN0LCBpbiBjYXNlIHRoaXMgaXMgb2YgaW50ZXJlc3Qg
dG8gc29tZW9uZSANCnRoZXJlLg0KDQo+IA0KPj4gQWxzbywgZG9lcyBpdCBoYXZlIGFueSBm
dW5jdGlvbmFsIGltcGxpY2F0aW9ucz8gIEknbSBlc3BlY2lhbGx5DQo+PiBpbnRlcmVzdGVk
IGluIGtub3dpbmcgaWYgdGhhdCBtYXkgYWZmZWN0IGluIGFueSB3YXkgdGhlIGFiaWxpdHkg
b2YNCj4+IG1hbigxKSB0byBmaW5kIGEgcGFnZSB3aGVuIGludm9rZWQgYXMgYG1hbiBUSU1F
U1BFQ2AgZm9yIGV4YW1wbGUuDQo+IA0KPiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgbWFu
ZGIoOCkgaW5kZXhlcyBiYXNlZCBzb2xlbHkgb24gdGhlIHNlY29uZA0KPiBhcmd1bWVudCB0
byB0aGUgYFRIYCBtYWNybyBjYWxsIGFuZCAod2hhdCBpdCBpbnRlcnByZXRzIGFzKSB0aGUg
Y29udGVudHMNCj4gb2YgdGhlICJOYW1lIiAob3IgIk5BTUUiKSBzZWN0aW9uIG9mIHRoZSBw
YWdlLiAgSXQgcGFyc2VzICpyb2ZmIGl0c2VsZg0KPiBhcyBiZXN0IGl0IGNhbiB0byBkZXRl
cm1pbmUgdGhpcy4gIFNvIHRoZSBmYWN0IHRoYXQgdGhlIF9maXJzdF8gYXJndW1lbnQNCj4g
dG8gYFRIYCBtaWdodCBiZSBpbiBmdWxsIGNhcHMgZG9lc24ndCBkZXRlciBpdC4gIChJdCBt
aWdodCBpbiBmYWN0IGhhdmUNCj4gbWFkZSBtYW5kYig4KSBhdXRob3JzJyBqb2IgZWFzaWVy
IGlmIGFuICJob25lc3QgbGV0dGVyY2FzZSIgcHJhY3RpY2UgaGFkDQo+IGFyaXNlbiBiYWNr
IGluIHRoZSBkYXktLWJ1dCBpdCBkaWRuJ3QpLg0KDQpPa2F5Lg0KDQo+IA0KPiBTaW5jZSBo
ZSdzIGEgbWFuZGIoOCkgYXV0aG9yL21haW50YWluZXIsIEkgd291bGQgYWdhaW4gZGVmZXIg
dG8gQ29saW4NCj4gV2F0c29uJ3Mga25vd2xlZGdlIGFuZCBleHBlcnRpc2UgaW4gdGhpcyBh
cmVhLg0KDQpBZGRlZCB0byBDQywgaW4gY2FzZSBoZSB3YW50cyB0byBpbnRlcnZlbmUuDQoN
Cj4gDQo+PiBJJ20gbm90IHNheWluZyBuZWNlc3NhcmlseSB0aGF0IEknZCBsaWtlIHRvIGtl
ZXAgdGhhdCBiZWhhdmlvci4gIEkNCj4+IHdvdWxkbid0IG1pbmQgYnJlYWtpbmcgaXQsIGlm
IGl0IG1lYW5zIHRoYXQgdXNlcnMgd2lsbCBiZSBhYmxlIHRvDQo+PiBkaWZmZXJlbnRpYXRl
IHVwcGVyLSBhbmQgbG93ZXJjYXNlIHBhZ2VzLiAgV2UncmUgbm90IGluIFdpbmRvd3MgKG5v
cg0KPj4gTWFjT1MpLCBhbnl3YXkuDQo+IA0KPiBUcnVlLCBhbHRob3VnaCBJIHdvdWxkIHRh
a2UgYSBqYXVuZGljZWQgdmlldyB0b3dhcmQgYW55IHNvZnR3YXJlIHByb2plY3QNCj4gdGhh
dCBkaXN0aW5ndWlzaGVkIGl0cyBtYW4gcGFnZSBuYW1lcywgd2hldGhlciBpbnRlcm5hbGx5
IG9yIGZyb20NCj4gb3RoZXJzJyBzb2xlbHkgYnkgYSBkaWZmZXJlbmNlIGluIGxldHRlcmNh
c2UuDQoNCkhlaCEgIFlvdSd2ZSBuZXZlciB0cmllZCB0byBjbG9uZSB0aGUgTGludXggbWFu
LXBhZ2VzIGluIFdpbmRvd3Mgb3IgDQpNYWNPUywgaXQgc2VlbXMgOnANCg0KJCBmaW5kIG1h
biogLXR5cGUgZiBcDQogICB8IHRyICdbOnVwcGVyOl0nICdbOmxvd2VyOl0nIFwNCiAgIHwg
c29ydCBcDQogICB8IHVuaXEgLWQgXA0KICAgfCB3aGlsZSByZWFkIGY7IGRvDQoJZmluZCBt
YW4qIC10eXBlIGYgXA0KCXwgZ3JlcCAtaSAkZjsNCiAgIGRvbmU7DQptYW4yL19FeGl0LjIN
Cm1hbjIvX2V4aXQuMg0KbWFuMy9uYW4uMw0KbWFuMy9OQU4uMw0KDQoNCiQgZmluZCBtYW4q
IC10eXBlIGYgXA0KICAgfCB0ciAnWzp1cHBlcjpdJyAnWzpsb3dlcjpdJyBcDQogICB8IHNv
cnQgXA0KICAgfCB1bmlxIC1kIFwNCiAgIHwgd2hpbGUgcmVhZCBmOyBkbw0KCWZpbmQgbWFu
KiAtdHlwZSBmIFwNCgl8IGdyZXAgLWkgJGY7DQogICBkb25lIFwNCiAgIHwgd2hpbGUgcmVh
ZCBmOyBkbw0KCWVjaG8gPT09JGY9PT07DQoJaGVhZCAtbjEgJGY7DQogICBkb25lOw0KPT09
bWFuMi9fRXhpdC4yPT09DQouc28gbWFuMi9fZXhpdC4yDQo9PT1tYW4yL19leGl0LjI9PT0N
Ci5cIiBUaGlzIG1hbnBhZ2UgaXMgQ29weXJpZ2h0IChDKSAxOTkyIERyZXcgRWNraGFyZHQ7
DQo9PT1tYW4zL25hbi4zPT09DQouXCIgQ29weXJpZ2h0IDIwMDIgV2FsdGVyIEhhcm1zICh3
YWx0ZXIuaGFybXNAaW5mb3JtYXRpay51bmktb2xkZW5idXJnLmRlKQ0KPT09bWFuMy9OQU4u
Mz09PQ0KLnNvIG1hbjMvSU5GSU5JVFkuMw0KDQoNCkF0IGxlYXN0LCBfRXhpdCgyKSBhbmQg
X2V4aXQoMikgcG9pbnQgdG8gdGhlIHNhbWUgcGFnZS4gIG5hbigzKSBhbmQgDQpOQU4oMykg
ZG9uJ3QsIHRob3VnaCENCg0KV2UgY2FuJ3QgYmxhbWUgdGhlIHdyaXRlcnMsIHNpbmNlIHRo
ZSBpZGVudGlmaWVycyBoYXZlIHRob3NlIG5hbWVzIGluIEMuIA0KICBMdWNraWx5LCBtYW4o
MSkgc2hvd3MgeW91IHRoZSByaWdodCBwYWdlIGlmIHlvdSBzcGVjaWZ5IHRoZSByaWdodCBz
dHJpbmcuDQoNCg0KSSBmZWVsIGEgbmVlZCB0byBmaXggdGhpcyBsYWNrIG9mIHByZWNpc2lv
biBpbiB0aGUgcGFnZSB0aXRsZXMuICBVbmxlc3MgDQpzb21lb25lIG9wcG9zZXMgdG8gaXQg
d2l0aCBzb21lIHN0cm9uZyByZWFzb24sIHdoaWNoIEkgZG9uJ3QgZXhwZWN0Lg0KDQpJdCds
bCB0YWtlIHNvbWUgdGltZSB0byBkbyBpdCwgYnV0IGlmIG5vLW9uZSBzcGVha3MgaW4gYSBy
ZWFzb25hYmxlIA0KdGltZSwgSSdsbCBzdGFydCBkb2luZyBpdCA6KS4NCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCg0KLS0gDQpBbGVqYW5kcm8g
Q29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------iWPhWmIHY8aLHTtdyK7gHDql--

--------------bPPE2jRh0yTh3nlbpgMWBK0X
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLZ3mEACgkQnowa+77/
2zIOuw//eGGyiu+OKmBmsoXB3HwlJ96rHoupD5r99erFXAzqB6s0GUV9Q50rmr+U
C5DX84VsiGjSxHDPBQg6hnCQQVe5epcqVdCKwS27P+g5Eg9pLBQok96eiWEXtMc8
lwoErlViZ9ZpyUZ2oVU+oNM/4ixmM9sJ/0qpWxPCOiL9Ka50h4a0H3+dv7IpSBaC
rE70DTp3Dur6x18bZSNQ3wWzh9PdaAL9BAXHYQzSssBj+dCi9jtPE76vFV8gz1Ft
BoOw0qvpzNY1gHohSnsiiB62wVZ4JpQmLXC/wMja/hzIhhHMIr3U9ZpgGaEyKZkj
A+unuRiRKDHlsg3rog9AMKF93rcotbNkitmvZKr2aoHON6JM1oIrBhjiyA/DslGU
1PEj1kXaIC2SGEhYhUCGURMykgqNVQAhmfR3x7UQk1Av6DgKJpkMIN0KE14SVw+q
5aDgsC0tfCfuNcVj2NNNCe3alGC8n4es9d7GFxJ28peJiRxzvyZ8wokxlPmTT39s
dHFCI8vCe+bj45vP1UP9XZ+x9hZueO1dZ3nYe+ZOM79LQUWKUAqbVNgyw5xrTJsc
mCkzN3UASu3xyIhKSaP61JK7LlWy60LIkHJQ1UZknMqYSbSoYL4oFyQkNtsxOZeg
uS+4CfvzA3zOeqg2sps5qHDA8ERV/yfxTBAna3BwJH1vRiAFp7g=
=KWMh
-----END PGP SIGNATURE-----

--------------bPPE2jRh0yTh3nlbpgMWBK0X--
