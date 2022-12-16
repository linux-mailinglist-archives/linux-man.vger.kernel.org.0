Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D0C764F16B
	for <lists+linux-man@lfdr.de>; Fri, 16 Dec 2022 20:09:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231247AbiLPTJU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Dec 2022 14:09:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230478AbiLPTJU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Dec 2022 14:09:20 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A55C465FB
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 11:09:18 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id f18so3446722wrj.5
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 11:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZsgLtHMV24T0j+efGPio9oDZpbqRcv6BR6oBmpNZN+U=;
        b=o/jJL8xChYxyLd1XuF+oQAgrC7rF+2VKkKc2Edm8V8L9CDGKyd2jH/FKXZjTCl3mpQ
         7cVf6ppIQxRSpqWgND1uO73QfMKnK7ybb2qWbv7toSNMLxoCjJtNENh/L43ONO10dhuG
         yGY4Ewfte1AbFZPrL4/MSXWZTe+YznvCFt4YT2oIWOJDehZz99GdOA5p9a6z41VZU6hc
         Z6x3bq7Nyqrt+iwZ3gbhFgT9vtbhTtaXLf7lyHVBhzudMsR72kqZ0gUL9gV8eXIaV5tc
         9gWYw998MLi/9W/yXLGZJULCf7lv1WTMg6jJ2dFw8RkcRGstlnMKvNRHDyW5h2sI96Ml
         rsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZsgLtHMV24T0j+efGPio9oDZpbqRcv6BR6oBmpNZN+U=;
        b=EGkpLlnBLU1UIcGlKGN0j2zvpJxmAAXmpKhI7VzDEExeJ5rUNAL8enw037zwlNbzkC
         saX+tHbB39+VxKpizkBFIjPT12NV0zJw72VhX6tFW/v94e9PzfjM0vHkwSdShYca1rpw
         BfldEhLx9J80EzdQhJiOm/xcD5Ozc/CdpglM9ym8pdkha8az1FKKgEx4L3gau86/iY9m
         CCCnUrYjUpUWbfryym3NxJLNUu5bzdcq86cg7YW8UG6DwaErBAwTXDUFQ8YRvLlRGct7
         fYlPkHZO1iomVh9rpRq+WYOmTRNXhCHSmDZt7UAes/KP1YuZBQSKxC47XF3lY6n1Am6a
         Rd+g==
X-Gm-Message-State: ANoB5pm6oRG8pfXaSpjpa26bJkYeB0gFJhYAgIGzHH2+zeRu/oP/RitU
        IRqX+wa93Fmo+Ei44794nqk=
X-Google-Smtp-Source: AA0mqf7BDgIVQNOpm+IKNziG8jiUKwY5f8DTi84zm7+i2lb3UKzP4aA5TVFWalMg0yn29bN/5YxARg==
X-Received: by 2002:adf:f206:0:b0:242:4b69:883 with SMTP id p6-20020adff206000000b002424b690883mr21847958wro.10.1671217757192;
        Fri, 16 Dec 2022 11:09:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b9-20020adff909000000b0024274a5db0asm3044803wrr.2.2022.12.16.11.09.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 11:09:16 -0800 (PST)
Message-ID: <8a93a88c-d115-b435-094d-fd44e3d08059@gmail.com>
Date:   Fri, 16 Dec 2022 20:09:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3,
 zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-3-alx@kernel.org>
 <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
 <CACKs7VDYWBaMtAELqnV31eJjRNebPH-m9kZiXXq4fABgvQ+E5Q@mail.gmail.com>
 <5abac28c-e8fa-d62b-2211-5ddd6820e882@gmail.com>
In-Reply-To: <5abac28c-e8fa-d62b-2211-5ddd6820e882@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2ygU25LWSId7a0gduMFyNKY7"
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
--------------2ygU25LWSId7a0gduMFyNKY7
Content-Type: multipart/mixed; boundary="------------AHtg8UKFi3mMM2Edv6Vr0mEp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk
 <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, Andrew Pinski <pinskia@gmail.com>
Message-ID: <8a93a88c-d115-b435-094d-fd44e3d08059@gmail.com>
Subject: Re: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3,
 zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-3-alx@kernel.org>
 <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
 <CACKs7VDYWBaMtAELqnV31eJjRNebPH-m9kZiXXq4fABgvQ+E5Q@mail.gmail.com>
 <5abac28c-e8fa-d62b-2211-5ddd6820e882@gmail.com>
In-Reply-To: <5abac28c-e8fa-d62b-2211-5ddd6820e882@gmail.com>

--------------AHtg8UKFi3mMM2Edv6Vr0mEp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE2LzIyIDIwOjAzLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gT24g
MTIvMTYvMjIgMTk6NDcsIFN0ZWZhbiBQdWl1IHdyb3RlOg0KPj4gT24gVGh1LCBEZWMgMTUs
IDIwMjIgYXQgMjo0NiBBTSBBbGVqYW5kcm8gQ29sb21hcg0KPj4gPGFseC5tYW5wYWdlc0Bn
bWFpbC5jb20+IHdyb3RlOg0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgQW4gaW1wbGVtZW50YXRp
b24gb2YgdGhlc2UgZnVuY3Rpb25zIG1pZ2h0IGJlOg0KPj4+DQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGNoYXIgKg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHBj
cHkoY2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMpDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjaGFywqAgKmVuZDsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGVuZCA9IG1lbXBjcHkoZHN0LCBzcmMsIHN0cmxlbihzcmMpKTsNCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqZW5kID0gJ1wwJzsNCj4+Pg0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlbmQ7DQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0NCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjaGFyICoNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyY3B5KGNo
YXIgKnJlc3RyaWN0IGRzdCwgY29uc3QgY2hhciAqcmVzdHJpY3Qgc3JjKQ0KPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RwY3B5KGRzdCwgc3JjKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gZHN0Ow0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+
Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciAqDQo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHN0cmNhdChjaGFyICpyZXN0cmljdCBkc3QsIGNvbnN0IGNoYXIg
KnJlc3RyaWN0IHNyYykNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgew0KPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cGNweShkc3QgKyBzdHJsZW4oZHN0
KSwgc3JjKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
ZHN0Ow0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+Pg0KPj4gQXJlIHlvdSBz
dXJlIHRoaXMgc2VjdGlvbiBhZGRzIGFueSB2YWx1ZT8gSSB0aGluayBnb29kIGRvY3VtZW50
YXRpb24NCj4+IHNob3VsZCBleHBsYWluIGhvdyBhIGZ1bmN0aW9uIHdvcmtzIHdpdGhvdXQg
ZGVsdmluZyBpbnRvIHRoZQ0KPj4gaW50ZXJwcmV0YXRpb24uDQo+IA0KPiBUbyBiZSBob25l
c3QsIHRoaXMgcGFnZSBkb2Vzbid0IGJlbmVmaXQgdG9vIG11Y2ggZnJvbSBpdC7CoCBzdHJj
cHkoMykvc3RyY2F0KDMpIA0KPiBhcmUgZGVhZCBzaW1wbGUsIGFuZCB0aGUgZXhwbGFuYXRp
b25zIGFib3ZlIHNob3VsZCBiZSBlbm91Z2guDQo+IA0KPiBIb3dldmVyLCB0aGUgc2FtZSB0
aGluZyBpbiBzdHJuY3B5KDMpIGFuZCBzdHJuY2F0KDMpIGlzIHZlcnkgaGVscGZ1bCwgSU1P
LsKgIEZvciANCj4gY29uc2lzdGVuY3kgSSBqdXN0IHNob3dlZCB0cml2aWFsIGltcGxlbWVu
dGF0aW9ucyBpbiBhbGwgb2YgdGhlIHBhZ2VzLsKgIChBbmQgaW4gDQo+IGZhY3QsIHRoZXJl
IHdhcyBhbiBleGFtcGxlIGltcGxlbWVudGF0aW9uIGluIHRoZSBvbGQgc3RybmNhdCgzKSBh
bmQgbWF5YmUgYSBmZXcgDQo+IG90aGVycywgSUlSQy4pDQo+IA0KPj4gQWxzbywgcGVvcGxl
IG1pZ2h0IGdldCBjb25mdXNlZCBhbmQgdGhpbmsgdGhpcyBpcyB0aGUNCj4+IGFjdHVhbCBp
bXBsZW1lbnRhdGlvbi4NCj4gDQo+IEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBhbnkgcHJvYmxl
bSBpZiBvbmUgYmVsaWV2ZXMgdGhpcyBpcyB0aGUgaW1wbGVtZW50YXRpb24uIA0KPiBFeGNl
cHQgZm9yIHN0cGNweSgzKSwgaW4gd2hpY2ggSSBwcmVmZXJyZWQgcmVhZGFiaWxpdHksIHRo
ZXkgYXJlIGFjdHVhbGx5IHF1aXRlIA0KPiBnb29kIGltcGxlbWVudGF0aW9ucy7CoCBBIGZh
c3RlciBpbXBsZW1lbnRhdGlvbiBvZiBzdHBjcHkoMykgbWlnaHQgYmUgZG9uZSBpbiANCj4g
dGVybXMgb2YgbWVtY2NweSgzKS4NCj4gDQo+IEZ1bm5pbHkgZW5vdWdoLCBJIGp1c3QgY2hl
Y2tlZCB3aGF0IG11c2wgbGliYyBkb2VzLCBhbmQgaXQncyB0aGUgc2FtZSBhcyBzaG93biAN
Cj4gaGVyZToNCj4gDQo+IA0KPiBhbHhAZGViaWFuOn4vc3JjL211c2wvbXVzbCQgZ3JlcGMg
LXRmZCBzdHJjcHkNCj4gLi9zcmMvc3RyaW5nL3N0cmNweS5jOjM6DQo+IGNoYXIgKnN0cmNw
eShjaGFyICpyZXN0cmljdCBkZXN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMpDQo+IHsN
Cj4gIMKgwqDCoMKgX19zdHBjcHkoZGVzdCwgc3JjKTsNCj4gIMKgwqDCoMKgcmV0dXJuIGRl
c3Q7DQo+IH0NCj4gYWx4QGRlYmlhbjp+L3NyYy9tdXNsL211c2wkIGdyZXBjIC10ZmQgc3Ry
Y2F0DQo+IC4vc3JjL3N0cmluZy9zdHJjYXQuYzozOg0KPiBjaGFyICpzdHJjYXQoY2hhciAq
cmVzdHJpY3QgZGVzdCwgY29uc3QgY2hhciAqcmVzdHJpY3Qgc3JjKQ0KPiB7DQo+ICDCoMKg
wqDCoHN0cmNweShkZXN0ICsgc3RybGVuKGRlc3QpLCBzcmMpOw0KPiAgwqDCoMKgwqByZXR1
cm4gZGVzdDsNCj4gfQ0KPiANCj4gDQoNCkFuZCBjb25zaWRlcmluZyBtZW1jY3B5KDMpIGlz
IGRlZmluZWQgaW4gdGVybXMgb2YgbWVtY2hyKDMpIGFuZCBtZW1wY3B5KDMpIGluIA0KZ2xp
YmMsIEkgZG9uJ3QgZmVlbCBzbyBiYWQgYWJvdXQgbXkgb3duIHN0cGNweSgzKSA6KS4gIFNl
ZToNCg0KDQphbHhAZGViaWFuOn4vc3JjL2dudS9nbGliYyQgZ3JlcGMgLXRmZCBfX21lbWNj
cHkNCi4vc3RyaW5nL21lbWNjcHkuYzozMDoNCnZvaWQgKg0KX19tZW1jY3B5ICh2b2lkICpk
ZXN0LCBjb25zdCB2b2lkICpzcmMsIGludCBjLCBzaXplX3QgbikNCnsNCiAgIHZvaWQgKnAg
PSBtZW1jaHIgKHNyYywgYywgbik7DQoNCiAgIGlmIChwICE9IE5VTEwpDQogICAgIHJldHVy
biBfX21lbXBjcHkgKGRlc3QsIHNyYywgcCAtIHNyYyArIDEpOw0KDQogICBtZW1jcHkgKGRl
c3QsIHNyYywgbik7DQogICByZXR1cm4gTlVMTDsNCn0NCg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KDQo+Pg0KPj4+DQo+Pj4gUkVUVVJOIFZBTFVFDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBz
dHBjcHkoKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUaGlzwqAgZnVu
Y3Rpb24gcmV0dXJucyBhIHBvaW50ZXIgdG8gdGhlIHRlcm1pbmF0aW5nIG51bGwgYnl0ZSBh
dA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aGUgZW5kIG9mIHRoZSBj
b3BpZWQgc3RyaW5nLg0KPj4+DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzdHJjcHkoKQ0KPj4+
IMKgwqDCoMKgwqDCoMKgwqAgc3RyY2F0KCkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgVGhlc2UgZnVuY3Rpb25zIHJldHVybiBkZXN0Lg0KPj4+DQo+Pj4gQVRUUklC
VVRFUw0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgRm9yIGFuIGV4cGxhbmF0aW9uIG9mIHRoZSB0
ZXJtc8KgIHVzZWTCoCBpbsKgIHRoaXPCoCBzZWN0aW9uLMKgIHNlZcKgIGF0dHJpYuKAkA0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqAgdXRlcyg3KS4NCj4+PiAgICAgICAgICANCj4+PiDilIzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilKzilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilKzilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4+
PiDCoMKgwqDCoMKgwqDCoMKgIOKUgkludGVyZmFjZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIOKUgiBBdHRy
aWJ1dGXCoMKgwqDCoCDilIIgDQo+Pj4gVmFsdWXCoMKgIOKUgg0KPj4+ICAgICAgICAgIA0K
Pj4+IOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUpA0KPj4+IMKgwqDCoMKgwqDCoMKgwqAg4pSCc3RwY3B5KCksIHN0cmNweSgpLCBzdHJj
YXQoKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDilIIgVGhyZWFkIHNhZmV0eSDi
lIIgDQo+Pj4gTVTigJBTYWZlIOKUgg0KPj4+ICAgICAgICAgIA0KPj4+IOKUlOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPj4+DQo+Pj4g
U1RBTkRBUkRTDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzdHBjcHkoKQ0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQT1NJWC4x4oCQMjAwOC4NCj4+Pg0KPj4+IMKgwqDC
oMKgwqDCoMKgwqAgc3RyY3B5KCkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgIHN0cmNhdCgpDQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBPU0lYLjHigJAyMDAxLCBQT1NJ
WC4x4oCQMjAwOCwgQzg5LCBDOTksIFNWcjQsIDQuM0JTRC4NCj4+Pg0KPj4+IENBVkVBVFMN
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIFRoZSBzdHJpbmdzIHNyYyBhbmQgZHN0IG1heSBub3Qg
b3ZlcmxhcC4NCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgSWbCoCB0aGXCoCBkZXN0aW5h
dGlvbsKgIGJ1ZmZlciBpcyBub3QgbGFyZ2UgZW5vdWdoLCB0aGUgYmVoYXZpb3IgaXMgdW5k
ZeKAkA0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgZmluZWQuwqAgU2VlIF9GT1JUSUZZX1NPVVJD
RSBpbiBmZWF0dXJlX3Rlc3RfbWFjcm9zKDcpLg0KPj4+DQo+Pj4gQlVHUw0KPj4+IMKgwqDC
oMKgwqDCoMKgwqAgc3RyY2F0KCkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgVGhpcyBmdW5jdGlvbiBjYW4gYmXCoCB2ZXJ5wqAgaW5lZmZpY2llbnQuwqDCoCBSZWFk
wqAgYWJvdXTCoCBTaGxlbWllbA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0aGXCoMKgwqDCoMKgIHBhaW50ZXLCoMKgwqDCoCDin6hodHRwczovL3d3dy5qb2Vsb25z
b2Z0d2FyZS5jb20vMjAwMS8xMi8xMS8NCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYmFjay10by1iYXNpY3Mv4p+pLg0KPj4NCj4+IEknbSBub3Qgc3VyZSB0aGlzIGlz
IGEgYnVnLCByYXRoZXIgYSBkZXNpZ24gbGltaXRhdGlvbi4gTWF5YmUgaXQNCj4+IGJlbG9u
Z3MgaW4gTk9URVMgb3IgQ0FWRUFUUz8NCj4gDQo+IFllYWgsIEkgaGFkIGJlZW4gdGhpbmtp
bmcgb2YgZG93bmdyYWRpbmcgaXQuwqAgSSdsbCBkbyBpdC4NCj4gDQo+PiBBbHNvLCBJIHRo
aW5rIHRoaXMgY2FuIGJlIHN1bW1hcml6ZWQNCj4+IGFsb25nIHRoZSBsaW5lcyBvZiAnc3Ry
Y2F0IG5lZWRzIHRvIHdhbGsgdGhlIGRlc3RpbmF0aW9uIGJ1ZmZlciB0bw0KPj4gZmluZCB0
aGUgbnVsbCB0ZXJtaW5hdG9yLCBzbyBpdCBoYXMgbGluZWFyIGNvbXBsZXhpdHkgd2l0aCBy
ZXNwZWN0IHRvDQo+PiB0aGUgc2l6ZSBvZiB0aGUgZGVzdGluYXRpb24gYnVmZmVyIHVwIHRv
IHRoZSB0ZXJtaW5hdG9yJyAoaG1tLCBJJ20NCj4+IHN1cmUgdGhpcyBjYW4gYmUgZXhwcmVz
c2VkIG1vcmUgY29uY2lzZWx5KSwgc28gdGhlIHBhZ2UgaXMgbW9yZSBzZWxmDQo+PiBjb250
YWluZWQuIE91dHNpZGUgbGlua3Mgc29tZXRpbWVzIGdvIGRlYWQsIGxpa2Ugb24gV2lraXBl
ZGlhLCBzbyBJDQo+PiB0aGluayBqdXN0IGluIGNhc2UsIGl0IGhlbHBzIHRvIG1ha2UgZXhw
bGljaXQgdGhlIHBvaW50IHRoYXQgeW91IHdhbnQNCj4+IHRoZSByZWFkZXIgdG8gc3R1ZHkg
ZnVydGhlciBpbiB0aGUgVVJMLg0KPiANCj4gSSB3YXNuJ3QgaW5zcGlyZWQgdG8gd3JpdGUg
aXQgc2hvcnQgZW5vdWdoIHRvIG5vdCBiZSB0b28gdmVyYm9zZS7CoCBNYXliZSBJJ2xsIA0K
PiB3cml0ZSBzb21ldGhpbmcgYmFzZWQgb24geW91ciBzdWdnZXN0aW9uLg0KPiANCj4+DQo+
PiBSZWdhcmRzLA0KPj4gU3RlZmFuLg0KPiANCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3IQ0K
PiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCj4+DQo+Pj4NCj4+PiBFWEFNUExFUw0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqAgI2luY2x1ZGUgPHN0ZGlvLmg+DQo+Pj4gwqDCoMKgwqDC
oMKgwqDCoCAjaW5jbHVkZSA8c3RkbGliLmg+DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCAjaW5j
bHVkZSA8c3RyaW5nLmg+DQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGludA0KPj4+IMKg
wqDCoMKgwqDCoMKgwqAgbWFpbih2b2lkKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgew0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFywqDCoMKgICpwOw0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjaGFywqDCoMKgIGJ1ZjFbQlVGU0laXTsNCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY2hhcsKgwqDCoCBidWYyW0JVRlNJWl07DQo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdMKgIGxlbjsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBwID0gYnVmMTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cCA9IHN0cGNweShwLCAiSGVsbG8gIik7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHAgPSBzdHBjcHkocCwgIndvcmxkIik7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHAgPSBzdHBjcHkocCwgIiEiKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGVu
ID0gcCAtIGJ1ZjE7DQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJpbnRm
KCJbbGVuID0gJXp1XTogIiwgbGVuKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cHV0cyhidWYxKTvCoCAvLyAiSGVsbG8gd29ybGQhIg0KPj4+DQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cmNweShidWYyLCAiSGVsbG8gIik7DQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cmNhdChidWYyLCAid29ybGQiKTsNCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RyY2F0KGJ1ZjIsICIhIik7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGxlbiA9IHN0cmxlbihidWYyKTsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwcmludGYoIltsZW4gPSAlenVdOiAiLCBsZW4pOw0KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBwdXRzKGJ1ZjIpO8KgIC8vICJIZWxsbyB3b3JsZCEiDQo+Pj4NCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhpdChFWElUX1NVQ0NFU1MpOw0KPj4+IMKg
wqDCoMKgwqDCoMKgwqAgfQ0KPj4+DQo+Pj4gU0VFIEFMU08NCj4+PiDCoMKgwqDCoMKgwqDC
oMKgIHN0cmR1cCgzKSwgc3RyaW5nKDMpLCB3Y3NjcHkoMyksIHN0cmluZ19jb3B5KDcpDQo+
Pj4NCj4+PiBMaW51eCBtYW7igJBwYWdlcyAodW5yZWxlYXNlZCnCoMKgwqDCoMKgwqDCoCAo
ZGF0ZSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cmNweSgzKQ0KPj4+DQo+Pj4gLS0gDQo+Pj4gPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------AHtg8UKFi3mMM2Edv6Vr0mEp--

--------------2ygU25LWSId7a0gduMFyNKY7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOcwlsACgkQnowa+77/
2zKM9g//crWQok7Twi5O8sv/1WEWlNv/9OgNq5CAiLcDXJn7jBm/KMvNlejAxxuf
WQFOuvrI55XerNHBf25+QPkcJzbWaIY7YERETS93dFZlwNIFmd63LFCasEpxlN3Y
GlyixpWAZ8vPZdmJzLwHkpLAoSZbMM52A6D6xZLldF7Y2jE4CGm8+sdysGf1UasM
q+FW2G6B8tca6wkq9vSdUXysR6757fHrtBbURKymzdeunhev369mQggh0MW9D4QL
EBmZFGeEm4BvaP8sFcZzx/ij/6co9dFL7+F7bkYjMYNK168JIY2hw0iYCunVjzdS
X7g8rNy1v2S9x83OJIOjWeUnwpQaJUv1lWtB56UqM834aFEV6lGaQUvwfMFjzjC2
4E349B5xZtvTwGelSBqVeI845b0UFo0lEQO7pX+CuzIJfWEL1sO4HANsSd08PZ3V
7whaMyZJu/IbtpqeQ3QLPTSGBbZQaPiqlzu1ApJNR+S58S7x8fSXOAxqjY+iDUZy
cnRMHQOLyOTkV+d1suqiGJrev1eRoyfwiAP36Y6D6he2oxqQu0BGzLlofWs2VF0S
BlzOKqT1YZLkEkhnLDJdbBcjhKkq/m2DLmhAxLlOCShtdgBOyr7Tj+hxtPbmZneM
uV+nq/iXhpPryUm5J0wDOwCZcyqvoRQ6ZBLm/gBQBDJ7wOXi1cc=
=EWss
-----END PGP SIGNATURE-----

--------------2ygU25LWSId7a0gduMFyNKY7--
