Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B479B62710A
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 17:56:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232799AbiKMQ43 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 11:56:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231972AbiKMQ43 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 11:56:29 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9240B11C00
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:56:27 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id t4so5835295wmj.5
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxRkvaKIbq7RMTESjYh3cJ6BTXJdlvSWt8yBKQBDheI=;
        b=TfCQPypja5Kn0WBVxlpwrpjxAkWgDUoz6B19LM2mUiMsXzE+N3iSgighPqVQBdDXpI
         W6UaScARPRXNO/peP22m9DXQLirkJMiCemX1rAcOgse1YAW+7rWBLAJ2kIA0kqst/H84
         vaYTd9ew2tOjceBDrKD5WkVDpkH3cGngOxyO97U8f385+519nHAJDV5AnFzj1do9W6Lc
         r1BPK2m0r8kgKvQ2x7271Pg8WfhiaZoOasKONtNUxGplv+1fQgEr1bzIhdYKAX8a+tI0
         W1APjNwLqBhsjCyyBdx40wwSVbI0vlcYfH31b8NlqvwpSKYPE352yDjhnHpHQmI5GJMu
         BF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OxRkvaKIbq7RMTESjYh3cJ6BTXJdlvSWt8yBKQBDheI=;
        b=O1w6rOkFL9TWoiIdyS8FTdBKrfgQdqTZ+yVebifznFheSHphTRWzRrrsTu6KFW9wTS
         YVNjfDjQBBoQWpZGGPPx4FUPYHJsAkXz/gWphInBMxamFh5Qp1MsUpXwRJt7H4F/9zbN
         u+8Su6dFUFnKR8/w8bUtJtPAV724jMw36fROTKITsHpMmvSgKZo5avKbn4d0mmPMdSHG
         r6e5cjys6oS4iOxpb9cr+fzbi/XwmqaGZVbuultEuTeOTnX4fueMzaE0lAGnjTnQ/d1I
         4+LHjCL28VFN6sIccoL/hsixa3yy1MQ62TC6mlxPcjk7eEd3oIVFG4HRXOeoJ6wP2yBk
         3BXg==
X-Gm-Message-State: ANoB5pkiZAK2clYz6bcQvrm5wKY4nNmk55JbKHrBNuayU6NGsL0bLC1z
        Yj1wGG4SkRNAU+emjo5d81k=
X-Google-Smtp-Source: AA0mqf6NRdDG7z57PwMhD6+4HM2WHD4BquaPFGYgWGcIKQc8t1dXPEWjUgCEsvbO5YRYRDmlyefhew==
X-Received: by 2002:a05:600c:4b16:b0:3cf:77a6:2c2e with SMTP id i22-20020a05600c4b1600b003cf77a62c2emr5841896wmp.179.1668358585968;
        Sun, 13 Nov 2022 08:56:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t5-20020adfe445000000b00236740c6e6fsm7234056wrm.100.2022.11.13.08.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 08:56:25 -0800 (PST)
Message-ID: <0e43ab7c-f678-8656-74a3-fd1d42126ddd@gmail.com>
Date:   Sun, 13 Nov 2022 17:56:08 +0100
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
In-Reply-To: <d0fed7ea-a60e-7524-a05c-679b77570dcb@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mhuB1gwgWdoiY5vzpkXwCgxk"
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
--------------mhuB1gwgWdoiY5vzpkXwCgxk
Content-Type: multipart/mixed; boundary="------------dKU4Ij53ak126k0q20hRYy05";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <0e43ab7c-f678-8656-74a3-fd1d42126ddd@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
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
 <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
 <d0fed7ea-a60e-7524-a05c-679b77570dcb@gmail.com>
In-Reply-To: <d0fed7ea-a60e-7524-a05c-679b77570dcb@gmail.com>

--------------dKU4Ij53ak126k0q20hRYy05
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEzLzIyIDE3OjM0LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gDQo+
IA0KPiBPbiAxMS8xMy8yMiAxNzozMSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+Pg0K
Pj4NCj4+IE9uIDExLzEzLzIyIDE3OjI4LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+
PiBTWU5PUFNJUzoNCj4+Pg0KPj4+IHVuYXJ5LW9wZXJhdG9yOsKgIC4gaWRlbnRpZmllcg0K
Pj4+DQo+Pj4NCj4+PiBERVNDUklQVElPTjoNCj4+Pg0KPj4+IC3CoCBJdCBpcyBub3QgYW4g
bHZhbHVlLg0KPj4+DQo+Pj4gwqDCoMKgIC3CoCBUaGlzIG1lYW5zIHNpemVvZigpIGFuZCBf
TGVuZ3Rob2YoKSBjYW5ub3QgYmUgYXBwbGllZCB0byB0aGVtLg0KPj4NCj4+IFNvcnJ5LCB0
aGUgYWJvdmUgaXMgYSB0aGlua28uDQo+Pg0KPj4gSSB3YW50ZWQgdG8gc2F5IHRoYXQsIGxp
a2Ugc2l6ZW9mKCkgYW5kIF9MZW5ndGhvZigpLCB5b3UgY2FuJ3QgYXNzaWduIHRvIGl0Lg0K
Pj4NCj4+PiDCoMKgwqAgLcKgIFRoaXMgcHJldmVudHMgYW1iaWd1aXR5IHdpdGggYSBkZXNp
Z25hdG9yIGluIGFuIGluaXRpYWxpemVyLWxpc3QgDQo+Pj4gd2l0aGluIGEgbmVzdGVkIGJy
YWNlZC1pbml0aWFsaXplci4NCj4+Pg0KPj4+IC3CoCBUaGUgdHlwZSBvZiBhIC5pZGVudGlm
aWVyIGlzIGFsd2F5cyBhbiBpbmNvbXBsZXRlIHR5cGUuDQo+IA0KPiBPciByYXRoZXIsIG1v
cmUgZWFzaWx5IHByb2hpYml0IGV4cGxpY2l0bHkgdXNpbmcgdHlwZW9mKCksIHNpemVvZigp
LCBhbmQgDQo+IF9MZW5ndGhvZigpIHRvIGl0Lg0KDQpIbW0sIHRoaXMgaXMgbm90IGVub3Vn
aC4gIFBvaW50ZXIgYXJpdGhtZXRpY3MgYXJlIGludGVyZXN0aW5nLCBhbmQgZm9yIHRoYXQs
IHlvdSANCm5lZWQgdG8gaW1wbGljaXRseSBrbm93IHRoZSBzaXplb2YoKi5wKS4NCg0KSG93
IGFib3V0IGFsbG93aW5nIG9ubHkgaW50ZWdyYWwgdHlwZXMgb3IgcG9pbnRlcnMgdG8gaW50
ZWdyYWwgdHlwZXM/DQoNCj4gDQo+Pj4NCj4+PiDCoMKgwqAgLcKgIFRoaXMgcHJldmVudHMg
Y2lyY3VsYXIgZGVwZW5kZW5jaWVzIGludm9sdmluZyBzaXplb2YoKSBvciBfTGVuZ3Rob2Yo
KS4NCj4+Pg0KPj4+IC3CoCBTaGFkb3dpbmcgcnVsZXMgYXBwbHkuDQo+Pj4NCj4+PiDCoMKg
wqAgLcKgIFRoaXMgcHJldmVudHMgYW1iaWd1aXR5Lg0KPj4+DQo+Pj4NCj4+PiBFWEFNUExF
UzoNCj4+Pg0KPj4+DQo+Pj4gLcKgIFZhbGlkIGV4YW1wbGVzIChsaWJjKToNCj4+Pg0KPj4+
IMKgwqDCoMKgwqDCoMKgIGludA0KPj4+IMKgwqDCoMKgwqDCoMKgIHN0cm5jbXAoY29uc3Qg
Y2hhciBzMVsubl0sDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0
IGNoYXIgczJbLm5dLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXpl
X3Qgbik7DQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoCBpbnQNCj4+PiDCoMKgwqDCoMKgwqDC
oCBjYWNoZWZsdXNoKHZvaWQgYWRkclsubmJ5dGVzXSwNCj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG5ieXRlcywNCj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IGNhY2hlKTsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDC
oMKgIGxvbmcNCj4+PiDCoMKgwqDCoMKgwqDCoCBtYmluZCh2b2lkIGFkZHJbLmxlbl0sDQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBsZW4sDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG1vZGUsDQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29uc3QgdW5zaWduZWQgbG9uZyBub2RlbWFza1soLm1heG5vZGUg
KyBVTE9OR19XSURUSCDigJAgMSkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLyBVTE9OR19XSURUSF0sDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5z
aWduZWQgbG9uZyBtYXhub2RlLCB1bnNpZ25lZCBpbnQgZmxhZ3MpOw0KPj4+DQo+Pj4gwqDC
oMKgwqDCoMKgwqAgdm9pZCAqDQo+Pj4gwqDCoMKgwqDCoMKgwqAgYnNlYXJjaChjb25zdCB2
b2lkIGtleVsuc2l6ZV0sDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNv
bnN0IHZvaWQgYmFzZVsuc2l6ZSAqIC5ubWVtYl0sDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHNpemVfdCBubWVtYiwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc2l6ZV90IHNpemUsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGludCAoKmNvbXBhcikoY29uc3Qgdm9pZCBbLnNpemVdLCBjb25zdCB2b2lkIFsuc2l6
ZV0pKTsNCj4+Pg0KPj4+IC3CoCBWYWxpZCBleGFtcGxlcyAobXkgb3duKToNCj4+Pg0KPj4+
IMKgwqDCoMKgwqDCoMKgIHZvaWQNCj4+PiDCoMKgwqDCoMKgwqDCoCB1c3RyMnN0cihjaGFy
IGRzdFtyZXN0cmljdCAubGVuICsgMV0sDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29uc3QgY2hhciBzcmNbcmVzdHJpY3QgLmxlbl0sDQo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IGxlbik7DQo+Pj4NCj4+PiDCoMKgwqDC
oMKgwqDCoCBjaGFyICoNCj4+PiDCoMKgwqDCoMKgwqDCoCBzdHBlY3B5KGNoYXIgZHN0Wy5l
bmQgLSAuZHN0ICsgMV0sDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNo
YXIgKnJlc3RyaWN0IHNyYywNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y2hhciBlbmRbMV0pOw0KPj4+DQo+Pj4gLcKgIFZhbGlkIGV4YW1wbGVzIChmcm9tIHRoaXMg
dGhyZWFkKToNCj4+Pg0KPj4+IMKgwqDCoCAtDQo+Pj4gwqDCoMKgwqDCoMKgwqAgc3RydWN0
IHMgeyBpbnQgYTsgfTsNCj4+PiDCoMKgwqDCoMKgwqDCoCB2b2lkIGYoaW50IGEsIGludCBi
Wygoc3RydWN0IHMpIHsgLmEgPSAxIH0pLmFdKTsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKg
IEV4cGxhbmF0aW9uOg0KPj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBCZWNhdXNlIG9mIHNoYWRv
d2luZyBydWxlcywgLmE9MSByZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIuDQo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLcKgIEFsc28sIGlmIC5hIHJlZmVycmVkIHRvIHRoZSBwYXJh
bWV0ZXIsIGl0IHdvdWxkIGJlIGFuIHJ2YWx1ZSwgDQo+Pj4gc28gaXQgd291bGRuJ3QgYmUg
dmFsaWQgdG8gYXNzaWduIHRvIGl0Lg0KPj4+IMKgwqDCoMKgwqDCoMKgIC3CoCAoLi4uKS5h
IHJlZmVycyB0byB0aGUgc3RydWN0IG1lbWJlciB0b28sIHNpbmNlIG90aGVyd2lzZSBhbiBy
dmFsdWUgDQo+Pj4gaXMgbm90IGV4cGVjdGVkIHRoZXJlLg0KPj4+DQo+Pj4gwqDCoMKgIC0N
Cj4+PiDCoMKgwqDCoMKgwqDCoCB2b2lkIGZvbyhzdHJ1Y3QgYmFyIHsgaW50IHg7IGNoYXIg
Y1sueF0gfSBhLCBpbnQgeCk7DQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoCBFeHBsYW5hdGlv
bjoNCj4+PiDCoMKgwqDCoMKgwqDCoCAtwqAgQmVjYXVzZSBvZiBzaGFkb3dpbmcgcnVsZXMs
IFsueF0gcmVmZXJzIHRvIHRoZSBzdHJ1Y3QgbWVtYmVyLg0KPj4+DQo+Pj4gwqDCoMKgIC0N
Cj4+PiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgYmFyIHsgaW50IHk7IH07DQo+Pj4gwqDCoMKg
wqDCoMKgwqAgdm9pZCBmb28oY2hhciBwWygoc3RydWN0IGJhcil7IC55ID0gLnggfSkueV0s
IGludCB4KTsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKgIEV4cGxhbmF0aW9uOg0KPj4+IMKg
wqDCoMKgwqDCoMKgIC3CoCAueCB1bmFtYmlndW91c2x5IHJlZmVycyB0byB0aGUgcGFyYW1l
dGVyLg0KPj4+DQo+Pj4gLcKgIFVuZGVmaW5lZCBiZWhhdmlvcjoNCj4+Pg0KPj4+IMKgwqDC
oCAtDQo+Pj4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IGJhciB7IGludCB5OyB9Ow0KPj4+IMKg
wqDCoMKgwqDCoMKgIHZvaWQgZm9vKGNoYXIgcFsoKHN0cnVjdCBiYXIpeyAueSA9IC55IH0p
LnldLCBpbnQgeSk7DQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoCBFeHBsYW5hdGlvbjoNCj4+
PiDCoMKgwqDCoMKgwqDCoCAtwqAgQmVjYXVzZSBvZiBzaGFkb3dpbmcgcnVsZXMsID0ueSBy
ZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIuDQo+Pj4gwqDCoMKgwqDCoMKgwqAgLcKgIC55
PS55IG1lYW5zIGluaXRpYWxpemUgdGhlIG1lbWJlciB3aXRoIGl0c2VsZiAodW5pbml0aWFs
aXplZCB1c2UpLg0KPj4+IMKgwqDCoMKgwqDCoMKgIC3CoCAoLi4uKS55IHJlZmVycyB0byB0
aGUgc3RydWN0IG1lbWJlciwgc2luY2Ugb3RoZXJ3aXNlIGFuIHJ2YWx1ZSBpcyANCj4+PiBu
b3QgZXhwZWN0ZWQgdGhlcmUuDQo+Pj4NCj4+PiAtwqAgQ29uc3RyYWludCB2aW9sYXRpb25z
Og0KPj4+DQo+Pj4gwqDCoMKgIC0NCj4+PiDCoMKgwqDCoMKgwqDCoCB2b2lkIGZvbyhjaGFy
ICgqYSlbc2l6ZW9mICouYl0sIGNoYXIgKCpiKVtzaXplb2YgKi5hXSk7DQo+Pj4NCj4+PiDC
oMKgwqDCoMKgwqDCoCBFeHBsYW5hdGlvbjoNCj4+PiDCoMKgwqDCoMKgwqDCoCAtwqAgc2l6
ZW9mKCouYik6IENhbm5vdCBnZXQgc2l6ZSBvZiBpbmNvbXBsZXRlIHR5cGUuDQo+Pj4gwqDC
oMKgwqDCoMKgwqAgLcKgIHNpemVvZigqLmEpOiBDYW5ub3QgZ2V0IHNpemUgb2YgaW5jb21w
bGV0ZSB0eXBlLg0KPj4+DQo+Pj4gwqDCoMKgIC0NCj4+PiDCoMKgwqDCoMKgwqDCoCB2b2lk
IGYoc2l6ZV90IHMsIGludCBhW3NpemVvZigxKSA9IDFdKTsNCj4+Pg0KPj4+IMKgwqDCoMKg
wqDCoMKgIEV4cGxhbmF0aW9uOg0KPj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBDYW5ub3QgYXNz
aWduIHRvIHJ2YWx1ZS4NCj4+Pg0KPj4+IMKgwqDCoCAtDQo+Pj4gwqDCoMKgwqDCoMKgwqAg
dm9pZCBmKHNpemVfdCBzLCBpbnQgYVsucyA9IDFdKTsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDC
oMKgIEV4cGxhbmF0aW9uOg0KPj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBDYW5ub3QgYXNzaWdu
IHRvIHJ2YWx1ZS4NCj4+Pg0KPj4+IMKgwqDCoCAtDQo+Pj4gwqDCoMKgwqDCoMKgwqAgdm9p
ZCBmKHNpemVfdCBzLCBpbnQgYVtzaXplb2YoLnMpXSk7DQo+Pj4NCj4+PiDCoMKgwqDCoMKg
wqDCoCBFeHBsYW5hdGlvbjoNCj4+PiDCoMKgwqDCoMKgwqDCoCAtwqAgc2l6ZW9mKC5zKTog
Q2Fubm90IGdldCBzaXplIG9mIGluY29tcGxldGUgdHlwZS4NCj4+Pg0KPj4+DQo+Pj4gRG9l
cyB0aGlzIGlkZWEgbWFrZSBzZW5zZSB0byB5b3U/DQo+Pj4NCj4+Pg0KPj4+IENoZWVycywN
Cj4+PiBBbGV4DQo+Pg0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------dKU4Ij53ak126k0q20hRYy05--

--------------mhuB1gwgWdoiY5vzpkXwCgxk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNxIagACgkQnowa+77/
2zLsJRAAjHhZRWWpx7OSwTZ9rcSAq9OdBgJzCxjmVpPl6hA+HjfcQtHZKLyBfm2C
4UfOVzin0oGNgbxKfET1iKeGK0sNlA1JQnIDzExOM/F/3ZX5/ktihDEG46qwGKCu
TP8xD4GPlLc64VtHfbt1331IX4pQwDlU8EGxDbnQ2thgk8SpGcsuvhNrMeZO6YRe
9r3hKeaJSX6dBgGPbG5IKCqTOFEN8sWzCz1iqNnkTtB4MPXkBt5mktvtQrEeKzx8
LUEcAbvF/FDwjDH5MGnNo/IZibh+o/8FYooxFWwlz9oFN1JaQlnlDev7gRJJ62cW
wwuFKQp23pKUqY0reu7brX+64g/wrDUW3zR56Oh55mdmbICLSPdSaDrsyj2FbCeA
OxCwm4SXSfQ5SaHBo05D/sIrxBqagLrCgntU3k0UkDUQDitIhFDEN9+kWO/jMUiD
CqTFGttvjeGuXCD7spVM4+g6c7uEdw0whz7RhOXt+MLzqowbBj7iH6LQ0S695SNZ
BCrVSF6Qj+xJHBMuBiubszy6oLTu+DbJ6ZowkeJWyLv3wbgniD59eNVdqP2wcNPD
HVczWKTtjFF2Qm4aUK98ySRasFWLeOIzibIKUF+IBvIjWSgDgH9j0qiLqsr/IWZi
X3hZtnJpPLMhJAQbAUF+D87t2P8LOcHP6L5MDO6IikQuwpd2MIY=
=ggHx
-----END PGP SIGNATURE-----

--------------mhuB1gwgWdoiY5vzpkXwCgxk--
