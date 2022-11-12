Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 140456269AD
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 14:58:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231919AbiKLN6P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 08:58:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231404AbiKLN6N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 08:58:13 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35B20192B4
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 05:58:12 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h9so9914525wrt.0
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 05:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1V4/5/067gWGO0EhL1UrE0OkiJ6D0mh+MpEoxNOAqQ=;
        b=gOfKbV1/GJ2I6ahOWKimtIngY/CQga9neNrLCjcoYmu3lNlICs0Y7rgC0Hiio5raDz
         GbgdWYFuiCcXhuTKHM6VQLwXCdPxi5KlBuX6+u5r91bVlBe/cJa/068zfDKqsgo+HJXh
         OzzYp6BUWwOp46iYG/fko/Y7n9m9jsBUFg22zKAo0ufulJ9+7JNIUFNzNEtr8l9jEGJy
         DfVkZsnF8uIEcm4dLWbK2aVb/KhpFvNejcEfV7Lb5U0TWU2bxXKiKR+qN1KKLEkoZjAL
         d1WmXxQePBLJGGuEW4kGlp+btVK6185e78X2j++4AvXAwlOACn/uyFt5Rpe01plsEIA5
         PTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f1V4/5/067gWGO0EhL1UrE0OkiJ6D0mh+MpEoxNOAqQ=;
        b=H1oHLu6Qy4XeCGHIE2BbDf+byBXI3HUlXZsbR4VuFv8Gb8aQK2UjlmG6mp+8AXYU98
         8M9YJcjV0PlXxvHsPUkqlDybjhXvzlkvPnuQSuzKppAfjwGBHDjy4ECRCpA2p93YzVho
         +0H/dJDV3cWfaSx7asB69xeBY+g1snrJGET9EsUb4hOViimmEYqTX654J7p8ybDVpI71
         xD3sXkp4Yy0f6YRKtsgPrEyjybJlXCTEf1tiKC8qpXKvyvtL6Sjk/5rcu1zfUwIvLKAm
         A6dWQcmpECkRYO31QPh+p2YQbJDRnq6NaClRCig3xjN5K5AHaLXOAD+eOewzU1/ycUXH
         suPQ==
X-Gm-Message-State: ANoB5pmaWOVNMhcYLSwVjTQHmLX/fxPNENsC0RDIlncSpK6XwZoIyz5d
        55QLkN22OdtkJhnxrUTZtrLSD9mrnTQ=
X-Google-Smtp-Source: AA0mqf5yvxAeyqCtgxCC6xNOiPyjNSLnJMcHFTNOPDhpchPRK40s+BnygqHx4Byhko7OXvonM8S5TA==
X-Received: by 2002:adf:a492:0:b0:22d:d4c:e99c with SMTP id g18-20020adfa492000000b0022d0d4ce99cmr3458903wrb.582.1668261490631;
        Sat, 12 Nov 2022 05:58:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v193-20020a1cacca000000b003cf37c5ddc0sm6394826wme.22.2022.11.12.05.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 05:58:10 -0800 (PST)
Message-ID: <395234d7-836b-d9d9-9e7f-0b9d754ae409@gmail.com>
Date:   Sat, 12 Nov 2022 14:58:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
In-Reply-To: <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mwxrzhE7adI3U1CktblwaCg2"
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
--------------mwxrzhE7adI3U1CktblwaCg2
Content-Type: multipart/mixed; boundary="------------0otDwN9iWZiMQS82Brs5FScg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <395234d7-836b-d9d9-9e7f-0b9d754ae409@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
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
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
In-Reply-To: <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>

--------------0otDwN9iWZiMQS82Brs5FScg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEyLzIyIDE0OjQwLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
Sm9zZXBoLA0KPiANCj4gT24gMTEvMTIvMjIgMTQ6MDMsIEpvc2VwaCBNeWVycyB3cm90ZToN
Cj4+IE9uIFNhdCwgMTIgTm92IDIwMjIsIEFsZWphbmRybyBDb2xvbWFyIHZpYSBHY2Mgd3Jv
dGU6DQo+Pg0KPj4+PiBzdHJ1Y3QgcyB7IGludCBhOyB9Ow0KPj4+PiB2b2lkIGYoaW50IGEs
IGludCBiWygoc3RydWN0IHMpIHsgLmEgPSAxIH0pLmFdKTsNCj4+Pg0KPj4+IElzIGl0IHJl
YWxseSBhbWJpZ3VvdXM/wqAgTGV0J3Mgc2hvdyBzb21lIGN1cnJlbnRseS12YWxpZCBjb2Rl
Og0KPj4NCj4+IFdlbGwsIEkgc3RpbGwgZG9uJ3Qga25vdyB3aGF0IHRoZSBzeW50YXggYWRk
aXRpb24geW91IHByb3Bvc2UgaXMuwqAgSXMgaXQNCj4+DQo+PiBwb3N0Zml4LWV4cHJlc3Np
b24gOiAuIGlkZW50aWZpZXINCj4gDQo+IEknbGwgdHJ5IHRvIGV4cGxhaW4gaXQgaW4gc3Rh
bmRhcmRlZXNlLCBidXQgSSdtIG5vdCBzdXJlIGlmIEknbGwgZ2V0IGl0IHJpZ2h0LCANCj4g
c28gSSdsbCBhY2NvbXBhbnkgaXQgd2l0aCBwbGFpbiBFbmdsaXNoLg0KPiANCj4gTWF5YmUg
TWFydGluIGNhbiBoZWxwLg0KPiANCj4gU2luY2UgaXQncyB0byBiZSB1c2VkIGFzIGFuIHJ2
YWx1ZSwgbm90IGFzIGEgbHZhbHVlLCBJIGd1ZXNzIGEgDQo+IHBvc3RmaXgtZXhwcmVzc2lv
biB3b3VsZG4ndCBiZSB0aGUgcmlnaHQgb25lLg0KPiANCj4+DQo+PiAod2l0aCBhIHNwZWNp
YWwgcnVsZSBhYm91dCBob3cgdGhlIGlkZW50aWZpZXIgaXMgaW50ZXJwcmV0ZWQsIGRpZmZl
cmVudA0KPj4gZnJvbSB0aGUgbm9ybWFsIHNjb3BlIHJ1bGVzKT/CoCBJZiBzbywgdGhlbiAi
LmEgPSAxIiBjb3VsZCBlaXRoZXIgbWF0Y2gNCj4+IGFzc2lnbm1lbnQtZXhwcmVzc2lvbiBk
aXJlY3RseSAoYXNzaWduaW5nIHRvIHRoZSBwb3N0Zml4LWV4cHJlc3Npb24gIi5hIikuDQo+
IA0KPiBObywgYXNzaWduaW5nIHRvIGEgZnVuY3Rpb24gcGFyYW1ldGVyIGZyb20gd2l0aGlu
IGFub3RoZXIgcGFyYW1ldGVyIGRlY2xhcmF0aW9uIA0KPiB3b3VsZG4ndCBtYWtlIHNlbnNl
LsKgIFRoZXkgc2hvdWxkIGJlIHJlYWRvbmx5LsKgIFNpZGUgZWZmZWN0cyBzaG91bGQgYmUg
DQo+IGZvcmJpZGRlbiwgSSB0aGluay4NCj4gDQo+PiBPciBpdCBjb3VsZCBtYXRjaCBkZXNp
Z25hdGlvbltvcHRdIGluaXRpYWxpemVyLCB3aGVyZSAiLmEiIGlzIGENCj4+IGRlc2lnbmF0
b3IuwqAgQW5kIGFzIEkndmUgbm90ZWQgbWFueSB0aW1lcyBpbiBkaXNjdXNzaW9ucyBvZiBD
MnggcHJvcG9zYWxzDQo+PiBvbiB0aGUgV0cxNCByZWZsZWN0b3IsIGlmIHNvbWUgc2VxdWVu
Y2Ugb2YgdG9rZW5zIGNhbiBtYXRjaCB0aGUgc3ludGF4IGluDQo+PiBtb3JlIHRoYW4gb25l
IHdheSwgdGhlcmUgYWx3YXlzIG5lZWRzIHRvIGJlIGV4cGxpY2l0IG5vcm1hdGl2ZSB0ZXh0
IHRvDQo+PiBkaXNhbWJpZ3VhdGUgdGhlIGludGVuZGVkIHBhcnNlIC0gaXQncyBub3QgZW5v
dWdoIHRoYXQgb25lIHBhcnNlIG1pZ2h0DQo+PiBsZWFkIGxhdGVyIHRvIGEgdmlvbGF0aW9u
IG9mIHNvbWUgb3RoZXIgY29uc3RyYWludCAobm90IHRoYXQgZWl0aGVyIHBhcnNlDQo+PiBs
ZWFkcyB0byBhIGNvbnN0cmFpbnQgdmlvbGF0aW9uIGluIHRoaXMgY2FzZSkuDQo+Pg0KPj4g
T3IgaXMgdGhlIHN5bnRheA0KPj4NCj4+IGFycmF5LWRlY2xhcmF0b3IgOiBkaXJlY3QtZGVj
bGFyYXRvciBbIC4gYXNzaWdubWVudC1leHByZXNzaW9uIF0NCj4gDQo+IE5vdCBnb29kIGVp
dGhlci7CoCBUaGUgJy4nIHNob3VsZCBwcmVmaXggdGhlIGlkZW50aWZpZXIsIG5vdCB0aGUg
ZXhwcmVzc2lvbi7CoCBTbywgDQo+IGZvciBleGFtcGxlLCB5b3Ugd291bGQgaGF2ZToNCj4g
DQo+ICDCoMKgwqDCoMKgwqAgdm9pZCAqYnNlYXJjaChjb25zdCB2b2lkIGtleVsuc2l6ZV0s
IGNvbnN0IHZvaWQgYmFzZVsuc2l6ZSAqIC5ubWVtYl0sDQo+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBubWVtYiwgc2l6ZV90IHNpemUsDQo+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCAoKmNvbXBh
cikoY29uc3Qgdm9pZCBbLnNpemVdLCBjb25zdCB2b2lkIFsuc2l6ZV0pKTsNCj4gDQo+IFRo
YXQncyB0YWtlbiBmcm9tIHRoZSBjdXJyZW50IG1hbnVhbCBwYWdlIGZyb20gZ2l0IEhFQUQu
wqAgU2VlICdiYXNlJywgd2hpY2ggZ2V0cyANCj4gaXRzIHNpemUgZnJvbSB0aGUgbXVsdGlw
bGljYXRpb24gb2YgJ3NpemUnIGFuZCAnbm1lbWInLg0KPiANCj4+DQo+PiAod2l0aCBhcHBy
b3ByaWF0ZSB2YXJpYW50cyB3aXRoIHN0YXRpYyBhbmQgdHlwZS1xdWFsaWZpZXItbGlzdCBh
bmQgZm9yDQo+PiBhcnJheS1hYnN0cmFjdC1kZWNsYXJhdG9yIGFzIHdlbGwsIGFuZCB3aXRo
IGRpZmZlcmVudCBpZGVudGlmaWVyDQo+PiBpbnRlcnByZXRhdGlvbiBydWxlcyBpbnNpZGUg
dGhlIGFzc2lnbm1lbnQtZXhwcmVzc2lvbik/wqAgSWYgc28sIHRoZW4gdGhlcmUNCj4+IGFy
ZSBiaWcgcHJvYmxlbXMgcGFyc2luZyBbIC4gKCBhICkgKyAoIGIgKSBdLCB3aGVyZSAnYScg
aXMgYSB0eXBlZGVmIG5hbWUNCj4+IGluIGFuIG91dGVyIHNjb3BlLCBiZWNhdXNlIHRoZSBh
cHByb3ByaWF0ZSBwYXJzZSB3b3VsZCBkZXBlbmQgb24gd2hldGhlcg0KPj4gJ2EnIGlzIHNo
YWRvd2VkIGJ5IGEgcGFyYW1ldGVyIC0gdW5sZXNzIG9mIGNvdXJzZSB5b3UgYWRkIGFwcHJv
cHJpYXRlDQo+PiB3b3JkaW5nIGxpa2UgdGhhdCBwcmVzZW50IGluIHNvbWUgcGxhY2VzIGFi
b3V0IG5vdCBiZWluZyBhYmxlIHRvIHVzZSB0aGlzDQo+PiBzeW50YXggdG8gc2hhZG93IGEg
dHlwZWRlZiBuYW1lLg0KPj4NCj4+IE9yIGlzIGl0IGp1c3QNCj4+DQo+PiBhcnJheS1kZWNs
YXJhdG9yIDogZGlyZWN0LWRlY2xhcmF0b3IgWyAuIGlkZW50aWZpZXIgXQ0KPiANCj4gRm9y
IHRoZSBpbml0aWFsIGltcGxlbWVudGF0aW9uLCBpdCB3b3VsZCBiZSwgSSB0aGluay4NCj4g
DQo+Pg0KPj4gd2hpY2ggbWlnaHQgYXZvaWQgc29tZSBvZiB0aGVzZSBwcm9ibGVtcyBhdCB0
aGUgZXhwZW5zZSBvZiBiZWluZyBsZXNzDQo+PiBleHByZXNzaXZlPw0KPiANCj4gWWVzLg0K
PiANCj4+DQo+PiBJZiB5b3UncmUgcHJvcG9zaW5nIGEgQyBzeW50YXggYWRkaXRpb24sIHlv
dSBhbHdheXMgbmVlZCB0byBiZSBjbGVhciBhYm91dA0KPj4gZXhhY3RseSB3aGF0IHRoZSBu
ZXcgY2FzZXMgaW4gdGhlIHN5bnRheCB3b3VsZCBiZSwgYW5kIGhvdyB5b3UgcmVzb2x2ZQ0K
Pj4gYW1iaWd1aXRpZXMgd2l0aCBhbnkgb3RoZXIgZXhpc3RpbmcgcGFydCBvZiB0aGUgc3lu
dGF4LCBob3cgeW91IGludGVyYWN0DQo+PiB3aXRoIHJ1bGVzIG9uIHNjb3BlcywgbmFtZXNw
YWNlcyBhbmQgbGlua2FnZSBvZiBpZGVudGlmaWVycywgZXRjLg0KPiANCj4gWWVhaCwgSSds
bCB0cnkuDQo+IA0KPiBJIHRoaW5rIHRoYXQgdGhlIGNvbXBsZXRlIGZlYXR1cmUgd291bGQg
YWxsb3cgJ2Rlc2lnbmF0b3InIHRvIGJlIHVzZWQgd2l0aGluIA0KPiB1bmFyeS1leHByZXNz
aW9uOg0KPiANCj4gdW5hcnktZXhwcmVzc2lvbjogZGVzaWduYXRvcg0KDQpTb21lIG1pc3Rh
a2UgSSBkaWQ6ICBTaW5jZSBlbnVtIGRlc2lnbmF0b3JzIGRvbid0IG1ha2Ugc2Vuc2UgaW4g
dGhpcyBmZWF0dXJlLCBpdCANCnNob3VsZCBvbmx5IGJlOg0KDQp1bmFyeS1leHByZXNzaW9u
OiAuIGlkZW50aWZpZXINCg0KPiANCj4gU2luY2Ugc2l6ZW9mKGZvbykgaXMgYSB1bmFyeS1l
eHByZXNzaW9uIGFuZCB5b3UgY2FuJ3QgYXNzaWduIHRvIGl0LCBJJ20gZ3Vlc3NpbmcgDQo+
IHRoYXQgc2ltaWxhciBydWxlcyBjb3VsZCBiZSB1c2VkIGZvciAnLnNpemUnLg0KPiANCj4g
DQo+IFRoYXQgd291bGQgaGF2ZSB0aGUgZWZmZWN0IG9mIGFsbG93aW5nIGJvdGggZmVhdHVy
ZXMgc3VnZ2VzdGVkIGJ5IE1hcnRpbjogYmVpbmcgDQo+IGFibGUgdG8gdXNlZCBkZXNpZ25h
dG9ycyBpbiBib3RoIHN0cnVjdHVyZXMgKGFzIGRlbW9uc3RyYXRlZCBpbiBteSBsYXN0IGVt
YWlsKSANCj4gYW5kIGZ1bmN0aW9uIHByb3RvdHlwZXMgKGFzIGluIHRoZSB0aGluZyB3ZSdy
ZSBkaXNjdXNzaW5nKS4NCj4gDQo+IEkgaG9wZSBJIGdvdCBpdCByaWdodC7CoCBJJ20gbm90
IHVzZWQgdG8gbGV4aWNhbCBncmFtbWFyIHNvIG11Y2guDQo+IA0KPiBDaGVlcnMsDQo+IA0K
PiBBbGV4DQo+IA0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------0otDwN9iWZiMQS82Brs5FScg--

--------------mwxrzhE7adI3U1CktblwaCg2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNvpmoACgkQnowa+77/
2zI38hAAjHjhVauHq+Mj6sQZruZGdUz4BdJX5zuswT797Jmu9meuwuxRWBUikKL1
D36qqiyzC9orIiH91upxsrcUElv5KLTitnkOnQK3/MPxItI3feucCHlQhqb6fF/A
rpEsqKaafMCCr7F/tMa6bEFsY+kGEsAKeDweu0ldizvylDeYj/hIQoApS3g6GXq4
/s5WvSAIGqdfMsQR+kN4G+x/slKeD2eB0VA8E3neDJZpJRMJCZquSbixeACeX/AD
WIA+zFwec/l4XDmX6BbQ841Sz98ojncMEwXkQA3cF7xTqVCcVVhNwvTB/HJelfQq
r6w2/0zmuJ0bF6SRJSpyGltBldW+E6o/JNfD171IFE9VL75T8p486JGouTrLHqac
BQOwwFss5kQBveuUsQ5QjnKJkRmofjLoSt4BmbzmaHfjPHyqOM36RDeSYKSDtEpj
MjKxwX+2tWleSicDBBmnbDEn5Sb8THXuYcp2SEZzyOoMRZpv8c6SUg3COGo7OvVX
hbIp0G5d/eOLCe/4nIBS121APBeTVyT5gJN2y+INXqNKjwYqoXIGMy4ziNwJzZIP
2Kjkiv33jPgAi/VHku50yBEhhg1ewSBhHIMGaUu6oPujy3+j0tATJ6Wkq0Wyxzg8
x6hC66nNZG4HNcPiD2JVzOcTSVSMMOzXW6I61+kb5p8ZmMb+/ls=
=/y62
-----END PGP SIGNATURE-----

--------------mwxrzhE7adI3U1CktblwaCg2--
