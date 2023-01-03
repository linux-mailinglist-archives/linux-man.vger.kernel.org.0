Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C59AC65BDAA
	for <lists+linux-man@lfdr.de>; Tue,  3 Jan 2023 11:08:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236814AbjACKH7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Jan 2023 05:07:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231250AbjACKH7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Jan 2023 05:07:59 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E26112A
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 02:07:57 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id fm16-20020a05600c0c1000b003d96fb976efso20546198wmb.3
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 02:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iStzkpFmgaVYn5IbYsxT3u7W0y5xFrN+Xx3+OkOsMtA=;
        b=cTizDzFWZITLJCHOLL9O2oIsgJUWvsNpr47n4GN7fEk2/0YR1dOo5OMh+r4xbgSySP
         NpwIY7hCdXOh1hCk9y7pGyLrqHZdu5yIS6BI1GO3uQQnn6OGVc7TTzwqy0b69P+k7bKc
         i3AOqsWQsQ8XWgOBiNQCrW59u3UJy8us1tjW7oQDJbrnRt/nDeEZGDzMKGyYDV5Rw27V
         yARjXO6DKBgOMvCQSxJE4TAPj+gVu4PwID7kpDIxi3G0EmOrodvaEHdjN70HZ0YLkJJy
         FBk+rjCBf2d0GnRVBT1OrJhHtOPaoeShkRunI4t7J2IUEMndUGHc4RbuM+GYblrgsI1I
         5h5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iStzkpFmgaVYn5IbYsxT3u7W0y5xFrN+Xx3+OkOsMtA=;
        b=t/qt4Vw+pql7yBTc+TmhFBp9zrzJUZ4HBtXrhy99ljqwXmh1LOHPGS0Sz7wkTkcadh
         GJOHNd4DC59LuKcT0/dI0u/od2PtbVyk6hLFazDEh+c0RuKKDQxMT9WhB4bJTwMv7mIP
         b+3Rs3PneOe9Ax5PP3DLzukoPx3/HNS8BP+9UHZE2p/Q0JhkxsmPUNThb4vAgl/lG+Az
         BhgjGjGUXxKf2WYuheedtRGXNaZwTyqn8/aT3fbSwuDiJQINjiHha05ql1RUZjYKNYTZ
         BQxHaGBJB7X+JQqqywnxmquL/yqdib8Cp8B54f1FapfppRoZ6dQe+74+UDo5r3KgHLoe
         K1zw==
X-Gm-Message-State: AFqh2kp+SNUPlGoBchDqEe+R72dh99SFhjYvLx9r1aFLy7QzdF4g9uKp
        vJGuyY9TnCusBjTx8X3Enpo=
X-Google-Smtp-Source: AMrXdXtLb5f64joa1gjypOLP1JEs0W3DIfrNvSNnS22eMP31PVHouc9ZPruuRFeQJFc8JaADWqSS8A==
X-Received: by 2002:a05:600c:1c8e:b0:3d2:4234:e8fe with SMTP id k14-20020a05600c1c8e00b003d24234e8femr31207604wms.19.1672740475967;
        Tue, 03 Jan 2023 02:07:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o15-20020a05600c4fcf00b003c6f3f6675bsm50111902wmq.26.2023.01.03.02.07.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 02:07:55 -0800 (PST)
Message-ID: <0d4be8ad-8de2-92ec-ebf4-3f78586ddaae@gmail.com>
Date:   Tue, 3 Jan 2023 11:07:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] prctl.2, proc.5: Document VMA naming
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Nick Gregory <nick@nickgregory.me>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "ccross@google.com" <ccross@google.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Kees Cook <keescook@chromium.org>
References: <A9E684DF-4985-4441-BA62-490C2F04AE70@nickgregory.me>
 <0bae90d9-ea36-9c3b-13e4-1e73f9fb470e@gmail.com>
In-Reply-To: <0bae90d9-ea36-9c3b-13e4-1e73f9fb470e@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lIJyUDnuBSx5Nrln7dh44iQ1"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------lIJyUDnuBSx5Nrln7dh44iQ1
Content-Type: multipart/mixed; boundary="------------N5F1R0Z903bGLypcruHRmqoM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Nick Gregory <nick@nickgregory.me>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: "ccross@google.com" <ccross@google.com>,
 Suren Baghdasaryan <surenb@google.com>, Kees Cook <keescook@chromium.org>
Message-ID: <0d4be8ad-8de2-92ec-ebf4-3f78586ddaae@gmail.com>
Subject: Re: [PATCH] prctl.2, proc.5: Document VMA naming
References: <A9E684DF-4985-4441-BA62-490C2F04AE70@nickgregory.me>
 <0bae90d9-ea36-9c3b-13e4-1e73f9fb470e@gmail.com>
In-Reply-To: <0bae90d9-ea36-9c3b-13e4-1e73f9fb470e@gmail.com>

--------------N5F1R0Z903bGLypcruHRmqoM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvMy8yMyAxMTowMiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhlbGxv
IE5pY2ssDQo+IA0KPiBPbiAxLzMvMjMgMDQ6MjgsIE5pY2sgR3JlZ29yeSB3cm90ZToNCj4+
IEJyaW5nIGluIHByY3RsIG1hbiBwYWdlIGNoYW5nZXMgZnJvbSB0aGUgcGF0Y2ggc2V0IGJ5
IENvbGluIENyb3NzDQo+PiA8Y2Nyb3NzQGdvb2dsZS5jb20+IFswXSwgYW5kIGRvY3VtZW50
IHRoZSBjb3JyZXNwb25kaW5nIHZpcnR1YWwgbmFtZXMgaW4gcHJvYy4NCj4+DQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBOaWNrIEdyZWdvcnkgPG5pY2tAbmlja2dyZWdvcnkubWU+DQo+IA0KPiBQ
bGVhc2UgYWRkIENvbGluIChhbmQgd2hvZXZlciB3YXMgaW50ZXJlc3RlZCBpbiB0aGUgcGF0
Y2gsIHdoaWNoIHNlZW1zIHRvIGJlIGF0IA0KPiBsZWFzdCBTdXJlbiBhbmQgS2VlcykgdG8g
dGhlIENjIHRhZ3MuDQo+IA0KPiBDaGVlcnMsDQo+IEFsZXgNCj4gDQo+Pg0KPj4gWzBdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzIwMjExMDE5MjE1NTExLjM3NzE5Njkt
Mi1zdXJlbmJAZ29vZ2xlLmNvbS8NCj4+IC0tLQ0KPj4gwqAgbWFuMi9wcmN0bC4yIHwgMzUg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+IMKgIG1hbjUvcHJvYy41
wqAgfCAxNCArKysrKysrKysrKysrKw0KPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNl
cnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL21hbjIvcHJjdGwuMiBiL21hbjIvcHJj
dGwuMg0KPj4gaW5kZXggNzRmODZmZjQ5Li44MmI4YTFiMDIgMTAwNjQ0DQo+PiAtLS0gYS9t
YW4yL3ByY3RsLjINCj4+ICsrKyBiL21hbjIvcHJjdGwuMg0KPj4gQEAgLTc2OSw2ICs3Njks
NDEgQEAgVGhpcyBmZWF0dXJlIGlzIGF2YWlsYWJsZSBvbmx5IGlmIHRoZSBrZXJuZWwgaXMg
YnVpbHQgDQo+PiB3aXRoIHRoZQ0KPj4gwqAgLkIgQ09ORklHX0NIRUNLUE9JTlRfUkVTVE9S
RQ0KPj4gwqAgb3B0aW9uIGVuYWJsZWQuDQo+PiDCoCAuUkUNCj4+ICsuXCIgcHJjdGwgUFJf
U0VUX1ZNQQ0KPj4gKy5UUA0KPj4gKy5CUiBQUl9TRVRfVk1BICIgKHNpbmNlIExpbnV4IDUu
MTcpIg0KPj4gKy5cIiBDb21taXQgOWExMDA2NGY1NjI1ZDU1NzJjMzYyNmMxNTE2ZTBiZWJj
NmM5ZmU5Yg0KPj4gK1NldHMgYW4gYXR0cmlidXRlIHNwZWNpZmllZCBpbg0KPj4gKy5JIGFy
ZzINCj4+ICtmb3IgdmlydHVhbCBtZW1vcnkgYXJlYXMgc3RhcnRpbmcgZnJvbQ0KPj4gK3Ro
ZSBhZGRyZXNzIHNwZWNpZmllZCBpbg0KPj4gKy5JIGFyZzMNCj4+ICthbmQgc3Bhbm5pbmcg
dGhlIHNpemUgc3BlY2lmaWVkIGluDQo+PiArLklSIGFyZzQgLg0KPj4gKy5JIGFyZzUNCj4+
ICtzcGVjaWZpZXMgdGhlIHZhbHVlIG9mIHRoZSBhdHRyaWJ1dGUgdG8gYmUgc2V0Lg0KPj4g
Ky5JUA0KPj4gK05vdGUgdGhhdCBhc3NpZ25pbmcgYW4gYXR0cmlidXRlIHRvIGEgdmlydHVh
bCBtZW1vcnkNCj4+ICthcmVhIG1pZ2h0IHByZXZlbnQgaXQgZnJvbSBiZWluZyBtZXJnZWQg
d2l0aCBhZGphY2VudCB2aXJ0dWFsDQoNClBsZWFzZSB1c2Ugc2VtYW50aWMgbmV3bGluZXMu
DQoNCm1hbi1wYWdlcyg3KToNCiAgICBVc2Ugc2VtYW50aWMgbmV3bGluZXMNCiAgICAgICAg
SW4gIHRoZSBzb3VyY2Ugb2YgYSBtYW51YWwgcGFnZSwgbmV3IHNlbnRlbmNlcyBzaG91bGQg
YmUgc3RhcnRlZCBvbiBuZXcNCiAgICAgICAgbGluZXMsIGxvbmcgc2VudGVuY2VzIHNob3Vs
ZCBiZSBzcGxpdCBpbnRvIGxpbmVzIGF0IGNsYXVzZSBicmVha3MgKGNvbeKAkA0KICAgICAg
ICBtYXMsIHNlbWljb2xvbnMsIGNvbG9ucywgYW5kIHNvIG9uKSwgYW5kIGxvbmcgY2xhdXNl
cyBzaG91bGQgIGJlICBzcGxpdA0KICAgICAgICBhdCAgcGhyYXNlICBib3VuZGFyaWVzLiAg
IFRoaXMgY29udmVudGlvbiwgc29tZXRpbWVzIGtub3duIGFzICJzZW1hbnRpYw0KICAgICAg
ICBuZXdsaW5lcyIsIG1ha2VzIGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiAgcGF0
Y2hlcywgIHdoaWNoICBvZnRlbg0KICAgICAgICBvcGVyYXRlIGF0IHRoZSBsZXZlbCBvZiBp
bmRpdmlkdWFsIHNlbnRlbmNlcywgY2xhdXNlcywgb3IgcGhyYXNlcy4NCg0KDQo+PiArbWVt
b3J5IGFyZWFzIGR1ZSB0byB0aGUgZGlmZmVyZW5jZSBpbiB0aGF0IGF0dHJpYnV0ZSdzIHZh
bHVlLg0KPj4gKy5JUA0KPj4gK0N1cnJlbnRseSwNCj4+ICsuSSBhcmcyDQo+PiArbXVzdCBi
ZSBvbmUgb2Y6DQo+PiArLlJTDQo+PiArLlRQDQo+PiArLkIgUFJfU0VUX1ZNQV9BTk9OX05B
TUUNCj4+ICtTZXQgYSBuYW1lIGZvciBhbm9ueW1vdXMgdmlydHVhbCBtZW1vcnkgYXJlYXMu
DQo+PiArLkkgYXJnNQ0KPj4gK3Nob3VsZCBiZSBhIHBvaW50ZXIgdG8gYSBudWxsLXRlcm1p
bmF0ZWQgc3RyaW5nIGNvbnRhaW5pbmcgdGhlDQo+PiArbmFtZS4gVGhlIG5hbWUgbGVuZ3Ro
IGluY2x1ZGluZyBudWxsIGJ5dGUgY2Fubm90IGV4Y2VlZA0KPj4gKzgwIGJ5dGVzLiBJZg0K
Pj4gKy5JIGFyZzUNCj4+ICtpcyBOVUxMLCB0aGUgbmFtZSBvZiB0aGUgYXBwcm9wcmlhdGUN
Cj4+ICthbm9ueW1vdXMgdmlydHVhbCBtZW1vcnkgYXJlYXMgd2lsbCBiZSByZXNldC4NCj4+
ICtUaGUgbmFtZSBjYW4gY29udGFpbiBvbmx5IHByaW50YWJsZSBhc2NpaSBjaGFyYWN0ZXJz
DQo+PiArKGluY2x1ZGluZyBzcGFjZSksIGV4Y2VwdCAnWycsJ10nLCdcJywnJCcgYW5kICdg
Jy4NCg0KWW91IG5lZWQgdG8gZXNjYXBlIHNldmVyYWwgY2hhcmFjdGVycyBoZXJlLiAgU2Vl
IGdyb2ZmX2NoYXIoNyk6DQoNCiAgICAgICAgICDilIzilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilJANCiAgICAgICAgICDilIJLZXljYXAgICBBcHBlYXJhbmNlIGFu
ZCBtZWFuaW5nICAgU3BlY2lhbCBjaGFyYWN0ZXIgYW5kIG1lYW5pbmcgICDilIINCiAgICAg
ICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCiAgICAg
ICAgICDilIIiICAgICAgICAiIG5ldXRyYWwgZG91YmxlIHF1b3RlICAgXFtkcV0gbmV1dHJh
bCBkb3VibGUgcXVvdGUgICAgICDilIINCiAgICAgICAgICDilIInICAgICAgICDigJkgY2xv
c2luZyBzaW5nbGUgcXVvdGUgICBcW2FxXSBuZXV0cmFsIGFwb3N0cm9waGUgICAgICAgIOKU
gg0KICAgICAgICAgIOKUgi0gICAgICAgIOKAkCBoeXBoZW4gICAgICAgICAgICAgICAgIFwt
IG9yIFxbLV0gbWludXMgc2lnbi9Vbml4IGRhc2gg4pSCDQogICAgICAgICAg4pSCXCAgICAg
ICAgKGVzY2FwZSBjaGFyYWN0ZXIpICAgICAgIFxlIG9yIFxbcnNdIHJldmVyc2Ugc29saWR1
cyAgICAg4pSCDQogICAgICAgICAg4pSCXiAgICAgICAgy4YgbW9kaWZpZXIgY2lyY3VtZmxl
eCAgICBcKGhhIGNpcmN1bWZsZXgvY2FyZXQv4oCcaGF04oCdICAgICDilIINCiAgICAgICAg
ICDilIJgICAgICAgICDigJggb3BlbmluZyBzaW5nbGUgcXVvdGUgICBcKGdhIGdyYXZlIGFj
Y2VudCAgICAgICAgICAgICAgIOKUgg0KICAgICAgICAgIOKUgn4gICAgICAgIMucIG1vZGlm
aWVyIHRpbGRlICAgICAgICAgXCh0aSB0aWxkZSAgICAgICAgICAgICAgICAgICAgICDilIIN
CiAgICAgICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgN
Cg0KQlRXLCBhbHRob3VnaCB0aGF0IHRhYmxlIGRvZXNuJ3Qgc2hvdyBpdCwgXChkcSBhbmQg
XChhcSBhbHNvIHdvcmsgZm9yIGRvdWJsZSBhbmQgDQpzaW5nbGUgcXVvdGVzLiAgQnJhbmRl
biwgd2h5IGlzIHRoYXQgdGFibGUgaW5jb25zaXN0ZW50IHdpdGggdGhlIHN0eWxlIG9mIA0K
c3BlY2lhbCBjaGFyYWN0ZXJzPw0KDQo+PiArLlJFDQo+PiDCoCAuXCIgcHJjdGwgUFJfTVBY
X0VOQUJMRV9NQU5BR0VNRU5UDQo+PiDCoCAuVFANCj4+IMKgIC5CUiBQUl9NUFhfRU5BQkxF
X01BTkFHRU1FTlQgIiwgIiBQUl9NUFhfRElTQUJMRV9NQU5BR0VNRU5UICIgKHNpbmNlIExp
bnV4IA0KPj4gMy4xOSwgcmVtb3ZlZCBpbiBMaW51eCA1LjQ7IG9ubHkgb24geDg2KSINCj4+
IGRpZmYgLS1naXQgYS9tYW41L3Byb2MuNSBiL21hbjUvcHJvYy41DQo+PiBpbmRleCA2NWE0
YzM4ZTMuLmUwYTY0ZDQ4NiAxMDA2NDQNCj4+IC0tLSBhL21hbjUvcHJvYy41DQo+PiArKysg
Yi9tYW41L3Byb2MuNQ0KPj4gQEAgLTEzNzIsNiArMTM3MiwyMCBAQCBTZWUNCj4+IMKgIC5U
UA0KPj4gwqAgLkkgW2hlYXBdDQo+PiDCoCBUaGUgcHJvY2VzcydzIGhlYXAuDQo+PiArLlRQ
DQo+PiArLklSIFthbm9uOiBuYW1lIF0gIiAoc2luY2UgTGludXggNS4xNykiDQo+PiArLlwi
IENvbW1pdCA5YTEwMDY0ZjU2MjVkNTU3MmMzNjI2YzE1MTZlMGJlYmM2YzlmZTliDQo+PiAr
QSBuYW1lZCBwcml2YXRlIGFub255bW91cyBtYXBwaW5nLg0KPj4gK1NldCB3aXRoDQo+PiAr
LkJSIHByY3RsICgyKQ0KPj4gKy5CUiBQUl9TRVRfVk1BX0FOT05fTkFNRSAuDQo+PiArLlRQ
DQo+PiArLklSIFthbm9uX3NobWVtOiBuYW1lIF0gIiAoc2luY2UgTGludXggNi4yKSINCj4+
ICsuXCIgQ29tbWl0IGQwOWU4Y2E2Y2I5M2JiNGI5NzUxN2ExOGZiYmY3ZWNjYjBlOWZmNDMN
Cj4+ICtBIG5hbWVkIHNoYXJlZCBhbm9ueW1vdXMgbWFwcGluZy4NCj4+ICtTZXQgd2l0aA0K
Pj4gKy5CUiBwcmN0bCAoMikNCj4+ICsuQlIgUFJfU0VUX1ZNQV9BTk9OX05BTUUgLg0KPj4g
wqAgLmluDQo+PiDCoCAuUkUNCj4+IMKgIC5JUA0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------N5F1R0Z903bGLypcruHRmqoM--

--------------lIJyUDnuBSx5Nrln7dh44iQ1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOz/noACgkQnowa+77/
2zIZfA//dwQ2RrGeZk14l3h7m8kmukwO3oFYbWy4XlPLHz3T6IIkKDdUu6MCG6lp
qGNYJKpf2+vc0yw6gWr0nQ6/aBG0fnrmoujNItS0Mpkb0JAS6YNcBjXUqZNBXzk5
/o+CJpaa4IpaAgSWO445M5uuQwhkKK0NnLuqntOgWxTk6x5r3odQk4cDzZ+o1Poi
wXz2LV+J3gh3VScoVjgQnL3y+qbjc3CDoe95BL9pHaEkUvnZAgyfuu5DWiizR9Zv
BB9o7EcDzIPXzEL9QHmax60Oze4d4VVTl9uiwQjo1V0zOMrb0P6B6Q0RKNHykeQi
0ENEOdJU0y4ezs1mY/Da/xYu7LVAwGTJwmMN5qQ9jQmOiS3PqfGMR24C+DQJRAgY
I9hbX8KieCojBcrWLTRIc3QMVuPPH/CUL0/5XEXmCBQ4ZADhYfw6lr8UMiMmK+OW
J9VHp6wdoR4bTpQIlkM3WN9vnpnYvWc88sr+eXnWsZpAxHvyMHkdrEo79jvvtXJy
BqQG1YVPuvT2ubgWw6/KiqqCCP405QhtLwiWBj8OVUP8ddAVhgSTFQ+e/t7j+CtQ
YhOCpbA6gnJ2/pYR6CCVtO5IcuRSHx/6Iwzq60tgTkt4yw+2peaSjvDodWuMAqM3
jUktfQzy6LJNVcMH6xu7rgJqlb49xdv7kx3s/3QYaM80RBxn5r0=
=7dPA
-----END PGP SIGNATURE-----

--------------lIJyUDnuBSx5Nrln7dh44iQ1--
