Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A2B464F8DE
	for <lists+linux-man@lfdr.de>; Sat, 17 Dec 2022 12:51:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiLQLvY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Dec 2022 06:51:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiLQLvW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Dec 2022 06:51:22 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A7E2645
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 03:51:19 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id v7so3509845wmn.0
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 03:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y32V9+ggL2grDcfBgFnKrjTpvyq2UITHNO0HsDGjg0M=;
        b=XMWKSniMOP/RlNWI6CCRDoh3f3bt4oqVOubeM/Po4rHrMUXE7Y2bYiYYx+sOlQ5827
         TQgf8yzA3dFWMzlKDF/iugBtGaG1ayRQo3k9/WdpyrpyiuxUvd7PnMWIeDkVsNV+EWX+
         1sNQxHutZqsU+pWApVBth+jgP+1DfkEWOJTaz3SI4ofxM16ABkEP+FwcBVL6N32yM12L
         CWWUsPlN/MaqQIIIT7G5VWfqxcu7W0GpIWCCiAz6Q1GD+AkVTCgqxYucVvkQcDlxko5z
         FHhytws91xiTpB1S2uFPvEJtQ8e057HbT0gF7PtNzOywQMnobj1bWDLjuEh9FPy64uZH
         vPCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y32V9+ggL2grDcfBgFnKrjTpvyq2UITHNO0HsDGjg0M=;
        b=G5w4z0OYGfeHrjQNq6O2KHInHsZJsEWsUDz3jdSi9irmfBw6FNw3V58q7jde5Y8PhK
         mekGlq9dTnrxSJVPV+O+umOETDhqg3JaLh1CCqsnmY+4GNgZs86xtFwMNYD8CXiQFw2w
         kmmQldVSy15lR68tZgMNK2HjR9IJbnzQznLPMk/USmRjL7JvrtQtNUhYH0z2WtVaOEut
         WjnVAz5AJUYgsimrjsz8RwmbCTjA/7kAyz+n8d4jpszx2GJt9g+vFanMPpUNZ0dc1qac
         C8tGMUiXUQEIvscqUAaOQgwxMiScKJkYtLJs3UG+BxSasaL48T0cnk8d9t6N+hgfBOW+
         tNUQ==
X-Gm-Message-State: ANoB5pkBBkG6zXcoHL2IGXNlB9CQBsQCWLOZZ2T5DfmY2Bh1cXW2IyA6
        lM43R4F498uuF78JNdEzZM/J7ydbE+o=
X-Google-Smtp-Source: AA0mqf4A4xQqPqFqblQJjU5x4WD07+RQ5rWx7HnkmEP4h7IXl96jDPpC4ePfPXBMqrazmFzfqvAZOw==
X-Received: by 2002:a05:600c:795:b0:3d1:cee0:46d0 with SMTP id z21-20020a05600c079500b003d1cee046d0mr27894443wmo.25.1671277877912;
        Sat, 17 Dec 2022 03:51:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v2-20020a05600c214200b003cfa81e2eb4sm5544968wml.38.2022.12.17.03.51.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 03:51:17 -0800 (PST)
Message-ID: <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
Date:   Sat, 17 Dec 2022 12:51:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
To:     Deri <deri@chuzzlewit.myzen.co.uk>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip>
Content-Language: en-US
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2176657.1BCLMh4Saa@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Pwl8SNN0kTjw5T0Ez6l0GYJ2"
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
--------------Pwl8SNN0kTjw5T0Ez6l0GYJ2
Content-Type: multipart/mixed; boundary="------------xeXL5xeaARhHkDLpprUR0vSl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip>
In-Reply-To: <2176657.1BCLMh4Saa@pip>

--------------xeXL5xeaARhHkDLpprUR0vSl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGVyaSwNCg0KT24gMTIvMTcvMjIgMDI6MDQsIERlcmkgd3JvdGU6DQo+IE9uIEZyaWRh
eSwgMTYgRGVjZW1iZXIgMjAyMiAxOTozMTo0MSBHTVQgQWxlamFuZHJvIENvbG9tYXIgd3Jv
dGU6DQo+PiBIaSBEZXJpIQ0KPj4NCj4+IE9uIDEyLzE2LzIyIDIwOjEzLCBEZXJpIHdyb3Rl
Og0KPj4+IE9uIFN1bmRheSwgMTEgRGVjZW1iZXIgMjAyMiAxOToyMToyNyBHTVQgQWxlamFu
ZHJvIENvbG9tYXIgd3JvdGU6DQo+Pj4+IFNpbmNlIEknbGwgc29tZSBkYXkgKGxpa2VseSBm
b3IgNi4wMiwgdGhhdCdzIDIgeWVhcnMgZnJvbSBub3cpIGJlDQo+Pj4+IHB1Ymxpc2hpbmcg
dGhlIExpbnV4IG1hbi1wYWdlcyBhcyBhIHNpbmdsZS12b2x1bWUgUERGLCB0aGUgdGVybSBj
aGFwdGVyDQo+Pj4+IHdpbGwgcmVnYWluIHNpZ25pZmljYW5jZS4NCj4+Pg0KPj4+IEhpIEFs
ZWphbmRybywNCj4+Pg0KPj4+IEkgc2F3IHRoaXMgb24gdGhlIGdyb2ZmIGxpc3QgYW5kIHdv
bmRlcmVkIHdoYXQgd291bGQgYmUgaW52b2x2ZWQsIHNvIEkNCj4+PiBjbG9uZWQgdGhlIGdp
dCBmcm9tIHlvdXIgd2Vic2l0ZQ0KPj4NCj4+IEkgZ3Vlc3MgeW91IG1lYW4gPC8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzL3NyYy8+LCByaWdodD8gIEkgZ3Vlc3Mgc28sDQo+PiBzaW5j
ZSB0aGUgTVIgYnJhbmNoIGlzIG9ubHkgdGhlcmUuDQo+Pg0KPj4+IGFuZCB3cm90ZSBhIHBl
cmwgc2NyaXB0LCBwbHVzIGEgZmV3IGN1c3RvbWlzYXRpb25zDQo+Pj4gb2YgZ3JvZmYgdG1h
Y3MsIGFuZCBwcm9kdWNlZCB0aGUgYXR0YWNoZWQgcGRmLg0KPj4NCj4+IFdvdyEgIEl0IGxv
b2tzIHJlYWxseSBuaWNlIQ0KPj4NCj4+IEkgbm90aWNlZCBhIGZldyBzbWFsbCBpc3N1ZXM6
DQo+Pg0KPiBIaSBBbGV4LA0KPiANCj4+IC0gIGxpbmsgKC5zbykgcGFnZXMgYXBwZWFyIG1p
c3BsYWNlZCBpbiB0aGUgbmF2aWdhdGlvbi4gIEZvciBleGFtcGxlDQo+PiB3cml0ZXYuMiBh
cHBlYXJzIGluc2lkZSBtYW4ydHlwZS4NCj4+DQo+PiAtICBpbnRybygqKSBzaG91bGQgYmUg
dGhlIGZpcnN0IHBhZ2Ugb2YgZWFjaCBzZWN0aW9uLiAgKFNvIGZhciwgc3Vic2VjdGlvbnMN
Cj4+IGRvbid0IGhhdmUgaW50cm8sIGJ1dCBJIHdvdWxkbid0IGRpc2NhcmQgdGhhdC4pDQo+
IA0KPiBCb3RoIGZpeGVkIGluIGxhdGVzdCB2ZXJzaW9uLiBXaGljaCB5b3UgY2FuIGZpbmQg
aGVyZTotDQo+IA0KPiBodHRwOi8vY2h1enpsZXdpdC5jby51ay9MaW51eE1hbkJvb2sucGRm
DQoNCkl0IGxvb2tzIGdyZWF0ISAgV2UgY291bGQgcmVsZWFzZSBpdCBhbHJlYWR5IDopDQoN
Cj4gDQo+Pj4gWW91IHdpbGwgbm90aWNlIGFsbCB0aGUgaW50ZXJuYWwgLk1SIGNhbGxzIGFy
ZSB3b3JraW5nLg0KPj4NCj4+IFllcA0KPj4NCj4+PiBJdCBpcyBub3QgcGVyZmVjdCB5ZXQs
DQo+Pj4gYnV0IEkgdGhvdWdodCBJIHdvdWxkIGxldCB5b3Ugc2VlIGhvdyBmYXIgSSBoYXZl
IGdvdCwgYW5kIGZpbmQgb3V0IHdoZXRoZXINCj4+PiB0aGlzIGlzIHNvbWV0aGluZyB5b3Ug
d291bGQgbGlrZSBjb250cmlidXRlZC4NCj4+DQo+PiBTdXJlISAgV2UgY2FuIGV2ZW4gbWVy
Z2Ugc29tZXRoaW5nIGFscmVhZHkuICBJIGRvZXNuJ3QgbmVlZCB0byBiZSBwZXJmZWN0IGF0
DQo+PiB0aGUgYmVnaW5pbmcuICBJcyBwZXJsIG5lY2Vzc2FyeSwgb3IgY291bGQgaXQgYmUg
dHJhbnNmb3JtZWQgaW50byBhIHNoZWxsDQo+PiBzY3JpcHQ/IEknbSBub3QgY29tZm9ydGFi
bGUgYXQgbWFpbnRhaW5pbmcgYSBwZXJsIHNjcmlwdC4NCj4gDQo+IEkgdGhpbmsgaXQgbWF5
IGJlIGEgYml0IGJleW9uZCBhIHNoZWxsIHNjcmlwdCwgYnV0IEkgYW0gbm90IGFuIGFjY29t
cGxpc2hlZA0KPiBzaGVsbCBzY3JpcHQgcHJvZ3JhbW1lci4gSSBhbSBob3BpbmcgaXQgd2ls
bCBlbmQgdXAgYXMgcGFydCBvZiB5b3VyIGJ1aWxkLg0KDQpQbGVhc2Ugc2VuZCB5b3VyIHBl
cmwgc2NyaXB0IGFzIGEgcGF0Y2gsIGFkZGluZyBpdCB0byB0aGUgPHNjcmlwdHMvPiBkaXJl
Y3RvcnkuIA0KUHV0IHlvdXIgY29weXJpZ2h0IGFuZCB5b3VyIHByZWZlcnJlZCBsaWNlbnNl
LCBhbmQgd2UgY2FuIHdvcmsgZnJvbSB0aGVyZSB0byANCnRyYW5zZm9ybSBpdCBpbnRvIHNv
bWV0aGluZyBJIGNhbiBiZXR0ZXIgdW5kZXJzdGFuZC4gIEknbGwgcHJvYmFibHkgYmUgYXNr
aW5nIA0KeW91IG1hbnkgcXVlc3Rpb25zIDopDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0K
PiBDaGVlcnMNCj4gDQo+IERlcmkNCj4gDQo+Pj4gSSB3b3VsZCB3ZWxjb21lIGFueSB2aWV3
cyBvbg0KPj4+IHdoYXQgSSBoYXZlIGRvbmUgc28gZmFyLg0KPj4NCj4+IEl0IGxvb2tzIGdy
ZWF0LiAgSSdkIGxpa2UgdG8gaG9vayBpdCBpbnRvIHRoZSBidWlsZCBzeXN0ZW0sIHNvIHdl
IGNhbiBgbWFrZQ0KPj4gYnVpbGQtcGRmYCBhbmQgZ2VuZXJhdGUgaXQuDQo+Pg0KPj4+IElu
IGNhc2UgeW91IGRvbid0IGtub3csIEknbSB0aGUgY2hhcCB3aG8gZGV2ZWxvcGVkIHRoZSBn
cm9mZiBwZGYgZHJpdmVyLg0KPj4NCj4+IFllcCwgSSBrbm93DQo+Pg0KPj4+IENoZWVycw0K
Pj4+DQo+Pj4gRGVyaQ0KPj4NCj4+IENoZWVycywNCj4+DQo+PiBBbGV4DQo+IA0KPiANCj4g
DQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------xeXL5xeaARhHkDLpprUR0vSl--

--------------Pwl8SNN0kTjw5T0Ez6l0GYJ2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOdrS0ACgkQnowa+77/
2zJgmQ/+JaYLGMX2OsiIX/JjZ8gG7tHFPydrQlOol/WuY01VS61E8bhhc27w/ltQ
Hw+WRh6zEjpAg3ANizYtp6XtWmpWevvmZnpRk08Gu6iyQHEl3i1okP7FIOlXZ87m
VfW2PISSTzpkALPb9bPbPR76VXgb37ar8M9twmcomzj1a/NBz/JD4Lewcv0gU4Mb
66kCkGH/LDx7OHw3G8DERyI9d2Sl6eKJ9AQ5dEDG961tIB58yQdaFSxgaAgkLHJO
wMf6Lrboz9c8SX47nRAT5gU0u0gfuLzMVt2WO7FY8vEB7pPNqrJArX5t35Bqoec5
4fJ5VtOLk5zbwjcduSm8RrB/sNwhqVd6f+4ekaB53ucB4GQeJ3Z6ZQEpJhQx8fvI
a3Zx8Kstt3eWmw10m31RJa4UGB4yKBN2BU8X9r5zoSfYV3Kd8SpTvlF5fI0DUITF
YLLLsYLuj9Z74y7u3aRJ5Wb8DbFinkZmYXqsf2YVIDVaQ9FVMJ1rkRf0KhHJvAf+
IW+6DTsbHh/QfwVAMXCrdryC9+Zu9cwRuXY+cVJxqVztG/jwaupHihj5a0qzHd4n
OcYDpWqqyK3CWz/V7oDVNfyaYVOaJd/Z5KzagKHyNCs9iPYgGVHxoWtqPJcBT0kL
kRT2jZakVCLNcovtxPFoDOBAdNtjoQTjdOwyPRbLil4OA0F6Lnk=
=AQ8G
-----END PGP SIGNATURE-----

--------------Pwl8SNN0kTjw5T0Ez6l0GYJ2--
