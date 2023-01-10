Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA6E8664FF5
	for <lists+linux-man@lfdr.de>; Wed, 11 Jan 2023 00:30:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233314AbjAJXa3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 18:30:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbjAJXa1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 18:30:27 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAB6764C5
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 15:30:25 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id p1-20020a05600c1d8100b003d8c9b191e0so11323128wms.4
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 15:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=83dVVVnxs6UGRunj/eMskYCuvv+p1so9xlg+xJKmmgc=;
        b=eARF9OJV/nrWoyIjBG+It75SOqMTgVxhh3CwIXte52w3hPT94FyEbuX9uKp990CDc7
         rGwBrSCgh5GPE9+b2cob2L6/hg08EHCfMQKIvpm9oqcayeEJGYfhwJj/qYBHSxReo2w1
         TjaYlrKjOA8bKb7mfqylawBSJnVxzjBFLq4eij6oWkQQCpsHsRA5Kmq5ekQtr7L8X9PJ
         6XCYQAloozoqJOaCUbrAFsVZF0nwOels5QhE42W6AzZUfDcROs7BU2Loz/lO0nlzoj9M
         AGpiytmQ9cWBjMIN+Cdww83tpgX7vKycU50yJpuGKLoBlcSz/GSNqRKm/RgJevbjLVjf
         vc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=83dVVVnxs6UGRunj/eMskYCuvv+p1so9xlg+xJKmmgc=;
        b=hUf1VHVaycf8wk4G1ueyFsBQBaXjdGzIpdHbrPDLzOIgCgt0/i78j9dYE6rxU+gKCB
         v9IkwIgRDthL/tVvVcSaOqbWvcj1yai2tPhxyIj2B1Ge7Ms781mm1SPRsCmZMMIn+siH
         5Ikvqn6bDQ/IdhOMBXYzy/LEK0xDGfVL2o+V1dekSA14KzttlSTtulvSYKmHnImYDcFn
         vuHOQWINTS9t1sSxqG9K6MoBBrbuSN/z9poE2yxlzZpfJBUhOnZws783HAG3twi6TdVA
         1LQ70UveIDNVaJzYu0eBuVmlqMIkpDJSL44rSwrxacGBXd0/r6mvBuWau5u83zP1u/AY
         PMfQ==
X-Gm-Message-State: AFqh2kq4D/2S8tcDo6q+KiMqxU8UWTSgqMHb5sORdeG2Bt0i7ErtfigF
        2b0WsyFPi0Ql9B1f1Gel0k46kK0yHYQ=
X-Google-Smtp-Source: AMrXdXuQj2Fvbcffe/56PAgfHxhpLI46i+IIymvP7HYEU1k1vRVEIEzgwB8u9f+JVwB/NiJqw4fFYw==
X-Received: by 2002:a05:600c:1e24:b0:3d0:8643:caf1 with SMTP id ay36-20020a05600c1e2400b003d08643caf1mr51383247wmb.16.1673393424430;
        Tue, 10 Jan 2023 15:30:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z12-20020a05600c0a0c00b003cfa81e2eb4sm16273519wmp.38.2023.01.10.15.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 15:30:23 -0800 (PST)
Message-ID: <52043c93-aa58-9725-c20d-9edc1baa9131@gmail.com>
Date:   Wed, 11 Jan 2023 00:30:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: man page width limit and example indentation (was: rseq(2) man
 page)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
 <20230110190311.fk3outm4x2ojl4dm@illithid>
 <b9ab937e-9aa4-59e3-f176-2737f41c6451@gmail.com>
 <20230110213930.qrp6fdyxl34jns5t@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230110213930.qrp6fdyxl34jns5t@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------g6BHrirA102t4aYOuHZn4XPJ"
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
--------------g6BHrirA102t4aYOuHZn4XPJ
Content-Type: multipart/mixed; boundary="------------rMzidNOaQ6tORN0vZuie83yX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Message-ID: <52043c93-aa58-9725-c20d-9edc1baa9131@gmail.com>
Subject: Re: man page width limit and example indentation (was: rseq(2) man
 page)
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
 <20230110190311.fk3outm4x2ojl4dm@illithid>
 <b9ab937e-9aa4-59e3-f176-2737f41c6451@gmail.com>
 <20230110213930.qrp6fdyxl34jns5t@illithid>
In-Reply-To: <20230110213930.qrp6fdyxl34jns5t@illithid>

--------------rMzidNOaQ6tORN0vZuie83yX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8xMC8yMyAyMjozOSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNClsuLi5dDQoNCj4gTm8uICBJIHdvdWxkIHN0YXkgYXQgNzhuIG9yIGV2ZW4gZ28g
ZG93biB0byA3NyBvciA3NiBpZiB5b3Ugd2FudGVkIHRvIGJlDQo+IHJlYWxseSBwYXJhbm9p
ZC4gIEJ1dCB5b3Uga2luZCBvZiBoYXZlIHRvIHdvcmsgYXQgaXQgdG8gZ2V0IHRvIHRoZSA3
Nw0KPiBjYXNlLCBhbmQgdGhlIDc2IGlzIGJlY2F1c2Ugb2Ygc29tZXRoaW5nIEkgdGhpbmsg
SSBtaWdodCBkbyBmb3IgZ3JvZmYNCj4gMS4yMy4gIEJ1dCBJJ20gbm90IHN1cmUgeWV0Lg0K
PiANCj4+IHRibCBtYW4yL3BlcmZfZXZlbnRfb3Blbi4yIFwNCj4+IHwgZXFuIC1UdXRmOCAg
XA0KPj4gfCB0cm9mZiAtbWFuIC10IC1NIC4vZXRjL2dyb2ZmL3RtYWMgLW0gY2hlY2tzdHls
ZSAtckNIRUNLU1RZTEU9MyAtd3cgLVR1dGY4DQo+PiAtckxMPTc4biAgXA0KPj4gfCBncm90
dHkgLWMgIFwNCj4+IHwgY29sIC1iIC1wIC14ICBcDQo+PiB8ICghIGdyZXAgLW4gJy5cezgw
XH0uJyB8IHNlZCAncyxeLG1hbjIvcGVyZl9ldmVudF9vcGVuLjI6LCcgPiYyKQ0KPj4NCj4+
DQo+PiBPciBkbyB5b3UgdGhpbmsgdGhhdCBJIHNob3VsZCBjaGFuZ2UgdGhhdCBydWxlPyAg
SW4gdGhlIGVuZCwgdGhhdCBncmVwIG9ubHkNCj4+IHRlc3RzIHdoYXQgdXNlcnMgd2lsbCBz
ZWUuICBJdCBjYW4ndCBtZWFzdXJlIGFueXRoaW5nIGVsc2UuDQo+IA0KPiBUaGF0J3MgYW4g
ZXhjZWxsZW50IGFwcHJvYWNoLg0KDQpNZXJpdCBvZiB0aGUgb3JpZ2luYWwgaW1wbGVtZW50
YXRpb24gZ29lcyB0byBSYWxwaC4NCg0KPiAgSWYgYWxsIHlvdXIgbWFuIHBhZ2VzIHN0YXkg
d2l0aGluIHRoZQ0KPiA4MC1jb2x1bW4gbGltaXQgdW5kZXIgdGhhdCB0ZXN0LCB0aGVuIHlv
dSdyZSBmaW5lLS1kb24ndCBjaGFuZ2UgYSB0aGluZy4NCg0KVGhleSBkbyAoSSBkb24ndCBy
ZW1lbWJlciBpZiBhbGwsIGJ1dCBJIHRoaW5rIHNvOyBvciBhdCBtb3N0IHRoZXJlIGFyZSBh
IGZldyANCmV4Y2VwdGlvbnMpLiAgSG93ZXZlciwgSSBkb24ndCBydW4gYG1ha2UgbGludGAg
YmVmb3JlIGV2ZXJ5IGNvbW1pdCwgc28gSSBtYXkgDQppbnRyb2R1Y2UgaXNzdWVzIGZyb20g
dGltZSB0byB0aW1lLCB0aGVuIGZpeCB0aGVtIHdoZW4gSSBub3RpY2UgOikNCg0KPiANCj4+
IElmIHlvdSB0aGluayBJIGNhbiBhZGQgYW55IG90aGVyIHRlc3QsIHBsZWFzZSBzdWdnZXN0
IGl0LCBiZWNhdXNlIEknbQ0KPj4gbm90IHN1cmUgSSB1bmRlcnN0YW5kIGl0Lg0KPiANCj4g
TXkgbGVuZ3RoeSBleHBsb3JhdGlvbiBvZiB0aGUgaXNzdWVzIGlzIGJlY2F1c2UgSSBhbSBt
b3JlIHRoZSBraW5kIG9mDQo+IHBhcmFub2lkIHBlcnNvbiB3aG8gbGlrZXMgQWRhIGFuZCBI
YXNrZWxsIHRoYW4gdGhlIHNvcnQgd2hvIHNsb3VjaGVzIG9mZg0KPiB0aGUgZW5kIG9mIGEg
YHN3aXRjaGAgc3RhdGVtZW50IHdpdGhvdXQgZGVmaW5pbmcgYSBgZGVmYXVsdGAgY2FzZQ0K
PiBiZWNhdXNlIEknbSBzdXJlIEkgaGFuZGxlZCBldmVyeSBzY2VuYXJpbyBhbmQgaWYgSSBk
aWRuJ3QgaXQncyBub3QNCj4gaW1wb3J0YW50IGFueXdheS4gIDotUA0KPiANCj4+IEFzIGZv
ciB5b3VyIGV4YW1wbGUsIEkgcHV0IGl0IGluIGFuIGFjdHVhbCBtYW4gcGFnZSAoYWRkZWQg
VEggYW5kIFNIKSwNCj4+IGFuZCByZW1vdmVkIGxsLCBhbmQgaXQgc3RpbGwgc2hvd2VkIHdl
aXJkIG5vIG1hdHRlciB3aGF0IHRoZSB0ZXJtaW5hbA0KPj4gd2lkdGggd2FzLCBzbyBJIGRv
bid0IHJlYWxseSB1bmRlcnN0YW5kIGl0LiAgSG93ZXZlciwgaXQgc2hvd3MgYmFkbHksDQo+
PiBzbyBJIGhvcGUgd2hhdGV2ZXIgdGhlIGlzc3VlIGlzLCB5b3UgZml4IGl0IGZvciAxLjI0
IDopDQo+IA0KPiBXZWxsLCBzb21lIG9mIGl0LCBJJ20gc3RpbGwgdHJ5aW5nIHRvIGZpeCBm
b3IgMS4yMy4gIEkgX3N0aWxsXyBoYXZlIG5vdA0KPiBoZWFyZCBiYWNrIGZyb20gQmVydHJh
bmQuICBJdCdzIGJlZW4gdHdvIHdlZWtzLiAgSSBuZWVkIHRvIHN0YXJ0DQo+IGNvbnNpZGVy
aW5nIGJlZ2dpbmcgV2VybmVyIHRvIGNvbWUgb3V0IG9mIHJldGlyZW1lbnQganVzdCBsb25n
IGVub3VnaCB0bw0KPiB0YWcgYW5kIHB1c2ggc29tZSB0YXIgYXJjaGl2ZXMuICA6LU8NCg0K
WW91IGNhbid0IGRvIGl0LCByaWdodD8gIE9yIGRvIHlvdT8NCg0KPiANCj4+PiBQcmFjdGlj
YWwgQWR2aWNlIGZvciBNYW4gUGFnZSBBdXRob3JzDQo+Pj4gPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQ0KPj4+DQo+Pj4gQS4gIFRoZSA4MC1jb2x1bW4gbGltaXQg
b24gb3V0cHV0IGxpbmUgbGVuZ3RoIGZvciB0ZXJtaW5hbHMgaXMgInNhZmUiIGlmDQo+Pj4g
ICAgICAgdGJsKDEpIGlzIG5vdCB1c2VkLg0KPj4NCj4+IElmIGl0IGlzIHVzZWQsIGl0IGlz
IGFsc28gdGhlIG9ubHkgbGltaXQgdGhhdCBtYWtlcyBzZW5zZSwgaXNuJ3QgaXQ/DQo+PiBQ
bGVhc2Ugc2hvdyBzb21lIGFjdHVhbCBtYW51YWwgcGFnZSB3aXRoIHdoaWNoIEkgY2FuIHJl
cHJvZHVjZSBhIGJ1Zw0KPj4gd2hlbiB0aGUgdGVybWluYWwgaXNuJ3Qgd2lkZSBlbm91Z2gu
DQo+IA0KPiBPa2F5LiAgSXMgYSBtb2NrZWQtdXAgbWFudWFsIHBhZ2UgZ29vZCBlbm91Z2g/
ICBJJ20gYXR0YWNoaW5nIG9uZS4NCg0KWWVwLiAgTm93IEkgdW5kZXJzdGFuZC4gIFNvIHll
YWgsIEkgbmV2ZXIgdHJ5IHRvIGd1ZXNzIGhvdyBtdWNoIHRoZSBwYWdlIHdpbGwgDQp0YWtl
IHVwIG9uIHNjcmVlbiwgYW5kIGp1c3QgY2hlY2sgZXhwZXJpbWVudGFsbHkuICBBbmQgdGhl
IHRlc3Qgd29ya3MgbmljZWx5IHRvIA0KbWFrZSBzdXJlIEkgZG9uJ3QgZm9yZ2V0IHRvIGNo
ZWNrIChidXQgSSBzdGlsbCBtYXkgZm9yZ2V0IHRvIHJ1biB0aGUgdGVzdCA6KS4NCg0KPiAN
Cj4+Pj4gRm9yIGNvZGUgZXhhbXBsZXMgd2UgdXNlIC5pbiArNG4gcmF0aGVyIHRoYW4gLlJT
LiAgSSBkb24ndCByZW1lbWJlcg0KPj4+PiB0aGUgZXhhY3QgcmVhc29uLCBidXQgaXQgaGFk
IHNvbWUgZ2xpdGNoZXMgaW4gc29tZSBjYXNlcy4NCj4+Pg0KPj4+IFRoZXJlIHdlcmUgbm8g
Z2xpdGNoZXMgdGhhdCBJIHJlY2FsbCwgYnV0IE1pY2hhZWwgd2FudGVkIHRoZSBtYW4oNykN
Cj4+PiBzb3VyY2UgdG8gYmUgaW4gYSBmb3JtIHdoZXJlIGV4YW1wbGVzIGNvdWxkIGJlIG1v
dmVkIGZyZWVseSBiZXR3ZWVuDQo+Pj4gdmFyaW91cyBjb250ZXh0cyB3aXRob3V0IG5lZWRp
bmcgYW55IGludGVybmFsIGFsdGVyYXRpb24uICBUaGUNCj4+PiBkaXNjdXNzaW9uIHdhcyBp
biBOb3ZlbWJlciAyMDIwLiAgVGhlIGZvbGxvd2luZyBtZXNzYWdlIGFuZCBoaXMgcmVwbHkN
Cj4+PiBjYXB0dXJlIHRoZSBib3VuZGFyaWVzIG9mIHRoZSBwcm9ibGVtLg0KPj4+DQo+Pj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWFuLzIwMjAxMTEzMDk0NzU1LmJnNnBs
N2cyczVoMnc0bXVAbG9jYWxob3N0LmxvY2FsZG9tYWluLw0KPj4NCj4+IEFoaCwgdGhhbmtz
LiAgU28geWVzLCB0aGVyZSB3YXMgYSBnbGl0Y2g6IFJTIGZvcmNlZCBhIGJsYW5rIGxpbmUs
IHdoaWNoIG1heQ0KPj4gbm90IGJlIGRlc2lyYWJsZSBpbiBhbGwgY2FzZXMuDQo+IA0KPiBF
ciwgSSBkb24ndCB0aGluayB0aGF0J3MgdHJ1ZS4gIGBSU2AgZm9yY2VzIGEgX2JyZWFrXywg
YnV0IG5vdCB2ZXJ0aWNhbA0KPiBzcGFjZSAoImJsYW5rIGxpbmUocykiKS4gIEkndmUgYWRk
ZWQgYSBkZW1vbnN0cmF0aW9uIHRvIHRoZSBhdHRhY2hlZCBtYW4NCj4gcGFnZS4NCg0KWW91
J3JlIHJpZ2h0LiAgSSBkb24ndCByZW1lbWJlciB3aGF0IHdhcyB0aGUgZXhhY3QgaXNzdWUg
d2UgaGFkIHdpdGggaXQuDQpBbnl3YXksIC5pbiBqdXN0IHdvcmtzIHNvIGZhci4gOikNCg0K
PiANCj4gSWYgeW91IGNhbiBwb2ludCBtZSB0byB3aGF0IHlvdSdyZSByZWZlcnJpbmcgdG8s
IG1heWJlIEkgY2FuIGNsYXJpZnkuDQo+IA0KPj4gRnVuIHRoaW5nOiBNeSBkYWQgdGFsa2Vk
IHRvIG1lIGFib3V0IENoYXRHUFQgYSBjb3VwbGUgb2Ygd2Vla3MgYWdvIChJDQo+PiBoYWQg
bmV2ZXIgaGVhcmQgb2YgaXQpLiAgV2UgdHJpZWQgaXQgd2l0aCBzb21lIGNvZGU7IEkgc2hv
d2VkIGENCj4+IGZ1bmN0aW9uIEkgaGFkIHdyaXR0ZW4sIGFuZCBhc2tlZCBpdCB0byByZXZp
ZXcgaXQuICBDaGF0R1BUIHByb3Bvc2VkDQo+PiBhbiBhbHRlcm5hdGl2ZSBpbXBsZW1lbnRh
dGlvbiwgYnV0IGl0IGludHJvZHVjZWQgdHdvIGJ1Z3MuICA6UA0KPiANCj4gV293LCBpdCBy
ZWFsbHkgaXMgYXMgZ29vZCBhcyB0aGUgYXZlcmFnZSBwcm9ncmFtbWVyIGF0IGEgdGVjaCBj
b21wYW55IQ0KDQpRdWl0ZSByaWdodC4gIFRoYXQncyB3aGF0IEkgc2FpZCB0byBoaW0hIDpQ
DQpBSSBsZWFybnMgZnJvbSBhdmVyYWdlLCBhbmQgc28gaXQgcHJvZHVjZXMgYXZlcmFnZS4N
Cg0KSGUgdGhlbiBoYWQgYSBkaXN0b3BpYW4gdGhlb3J5IHRoYXQgaXQgY291bGQgcmVwbGFj
ZSB0aGUgYXZlcmFnZSBwcm9ncmFtbWVyIGluIA0KdGhlIGZ1dHVyZSwgYW5kIHRoZW4gZ29v
ZCBwcm9ncmFtbWVycyB3b3VsZCBiZSBoaXJlZCB0byBmaXggdGhlIGJ1Z3MsIGNvc3Rpbmcg
DQptdWNoIGxlc3MgdG8gY29tcGFuaWVzLiAgV2hpbGUgSSBkb24ndCBsaWtlIHRoZSBpZGVh
LCBJIGZpbmQgaXQgbGlrZWx5IHRvIGhhcHBlbiANCmF0IHNvbWUgcG9pbnQuDQoNCkNoZWVy
cywNCg0KQWxleA0KDQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFuZGVuDQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------rMzidNOaQ6tORN0vZuie83yX--

--------------g6BHrirA102t4aYOuHZn4XPJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO99QgACgkQnowa+77/
2zJHkg//VFv6O3r5JlQ0/71jhjzj2k9e/05o2CRIvhnY917axfxWBQN5lwEG+/BD
KOJpN/kJZqC44jF3QErQkUBO5d35Hp0ZQu75NfFzNPOm4EKBbLwy68lh8tPpkaQT
ncDDqKbsUXqNnfjlC4G+8TxQXNFeO2rDzhSCEuFEJOTiQg6WfGOxdFwjr13xYtmu
BCsPNjykABrY8HrsxzWlscO5mj570ukJCJnElEe0S0/pa64q4ESQru6C5+1kIA/L
A2G5+cEcJFXm3HaB1XR4OYQ0M6G+6yafqzKmipQr9a93MEjufOT/rLrrCnR4D5pa
KhgS3ZUUafKRKemw+TpzXvmP/7DqGC0viqf3GVOEmWeThYj4/75NAHMOeU7oGJlu
4RlSRmySyaz2ah9xz4B9IsmGF5y73qL0UkExs5NNZUKbmmSI9oHi4uN/+nMmyuAr
SchNa4NF7B0bLTw67xovXyiV1C4grk/SEeYF4GWQmi22rU7c16FY+otOpgJO3CHW
FIPsch3Ul/itnwgeJf4Z3UjuunCoLdzTP7AjC1FwxQsx2av7BBVIViE+O+kO9fa5
1z7M5M6Pe5hO2tlHF7YNZrWF7BHvPJOLOSzxqPnhjrx2SSxCAR464uJRjuV0cT4+
LmGuN4rkKGwJxwuAKnsx7YcacxcC6bh3ZRIwaWSZ+be62ChPt9s=
=jozv
-----END PGP SIGNATURE-----

--------------g6BHrirA102t4aYOuHZn4XPJ--
