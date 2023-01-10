Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A960664DDD
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 22:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231910AbjAJVMO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 16:12:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232492AbjAJVMN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 16:12:13 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB7C5D8A2
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 13:12:12 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so12914719wms.0
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 13:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0FNplfKVOL5H4AiRtnCjEiEQjJSHKVkQgGKiypCI03o=;
        b=AIx+HJgtX1YyavoL4Wd2GMi2b2Pg+l47s4g6gmM3LpyzxIl3KxT1BgHjuNUW1HT5T6
         5hBJkhB0lvQEMhROE8+7q+jXeF9nh3w2mcg5Jbwhjp/B6tMqflPLV9+ksa5+uhU0VFRo
         YAmwGJUJIw3VYP2ITcpGtBS6pCGW9Tbwl2Oa7Dt2UAWcwE/yhAGqH/dwjg/AjjrhrekU
         vM0kaX7yLhqK0WE3lgIvuulN4Jw/MmM+sfQ8ZjIci3SBlcFdavp8rko1i/cGJHCIkAbF
         yy9kqfH5d8ubqcIL3b1coB8ZFOgdqG+6qkSsphuIDU6iCpEeGeTR/3kYshvt9U/1Ojl3
         c9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0FNplfKVOL5H4AiRtnCjEiEQjJSHKVkQgGKiypCI03o=;
        b=c1GzbP2seCvizZxJpg6ZqrkkqcGESnZodL0ponUq45lyISshekc32QYo5Jc3gDE2mj
         rJeNW/vvzLO3chU25opqdfTx8XXec6EADigAGpYG7l5rHh5BCHVGjqejkV1SSMHD5T0s
         34MvG3Wv/UjK/aOBkze+3oAdHP6wi3H4LgYY7dp6dWpJpVs/b5A6ONj1uNHdBmZP58cQ
         T5Qo1rNzkGdDhXe3NqBKY7MA2lb8V/BbiLf4LlsEk7CTqaKF3srT3EtIvGLVRA43mdtt
         FyGK6dHqePHjP1I1BCRdKLoS78NbHxsT+x3IUMe5k0io1siuKo5QFQj3P1GOfbdE0ZAI
         /glw==
X-Gm-Message-State: AFqh2ko+4MZzNC6wMCbSTEI5U7XJDBVhywe8cMdg3dtsrQdAWGQkC87q
        HgswtFPxY51382jVUBYzqlnDLr2Nn9E=
X-Google-Smtp-Source: AMrXdXs+h4xHRu0RnaS0mGqbQMXUrsKwfGvdYpysmfFiPk8TYVtqPV62o9ZxiCGRsDxLXvhZOYKkFQ==
X-Received: by 2002:a05:600c:5114:b0:3d9:fa37:e42d with SMTP id o20-20020a05600c511400b003d9fa37e42dmr2388817wms.17.1673385131482;
        Tue, 10 Jan 2023 13:12:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05600c3caa00b003b4cba4ef71sm24118042wmb.41.2023.01.10.13.12.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 13:12:11 -0800 (PST)
Message-ID: <d562b23b-f73d-ebe1-31b2-f23de4c3b491@gmail.com>
Date:   Tue, 10 Jan 2023 22:12:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] prctl.2, proc.5: Document VMA naming
Content-Language: en-US
To:     Suren Baghdasaryan <surenb@google.com>,
        Nick Gregory <nick@nickgregory.me>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "ccross@google.com" <ccross@google.com>,
        "keescook@chromium.org" <keescook@chromium.org>,
        Pasha Tatashin <tatashin@google.com>
References: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
 <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------d0UsYJu8CKIx75Aaz4yC7Hxx"
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
--------------d0UsYJu8CKIx75Aaz4yC7Hxx
Content-Type: multipart/mixed; boundary="------------F02or6T08SbpnPjHdAfeT9Jg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Suren Baghdasaryan <surenb@google.com>, Nick Gregory <nick@nickgregory.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "ccross@google.com" <ccross@google.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 Pasha Tatashin <tatashin@google.com>
Message-ID: <d562b23b-f73d-ebe1-31b2-f23de4c3b491@gmail.com>
Subject: Re: [PATCH v2] prctl.2, proc.5: Document VMA naming
References: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
 <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com>
In-Reply-To: <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com>

--------------F02or6T08SbpnPjHdAfeT9Jg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTmljayBhbmQgU3VyZW4hDQoNCk9uIDEvMTAvMjMgMjI6MDIsIFN1cmVuIEJhZ2hkYXNh
cnlhbiB3cm90ZToNCj4gT24gU2F0LCBKYW4gNywgMjAyMyBhdCAyOjE5IFBNIE5pY2sgR3Jl
Z29yeSA8bmlja0BuaWNrZ3JlZ29yeS5tZT4gd3JvdGU6DQo+Pg0KPj4gQnJpbmcgaW4gbWFu
IHBhZ2UgY2hhbmdlcyBmcm9tIHRoZSBwYXRjaCBzZXQgYnkgQ29saW4gQ3Jvc3MNCj4+IDxj
Y3Jvc3NAZ29vZ2xlLmNvbT4gWzBdLCBhbmQgZG9jdW1lbnQgdGhlIGNvcnJlc3BvbmRpbmcg
dmlydHVhbCBuYW1lcyBpbg0KPj4gcHJvY2ZzLg0KPiANCj4gSGkgTmljaywNCj4gVGhlIGNv
bnRlbnQgTEdUTSAobm90IGFuIGV4cGVydCBpbiBmb3JtYXR0aW5nKS4NCg0KVGhlIGZvcm1h
dHRpbmcgaXMgcGVyZmVjdCwgQUZBSUNTLiA6KQ0KDQo+IFlvdSBldmVuIGNhcHR1cmVkIHRo
ZQ0KPiByZWNlbnQgYWRkaXRpb24gb2YgbmFtZWQgc2hhcmVkIGFub255bW91cyBtYXBwaW5n
IHN1cHBvcnQgKENDJ2luZw0KPiBQYXNoYSkhIFRoYW5rcyBmb3IgZG9pbmcgdGhpcyENCg0K
RG8geW91IHdhbnQgbWUgdG8gd2FpdCBmb3IgaGltIHRvIGhhdmUgYSBsb29rLCBvciBzaG91
bGQgSSBqdXN0IGFwcGx5Pw0KDQo+IA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IE5pY2sgR3Jl
Z29yeSA8bmlja0BuaWNrZ3JlZ29yeS5tZT4NCj4+IENjOiBDb2xpbiBDcm9zcyA8Y2Nyb3Nz
QGdvb2dsZS5jb20+DQo+PiBDYzogU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xl
LmNvbT4NCj4+IENjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4NCj4gDQo+
IFJldmlld2VkLWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPg0K
DQpUaGFua3MgZm9yIHRoZSBwYXRjaCBhbmQgdGhlIHJldmlldyENCg0KQ2hlZXJzLA0KDQpB
bGV4DQoNCj4gDQo+Pg0KPj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1t
LzIwMjExMDE5MjE1NTExLjM3NzE5NjktMi1zdXJlbmJAZ29vZ2xlLmNvbS8NCj4+IC0tLQ0K
Pj4gICBtYW4yL3ByY3RsLjIgfCAzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrDQo+PiAgIG1hbjUvcHJvYy41ICB8IDE0ICsrKysrKysrKysrKysrDQo+PiAgIDIgZmls
ZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9tYW4y
L3ByY3RsLjIgYi9tYW4yL3ByY3RsLjINCj4+IGluZGV4IDc0Zjg2ZmY0OS4uMmM4ZDUyYWRl
IDEwMDY0NA0KPj4gLS0tIGEvbWFuMi9wcmN0bC4yDQo+PiArKysgYi9tYW4yL3ByY3RsLjIN
Cj4+IEBAIC03NjksNiArNzY5LDQwIEBAIFRoaXMgZmVhdHVyZSBpcyBhdmFpbGFibGUgb25s
eSBpZiB0aGUga2VybmVsIGlzIGJ1aWx0IHdpdGggdGhlDQo+PiAgIC5CIENPTkZJR19DSEVD
S1BPSU5UX1JFU1RPUkUNCj4+ICAgb3B0aW9uIGVuYWJsZWQuDQo+PiAgIC5SRQ0KPj4gKy5c
IiBwcmN0bCBQUl9TRVRfVk1BDQo+PiArLlRQDQo+PiArLkJSIFBSX1NFVF9WTUEgIiAoc2lu
Y2UgTGludXggNS4xNykiDQo+PiArLlwiIENvbW1pdCA5YTEwMDY0ZjU2MjVkNTU3MmMzNjI2
YzE1MTZlMGJlYmM2YzlmZTliDQo+PiArU2V0cyBhbiBhdHRyaWJ1dGUgc3BlY2lmaWVkIGlu
DQo+PiArLkkgYXJnMg0KPj4gK2ZvciB2aXJ0dWFsIG1lbW9yeSBhcmVhcyBzdGFydGluZyBm
cm9tIHRoZSBhZGRyZXNzIHNwZWNpZmllZCBpbg0KPj4gKy5JIGFyZzMNCj4+ICthbmQgc3Bh
bm5pbmcgdGhlIHNpemUgc3BlY2lmaWVkIGluDQo+PiArLklSIGFyZzQgLg0KPj4gKy5JIGFy
ZzUNCj4+ICtzcGVjaWZpZXMgdGhlIHZhbHVlIG9mIHRoZSBhdHRyaWJ1dGUgdG8gYmUgc2V0
Lg0KPj4gKy5JUA0KPj4gK05vdGUgdGhhdCBhc3NpZ25pbmcgYW4gYXR0cmlidXRlIHRvIGEg
dmlydHVhbCBtZW1vcnkgYXJlYQ0KPj4gK21pZ2h0IHByZXZlbnQgaXQgZnJvbSBiZWluZyBt
ZXJnZWQgd2l0aCBhZGphY2VudCB2aXJ0dWFsIG1lbW9yeSBhcmVhcw0KPj4gK2R1ZSB0byB0
aGUgZGlmZmVyZW5jZSBpbiB0aGF0IGF0dHJpYnV0ZSdzIHZhbHVlLg0KPj4gKy5JUA0KPj4g
K0N1cnJlbnRseSwNCj4+ICsuSSBhcmcyDQo+PiArbXVzdCBiZSBvbmUgb2Y6DQo+PiArLlJT
DQo+PiArLlRQDQo+PiArLkIgUFJfU0VUX1ZNQV9BTk9OX05BTUUNCj4+ICtTZXQgYSBuYW1l
IGZvciBhbm9ueW1vdXMgdmlydHVhbCBtZW1vcnkgYXJlYXMuDQo+PiArLkkgYXJnNQ0KPj4g
K3Nob3VsZCBiZSBhIHBvaW50ZXIgdG8gYSBudWxsLXRlcm1pbmF0ZWQgc3RyaW5nIGNvbnRh
aW5pbmcgdGhlIG5hbWUuDQo+PiArVGhlIG5hbWUgbGVuZ3RoIGluY2x1ZGluZyBudWxsIGJ5
dGUgY2Fubm90IGV4Y2VlZCA4MCBieXRlcy4NCj4+ICtJZg0KPj4gKy5JIGFyZzUNCj4+ICtp
cyBOVUxMLCB0aGUgbmFtZSBvZiB0aGUgYXBwcm9wcmlhdGUgYW5vbnltb3VzIHZpcnR1YWwg
bWVtb3J5IGFyZWFzDQo+PiArd2lsbCBiZSByZXNldC4NCj4+ICtUaGUgbmFtZSBjYW4gY29u
dGFpbiBvbmx5IHByaW50YWJsZSBhc2NpaSBjaGFyYWN0ZXJzIChpbmNsdWRpbmcgc3BhY2Up
LA0KPj4gK2V4Y2VwdCBcKGFxW1woYXEsIFwoYXFdXChhcSwgXChhcVxlXChhcSwgXChhcSRc
KGFxLCBhbmQgXChhcVwoZ2FcKGFxLg0KPj4gKy5SRQ0KPj4gICAuXCIgcHJjdGwgUFJfTVBY
X0VOQUJMRV9NQU5BR0VNRU5UDQo+PiAgIC5UUA0KPj4gICAuQlIgUFJfTVBYX0VOQUJMRV9N
QU5BR0VNRU5UICIsICIgUFJfTVBYX0RJU0FCTEVfTUFOQUdFTUVOVCAiIChzaW5jZSBMaW51
eCAzLjE5LCByZW1vdmVkIGluIExpbnV4IDUuNDsgb25seSBvbiB4ODYpIg0KPj4gZGlmZiAt
LWdpdCBhL21hbjUvcHJvYy41IGIvbWFuNS9wcm9jLjUNCj4+IGluZGV4IDY1YTRjMzhlMy4u
ZTBhNjRkNDg2IDEwMDY0NA0KPj4gLS0tIGEvbWFuNS9wcm9jLjUNCj4+ICsrKyBiL21hbjUv
cHJvYy41DQo+PiBAQCAtMTM3Miw2ICsxMzcyLDIwIEBAIFNlZQ0KPj4gICAuVFANCj4+ICAg
LkkgW2hlYXBdDQo+PiAgIFRoZSBwcm9jZXNzJ3MgaGVhcC4NCj4+ICsuVFANCj4+ICsuSVIg
W2Fub246IG5hbWUgXSAiIChzaW5jZSBMaW51eCA1LjE3KSINCj4+ICsuXCIgQ29tbWl0IDlh
MTAwNjRmNTYyNWQ1NTcyYzM2MjZjMTUxNmUwYmViYzZjOWZlOWINCj4+ICtBIG5hbWVkIHBy
aXZhdGUgYW5vbnltb3VzIG1hcHBpbmcuDQo+PiArU2V0IHdpdGgNCj4+ICsuQlIgcHJjdGwg
KDIpDQo+PiArLkJSIFBSX1NFVF9WTUFfQU5PTl9OQU1FIC4NCj4+ICsuVFANCj4+ICsuSVIg
W2Fub25fc2htZW06IG5hbWUgXSAiIChzaW5jZSBMaW51eCA2LjIpIg0KPj4gKy5cIiBDb21t
aXQgZDA5ZThjYTZjYjkzYmI0Yjk3NTE3YTE4ZmJiZjdlY2NiMGU5ZmY0Mw0KPj4gK0EgbmFt
ZWQgc2hhcmVkIGFub255bW91cyBtYXBwaW5nLg0KPj4gK1NldCB3aXRoDQo+PiArLkJSIHBy
Y3RsICgyKQ0KPj4gKy5CUiBQUl9TRVRfVk1BX0FOT05fTkFNRSAuDQo+PiAgIC5pbg0KPj4g
ICAuUkUNCj4+ICAgLklQDQo+PiAtLQ0KPj4gMi4zOS4wDQo+Pg0KDQotLSANCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------F02or6T08SbpnPjHdAfeT9Jg--

--------------d0UsYJu8CKIx75Aaz4yC7Hxx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO91KMACgkQnowa+77/
2zIRqg/9G9KYLTVqD819hSgGWj4H16Hiex7aTm3z7uH6/tZSnWuGUfWMXH2bSlMx
Mjpv4puN4JIoBIxmoXBPOOI/F1CaGtap0hqLvSDH0wtvjfigswdYppu8bt0Kjn9/
aBPSXf/O2ORHhi1+gxpSEJ1GrnPd8V4w2UyrnJ37I9a1YUBuaA3ag0WexfrgEMe6
2FhYOLfxBgE0uivEFVht3jZ7r9Gg/7sadGMqqjC+VAAd0rRqHHP7z1UPzRIbyJNc
WcwJNOh3/RoF/JY9Sg4mO+a3IpZbsJ4DqDhL5Anyd6J1nne59ELOk3+edK/jd9Hc
ITOD6u6I6S9S2NmFCVyBZrNgRy9RHqpCCiJT2JJSD+Zf0rEutG1nwIbQ+NZMywq7
BC/eOEP0CnqMnwSWrS4cCak1I84gmLZic3hDR+sdR63TljAzTREPiq5O2cv3TIZ3
wAAEo8cLs2QVaB8rhBxgalJHMmRdeTESnC2f4AsjNce5WZJU4rNAsZeKNqXZnAbB
UzsG5GX0OaPfb/bvfeLpqRqVMLOU+mmRof7CZuuIDd1ozki3KjpFk8R89Eie5aJZ
eLmy0yTmV0+To60XEtYLfrVPIPSWK9zu52+JHCu/3LRwH0gfKoUhCXatzrHFqgoZ
0b14l+wuvHENU2jWmUCyd0fdfD0IaF33G/tJa3IDCj/80xCMI/c=
=Bic2
-----END PGP SIGNATURE-----

--------------d0UsYJu8CKIx75Aaz4yC7Hxx--
