Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8622F6271E8
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 20:06:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233792AbiKMTF7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 14:05:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232799AbiKMTF6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 14:05:58 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 242CAC744
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 11:05:57 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id v1so13720335wrt.11
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 11:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5RbgXBcMuDLgKSAkGRvDsKPntTkSr5IzVz9RKLF1BEs=;
        b=B17yqsr1TcZYn5whavy8pixWWRYI/IFpD3WSHFJ0SdgQQ1kWt0ViXO4TrXalVnPX1i
         B2jHzcSEbrbZ6vDunOndzDlw+GlItFSIch650WxEOADNa6/pilkBEGHkPH52fZL9FKop
         FrvG46nUfrCx17riJNDiYcdPyfK+yNMAglrmT4RQEoofYXktaq9HKquhUgPv2s/8ypV1
         BliN2OMvwoaygUGhzdACsupJEVNIeai2v894/6gHBoEuEi8RzG5WAV3R4D1IyBxLxwu5
         D8C7EiwaCwlKoCWbcBptV+RCwqDMdZWn1dQX0ZdT2P4lkDubcJw86XIEhUDn1gyE4drL
         BEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5RbgXBcMuDLgKSAkGRvDsKPntTkSr5IzVz9RKLF1BEs=;
        b=2m2D97/RfmVNfP+51AcOMF5sDEE4chaJ/wBQmHgNMF8IIyVYsRofjzAcAIN4W5TtI3
         bsUr3qv7bUktM4N9KPWlZQVPWouIkSKApe77f83PhgsD2pBFJdNX1VQdH3bkqO1FCsMT
         US1u1AST4SbK1UW9HOc/z9wMWSWpjOjaPJFmfu6Bo4hMyP8IFwR7i7wmTTjuC8vxAuMt
         DhmwnvfuFqKniroySQH9de6xUMQ0mZCveWAYq/n74Yeflzcvc+AWQ1Xp7IIbk2+G7Y0e
         /83eJZFEayAfRZLoiisqROTROnFfnAdLQgcfY9FgEg53vwulrKrzZGvAWgVLmzsEc/R7
         csUQ==
X-Gm-Message-State: ANoB5pla+tIbP4aAjwEf0lQdjGcci8qCXjwbQU7wKRDA1Ul6urG5wYrp
        XtGAUYlND1absw3G3SNqRbA=
X-Google-Smtp-Source: AA0mqf6jqP+V5puZ4Uyd08nyKrQAgysIE9wCxEB5ZLkGvDFNSYFPIlr856RYKm1gmtrDfYuE6VzNig==
X-Received: by 2002:a5d:6846:0:b0:236:53d2:1668 with SMTP id o6-20020a5d6846000000b0023653d21668mr5864394wrw.694.1668366355606;
        Sun, 13 Nov 2022 11:05:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d6109000000b0023655e51c33sm7585787wrt.4.2022.11.13.11.05.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 11:05:54 -0800 (PST)
Message-ID: <81d27449-8be8-c0bc-b101-b9da69958d03@gmail.com>
Date:   Sun, 13 Nov 2022 20:05:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
 <d0fed7ea-a60e-7524-a05c-679b77570dcb@gmail.com>
 <0e43ab7c-f678-8656-74a3-fd1d42126ddd@gmail.com>
In-Reply-To: <0e43ab7c-f678-8656-74a3-fd1d42126ddd@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------75SENoTMTeMiSZGhK7r06ca2"
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
--------------75SENoTMTeMiSZGhK7r06ca2
Content-Type: multipart/mixed; boundary="------------bzCKs6parW4Z9IJNp9xaufhS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <81d27449-8be8-c0bc-b101-b9da69958d03@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
 <d0fed7ea-a60e-7524-a05c-679b77570dcb@gmail.com>
 <0e43ab7c-f678-8656-74a3-fd1d42126ddd@gmail.com>
In-Reply-To: <0e43ab7c-f678-8656-74a3-fd1d42126ddd@gmail.com>

--------------bzCKs6parW4Z9IJNp9xaufhS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvMTMvMjIgMTc6NTYsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOj4+PiBPbiAxMS8x
My8yMiAxNzoyOCwgQWxlamFuZHJvIA0KQ29sb21hciB3cm90ZToNCj4+Pj4gU1lOT1BTSVM6
DQo+Pj4+DQo+Pj4+IHVuYXJ5LW9wZXJhdG9yOsKgIC4gaWRlbnRpZmllcg0KPj4+Pg0KPj4+
Pg0KPj4+PiBERVNDUklQVElPTjoNCj4+Pj4NCj4+Pj4gLcKgIEl0IGlzIG5vdCBhbiBsdmFs
dWUuDQo+Pj4+DQo+Pj4+IMKgwqDCoCAtwqAgVGhpcyBtZWFucyBzaXplb2YoKSBhbmQgX0xl
bmd0aG9mKCkgY2Fubm90IGJlIGFwcGxpZWQgdG8gdGhlbS4NCj4+Pg0KPj4+IFNvcnJ5LCB0
aGUgYWJvdmUgaXMgYSB0aGlua28uDQo+Pj4NCj4+PiBJIHdhbnRlZCB0byBzYXkgdGhhdCwg
bGlrZSBzaXplb2YoKSBhbmQgX0xlbmd0aG9mKCksIHlvdSBjYW4ndCBhc3NpZ24gdG8gaXQu
DQo+Pj4NCj4+Pj4gwqDCoMKgIC3CoCBUaGlzIHByZXZlbnRzIGFtYmlndWl0eSB3aXRoIGEg
ZGVzaWduYXRvciBpbiBhbiBpbml0aWFsaXplci1saXN0IA0KPj4+PiB3aXRoaW4gYSBuZXN0
ZWQgYnJhY2VkLWluaXRpYWxpemVyLg0KPj4+Pg0KPj4+PiAtwqAgVGhlIHR5cGUgb2YgYSAu
aWRlbnRpZmllciBpcyBhbHdheXMgYW4gaW5jb21wbGV0ZSB0eXBlLg0KPj4NCj4+IE9yIHJh
dGhlciwgbW9yZSBlYXNpbHkgcHJvaGliaXQgZXhwbGljaXRseSB1c2luZyB0eXBlb2YoKSwg
c2l6ZW9mKCksIGFuZCANCj4+IF9MZW5ndGhvZigpIHRvIGl0Lg0KPiANCj4gSG1tLCB0aGlz
IGlzIG5vdCBlbm91Z2guwqAgUG9pbnRlciBhcml0aG1ldGljcyBhcmUgaW50ZXJlc3Rpbmcs
IGFuZCBmb3IgdGhhdCwgeW91IA0KPiBuZWVkIHRvIGltcGxpY2l0bHkga25vdyB0aGUgc2l6
ZW9mKCoucCkuDQo+IA0KPiBIb3cgYWJvdXQgYWxsb3dpbmcgb25seSBpbnRlZ3JhbCB0eXBl
cyBvciBwb2ludGVycyB0byBpbnRlZ3JhbCB0eXBlcz8NCg0KSSd2ZSBiZWVuIHRoaW5raW5n
IGFib3V0IGtlZXBpbmcgdGhlIG51bWJlciBvZiBwYXNzZXMgYXMgbG93IGFzIHBvc3NpYmxl
LCB3aGlsZSANCmFsbG93aW5nIG1vc3QgdXNlZnVsIGV4cHJlc3Npb25zOg0KDQpNYXliZSBm
b3JjaW5nIHNvbWUgb3JkZXJpbmcgY2FuIGhlbHA6DQoNCi0gIFRoZSB0eXBlIG9mIGEgLmlu
aXRpYWxpemVyIGlzIGNvbXBsZXRlIGFmdGVyIHRoZSBvcGVuaW5nIHBhcmVudGhlc2lzIG9m
IHRoZSANCmZ1bmN0aW9uLWRlY2xhcmF0b3IgKGlmIGl0IHJlZmVycyB0byBhIHBhcmFtZXRl
cikgb3IgYWZ0ZXIgdGhlIG9wZW5pbmcgYnJhY2Ugb2YgDQphIGJyYWNlZC1pbml0aWFsaXpl
ciwgaWYgaXQgcmVmZXJzIHRvIGEgc3RydWN0L3VuaW9uIG1lbWJlciwgZXhjZXB0IHdoZW4g
dGhlIA0KdHlwZSBpcyBhIHZhcmlhYmx5LW1vZGlmaWVkIHR5cGUsIHdoaWNoIHdpbGwgYmUg
Y29tcGxldGUgYWZ0ZXIgdGhlIGNsb3NpbmcgDQpwYXJlbnRoZXNpcyBvciBicmFjZSByZXNw
ZWN0aXZlbHkuDQoNCkknbSBub3Qgc3VyZSBJIGdvdCB0aGUgd29yZGluZyBwcmVjaXNlbHks
IG9yIGlmIEkgY292ZXJlZCBhbGwgY2FzZXMgKGxpa2UgdHlwZXMgDQp0aGF0IGNhbm5vdCBi
ZSBjb21wbGV0ZWQgZm9yIG90aGVyIHJlYXNvbnMsIGV2ZW4gYWZ0ZXIgdGhlIGNsb3Npbmcg
JyknIG9yICd9Jy4NCg0KPiANCj4+DQo+Pj4+DQo+Pj4+IMKgwqDCoCAtwqAgVGhpcyBwcmV2
ZW50cyBjaXJjdWxhciBkZXBlbmRlbmNpZXMgaW52b2x2aW5nIHNpemVvZigpIG9yIF9MZW5n
dGhvZigpLg0KPj4+Pg0KPj4+PiAtwqAgU2hhZG93aW5nIHJ1bGVzIGFwcGx5Lg0KPj4+Pg0K
Pj4+PiDCoMKgwqAgLcKgIFRoaXMgcHJldmVudHMgYW1iaWd1aXR5Lg0KPj4+Pg0KPj4+Pg0K
Pj4+PiBFWEFNUExFUzoNCj4+Pj4NCj4+Pj4NCj4+Pj4gLcKgIFZhbGlkIGV4YW1wbGVzIChs
aWJjKToNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKgwqAgaW50DQo+Pj4+IMKgwqDCoMKgwqDC
oMKgIHN0cm5jbXAoY29uc3QgY2hhciBzMVsubl0sDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjb25zdCBjaGFyIHMyWy5uXSwNCj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHNpemVfdCBuKTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKgwqAg
aW50DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIGNhY2hlZmx1c2godm9pZCBhZGRyWy5uYnl0ZXNd
LA0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG5ieXRl
cywNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBjYWNo
ZSk7DQo+Pj4+DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIGxvbmcNCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgbWJpbmQodm9pZCBhZGRyWy5sZW5dLA0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1bnNpZ25lZCBsb25nIGxlbiwNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50IG1vZGUsDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHVu
c2lnbmVkIGxvbmcgbm9kZW1hc2tbKC5tYXhub2RlICsgVUxPTkdfV0lEVEgg4oCQIDEpDQo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvIFVMT05HX1dJRFRIXSwNCj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBtYXhub2RlLCB1
bnNpZ25lZCBpbnQgZmxhZ3MpOw0KPj4+Pg0KPj4+PiDCoMKgwqDCoMKgwqDCoCB2b2lkICoN
Cj4+Pj4gwqDCoMKgwqDCoMKgwqAgYnNlYXJjaChjb25zdCB2b2lkIGtleVsuc2l6ZV0sDQo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCB2b2lkIGJhc2VbLnNp
emUgKiAubm1lbWJdLA0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6
ZV90IG5tZW1iLA0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90
IHNpemUsDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgKCpjb21w
YXIpKGNvbnN0IHZvaWQgWy5zaXplXSwgY29uc3Qgdm9pZCBbLnNpemVdKSk7DQo+Pj4+DQo+
Pj4+IC3CoCBWYWxpZCBleGFtcGxlcyAobXkgb3duKToNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDC
oMKgwqAgdm9pZA0KPj4+PiDCoMKgwqDCoMKgwqDCoCB1c3RyMnN0cihjaGFyIGRzdFtyZXN0
cmljdCAubGVuICsgMV0sDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNvbnN0IGNoYXIgc3JjW3Jlc3RyaWN0IC5sZW5dLA0KPj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgbGVuKTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgY2hhciAqDQo+Pj4+IMKgwqDCoMKgwqDCoMKgIHN0cGVjcHkoY2hhciBkc3RbLmVuZCAt
IC5kc3QgKyAxXSwNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIg
KnJlc3RyaWN0IHNyYywNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNo
YXIgZW5kWzFdKTsNCj4+Pj4NCj4+Pj4gLcKgIFZhbGlkIGV4YW1wbGVzIChmcm9tIHRoaXMg
dGhyZWFkKToNCj4+Pj4NCj4+Pj4gwqDCoMKgIC0NCj4+Pj4gwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IHMgeyBpbnQgYTsgfTsNCj4+Pj4gwqDCoMKgwqDCoMKgwqAgdm9pZCBmKGludCBhLCBp
bnQgYlsoKHN0cnVjdCBzKSB7IC5hID0gMSB9KS5hXSk7DQo+Pj4+DQo+Pj4+IMKgwqDCoMKg
wqDCoMKgIEV4cGxhbmF0aW9uOg0KPj4+PiDCoMKgwqDCoMKgwqDCoCAtwqAgQmVjYXVzZSBv
ZiBzaGFkb3dpbmcgcnVsZXMsIC5hPTEgcmVmZXJzIHRvIHRoZSBzdHJ1Y3QgbWVtYmVyLg0K
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtwqAgQWxzbywgaWYgLmEgcmVmZXJyZWQgdG8g
dGhlIHBhcmFtZXRlciwgaXQgd291bGQgYmUgYW4gcnZhbHVlLCANCj4+Pj4gc28gaXQgd291
bGRuJ3QgYmUgdmFsaWQgdG8gYXNzaWduIHRvIGl0Lg0KPj4+PiDCoMKgwqDCoMKgwqDCoCAt
wqAgKC4uLikuYSByZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIgdG9vLCBzaW5jZSBvdGhl
cndpc2UgYW4gDQo+Pj4+IHJ2YWx1ZSBpcyBub3QgZXhwZWN0ZWQgdGhlcmUuDQo+Pj4+DQo+
Pj4+IMKgwqDCoCAtDQo+Pj4+IMKgwqDCoMKgwqDCoMKgIHZvaWQgZm9vKHN0cnVjdCBiYXIg
eyBpbnQgeDsgY2hhciBjWy54XSB9IGEsIGludCB4KTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDC
oMKgwqAgRXhwbGFuYXRpb246DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBCZWNhdXNlIG9m
IHNoYWRvd2luZyBydWxlcywgWy54XSByZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIuDQo+
Pj4+DQo+Pj4+IMKgwqDCoCAtDQo+Pj4+IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBiYXIgeyBp
bnQgeTsgfTsNCj4+Pj4gwqDCoMKgwqDCoMKgwqAgdm9pZCBmb28oY2hhciBwWygoc3RydWN0
IGJhcil7IC55ID0gLnggfSkueV0sIGludCB4KTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgRXhwbGFuYXRpb246DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIC3CoCAueCB1bmFtYmlndW91
c2x5IHJlZmVycyB0byB0aGUgcGFyYW1ldGVyLg0KPj4+Pg0KPj4+PiAtwqAgVW5kZWZpbmVk
IGJlaGF2aW9yOg0KPj4+Pg0KPj4+PiDCoMKgwqAgLQ0KPj4+PiDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgYmFyIHsgaW50IHk7IH07DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIHZvaWQgZm9vKGNo
YXIgcFsoKHN0cnVjdCBiYXIpeyAueSA9IC55IH0pLnldLCBpbnQgeSk7DQo+Pj4+DQo+Pj4+
IMKgwqDCoMKgwqDCoMKgIEV4cGxhbmF0aW9uOg0KPj4+PiDCoMKgwqDCoMKgwqDCoCAtwqAg
QmVjYXVzZSBvZiBzaGFkb3dpbmcgcnVsZXMsID0ueSByZWZlcnMgdG8gdGhlIHN0cnVjdCBt
ZW1iZXIuDQo+Pj4+IMKgwqDCoMKgwqDCoMKgIC3CoCAueT0ueSBtZWFucyBpbml0aWFsaXpl
IHRoZSBtZW1iZXIgd2l0aCBpdHNlbGYgKHVuaW5pdGlhbGl6ZWQgdXNlKS4NCj4+Pj4gwqDC
oMKgwqDCoMKgwqAgLcKgICguLi4pLnkgcmVmZXJzIHRvIHRoZSBzdHJ1Y3QgbWVtYmVyLCBz
aW5jZSBvdGhlcndpc2UgYW4gcnZhbHVlIGlzIA0KPj4+PiBub3QgZXhwZWN0ZWQgdGhlcmUu
DQo+Pj4+DQo+Pj4+IC3CoCBDb25zdHJhaW50IHZpb2xhdGlvbnM6DQo+Pj4+DQo+Pj4+IMKg
wqDCoCAtDQo+Pj4+IMKgwqDCoMKgwqDCoMKgIHZvaWQgZm9vKGNoYXIgKCphKVtzaXplb2Yg
Ki5iXSwgY2hhciAoKmIpW3NpemVvZiAqLmFdKTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgRXhwbGFuYXRpb246DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBzaXplb2YoKi5iKTog
Q2Fubm90IGdldCBzaXplIG9mIGluY29tcGxldGUgdHlwZS4NCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgLcKgIHNpemVvZigqLmEpOiBDYW5ub3QgZ2V0IHNpemUgb2YgaW5jb21wbGV0ZSB0eXBl
Lg0KPj4+Pg0KPj4+PiDCoMKgwqAgLQ0KPj4+PiDCoMKgwqDCoMKgwqDCoCB2b2lkIGYoc2l6
ZV90IHMsIGludCBhW3NpemVvZigxKSA9IDFdKTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgRXhwbGFuYXRpb246DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBDYW5ub3QgYXNzaWdu
IHRvIHJ2YWx1ZS4NCj4+Pj4NCj4+Pj4gwqDCoMKgIC0NCj4+Pj4gwqDCoMKgwqDCoMKgwqAg
dm9pZCBmKHNpemVfdCBzLCBpbnQgYVsucyA9IDFdKTsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqDC
oMKgwqAgRXhwbGFuYXRpb246DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBDYW5ub3QgYXNz
aWduIHRvIHJ2YWx1ZS4NCj4+Pj4NCj4+Pj4gwqDCoMKgIC0NCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgdm9pZCBmKHNpemVfdCBzLCBpbnQgYVtzaXplb2YoLnMpXSk7DQoNClRoaXMgc2hvdWxk
IGFjdHVhbGx5IGJlIHZhbGlkLg0KDQo+Pj4+DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIEV4cGxh
bmF0aW9uOg0KPj4+PiDCoMKgwqDCoMKgwqDCoCAtwqAgc2l6ZW9mKC5zKTogQ2Fubm90IGdl
dCBzaXplIG9mIGluY29tcGxldGUgdHlwZS4NCj4+Pj4NCj4+Pj4NCj4+Pj4gRG9lcyB0aGlz
IGlkZWEgbWFrZSBzZW5zZSB0byB5b3U/DQo+Pj4+DQo+Pj4+DQo+Pj4+IENoZWVycywNCj4+
Pj4gQWxleA0KPj4+DQo+Pg0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------bzCKs6parW4Z9IJNp9xaufhS--

--------------75SENoTMTeMiSZGhK7r06ca2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNxQAoACgkQnowa+77/
2zIntw//b5ZaBnTJNE7IGbf0iys+8ybXgtXLeLKVTxB3SHEFUI6ZtToG/hL5xQ6/
6bQw9+FyqKXRSR8lFVqO3T7aiQAJwFhcQHucldnGl8lTJ1ruLoqZP2ul73NKd8Zw
v17hIDc2TjMU0gQjENPf0F3VpiP/7mVPVUneJ9lzWqomhcdMn8oFW/9BS0DKzEmI
VRpCNwKMx26RYaQo6le8U/dap7HA7VdtbdVKLAvdhV1z6dXAdixRzPpbpuEG1vC+
PXqeYCubI/nDe9PVzIbd6J2WONWnGZ/Ua/DjGlAbJ5lEjjjp3iQsIMelagdBmeqT
CqFPL0aEtTRBLLvGefN7/pggmeirE0EHUStt9Exz/QFiQVllZogbP2Wl4rhZ2t/v
manHYPNpdVSY+c98lbjmhLWVwHgWr4ye8Uz11G30VGWozyk89YjxcsmK2lIg9TV9
f4jVf/b0qCfq4sdJ+ZhRUcOtqkO/tTNSo+yVfFGROn4uHEaXWFs/n7dJlRwJ5Ezn
ZjygGWPHtyUFNUucNC3DiStKjwSdGbq/ZWh3/w6Qt8ZnKbgnC6eKjqwPDt/wcqSk
Tb9RnWOlYFw8RRvj1H9mSMTK3/ydQVQzWzZ00CT6GDReaauTC/jDkBQKvR3Yxmw1
qhyNT2ubdAmgHlgAKXm3YuaIi9xgg9jfIZFKxP2LIsWvhr1n4PA=
=j6MY
-----END PGP SIGNATURE-----

--------------75SENoTMTeMiSZGhK7r06ca2--
