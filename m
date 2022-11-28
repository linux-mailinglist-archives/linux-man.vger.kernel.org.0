Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BDD863B522
	for <lists+linux-man@lfdr.de>; Mon, 28 Nov 2022 23:59:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232919AbiK1W7w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Nov 2022 17:59:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233721AbiK1W7j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Nov 2022 17:59:39 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A19232E6B0
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 14:59:38 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id bs21so19390944wrb.4
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 14:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=inKqhp2GXQqixvkZwF6ZVYI1VDBQV5iELrzasqBikR4=;
        b=WNeHBsfB1Z3M0ZJ5iRbr74PbWGPLmAf+G3m/03hxSeC394Yb9iV6qsyuIwTkjih58X
         1aYknIh4GXEl935aPm20nxQXHO1zfwv82K6/45h58TX19B9kRLY/VWW5Ew3ALS+9nSFf
         74dK0Lzy8d/4ICCjdzCn201KoBWgDaAhoqt9MEWWeyVdvhL4zZQJB3qcT02026/0PwP/
         AI2Xxt1X3MJVZQ++SXigwCbeSpTH64DbWoKts+fl0wMaARtbf0KEwDvK9m0DcUR/riXw
         92oweyATJmkEsRkvfwZdTlreznPPHXzFUXI1Q7EO3JxgD26eH4rx+vDmlrSASG314ZbA
         4Y2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=inKqhp2GXQqixvkZwF6ZVYI1VDBQV5iELrzasqBikR4=;
        b=acsiOr6bF7IJOGzakysKhbpcUp2SmvtZMYjVf+BNSyuqKUu0mAxilLWuIK8q65hALg
         hjHgqyBek0EtzPyATmFo2YhBJvX4W7QCytQEgxRtviamZ1RMgK9Fs++N9OsnpJvLW3nU
         JE4saU6zuxJLWTccJJThgZCbImYUftxjBzGRZJ8nB/OFt+2UoUdr/2A7XJMQSrq9I4FF
         bMl2foI07eb8iHK8SamoFNYfrB+reon/NotIrmtTbr3N/U/YKzWrmLaOtgE/0nuCxVPa
         d+Mzl1ULhjquf1MBVATkIBI+gNzer8T9uTTNa0KR7x569Wh63lLbNWGD4KxpgF2H+GK9
         L3ig==
X-Gm-Message-State: ANoB5pmq4gPv1KaSrzSV7JaGCKUj3vA5sVzS+RF/mD/eHDbn11a0K9rR
        79pg6jTp8OyjHvQX8YY2sz8=
X-Google-Smtp-Source: AA0mqf6R6uK2azegSKFPyAEpYdOiu3UoYKkW8H4Vz3jSZVrrKdXRq4VXoG8ggBcXaUCt8c+cObYQag==
X-Received: by 2002:adf:c64e:0:b0:236:78cd:f3d2 with SMTP id u14-20020adfc64e000000b0023678cdf3d2mr33901703wrg.719.1669676377158;
        Mon, 28 Nov 2022 14:59:37 -0800 (PST)
Received: from [192.168.43.80] ([31.221.250.124])
        by smtp.gmail.com with ESMTPSA id u17-20020a05600c19d100b003c6f8d30e40sm21908092wmq.31.2022.11.28.14.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 14:59:36 -0800 (PST)
Message-ID: <d3cef983-5648-e073-9e9b-2d4e4cc86b97@gmail.com>
Date:   Mon, 28 Nov 2022 23:59:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
 <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
 <f4665b70-fec0-d0b7-e683-cd53ca5afce8@codesourcery.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <f4665b70-fec0-d0b7-e683-cd53ca5afce8@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------b26HFWn4BqRdT3RdRQjq480d"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------b26HFWn4BqRdT3RdRQjq480d
Content-Type: multipart/mixed; boundary="------------Ai4YpQJ4v0LZZOBtrpeM4NIx";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <d3cef983-5648-e073-9e9b-2d4e4cc86b97@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
 <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
 <f4665b70-fec0-d0b7-e683-cd53ca5afce8@codesourcery.com>
In-Reply-To: <f4665b70-fec0-d0b7-e683-cd53ca5afce8@codesourcery.com>

--------------Ai4YpQJ4v0LZZOBtrpeM4NIx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMS8xNC8yMiAxOToxMywgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBTdW4sIDEzIE5vdiAyMDIyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgR2NjIHdyb3Rl
Og0KPiANCj4+IFNZTk9QU0lTOg0KPj4NCj4+IHVuYXJ5LW9wZXJhdG9yOiAgLiBpZGVudGlm
aWVyDQo+IA0KPiBUaGF0J3Mgbm90IHdoYXQgeW91IG1lYW4uICBTZWUgdGhlIHN0YW5kYXJk
IHN5bnRheC4NCg0KWXVwOyB0eXBvIHRoZXJlLg0KDQo+IA0KPiB1bmFyeS1leHByZXNzaW9u
Og0KPiAgICBbb3RoZXIgYWx0ZXJuYXRpdmVzXQ0KPiAgICB1bmFyeS1vcGVyYXRvciBjYXN0
LWV4cHJlc3Npb24NCj4gDQo+IHVuYXJ5LW9wZXJhdG9yOiBvbmUgb2YNCj4gICAgJiAqICsg
LSB+ICENCj4gDQo+PiAtICBJdCBpcyBub3QgYW4gbHZhbHVlLg0KPj4NCj4+ICAgICAtICBU
aGlzIG1lYW5zIHNpemVvZigpIGFuZCBfTGVuZ3Rob2YoKSBjYW5ub3QgYmUgYXBwbGllZCB0
byB0aGVtLg0KPiANCj4gc2l6ZW9mIGNhbiBiZSBhcHBsaWVkIHRvIG5vbi1sdmFsdWVzLg0K
DQp0aGlua28gdGhlcmUuICBJIGZpeGVkIGl0IGluIGEgc3Vic2VxdWVudCBlbWFpbC4NCg0K
PiANCj4+ICAgICAtICBUaGlzIHByZXZlbnRzIGFtYmlndWl0eSB3aXRoIGEgZGVzaWduYXRv
ciBpbiBhbiBpbml0aWFsaXplci1saXN0IHdpdGhpbg0KPj4gYSBuZXN0ZWQgYnJhY2VkLWlu
aXRpYWxpemVyLg0KPiANCj4gTm8sIGl0IGRvZXNuJ3QuICBTZWUgbXkgcHJldmlvdXMgcG9p
bnRzIGFib3V0IHN5bnRhY3RpYyBkaXNhbWJpZ3VhdGlvbg0KPiBiZWluZyBhIHNlcGFyYXRl
IG1hdHRlciBmcm9tICJvbmUgcGFyc2Ugd291bGQgcmVzdWx0IGluIGEgY29uc3RyYWludA0K
PiB2aW9sYXRpb24sIHNvIGNob29zZSBhbm90aGVyIHBhcnNlIHRoYXQgZG9lc24ndCIgKG5l
Y2Vzc2FyaWx5LCBiZWNhdXNlIHRoZQ0KPiBjb25zdHJhaW50IHZpb2xhdGlvbiB0aGF0IHJl
c3VsdHMgY291bGQgaW4gZ2VuZXJhbCBiZSBhdCBhbiBhcmJpdHJhcnkNCj4gZGlzdGFuY2Ug
ZnJvbSB0aGUgcG9pbnQgd2hlcmUgYSBjaG9pY2Ugb2YgcGFyc2UgaGFzIHRvIGJlIG1hZGUp
LiAgT3Igc2VlDQo+IGUuZy4gdGhlIGRpc2FtYmlndWF0aW9uIHJ1bGUgYWJvdXQgZW51bSB0
eXBlIHNwZWNpZmllcnM6IHRoZXJlIGlzIGFuDQo+IGV4cGxpY2l0IHJ1bGUgIklmIGFuIGVu
dW0gdHlwZSBzcGVjaWZpZXIgaXMgcHJlc2VudCwgdGhlbiB0aGUgbG9uZ2VzdA0KPiBwb3Nz
aWJsZSBzZXF1ZW5jZSBvZiB0b2tlbnMgdGhhdCBjYW4gYmUgaW50ZXJwcmV0ZWQgYXMgYSBz
cGVjaWZpZXINCj4gcXVhbGlmaWVyIGxpc3QgaXMgaW50ZXJwcmV0ZWQgYXMgcGFydCBvZiB0
aGUgZW51bSB0eXBlIHNwZWNpZmllci4iIHRoYXQNCj4gZW5zdXJlcyB0aGF0ICJlbnVtIGUg
OiBsb25nIGludDsiIGludGVycHJldHMgImxvbmcgaW50IiBhcyB0aGUgZW51bSB0eXBlDQo+
IHNwZWNpZmllciwgcmF0aGVyIHRoYW4gImxvbmciIGFzIHRoZSBlbnVtIHR5cGUgc3BlY2lm
aWVyIGFuZCAiaW50IiBhcw0KPiBhbm90aGVyIHR5cGUgc3BlY2lmaWVyIGluIHRoZSBzZXF1
ZW5jZSBvZiBkZWNsYXJhdGlvbiBzcGVjaWZpZXJzLCBldmVuDQo+IHRob3VnaCB0aGUgbGF0
dGVyIHBhcnNlIHdvdWxkIHJlc3VsdCBpbiBhIGNvbnN0cmFpbnQgdmlvbGF0aW9uIGxhdGVy
Lg0KDQpJIGdldCBpdC4gIEl0J3Mgb25seSB1bmFtYmlndW91cyBpZiB0aGVyZSdzIGxvb2th
aGVhZC4NCg0KPiANCj4gQWxzbywgcmVxdWlyaW5nIHVuYm91bmRlZCBsb29rYWhlYWQgdG8g
ZGV0ZXJtaW5lIHdoYXQga2luZCBvZiBjb25zdHJ1Y3QgaXMNCj4gYmVpbmcgcGFyc2VkIG1h
eSBiZSBjb25zaWRlcmVkIHF1ZXN0aW9uYWJsZSBmb3IgQy4gIChJZiB5b3UgaGF2ZSBhbg0K
PiBpbml0aWFsaXplciBzdGFydGluZyAuYS5iLmMuZC5lLCBwb3NzaWJseSB3aXRoIGFycmF5
IGVsZW1lbnQgYWNjZXNzIGFzDQo+IHdlbGwsIHRob3NlIGNvdWxkIGFsbCBiZSBkZXNpZ25h
dG9ycyBvciAuYSBtaWdodCBiZSBhIHJlZmVyZW5jZSB0byBhDQo+IHBhcmFtZXRlciBvZiBz
dHJ1Y3Qgb3IgdW5pb24gdHlwZSBhbmQgLmIuYy5kLmUgYSBzZXF1ZW5jZSBvZiByZWZlcmVu
Y2VzIHRvDQo+IG1lbWJlcnMgd2l0aGluIGl0IGFuZCBkaXNhbWJpZ3VhdGlvbiB1bmRlciB5
b3VyIHJ1bGUgd291bGQgZGVwZW5kIG9uDQo+IHdoZXRoZXIgYW4gJz0nIGZvbGxvd3Mgc3Vj
aCBhbiB1bmJvdW5kZWQgc2VxdWVuY2UuKQ0KDQpJJ20gdGhpbmtpbmcgb2YgYW4gaWRlYSBm
b3IgdGhpcy4NCg0KPiANCj4+IC0gIFRoZSB0eXBlIG9mIGEgLmlkZW50aWZpZXIgaXMgYWx3
YXlzIGFuIGluY29tcGxldGUgdHlwZS4NCj4+DQo+PiAgICAgLSAgVGhpcyBwcmV2ZW50cyBj
aXJjdWxhciBkZXBlbmRlbmNpZXMgaW52b2x2aW5nIHNpemVvZigpIG9yIF9MZW5ndGhvZigp
Lg0KPiANCj4gV2UgaGF2ZSB0eXBlb2YgYXMgd2VsbCwgd2hpY2ggY2FuIGJlIGFwcGxpZWQg
dG8gZXhwcmVzc2lvbnMgd2l0aA0KPiBpbmNvbXBsZXRlIHR5cGUuDQoNClllcywgYnV0IGl0
IHdvdWxkIG5vdCBiZSBwcm9ibGVtYXRpYyBpbiB0aGUgdHdvLXBhc3MgcGFyc2luZyBJIGhh
dmUgaW4gbWluZC4NCg0KPiANCj4+IC0gIFNoYWRvd2luZyBydWxlcyBhcHBseS4NCj4+DQo+
PiAgICAgLSAgVGhpcyBwcmV2ZW50cyBhbWJpZ3VpdHkuDQo+IA0KPiAiU2hhZG93aW5nIHJ1
bGVzIGFwcGx5IiBpc24ndCBtdWNoIG9mIGEgc3BlY2lmaWNhdGlvbi4gIFlvdSBuZWVkIGRl
dGFpbGVkDQo+IHdvcmRpbmcgdGhhdCB3b3VsZCBiZSBhZGRlZCB0byA2LjIuMSBTY29wZXMg
b2YgaWRlbnRpZmllcnMgKG9yIGVxdWl2YWxlbnQNCj4gZWxzZXdoZXJlKSB0byBtYWtlIGl0
IGNsZWFyIGV4YWN0bHkgd2hhdCBzY29wZXMgYXBwbHkgZm9yIGlkZW50aWZpZXJzDQo+IGxv
b2tlZCB1cCB1c2luZyB0aGlzIGNvbnN0cnVjdC4NCg0KWWVhaCwgSSBndWVzcy4gIEknbSBi
ZWluZyBlYXN5IGZvciB0aGlzIGRyYWZ0LiAgSSdsbCB0cnkgdG8gYmUgbW9yZSANCnByZWNp
c2UgZm9yIGZ1dHVyZSByZXZpc2lvbnMuDQoNCj4gDQo+PiAgICAgLQ0KPj4gICAgICAgICB2
b2lkIGZvbyhzdHJ1Y3QgYmFyIHsgaW50IHg7IGNoYXIgY1sueF0gfSBhLCBpbnQgeCk7DQo+
Pg0KPj4gICAgICAgICBFeHBsYW5hdGlvbjoNCj4+ICAgICAgICAgLSAgQmVjYXVzZSBvZiBz
aGFkb3dpbmcgcnVsZXMsIFsueF0gcmVmZXJzIHRvIHRoZSBzdHJ1Y3QgbWVtYmVyLg0KPiAN
Cj4gSSByZWFsbHkgZG9uJ3QgdGhpbmsgc3RhbmRhcmRpemluZyBWTEFzLWluLXN0cnVjdHVy
ZXMgd291bGQgYmUgYSBnb29kDQo+IGlkZWEuICBDZXJ0YWlubHkgaXQgd291bGQgYmUgYSBt
YXNzaXZlIHBhaW4gdG8gc3BlY2lmeSBtZWFuaW5nZnVsDQo+IHNlbWFudGljcyBmb3IgdGhl
bSBhbmQgdGhpcyBvdXRsaW5lIGRvZXNuJ3QgZXZlbiBhdHRlbXB0IHRvIHdvcmsgdGhyb3Vn
aA0KPiB0aGUgY29uc2VxdWVuY2VzIG9mIHJlbW92aW5nIHRoZSBydWxlIHRoYXQgIklmIGFu
IGlkZW50aWZpZXIgaXMgZGVjbGFyZWQNCj4gYXMgaGF2aW5nIGEgdmFyaWFibHkgbW9kaWZp
ZWQgdHlwZSwgaXQgc2hhbGwgYmUgYW4gb3JkaW5hcnkgaWRlbnRpZmllciAoYXMNCj4gZGVm
aW5lZCBpbiA2LjIuMyksIGhhdmUgbm8gbGlua2FnZSwgYW5kIGhhdmUgZWl0aGVyIGJsb2Nr
IHNjb3BlIG9yDQo+IGZ1bmN0aW9uIHByb3RvdHlwZSBzY29wZS4iLg0KDQpNYXliZS4gIEkg
ZGlkbid0IGhhdmUgdGhlbSBpbiBtaW5kIHVudGlsIE1hcnRpbiBtZW50aW9uZWQgdGhlbS4g
IE5vdyANCnRoYXQgaGUgbWVudGlvbmVkIHRoZW0sIEknZCBsaWtlIGF0IGxlYXN0IHRvIGJl
IGNhcmVmdWwgc28gdGhhdCBhbnkgbmV3IA0Kc3ludGF4IGRvZXNuJ3QgZG8gc29tZXRoaW5n
IHRoYXQgaW1wZWRlcyBhZGRpbmcgdGhlbSBpbiB0aGUgZnV0dXJlLCBpZiANCml0IGlzIGV2
ZXIgY29uc2lkZXJlZCBkZXNpcmFibGUuDQoNCj4gDQo+IFRoZSBpZGVhIHRoYXQgLnggYXMg
YW4gZXhwcmVzc2lvbiBtaWdodCByZWZlciB0byBlaXRoZXIgYSBtZW1iZXIgb3IgYQ0KPiBw
YXJhbWV0ZXIgaXMgYWxzbyBhIG1hc3NpdmUgY2hhbmdlIHRvIHRoZSBuYW1lc3BhY2UgcnVs
ZXMsIHdoZXJlIGF0DQo+IHByZXNlbnQgdGhvc2UgYXJlIGluIGNvbXBsZXRlbHkgZGlmZmVy
ZW50IG5hbWVzcGFjZXMgYW5kIHNvIGluIGFueSBnaXZlbg0KPiBjb250ZXh0IGEgbmFtZSBv
bmx5IG5lZWRzIGxvb2tpbmcgdXAgYXMgb25lIG9yIHRoZSBvdGhlci4NCj4gDQo+IEFnYWlu
LCBwcm9wb3NhbHMgc2hvdWxkIGJlICptaW5pbWFsKi4NCg0KWWVzLiAgSSBvbmx5IHdhbnQg
dG8gaGF2ZSBhIHJvdWdoIGRpc2N1c3Npb24gYWJvdXQgaG93IHRoZSBlbnRpcmUgDQpmZWF0
dXJlIGluIGFuIGlkZWFsIGZ1dHVyZSB3aGVyZSBldmVyeXRoaW5nIGlzIGFkZGVkIHdvdWxk
IGxvb2sgbGlrZS4gDQpPdGhlcndpc2UsIGFkZGluZyBhIG1pbmltYWwgZmVhdHVyZSB3aXRo
b3V0IGNvbnNpZGVyaW5nIHRoaXMgZnV0dXJlLCANCm1pZ2h0IGRvIHNvbWV0aGluZyB0aGF0
IHByZXZlbnRzIHNvbWUgcGFydCBvZiBpdCBiZWluZyBpbXBsZW1lbnRlZCBkdWUgDQp0byBi
YWNrd2FyZHMgY29tcGF0aWJpbGl0eS4NCg0KU28gSSdkIGxpa2UgdG8gZGlzY3VzcyB0aGUg
d2hvbGUgaWRlYSBiZWZvcmUgdGhlbiBnb2luZyB0byBhIG1pbmltYWwgDQpwcm9wb3NhbCB0
aGF0IHdpbGwgYmUgKm11Y2gqIHNtYWxsZXIgdGhhbiB0aGlzIGlkZWEgdGhhdCBJJ20gZGlz
Y3Vzc2luZy4NCg0KSSdtIGhhcHB5IHdpdGggdGhlIExpbnV4IG1hbi1wYWdlcyBpbXBsZW1l
bnRpbmcgdGhlIHdob2xlIGlkZWEgKGV2ZW4gaWYgDQppdCdzIGltcG9zc2libGUgdG8gaW1w
bGVtZW50IGl0IGluIEMgZXZlciksIGFuZCBsZXR0aW5nIElTTyBDIC8gR0NDIA0KaW1wbGVt
ZW50IGluaXRpYWxseSAoYW5kIHBvc3NpYmx5IGV2ZXIpIG9ubHkgdGhlIG1pbmltYWwgc3R1
ZmYuDQoNCg0KPiAgQW5kIGV2ZW4gd2hlbiB0aGV5IGFyZSwgbWFueSBpc3N1ZXMNCj4gbWF5
IHdlbGwgYXJpc2UgaW4gcHJhY3RpY2UgKHNlZSB0aGUgbG9uZyBsaXN0IG9mIGNvbnN0ZXhw
ciBpc3N1ZXMgaW4gbXkNCj4gY29tbWl0IG1lc3NhZ2UgZm9yIHRoYXQgQzJ4IGZlYXR1cmUs
IGZvciBleGFtcGxlLCB3aGljaCBJIGV4cGVjdCB0byB0dXJuDQo+IGludG8gbXVsdGlwbGUg
TkIgY29tbWVudHMgYW5kIGF0IGxlYXN0IHR3byBhY2NvbXBhbnlpbmcgZG9jdW1lbnRzKS4N
Cg0KU3VyZTsgSSBleHBlY3QgdGhhdC4NCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQoNCg==

--------------Ai4YpQJ4v0LZZOBtrpeM4NIx--

--------------b26HFWn4BqRdT3RdRQjq480d
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOFPUkACgkQnowa+77/
2zJg4xAAqS2H/ei6wuShdAzNJ/TwsjlJte5g17LYonk/E3LhAR+s0LazcwJ+p1ox
YLJBVBw++UnRooBMdzk4KYlwfILhGjgZtLb0ITTyFst5nphISDpV+KrbEFgiTk5x
B1FP1bWksico3HFE5MaG7GK9MrRpqlqmPOszTHya88hFMTYRzcaaTQfHR6VMZamC
SiTdmI64F8ENa9ZSg/DmTo6vygsPNVpu2rHtav6huHcZZ0UCAhi0wCA9vtp0H4S3
0mA712D2BAP+zxJJvAny0b+rbU2yAt6SmgI6UBHISC2SI2ByoVokcUgM1BWPjeKT
bbPQXMGOI/px3GzUxxcZX0Tipm1H2o2oO0D6FVsx1+mxwP1YfNNvy52RFjKt9eoQ
Q5n9oIXltKNlClN/F6ikU2Asy6yVLW/bxKdupHkmZW8Owc0nLXGlZMzO0w8IWsGt
ol0DxaJitJGKMHigAzIaElZofwazceTkRDL12B0I06rFjTV9DeL5swmJAz7kFzbv
W/xPzaytuss7IuzXZTdkMUenh4SK92E30IwDzlOgqqX6U+enmJIIVLDkEgvNd71p
gc65B2Q0urZqloemOQpgybqxTiKviAHMnUR6nUZ1udIy27iHd9q7CO+76o84Xqu6
pnI32iQPzuc/N5/5wDL8TMKsXgRSShLaMREqGkYOuTYFRaHebes=
=iWSE
-----END PGP SIGNATURE-----

--------------b26HFWn4BqRdT3RdRQjq480d--
