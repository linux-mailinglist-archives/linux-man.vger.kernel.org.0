Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B820657A9B3
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 00:18:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235849AbiGSWS6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 18:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbiGSWS5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 18:18:57 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29F4153D1D
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:18:55 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id v5so1034511wmj.0
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to;
        bh=sJKaITPefSoKSY6SJlQcfJNTgYE/GVnas5PeBYjd/14=;
        b=Fm2+LMnvqTBI9oEsqnEo9VHjGLcUMn5za01kp0ezSmNtBLfJScZW/ZCyzRFlzPRqOZ
         FDw+J8TJHCQp9wNXJeS3xwgx8Cy6EEW2YW+vczZkcEVWmoSAesV0szLOZ8Z9Hzuv4YnS
         ZgI0iklnFaUR+lwtAoi/YAYght0K5c7DkcygoPK1fw8qoQV4u2h8BGM5ethSwRFBfGxV
         vp2zcoTqIX/Sx7tE0yhtpaCGx06YYAquVqgxu9yKAMel8gJ3GWTi3xl9xrwJ/bEjT6xD
         6B/PtAnQXP4ke6Q/gh7FSOFbE+mBxGyD6hq0pmsqeimjTHVSEaDIW68WzMNKa0scDFYA
         +t3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to;
        bh=sJKaITPefSoKSY6SJlQcfJNTgYE/GVnas5PeBYjd/14=;
        b=t/qtRuZjJfWdMIA5Q0GmWWIE50+4bQ0wjopaiYYA66W+9dlvlGtOKRw38CpMRRAFXn
         f2ro2SSXy8NnGgJIllQDg9N5bZhuttz9aV5h4jWw5LqFYUrRrBMOqQMxEhoMuRisJgbE
         eUVhKD3m/dEOsXMK2yHwrcYCPC9QpjuK+wHOMjFs204GhqcJbYey7Ez6mfpOUc6CeY4v
         5Y0SHms4g1tjc4bh3k4Tmoqq+dYJFWW0hoMyTuAT5DwDaeZuKQ6ggL4yLkbNZHtkVGGd
         PL+z6BzySzu4HIEd6tZLrYemxwU+oCMld/Qm0lhELUUXI0HTeu2S1RUZ7igV7L6pPDep
         GHMw==
X-Gm-Message-State: AJIora9XCd6kiRzYKEdLPEE9jQPdt12AnfpyqP4mjQ8Y1R/h628CWdMx
        JP8/Ajq8geQ24F/nvHprhPs=
X-Google-Smtp-Source: AGRyM1v7p8ba2owaFhaHfdTsLtLMZJNR8Jkc8KnyfRIply3wb/5Ivnf4vc3Z84WQuelzbMWl3gpaFQ==
X-Received: by 2002:a05:600c:3b07:b0:3a3:1433:10b5 with SMTP id m7-20020a05600c3b0700b003a3143310b5mr1088342wms.129.1658269133676;
        Tue, 19 Jul 2022 15:18:53 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p15-20020a05600c358f00b003a32297598csm212742wmq.43.2022.07.19.15.18.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 15:18:53 -0700 (PDT)
Message-ID: <fe9d3f92-2196-eec6-ac9a-e5636a6730a3@gmail.com>
Date:   Wed, 20 Jul 2022 00:18:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
 <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
 <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
 <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
In-Reply-To: <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ij4nT7GTBKw0vGCqLLEBMZ0j"
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
--------------ij4nT7GTBKw0vGCqLLEBMZ0j
Content-Type: multipart/mixed; boundary="------------0WMX7kUVxpAoOk5plBNVGY8z";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <fe9d3f92-2196-eec6-ac9a-e5636a6730a3@gmail.com>
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
 <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
 <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
 <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
In-Reply-To: <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>

--------------0WMX7kUVxpAoOk5plBNVGY8z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDcvMTkvMjIgMjM6NTUsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSEN
Cj4gDQo+IE9uIDcvMTkvMjIgMjM6MjcsINC90LDQsSB3cm90ZToNCj4+IE9uIFR1ZSwgSnVs
IDE5LCAyMDIyIGF0IDEwOjUwOjA2UE0gKzAyMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPj4+IEFsc28sIHBsZWFzZSBhZGQgdGhlIGxpbmsgcGFnZSBuYW1lIHRvIHRoZSBsaXN0
IG9mIGFmZmVjdGVlZCBwYWdlczoNCj4+PiBzdHJmdGltZS4zLCBzdHJmdGltZV9sLjM6IC4u
Lg0KPj4NCj4+IEZpeGVkLg0KPj4NCj4+PiBQcmVmZXIgLlBQDQo+Pj4NCj4+PiBXZSBhdm9p
ZCByYXcgcm9mZiByZXF1ZXN0cyBpbiBtYW4oNykgcGFnZXMgYXMgbXVjaCBhcyBwb3NzaWJs
ZS4NCj4+PiBJJ2QgdGVsbCB5b3UgaG93IHRvIGdldCB0aGUgc2FtZSBiZWhhdmlvciB3aXRo
IHJhcmUgbWFuKDcpIG1hY3JvcywgYnV0IEkNCj4+PiBkb24ndCB0aGluayB3ZSBuZWVkIHRv
IGNvbXBsaWNhdGUgaXQsIHdoZW4gLlBQIGlzIGFsc28gbmljZSBoZXJlLg0KPj4+IEJ1dCBq
dXN0IGZvciB5b3UgdG8ga25vdywgdGhlcmUncyAuUEQgMCBpbiBtYW4oNykuDQo+Pg0KPj4g
SSBncmVwcGVkIGZvciAuYnIgc3BlY2lmaWNhbGx5IGFuZCBzYXcgaXQncyB1c2VkIHNvIEkg
dXNlZCBpdC4NCj4+IFJlcGxhY2VkIHdpdGggLlBEIDAsIC5QUCwgLlBEIHRvIHRoZSBzYW1l
IGVmZmVjdC4NCj4gDQo+IFllYWgsIG10ayB3YXNuJ3QgdmVyeSBoYXBweSB3aXRoIG1lIGZp
eGluZyBleGlzdGluZyBwYWdlcywgdW5kZXIgdGhlIA0KPiBmZWFyIG9mIGNodXJuLsKgIEkn
bSBtb3JlIGNvbmNlcm5lZCB3aXRoIHRoZSBtYWludGFpbmFiaWxpdHkgaXNzdWVzIG9mIA0K
PiBoYXZpbmcgZXhpc3RpbmcgdW5kZXNpcmFibGUgY29kZSAoZXZlbiBpZiBpdCBKdXN0IFdv
cmtzIGZvciBub3cgYW5kIA0KPiBpc24ndCByZWFsbHkgYnJva2VuKSwgc2luY2UgaXQgbGVh
ZHMgdG8gY29udHJpYnV0b3JzIGxpa2UgeW91IHRvIHRoaW5rIA0KPiB0aGF0IHdlIGFjdHVh
bGx5IHVzZSBpdCwgYW5kIHRoZW4gd2UgKEk/KSBrZWVwIHJlY2VpdmluZyBwYXRjaGVzIHdp
dGggDQo+IHVuZGVzaXJhYmxlIGNvZGU7IHRoZW4gSSBuZWVkIHRvIGhhdmUgZGlzY3Vzc2lv
bnMgZXhwbGFpbmluZyB0aGF0IHdlIA0KPiBoYXZlIG9sZCBjb2RlIHRoYXQgdXNlcyBpdCwg
YnV0IEknZCBwcmVmZXIgdG8gYXZvaWQgaXQgaW4gbmV3IGNvZGUsIGV0Yy4NCj4gDQo+IFNv
IHllcywgd2UgaGF2ZSBvbGQgY29kZSB0aGF0IGF0IHNvbWUgcG9pbnQgSSdkIGxpa2UgdG8g
Zml4LCBhbmQgSSB3aWxsLCANCj4gYnV0IHRoZXJlJ3MgdG9vIG11Y2ggb2YgaXQuIDopDQo+
IA0KPj4NCj4+IFNlZSB1cGRhdGVkIHNjaXNzb3ItcGF0Y2ggYmVsb3c6DQo+PiAtLSA+OCAt
LQ0KPj4gRGF0ZTogVHVlLCAxOSBKdWwgMjAyMiAyMDo0Njo0OSArMDIwMA0KPj4gU3ViamVj
dDogW1BBVENIIHYyXSBzdHJmdGltZS4zLCBzdHJmdGltZV9sLjM6IG1lbnRpb24gc3RyZnRp
bWVfbCgpIA0KPj4gd2l0aCAuc28NCj4+IMKgIGxpbmsNCj4gDQo+IE9rYXksIHNvIHlvdSB3
YW50IHRvIGtlZXAgIm1lbnRpb24iLsKgIEkgd2lsbCBrZWVwIGl0IDspDQo+IA0KPiBDaGVl
cnMsDQo+IA0KPiBBbGV4DQo+IA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFpp
ZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQo+PiAtLS0N
Cj4+IMKgIG1hbjMvc3RyZnRpbWUuM8KgwqAgfCAyOSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrLQ0KPj4gwqAgbWFuMy9zdHJmdGltZV9sLjMgfMKgIDEgKw0KPj4gwqAgMiBmaWxl
cyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgbWFuMy9zdHJmdGltZV9sLjMNCj4+DQo+PiBkaWZmIC0tZ2l0IGEv
bWFuMy9zdHJmdGltZS4zIGIvbWFuMy9zdHJmdGltZS4zDQo+PiBpbmRleCBkYzk4YTUxMjIu
LmE5M2MwZjRjMiAxMDA2NDQNCj4+IC0tLSBhL21hbjMvc3RyZnRpbWUuMw0KPj4gKysrIGIv
bWFuMy9zdHJmdGltZS4zDQo+PiBAQCAtMjcsNiArMjcsMTEgQEAgU3RhbmRhcmQgQyBsaWJy
YXJ5DQo+PiDCoCAuQkkgInNpemVfdCBzdHJmdGltZShjaGFyICpyZXN0cmljdCAiIHMgIiwg
c2l6ZV90ICIgbWF4ICwNCj4+IMKgIC5CSSAiwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbnN0IGNoYXIgKnJlc3RyaWN0ICIgZm9ybWF0ICwNCj4+IMKgIC5CSSAiwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCB0bSAqcmVzdHJpY3QgIiB0
bSApOw0KPj4gKy5QUA0KPj4gKy5CSSAic2l6ZV90IHN0cmZ0aW1lX2woY2hhciAqcmVzdHJp
Y3QgIiBzICIsIHNpemVfdCAiIG1heCAsDQo+PiArLkJJICLCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgKnJlc3RyaWN0ICIgZm9ybWF0ICwNCj4+ICsu
QkkgIsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHRt
ICpyZXN0cmljdCAiIHRtICwNCj4+ICsuQkkgIsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbG9jYWxlX3QgIiBsb2NhbGUgKTsNCg0KU29ycnksIEkganVzdCByZWFsaXpl
ZCBub3cuICBBbGlnbm1lbnQgb2YgY29udGludWF0aW9uIGxpbmVzIHNob3VsZCBiZSANCnRo
ZSBzYW1lIGZvciBib3RoIGZ1bmN0aW9ucy4NCg0KU2VlIG1hbi1wYWdlcyg3KToNCiAgICBT
WU5PUFNJUw0KICAgICAgICBXcmFwICB0aGUgIGZ1bmN0aW9uICBwcm90b3R5cGUocykgIGlu
IGEgLm5mLy5maSBwYWlyIHRvIHByZXZlbnQNCiAgICAgICAgZmlsbGluZy4NCg0KICAgICAg
ICBJbiBnZW5lcmFsLCB3aGVyZSBtb3JlIHRoYW4gb25lIGZ1bmN0aW9uIHByb3RvdHlwZSBp
cyBzaG93biAgaW4NCiAgICAgICAgdGhlICBTWU5PUFNJUywgIHRoZSBwcm90b3R5cGVzIHNo
b3VsZCBub3QgYmUgc2VwYXJhdGVkIGJ5IGJsYW5rDQogICAgICAgIGxpbmVzLiAgSG93ZXZl
ciwgYmxhbmsgbGluZXMgKGFjaGlldmVkIHVzaW5nIC5QUCkgbWF5IGJlICBhZGRlZA0KICAg
ICAgICBpbiB0aGUgZm9sbG93aW5nIGNhc2VzOg0KDQogICAgICAgICogIHRvICBzZXBhcmF0
ZSAgbG9uZyBsaXN0cyBvZiBmdW5jdGlvbiBwcm90b3R5cGVzIGludG8gcmVsYXRlZA0KICAg
ICAgICAgICBncm91cHMgKHNlZSBmb3IgZXhhbXBsZSBsaXN0KDMpKTsNCg0KICAgICAgICAq
ICBpbiBvdGhlciBjYXNlcyB0aGF0IG1heSBpbXByb3ZlIHJlYWRhYmlsaXR5Lg0KDQogICAg
ICAgIEluIHRoZSBTWU5PUFNJUywgYSBsb25nIGZ1bmN0aW9uIHByb3RvdHlwZSBtYXkgbmVl
ZCB0byBiZSAgY29u4oCQDQogICAgICAgIHRpbnVlZCAgb3ZlciAgdG8gIHRoZSAgbmV4dCBs
aW5lLiAgVGhlIGNvbnRpbnVhdGlvbiBsaW5lIGlzIGlu4oCQDQogICAgICAgIGRlbnRlZCBh
Y2NvcmRpbmcgdG8gdGhlIGZvbGxvd2luZyBydWxlczoNCg0KICAgICAgICAxLiBJZiB0aGVy
ZSBpcyBhIHNpbmdsZSBzdWNoIHByb3RvdHlwZSB0aGF0IG5lZWRzIHRvIGJlIGNvbnRpbuKA
kA0KICAgICAgICAgICB1ZWQsIHRoZW4gYWxpZ24gdGhlIGNvbnRpbnVhdGlvbiBsaW5lIHNv
IHRoYXQgd2hlbiB0aGUgIHBhZ2UNCiAgICAgICAgICAgaXMgcmVuZGVyZWQgb24gYSBmaXhl
ZOKAkHdpZHRoIGZvbnQgZGV2aWNlIChlLmcuLCBvbiBhbiB4dGVybSkNCiAgICAgICAgICAg
dGhlIGNvbnRpbnVhdGlvbiBsaW5lIHN0YXJ0cyBqdXN0IGJlbG93IHRoZSBzdGFydCBvZiB0
aGUgYXLigJANCiAgICAgICAgICAgZ3VtZW50ICBsaXN0IGluIHRoZSBsaW5lIGFib3ZlLiAg
KEV4Y2VwdGlvbjogdGhlIGluZGVudGF0aW9uDQogICAgICAgICAgIG1heSBiZSBhZGp1c3Rl
ZCBpZiBuZWNlc3NhcnkgdG8gcHJldmVudCBhIHZlcnkgbG9uZyBjb250aW514oCQDQogICAg
ICAgICAgIGF0aW9uIGxpbmUgb3IgYSBmdXJ0aGVyIGNvbnRpbnVhdGlvbiBsaW5lIHdoZXJl
IHRoZSBmdW5jdGlvbg0KICAgICAgICAgICBwcm90b3R5cGUgaXMgdmVyeSBsb25nLikgIEFz
IGFuIGV4YW1wbGU6DQoNCiAgICAgICAgICAgICAgIGludCB0Y3NldGF0dHIoaW50IGZkLCBp
bnQgb3B0aW9uYWxfYWN0aW9ucywNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29u
c3Qgc3RydWN0IHRlcm1pb3MgKnRlcm1pb3NfcCk7DQoNCiAgICAgICAgMi4gQnV0LCB3aGVy
ZSBtdWx0aXBsZSBmdW5jdGlvbnMgaW4gdGhlIFNZTk9QU0lTICByZXF1aXJlICBjb27igJAN
CiAgICAgICAgICAgdGludWF0aW9uICBsaW5lcywgIGFuZCAgdGhlICBmdW5jdGlvbiAgbmFt
ZXMgIGhhdmUgZGlmZmVyZW50DQogICAgICAgICAgIGxlbmd0aHMsIHRoZW4gYWxpZ24gYWxs
IGNvbnRpbnVhdGlvbiBsaW5lcyB0byBzdGFydCAgaW4gIHRoZQ0KICAgICAgICAgICBzYW1l
ICBjb2x1bW4uICBUaGlzIHByb3ZpZGVzIGEgbmljZXIgcmVuZGVyaW5nIGluIFBERiBvdXRw
dXQNCiAgICAgICAgICAgKGJlY2F1c2UgdGhlIFNZTk9QU0lTICB1c2VzICBhICB2YXJpYWJs
ZSAgd2lkdGggIGZvbnQgIHdoZXJlDQogICAgICAgICAgIHNwYWNlcyAgcmVuZGVyICBuYXJy
b3dlciB0aGFuIG1vc3QgY2hhcmFjdGVycykuICBBcyBhbiBleGFt4oCQDQogICAgICAgICAg
IHBsZToNCg0KICAgICAgICAgICAgICAgaW50IGdldG9wdChpbnQgYXJnYywgY2hhciAqIGNv
bnN0IGFyZ3ZbXSwNCiAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgY2hhciAqb3B0
c3RyaW5nKTsNCiAgICAgICAgICAgICAgIGludCBnZXRvcHRfbG9uZyhpbnQgYXJnYywgY2hh
ciAqIGNvbnN0IGFyZ3ZbXSwNCiAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgY2hh
ciAqb3B0c3RyaW5nLA0KICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3Qg
b3B0aW9uICpsb25nb3B0cywgaW50ICpsb25naW5kZXgpOw0KDQotLSANCkFsZWphbmRybyBD
b2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------0WMX7kUVxpAoOk5plBNVGY8z--

--------------ij4nT7GTBKw0vGCqLLEBMZ0j
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXLcwACgkQnowa+77/
2zItZA//ekpfw/nPmzWsL6R28Zr+0nuYSw17WJAKiT/DvbNV/D4FnAgBB5mxVaf9
eO/yvZ2tofSy7JeFzGSYk1nwJQpnYpUI46KLoCI8mhKAbrW7gXudNjl3plAdhkPV
oOYoHszeokfESpg2GWRWzYTAt0TPldtMHNrJKWyD0EpIrrPxf3PdrJVdaWl9eOgc
4bVAEFfS0Y6VuXyrz4AJY1GeTvBppweOJQ1rDgoElTVJmcE3zzehQqSjdIqxRLKd
bL5qRTvSy1EuM4kqYj88TemCaRnG1IRCWyljDJe+9OQmr8kZKU2LCx7AbA4xt1dD
395C4fzIDKFKGgPqHr5K1O8jeF11KGWcmEkakf0Wn77JyaRAlY/LWJ4SSn3addH3
fDJFtmD2QpF3XpYtBcrcqpDtsTMdta5LPi1/fwVvXqlQ997rNFELX2L2ZlPzWWs/
TXZUUOQx3L6U4eXG/2x9Tpbe6GLy9TBd+RkuojcXoINMMvW5GxPWsrwPnZTw1yCr
8RsMIO0KusLwF4EunuamolNhBeCRMiraSuRXOwHXk+batJjyBBnH3nRFNRcEQMaE
8emM1PX+8MyNokWwla4fQ+s6X3tKS/uZ2fOQQiw1MMxjULxe6meBPcXhUuFkrTwv
aOHmml3/WZE08/GWTZRaiMWuRtr7BJlfI+DHe7ZGq+r3husorYw=
=5KXO
-----END PGP SIGNATURE-----

--------------ij4nT7GTBKw0vGCqLLEBMZ0j--
