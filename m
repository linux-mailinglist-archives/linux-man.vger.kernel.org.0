Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 571DC65D2DE
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 13:37:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbjADMhD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 07:37:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239285AbjADMgn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 07:36:43 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA0B016594
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 04:36:41 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id bk16so19586694wrb.11
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 04:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DLbnj6ecSs5AHgY6KVL4Lh4sPZw7Kt9z/AYRcQHgc5A=;
        b=JWTXJkNb5OwBTEdBAxOD+eoVkA/7wNssgfOILPvtGMijZHFVeFyso05SEOSoBvaG4h
         WAo8r1ranrRW0fy3BD3LhreGJEX19X5CctPsETwowZfxNRo848c1CLPs3YDK8oJByyGE
         KjF01xDmL0MVnWFH3WK6tgddXNbyjypgruQftVWRY5/cMIRbSEUci6kUX3x5A14SO29j
         45DaCK7+uhKxI2VbimUHursKjzM9Xmi865GIJNJNh55lw2vPp50Gf2NAydPPl49WsDPZ
         ROfT12VH7W2x1BLLcw6dhCBmJmZPxhSkqquBRhjhg4COMNlFJIYaA4lAJKlgASvvF+ur
         B6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DLbnj6ecSs5AHgY6KVL4Lh4sPZw7Kt9z/AYRcQHgc5A=;
        b=BW3UKR6SLrj32Jp12rtXvZLmfYEgbWVjrvLHA62dhp97TpMFYjJAw7x8FnO8yKeo21
         ZKLLWWmUOaAQzTuXDCh6yiAKVL7IvSwbdO+QtoJdzqkLeHlGFsy6y5aiYZtUV0ALI04C
         R8NcpPjWk8tusHcaMhTPQtNhvqPoemHyA/wbhZpnIHqn5Qt2677vKei6h6oGHbPxehqj
         gt+CGflMscVvfRpwaJYaH/JclLpBxChtuIb79ZVcF5Pb4Sv6l1E1MsopMV1aQfoxMx3T
         g3FSjaZ9vujx53nURoLVdfMYVzbIWqDZMnZ4ieEsh49Rv7avjBlqgoGEXiMG6+GSSk93
         +ksg==
X-Gm-Message-State: AFqh2kpe8Xl8XOhTE9SyDbPhcJdySDHUZ+PfUMvponZqy560w3/E8dIE
        AG9uUhtZutwu5pZydadkrQI=
X-Google-Smtp-Source: AMrXdXtrdRDRVECRRL3avOeH4p3G4Pv1UUGaCtHQjb5uCAYLGEepRnhriDAd3ZMOhQFvfvNmeAG6Kg==
X-Received: by 2002:a05:6000:694:b0:26c:e7a9:97a9 with SMTP id bo20-20020a056000069400b0026ce7a997a9mr35376428wrb.60.1672835800210;
        Wed, 04 Jan 2023 04:36:40 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n7-20020a1c7207000000b003cf6a55d8e8sm44675206wmc.7.2023.01.04.04.36.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 04:36:39 -0800 (PST)
Message-ID: <100b9e99-ebcf-fcfd-71b8-626448e30485@gmail.com>
Date:   Wed, 4 Jan 2023 13:36:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
In-Reply-To: <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0S4JLc0LOvWCzf5ghI07dLMz"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0S4JLc0LOvWCzf5ghI07dLMz
Content-Type: multipart/mixed; boundary="------------6D2f4HQGSH20SE070sADvvVM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <100b9e99-ebcf-fcfd-71b8-626448e30485@gmail.com>
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
In-Reply-To: <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>

--------------6D2f4HQGSH20SE070sADvvVM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNC8yMyAxMzoyNiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIEJy
YW5kZW4sDQo+IA0KPiBPbiAxLzQvMjMgMDg6MzgsIEcuIEJyYW5kZW4gUm9iaW5zb24gd3Jv
dGU6DQo+PiAqIERyb3Agc3RhbGUgRklYTUUgYW5ub3RhdGlvbiByZWdhcmRpbmcgY29tbWl0
IElEIGZvciBgLWlgIG9wdGlvbi4NCj4+ICogUmV3cml0ZSBzeW5vcHNlcyB0byB1c2UgbWFu
KDcpIGZvbnQgbWFjcm9zIGluc3RlYWQgb2YgKnJvZmYgZm9udA0KPj4gwqDCoCBzZWxlY3Rp
b24gZXNjYXBlIHNlcXVlbmNlcy4NCj4+ICogRHJvcCByZWR1bmRhbnQgYFBEYCBtYWNybyBj
YWxscy4NCj4+ICogUmV3cml0ZSBvcHRpb24gbGlzdCB0byB1c2UgbWFuKDcpIGZvbnQgbWFj
cm9zIGluc3RlYWQgb2YgKnJvZmYgZm9udA0KPj4gwqDCoCBzZWxlY3Rpb24gZXNjYXBlIHNl
cXVlbmNlcy4NCj4+ICogVXNlIGBUUWAgbWFjcm8gdG8gaW5jbHVkZSBtdWx0aXBsZSB0YWdz
IGZvciBvcHRpb25zIHdpdGggbG9uZyBzeW5vbnltcw0KPj4gwqDCoCBpbnN0ZWFkIG9mIGNv
bW1hIG5vdGF0aW9uLg0KDQpCVFcsIHRoaXMgd291bGQgcXVhbGlmeSBhcyBhIHN0eWxlIGNo
YW5nZSAoaW4gbXkgYm9vaywgYSBmZml4KS4gIE5vPw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0K
Pj4gKiBCcmVhayBpbnB1dCBsaW5lcyBhZnRlciBjb21tYXMuDQo+PiAqIFNldCBtdWx0aS13
b3JkIHBhcmVudGhldGljYWxzIG9uIHRoZWlyIG93biBpbnB1dCBsaW5lcy4NCj4+ICogQnJl
YWsgaW5wdXQgbGluZXMgYXQgcGhyYXNlIGJvdW5kYXJpZXMgbW9yZSBvZnRlbi4NCj4+ICog
UHJvdGVjdCBsaXRlcmFscyBmcm9tIGF1dG9tYXRpYyBoeXBoZW5hdGlvbiB3aXRoIGBcJWAg
ZXNjYXBlIHNlcXVlbmNlLg0KPj4gKiBVc2UgXH4gZXNjYXBlIHNlcXVlbmNlIGluc3RlYWQg
b2YgcXVvdGVkIGFyZ3VtZW50cyBhdCB3b3JkDQo+PiDCoMKgIGJvdW5kYXJpZXMgaW4gb3B0
aW9uIHN5bm9wc2VzLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEcuIEJyYW5kZW4gUm9iaW5z
b24gPGcuYnJhbmRlbi5yb2JpbnNvbkBnbWFpbC5jb20+DQo+IA0KPiBUaGlzIHBhdGNoIGxv
b2tzIGdvb2QgdG8gbWUuwqAgSG93ZXZlciwgSSBkaWRuJ3QgYXBwbHkgaXQsIHNpbmNlIEkg
aGF2ZSBhIGZldyANCj4gY29tbWVudHMgYmVsb3cuDQo+PiAtLS0NCj4+IMKgIG1hbjgvbGRj
b25maWcuOCB8IDEwOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLS0NCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspLCAzOCBk
ZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvbWFuOC9sZGNvbmZpZy44IGIvbWFu
OC9sZGNvbmZpZy44DQo+PiBpbmRleCBkNjA4YWFmNTYuLjBlNzRjMTc5MSAxMDA2NDQNCj4+
IC0tLSBhL21hbjgvbGRjb25maWcuOA0KPj4gKysrIGIvbWFuOC9sZGNvbmZpZy44DQo+PiBA
QCAtOSwyMiArOSwyOSBAQA0KPj4gwqAgLlNIIE5BTUUNCj4+IMKgIGxkY29uZmlnIFwtIGNv
bmZpZ3VyZSBkeW5hbWljIGxpbmtlciBydW4tdGltZSBiaW5kaW5ncw0KPj4gwqAgLlNIIFNZ
Tk9QU0lTDQo+IA0KPiBXZSBzaG91bGQgd3JhcCB0aGlzIGluIC5uZi8uZmkNCj4gDQo+IEFs
dGhvdWdoIG1heWJlIHRoaXMgZ29lcyBiZXR0ZXIgaW4gdGhlIHN0eWxlIHBhdGNoLCBzaW5j
ZSBpdCdzIGEgZm9ybWF0dGluZyBmaXguDQo+IA0KPj4gLS5CUiAvc2Jpbi9sZGNvbmZpZyAi
IFsiIFwtbk52WFYgIl0gWyIgXC1mICIgXGZJY29uZlxmUF0gWyIgXC1DICIgXGZJY2FjaGVc
ZlBdIA0KPj4gWyIgXC1yICIgXGZJcm9vdFxmUF0iDQo+PiAtLklSIGRpcmVjdG9yeSBcLi4u
DQo+PiDCoCAuUEQgMA0KPj4gKy5cIiBUT0RPPzogLWMsIC0tZm9ybWF0LCAtaSwgLS1pZ25v
cmUtYXV4LWNhY2hlLCAtLXByaW50LWNhY2hlLA0KPj4gKy5cIiAtLXZlcmJvc2UsIC1WLCAt
LXZlcnNpb24sIC0/LCAtLWhlbHAsIC0tdXNhZ2UNCj4+ICsuQiAvc2Jpbi9sZGNvbmZpZw0K
Pj4gKy5SQiBbIFwtbk52WFYgXQ0KPj4gKy5SQiBbIFwtZg0KPj4gKy5JUiBjb25mIF0NCj4+
ICsuUkIgWyBcLUMNCj4+ICsuSVIgY2FjaGUgXQ0KPj4gKy5SQiBbIFwtcg0KPj4gKy5JUiBy
b290IF0NCj4+ICsuSVIgZGlyZWN0b3J5IC4uLg0KPj4gwqAgLlBQDQo+PiAtLlBEDQo+PiDC
oCAuQiAvc2Jpbi9sZGNvbmZpZw0KPj4gwqAgLkIgXC1sDQo+PiDCoCAuUkIgWyBcLXYgXQ0K
Pj4gLS5JUiBsaWJyYXJ5IFwuLi4NCj4+IC0uUEQgMA0KPj4gKy5JUiBsaWJyYXJ5IC4uLg0K
Pj4gwqAgLlBQDQo+PiAtLlBEDQo+PiDCoCAuQiAvc2Jpbi9sZGNvbmZpZw0KPj4gwqAgLkIg
XC1wDQo+PiArLlBEDQo+PiDCoCAuU0ggREVTQ1JJUFRJT04NCj4+IC0uQiBsZGNvbmZpZw0K
Pj4gKy5CIFwlbGRjb25maWcNCj4gDQo+IEkgd2lsbCBzdWdnZXN0IGFnYWluIHRoYXQgSSBi
ZWxpZXZlIFwlIHNob3VsZCBiZSB0aGUgZGVmYXVsdCBpbiBtYW51YWwgcGFnZXMuIA0KPiBD
b3VudCBob3cgbWFueSB0aW1lcyB5b3Ugd2FudCB0byBicmVhayBoaWdobGlnaHRlZCBzdHVm
ZiB2cyBob3cgbWFueSB0aW1lcyB5b3UgDQo+IHdhbnQgdG8gbm90IGJyZWFrIHN1Y2ggc3R1
ZmYuDQo+IA0KPj4gwqAgY3JlYXRlcyB0aGUgbmVjZXNzYXJ5IGxpbmtzIGFuZCBjYWNoZSB0
byB0aGUgbW9zdCByZWNlbnQgc2hhcmVkDQo+PiDCoCBsaWJyYXJpZXMgZm91bmQgaW4gdGhl
IGRpcmVjdG9yaWVzIHNwZWNpZmllZCBvbiB0aGUgY29tbWFuZCBsaW5lLA0KPj4gwqAgaW4g
dGhlIGZpbGUNCj4+IEBAIC0zNyw3ICs0NCw4IEBAIGFuZA0KPiANCj4gWy4uLl0NCj4gDQo+
PiBAQCAtMTA1LDM1ICsxMjIsNDEgQEAgRmFpbHVyZSB0byBmb2xsb3cgdGhpcyBwYXR0ZXJu
IG1heSByZXN1bHQgaW4gDQo+PiBjb21wYXRpYmlsaXR5IGlzc3Vlcw0KPj4gwqAgYWZ0ZXIg
YW4gdXBncmFkZS4NCj4+IMKgIC5TSCBPUFRJT05TDQo+PiDCoCAuVFANCj4+IC0uQlIgXC1j
ICIgXGZJZm10XGZQLCAiIFwtXC1mb3JtYXQ9XGZJZm10XGZQDQo+PiArLkJJIFwtY1x+IGZt
dA0KPj4gKy5UUQ0KPj4gKy5CSSBcLVwtZm9ybWF0PSBmbXQNCj4+IMKgIChTaW5jZSBnbGli
YyAyLjIpDQo+PiArLlwiIGNvbW1pdCA0NWVjYTRkMTQxYzA0Nzk1MGRiNDhjNjljODk0MTE2
M2QwYTYxZmNkDQo+PiDCoCBDYWNoZSBmb3JtYXQgdG8gdXNlOg0KPj4gwqAgLklSIG9sZCAs
DQo+PiDCoCAuSVIgbmV3ICwNCj4+IMKgIG9yDQo+PiAtLklSIGNvbXBhdCAuDQo+PiAtU2lu
Y2UgZ2xpYmMgMi4zMiwgdGhlIGRlZmF1bHQgaXMNCj4+ICsuSVIgXCVjb21wYXQgLg0KPj4g
K1NpbmNlIGdsaWJjIDIuMzIsDQo+PiArdGhlIGRlZmF1bHQgaXMNCj4+IMKgIC5JUiBuZXcg
Lg0KPj4gwqAgLlwiIGNvbW1pdCBjYWQ2NGY3NzhhY2VkODRlZmRhYTA0YWU2NGY4NzM3Yjg2
ZjA2M2FiDQo+PiAtQmVmb3JlIHRoYXQsIGl0IHdhcw0KPj4gLS5JUiBjb21wYXQgLg0KPj4g
K0JlZm9yZSB0aGF0LA0KPj4gK2l0IHdhcw0KPj4gKy5JUiBcJWNvbXBhdCAuDQo+PiDCoCAu
VFANCj4+IC0uQkkgIlwtQyAiIGNhY2hlDQo+PiArLkJJIFwtQ1x+IGNhY2hlDQo+PiDCoCBV
c2UNCj4+IMKgIC5JIGNhY2hlDQo+PiDCoCBpbnN0ZWFkIG9mDQo+PiDCoCAuSVIgL2V0Yy9s
ZC5zby5jYWNoZSAuDQo+PiDCoCAuVFANCj4+IC0uQkkgIlwtZiAiIGNvbmYNCj4+ICsuQkkg
XC1mXH4gY29uZg0KPj4gwqAgVXNlDQo+PiDCoCAuSSBjb25mDQo+PiDCoCBpbnN0ZWFkIG9m
DQo+PiDCoCAuSVIgL2V0Yy9sZC5zby5jb25mIC4NCj4+IC0uXCIgRklYTUUgZ2xpYmMgMi43
IGFkZGVkIC1pDQo+IA0KPiBBbmQgdGhpcyBpcyB3aHkgY29tbWVudHMgYXJlIGhhcm1mdWwu
wqAgSSBmaW50IGl0IHJhdGhlciB1bmNvbW1vbiBmb3IgY29tbWVudHMgdG8gDQo+IGJlIHVw
LXRvLWRhdGUgd2l0aCB0aGUgY29kZSA6UA0KPiANCj4+IMKgIC5UUA0KPj4gLS5CUiBcLWkg
IiwgIiBcLVwtaWdub3JlXC1hdXhcLWNhY2hlDQo+PiArLkIgXC1pDQo+PiArLlRRDQo+PiAr
LkIgXC1cLWlnbm9yZVwtYXV4XC1jYWNoZQ0KPj4gwqAgKFNpbmNlIGdsaWJjIDIuNykNCj4+
IC0uXCLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tbWl0IDI3ZDlmZmRhMTdkZjRkMjM4
ODY4N2FmZDEyODk3Nzc0ZmRlMzliY2MNCj4+ICsuXCIgY29tbWl0IDI3ZDlmZmRhMTdkZjRk
MjM4ODY4N2FmZDEyODk3Nzc0ZmRlMzliY2MNCj4+IMKgIElnbm9yZSBhdXhpbGlhcnkgY2Fj
aGUgZmlsZS4NCj4+IMKgIC5UUA0KPj4gwqAgLkIgXC1sDQo+PiBAQCAtMTU0LDMxICsxNzcs
NDAgQEAgSW1wbGllcw0KPiANCj4gWy4uLl0NCj4gDQo+IA0KDQotLSANCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------6D2f4HQGSH20SE070sADvvVM--

--------------0S4JLc0LOvWCzf5ghI07dLMz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO1ctYACgkQnowa+77/
2zKXzg/5Ae82gKbFkK6k14kX14/gJFW0fgiAf4CdM7/eq8qXPvYyo0Y1CyJdBPYx
3X62+xQFZK+3X709X/mIxHm+oWJcHiSfvq5Q9lpa4D96LQ2AArSOJ0u+4jdVUS/3
k92ekMimGbFy1oTm0TRN3nzdHeKM+0PAy0D0f8a+U9t5hELx2IH0S0Tg4P9jBz4h
9FVNb83hl4Pm8RCzYpu0P5xGqQJl0P8dtut8D8KSeGOnihuSBLEm00d3gjITe7/D
hmO1gThxvyGtqvoRp8yWx9s0ydzpS9/Aht8le6XISKZo10IpF5S35+MjKI8uf74z
ts8l/Ljw1gEdP9duwRUL/l5mS/134Rv6L8WYMnC1v9NB4MAoZTFkMukZVbBV5Q1h
mu8dqRBkFYcccT0CUGDGBLfCox07KgpazS8ZAItqsIqSvQyBuPIOHTEBQ7deJuV+
FYRu2kSx+4TF9xH/wYEsIfO7dE/arYEe1SiplnGnlZgarBBU8DA20jVu0B5MdApW
R9aO2agsx2Fvm85bpGublHHP1YaE+6IuXR63WjeGugIwuZxDUaqvtirBq7Xd2xtC
ZmZnqeUPBCXlDW/0nCHO6RMGrhxuE4hRDTm5ZZvSPGrhuRt5BpUOkglcpW4fd5yZ
/OIwW1ciEQZ9bxQ1gy+j7dOzpFyalhs50Kk0CbS4WJ8Wq94lozE=
=hjli
-----END PGP SIGNATURE-----

--------------0S4JLc0LOvWCzf5ghI07dLMz--
