Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8F4A627028
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 16:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232884AbiKMPPo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 10:15:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232676AbiKMPPn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 10:15:43 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59B8110FEA
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 07:15:42 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id d9so8315465wrm.13
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 07:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2MeLt0aaU/u973tDADGnwxZ8g9dB3naH5E7HwUllfDk=;
        b=QugwMbeZy53Ju+BoKOXi09UYueZ60jIKF3jtEE3ciiI+EZrS7slQPSBIA4bNrxg2EO
         himRyyJkq6DAFC47KYsnaHPlmwHspNTjKdDm5pPxPQ8/OXS8uQUUI8Qhh/vtZeI5YlMa
         gn1Giu52wiU/b08GOlXH11FHMDqiKViTv7hatwmQl18N1vQsMEIOcSQfpe9KMtpIOix5
         ue8al//zmT4ebMqqH4XG6ieVmS8cVDDOmbFoIE8F/31A5hESspF03rzc3meN9k06DjE4
         9RVjY/vJnJLlgPA5gpNiuqBDbWcJb+I1EHdJkPREftq5wUjwS3ddvVf/J/raSZzoFOwU
         BjxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2MeLt0aaU/u973tDADGnwxZ8g9dB3naH5E7HwUllfDk=;
        b=B0KA0L/az0aNsxe9ZE7vn5XOCnLlnuul6HNLIt4P9brTMbYTr/EPwDd84LGNhE7Dly
         got65U1CMgrWmayPL8UKOWQ86tMRFJjqUgh0mMrVtoftRvGSMtKhgit7l2r26lUMiHaP
         h8eNoAxb9dhTQt8Pr04mmPLPun9lq+9J7+LN8tmx5wKExDKDo1AEkk1jZVtHmibAy7HE
         5PTKC0xaeZuqa3AQM0WffSkYmpFyYjFQVgSU6jJyCTc5RBUnEm0w7c2QXIjooHWTTvXj
         rHelNqcUAQAPUkdVBtEpug084ri9sFM7kJHFF6ghjH1ovOVAknD7pDyv/dwR+fVETsnz
         mOtQ==
X-Gm-Message-State: ANoB5pnhcp404ivQhSxLRtPSV1+wVRzGbPQqbs4smeKGhkinipX7V2bE
        z4s1NAn77Iwezqnwl2zMLAM=
X-Google-Smtp-Source: AA0mqf5GRy16uRmCMCquXZzp+74L4o+yMBF11ApUOPEeZiMSAEsy9lwqGw1EXUSNHEM7Xr5zHv52pg==
X-Received: by 2002:adf:dfc2:0:b0:236:7805:48d3 with SMTP id q2-20020adfdfc2000000b00236780548d3mr5426725wrn.644.1668352540753;
        Sun, 13 Nov 2022 07:15:40 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 3-20020a05600c024300b003c6b874a0dfsm10995791wmj.14.2022.11.13.07.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 07:15:40 -0800 (PST)
Message-ID: <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
Date:   Sun, 13 Nov 2022 16:15:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EKMaR7nnenD3abWD0Tp0OQlz"
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
--------------EKMaR7nnenD3abWD0Tp0OQlz
Content-Type: multipart/mixed; boundary="------------0Ocw0hxQrAdNrAtLR0a01St0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
In-Reply-To: <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>

--------------0Ocw0hxQrAdNrAtLR0a01St0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiAxMS8xMy8yMiAxNTo1OCwgTWFydGluIFVlY2tlciB3cm90ZToN
Cj4gQW0gU29ubnRhZywgZGVuIDEzLjExLjIwMjIsIDE1OjAyICswMTAwIHNjaHJpZWIgQWxl
amFuZHJvIENvbG9tYXI6DQo+Pg0KPj4gT24gMTEvMTMvMjIgMTQ6MzMsIEFsZWphbmRybyBD
b2xvbWFyIHdyb3RlOg0KPj4+DQo+Pj4gT24gMTEvMTMvMjIgMTQ6MTksIEFsZWphbmRybyBD
b2xvbWFyIHdyb3RlOg0KPj4+Pj4gQnV0IHRoZXJlIGFyZSBub3Qgb25seSBzeW50YWN0aWNh
bCBwcm9ibGVtcywgYmVjYXVzZQ0KPj4+Pj4gYWxzbyB0aGUgdHlwZSBvZiB0aGUgcGFyYW1l
dGVyIG1pZ2h0IGJlY29tZSByZWxldmFudA0KPj4+Pj4gYW5kIHRoZW4geW91IGNhbiBnZXQg
Y2lyY3VsYXIgZGVwZW5kZW5jaWVzOg0KPj4+Pj4NCj4+Pj4+IHZvaWQgZm9vKGNoYXIgKCph
KVtzaXplb2YgKi5iXSwgY2hhciAoKmIpW3NpemVvZiAqLmFdKTsNCj4+Pj4NCj4+Pj4gVGhp
cyBzZWVtcyB0byBiZSBhIGRpZmZpY3VsdCBzdG9uZSBpbiB0aGUgcm9hZC4NCj4gDQo+IEJ1
dCBub3RlIHRoYXQgR05VIGZvcndhcmQgZGVjbGFyYXRpb25zIHNvbHZlIHRoaXMgbmljZWx5
Lg0KDQpIb3cgd291bGQgdGhhdCBhYm92ZSBiZSBzb2x2ZWQgd2l0aCBHTlUgZndkIGRlY2w/
ICBJJ20gZ3Vlc3NpbmcgdGhhdCBpdCBjYW4ndC4gDQpIb3cgZG8geW91IGZvcndhcmQgZGVj
bGFyZSBpbmNvbXBsZXRlIFZNVHM/Lg0KDQo+IA0KPj4+Pg0KPj4+Pj4gSSBhbSBub3Qgc3Vy
ZSB3aGF0IHdvdWxkIHRoZSBiZXN0IHdheSB0byBmaXggaXQuIE9uZQ0KPj4+Pj4gY291bGQg
c3BlY2lmaXkgdGhhdCBwYXJhbWV0ZXJzIHJlZmVycmVkIHRvIGJ5DQo+Pj4+PiB0aGUgLmlk
ZW50aWZlciBzeW50YXggbXVzdCBvZiBzb21lIGludGVnZXIgdHlwZSBhbmQNCj4+Pj4+IHRo
YXQgdGhlIHN1Yi1leHByZXNzaW9uIC5pZGVudGlmZXIgaXMgYWx3YXlzDQo+Pj4+PiBjb252
ZXJ0ZWQgdG8gYSAnc2l6ZV90Jy4NCj4+Pj4NCj4+Pj4gVGhhdCBtYWtlcyBzZW5zZSwgYnV0
IHRoZW4gb3Zlcm5pZ2h0IHNvbWUgcXVpdGUgdXNlZnVsIHRoaW5nIGNhbWUgdG8gbXkgbWlu
ZA0KPj4+PiB0aGF0IHdvdWxkIG5vdCBiZSBwb3NzaWJsZSB3aXRoIHRoaXMgbGltaXRhdGlv
bjoNCj4+Pj4NCj4+Pj4NCj4+Pj4gPGh0dHBzOi8vc29mdHdhcmUuY29kaWRhY3QuY29tL3Bv
c3RzLzI4NTk0Nj4NCj4+Pj4NCj4+Pj4gY2hhciAqDQo+Pj4+IHN0cGVjcHkoY2hhciBkc3Rb
LmVuZCAtIC5kc3RdLCBjaGFyICpzcmMsIGNoYXIgZW5kWzFdKQ0KPj4NCj4+IEhlaCwgSSBn
b3QgYW4gb2ZmLWJ5LW9uZSBlcnJvci4gIEl0IHNob3VsZCBiZSBkc3RbLmVuZCAtIC5kc3Qg
KyAxXSwgb2YgY291cnNlLA0KPj4gYW5kIHRoZW4gdGhlIHJlc3VsdCBvZiB0aGUgd2hvbGUg
ZXhwcmVzc2lvbiB3b3VsZCBiZSAwLCB3aGljaCBpcyBmaW5lIGFzIHNpemVfdC4NCj4+DQo+
PiBTbywgbmV2ZXIgbWluZC4NCj4gDQo+IC5lbmQgYW5kIC5kc3Qgd291bGQgaGF2ZSBwb2lu
dGVyIHNpemUgdGhvdWdoLg0KPiANCj4+Pj4gew0KPj4+PiAgICAgICBmb3IgKC8qIHZvaWQg
Ki87IGRzdCA8PSBlbmQ7IGRzdCsrKSB7DQo+Pj4+ICAgICAgICAgICAqZHN0ID0gKnNyYysr
Ow0KPj4+PiAgICAgICAgICAgaWYgKCpkc3QgPT0gJ1wwJykNCj4+Pj4gICAgICAgICAgICAg
ICByZXR1cm4gZHN0Ow0KPj4+PiAgICAgICB9DQo+Pj4+ICAgICAgIC8qIFRydW5jYXRpb24g
ZGV0ZWN0ZWQgKi8NCj4+Pj4gICAgICAgKmVuZCA9ICdcMCc7DQo+Pj4+DQo+Pj4+ICNpZiAh
ZGVmaW5lZChOREVCVUcpDQo+Pj4+ICAgICAgIC8qIENvbnN1bWUgdGhlIHJlc3Qgb2YgdGhl
IGlucHV0IHN0cmluZy4gKi8NCj4+Pj4gICAgICAgd2hpbGUgKCpzcmMrKykge307DQo+Pj4+
ICNlbmRpZg0KPj4+Pg0KPj4+PiAgICAgICByZXR1cm4gZW5kICsgMTsNCj4+Pj4gfQ0KPj4+
IEFuZCBJIGZvcmdvdCB0byBzYXkgaXQ6ICBEZWZhdWx0IHByb21vdGlvbnMgcmFuayBoaWdo
IChwcm9iYWJseSB0aGUgaGlnaGVzdCkgaW4NCj4+PiBteSBsaXN0IG9mIG1vc3QgaGF0ZWQg
ZmVhdHVyZXNeV2J1Z3MgaW4gQy4NCj4gDQo+IElmIHlvdSByZXBsYWNlZCB0aGVtIHdpdGgg
ZXhwbGljaXQgY29udmVyc2lvbiB5b3UgdGhlbiBoYXZlDQo+IHRvIGFkZCBieSBoYW5kIGFs
bCB0aGUgdGltZSwgSSBhbSBwcmV0dHkgc3VyZSBtb3N0IHBlb3BsZQ0KPiB3b3VsZCBoYXRl
IHRoaXMgbW9yZS4gKGFuZCBpdCBjb3VsZCBhbHNvIGhpZGUgYnVncykNCg0KWWVhaCwgY2Fz
dHMgYXJlIGFsc28gaW4gbXkgdG9wIDMgbGlzdCBvZiB0aGluZ3MgdG8gYXZvaWQgKGFsdGhv
dWdoIGluIHRoaXMgY2FzZSANCnRoZXJlJ3Mgbm8gYnVnKTsgbWF5YmUgYSBiaXQgb3ZlciBk
ZWZhdWx0IHByb21vdGlvbnMgOikNCg0KSSBkaWRuJ3QgbWVhbiB0aGF0IGFsbCBwcm9tb3Rp
b25zIGFyZSBiYWQuICBKdXN0IHRoZSBncmF0dWl0b3VzIG9uZXMsIGxpa2UgDQpwcm9tb3Rp
bmcgZXZlcnl0aGluZyB0byBpbnQgYmVmb3JlIGV2ZW4gbmVlZGluZyBpdC4gIFRoYXQgbWFr
ZXMgdWludDE2X3QgYSANCnRoZW9yZXRpY2FsIHR5cGUsIGJlY2F1c2Ugd2hlbmV2ZXIgeW91
IHRyeSB0byB1c2UgaXQsIHlvdSBlbmQgdXAgd2l0aCBhIHNpZ25lZCANCjMyLWJpdCB0eXBl
OyBmdW4gaGVoPyA6UCAgX0JpdEludCgpIHNvbHZlcyB0aGF0IGZvciBtZS4NCg0KQnV0IHN1
cmUsIGluICgxdSArIDFsKSwgcHJvbW90aW9ucyBhcmUgZmluZSB0byBnZXQgYSBjb21tb24g
dHlwZS4NCg0KPiANCj4+PiBJIHdvdWxkbid0IGNvbnZlcnQgaXQgdG8gc2l6ZV90LCBidXQN
Cj4+PiByYXRoZXIgZm9sbG93IG5vcm1hbCBwcm9tb3Rpb24gcnVsZXMuDQo+IA0KPiBUaGUg
cG9pbnQgb2YgbWFraW5nIGl0IHNpemVfdCBpcyB0aGF0IHlvdSB0aGVuDQo+IGRvIG5lZWQg
dG8ga25vdyB0aGUgdHlwZSBvZiB0aGUgcGFyYW1ldGVyIHRvIG1ha2UNCj4gc2Vuc2Ugb2Yg
dGhlIGV4cHJlc3Npb24uIElmIHRoZSB0eXBlIG1hdHRlcnMsIHRoZW4geW91IGdldA0KPiBt
dXR1YWwgZGVwZW5kZW5jaWVzIGFzIGluIHRoZSBleGFtcGxlIGFib3ZlLg0KDQpFeGNlcHQg
aWYgeW91IHRyZWF0IGluY29tcGxldGUgdHlwZXMgYXMuLi4gaW5jb21wbGV0ZSB0eXBlcyAo
Zm9yIHdoaWNoIHNpemVvZigpIA0KaXMgZGlzYWxsb3dlZCBieSB0aGUgc3RhbmRhcmQpLiAg
QW5kIHRoZSBpc3N1ZSB3ZSdyZSBoYXZpbmcgaXMgdGhhdCB0aGUgdHlwZXMgDQphcmUgbm90
IHlldCBjb21wbGV0ZSBhdCB0aGUgdGltZSB3ZSdyZSB1c2luZyB0aGVtLCBhcmVuJ3QgdGhl
eT8NCg0KS2luZCBvZiBsaWtlIHRoZSBpbml0aWFsaXphdGlvbiBvcmRlciBmaWFzY28sIGJ1
dCBzaW5jZSB3ZSdyZSBpbiBhIGxpbWl0ZWQgDQpzY29wZSwgd2UgY2FuIGRldGVjdCBpdC4N
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------0Ocw0hxQrAdNrAtLR0a01St0--

--------------EKMaR7nnenD3abWD0Tp0OQlz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNxChEACgkQnowa+77/
2zJ4txAAkFqZxnf5NdlAxKjThTE/tVqDI/pEMK+QNoRyHy82vV7KEAFk/CLkau5D
75WfMq58J2FRRyJNQNm2x22yW3+Bv1mQ36kZO5Io13c8IFmHb/cQr0BWXgdVIxvr
F31/r5Ae+dUFY/S2SDRJKn2vtR6rZk/7BnMJoj34z3P2CweJ/XBeSHLkK4pYcJGS
r5nvSYhFVRYU6gHNnFHsbq5MIDoww5xVPXXXVA2Q/4U3ldctjAf9Q/CtjHld67Q5
uxT0r2p7Hsk2NohVooaUkauvduiXnlfg/i9NoIdTowEQLKzlVNGbv/IqA3CFVTmY
YYwQoEhJo3Y7WMVuPB03Aostgd3YpQt+5v+uzIv2CFIobyIK5Vz/cc8+GdvSxs7c
jeg9kCY827Ocnwl4tddRZ606RE2+ijF0DhCHB2xJhZZMAon/A0c0e+bfNtF35Ks2
WBX4He1E04OwIvlW/bvCvqRrABN5O02tRi6WumUlCpStgEDKs5nGTmYxC3/MB9bn
Wd/vC3g7SzO6Cig3rTwlpo00VJuPbcYuhIG9cX4kbZcs23oLPENSn6YmQUhnVmd4
0u66LVK9El4If5JLsUC3C949DuAeEXu+CeKRNnyoFTmd/fK85i99mZhun8VDP4Bk
/39bBNOmpogTi+zjMKdefJMPWn5oeWqRmyZRMh34QdxTmu3vHPk=
=fBdw
-----END PGP SIGNATURE-----

--------------EKMaR7nnenD3abWD0Tp0OQlz--
