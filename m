Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D4E56586B1
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 21:26:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbiL1U01 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 15:26:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230225AbiL1U00 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 15:26:26 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E5141583E
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:26:25 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso11976196wmb.0
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fOF0WL6Kpclkbwz/Bs4hn9izyTWax+n/xCoVS3pVaUA=;
        b=L4BiBY+sbdAIlcfsBVCpcr9prP7I5ye5RmDmsi1oCPKJxkiDadmRhkVRv0U55kIa6h
         RGHuEZWPdl/trfJjg/dyHGMP/9YPDkoPJVb1dET6PHdwItsrYmqX2yPxy7FDYM6uQvvS
         tEPVlM7OeyK8DggOAZ/xIiYn1iX0c81tdVeFuxyCooouvFZBVg5+9RImuCBSyIJMQpxl
         6ldURAX39TzUfZ0us1gqL1NgKgdRR0YHvI4kidopdhcA7d+uFy7rDCa/KDevTb6wv/8E
         Dj6tHBCVwkaX6+UOIORBH/qc7tCVW78/XBWuH0yja+LYPn/3XIHogCXx7tcoU1xL4qz4
         pFBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fOF0WL6Kpclkbwz/Bs4hn9izyTWax+n/xCoVS3pVaUA=;
        b=oADO8DWc9bWxd+BygA8jqw4L3iU2ifDhYpGIl8eQieAe2J6Jw+AfAtKymawaPc7JCh
         ht9nQtAZvLOabD2rKEAkwzzTXqucqH+TPDhxejr+CyFC5tBjRPLIAXvZaBF8ZqRV7OrL
         rVoDruGPM/hqneYrua153gfcwF9GzYYEauNHxfhsTIc8s6FlQZjuHzvVNcwVhKXX7tIQ
         GGpEyPCV8avXNT1nvistOpTTi3neDMssQiph6ACvzUkrG5IjUhbwcgurzTK6NHdeMD0J
         0YN9VkVul/CXDn72MfZt4RuLoHh767dMcF1Trh7jSpK7DoGRCzee0Q/v2JKsiYJcewdw
         6Ftg==
X-Gm-Message-State: AFqh2kqcXTEeCTxjMNlCIiakqKU/mXTV623s4OwE2rZVLU9sEktWNtbI
        5M93EN5vrJnFiuC8g7VW0N4=
X-Google-Smtp-Source: AMrXdXvEXUL7JfSDs//sgCCCrzhU3vsTlb+xc2kND3roSQtkPxzUytZWEZchzB01W8GlL/RM2y5cbw==
X-Received: by 2002:a05:600c:250:b0:3d2:2043:9cbf with SMTP id 16-20020a05600c025000b003d220439cbfmr18201885wmj.10.1672259183519;
        Wed, 28 Dec 2022 12:26:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s16-20020a1cf210000000b003c6bd12ac27sm21793335wmc.37.2022.12.28.12.26.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 12:26:23 -0800 (PST)
Message-ID: <cf8e5404-f3bc-8a27-9cd0-2cdc0c26d030@gmail.com>
Date:   Wed, 28 Dec 2022 21:26:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 0/2] proc.5: note broken v4.18 userspace promise
Content-Language: en-US
To:     Linus Torvalds <torvalds@linux-foundation.org>,
        =?UTF-8?B?w4Z2YXIgQXJuZmrDtnLDsCBCamFybWFzb24=?= <avarab@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Tejun Heo <tj@kernel.org>, Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
 <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UTUP3vFudTLV6gRQ7OhygL75"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UTUP3vFudTLV6gRQ7OhygL75
Content-Type: multipart/mixed; boundary="------------I9KZgxmv3V60yJiBS2z7G0HI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 =?UTF-8?B?w4Z2YXIgQXJuZmrDtnLDsCBCamFybWFzb24=?= <avarab@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Tejun Heo <tj@kernel.org>, Craig Small <csmall@enc.com.au>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <cf8e5404-f3bc-8a27-9cd0-2cdc0c26d030@gmail.com>
Subject: Re: [PATCH 0/2] proc.5: note broken v4.18 userspace promise
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
 <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
In-Reply-To: <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>

--------------I9KZgxmv3V60yJiBS2z7G0HI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDEyLzIzLzIyIDE5OjEyLCBMaW51cyBUb3J2YWxkcyB3cm90ZToNCj4gT24g
RnJpLCBEZWMgMjMsIDIwMjIgYXQgMTA6MDAgQU0gw4Z2YXIgQXJuZmrDtnLDsCBCamFybWFz
b24NCj4gPGF2YXJhYkBnbWFpbC5jb20+IHdyb3RlOg0KPj4NCj4+IFdoZXJlYXMgdGhlIGZp
eCBoZXJlIGlzIGEgZml4IGZvciBhIHByb21pc2Ugd2UncmUgY3VycmVudGx5IG1ha2luZw0K
Pj4gd2hpY2ggaGFzbid0IGJlZW4gdHJ1ZSBzaW5jZSB2NC4xOC4NCj4gDQo+IEhhaC4gQWNr
LiBEaWQgYW55Ym9keSBldmVyIGFjdHVhbGx5IG5vdGljZT8NCj4gDQo+IEkgd29uZGVyIGlm
IHRoZSBuZXdlciBsaW1pdCBvZiA2NCBjaGFyYWN0ZXJzIGZvciBrd29ya2VycyBzaG91bGRu
J3QNCj4gZXZlbiBiZSBtZW50aW9uZWQgYXQgYWxsLCBhbmQgaWYgdGhlIDE2LWJ5dGUgdHJ1
bmNhdGlvbiBmb3IgdXNlciBzcGFjZQ0KPiBzaG91bGQgYWxzbyBiZSBqdXN0IHJlbW92ZWQu
DQo+IA0KPiBUaG9zZSBsaW1pdHMgc2hvdWxkIG5ldmVyIGhhdmUgYmVlbiBzb21lIGRvY3Vt
ZW50ZWQgQVBJLCB0aGV5IHdlcmUNCj4gYWx3YXlzIGp1c3QgaW1wbGVtZW50YXRpb24gZGV0
YWlscywgYWZ0ZXIgYWxsLg0KPiANCj4gICAgICAgICAgICAgICBMaW51cw0KDQoNCkkgYWdy
ZWUuICBBIHZhcmlhYmxlIGltcGxlbWVudGF0aW9uIGRldGFpbCBsaWtlIHRoaXMgZG9lc24n
dCBwcm92aWRlIGFueXRoaW5nIA0KdmFsdWFibGUgdG8gdXNlcnM7IGVzcGVjaWFsbHkgc2lu
Y2UgdGhlcmUncyBubyBzdGF0YmlsaXR5IHByb21pc2UgYXQgYWxsLiAgSSdkIA0KcmV3cml0
ZSB0byBqdXN0IHJlbW92ZSB0aGUgKDE2KSBpbXBsZW1lbnRhdGlvbiBkZXRhaWwuDQoNCsOG
dmFyLCB3b3VsZCB5b3Ugc2VuZCBhbiB2MiB0aGF0IHJlbW92ZXMgaW1wbGVtZW50YXRpb24g
ZGV0YWlscywgcmF0aGVyIHRoYW4gDQpmaXhpbmcgdGhlIGRldGFpbHM/DQoNClRoYW5rcyBm
b3IgdGhlIHBhdGNoIHNldCENCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCk9uIDEyLzIzLzIyIDE4
OjU5LCDDhnZhciBBcm5masO2csOwIEJqYXJtYXNvbiB3cm90ZToNCiA+IGRpZmYgLS1naXQg
YS9tYW41L3Byb2MuNSBiL21hbjUvcHJvYy41DQogPiBpbmRleCAxMTVjODU5MmUuLmIyM2Rk
MTQ3OSAxMDA2NDQNCiA+IC0tLSBhL21hbjUvcHJvYy41DQogPiArKysgYi9tYW41L3Byb2Mu
NQ0KID4gQEAgLTIwOTIsOSArMjA5MiwxMyBAQCBUaGUgZmlsZW5hbWUgb2YgdGhlIGV4ZWN1
dGFibGUsIGluIHBhcmVudGhlc2VzLiBUb29scyANCnN1Y2ggYXMNCiA+ICAgbWF5IGFsdGVy
bmF0aXZlbHkgKG9yIGFkZGl0aW9uYWxseSkgdXNlDQogPiAgIC5JUi9wcm9jLyAgcGlkIC9j
bWRsaW5lLg0KID4gICAuSVANCiA+IC1TdHJpbmdzIGxvbmdlciB0aGFuDQogPiArRm9yIHVz
ZXJzcGFjZSwgc3RyaW5ncyBsb25nZXIgdGhhbg0KID4gICAuQiBUQVNLX0NPTU1fTEVODQog
PiAgICgxNikgY2hhcmFjdGVycyAoaW5jbHVkaW5nIHRoZSB0ZXJtaW5hdGluZyBudWxsIGJ5
dGUpIGFyZSBzaWxlbnRseSB0cnVuY2F0ZWQuDQogPiArU2luY2UgTGludXggdmVyc2lvbiA0
LjE4LjAgYSBsb25nZXIgbGltaXQgb2YgNjQgKGluY2x1ZGluZyB0aGUNCiA+ICt0ZXJtaW5h
dGluZyBudWxsIGJ5dGUpIGhhcyBhcHBsaWVkIHRvIHRoZSBrZXJuZWwncyBvd24gd29ya3F1
ZXVlDQogPiArd29ya2VycyAod2hvc2UgbmFtZXMgc3RhcnQgd2l0aCAia3dvcmtlci8iKS4N
CiA+ICsuSVANCiA+ICAgVGhpcyBpcyB2aXNpYmxlIHdoZXRoZXIgb3Igbm90IHRoZSBleGVj
dXRhYmxlIGlzIHN3YXBwZWQgb3V0Lg0KID4gICAuVFANCiA+ICAgKDMpIFxmSXN0YXRlXGZQ
IFwgJWMNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------I9KZgxmv3V60yJiBS2z7G0HI--

--------------UTUP3vFudTLV6gRQ7OhygL75
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOspm0ACgkQnowa+77/
2zKF3xAAmfacefeu3aRvIWbUPpat+4Z/+BUopoBj399oL5Iy6y4vNYchECm4c7Za
i3PK97vwf6U+14zKGjKv+cphCYxvHY+RzHE6E+Mw8XoEj5iN913xTXHsISQROHr+
k5QWwbs7af4nN2oIBbq8pTy2SXjw1w8yjkp9+yyuzAQQ38D639X1YjsL8xbGHBtP
zNwoYSFKSPmm7jAJQ+AXKklEWTsv23HtLv8k6WnIkelLE3pWOPrdbDELLx7nNmy+
BUMXHOBKp+iKmIs+8M7IAy9PSQhuy5Kkm4f7urta/BTDCDjahiVMRkjCT0ai/j+s
lJnz4zbsWiAlSHZOOyPkqq+s6eQRGFr1IWuERyUtI/vCqbZ0PHG2C+2nAIeI6OeD
v/LmUI4TziD5ggJKkRP+hBvjvqPOrYBi+IseHEkvoc2r4t3IxFQLnyezkd1XFyM2
b4XLrYd4kuO449UgGAMk9YPzhoIBkeRcs5G0z1wOvSiYZWcxd/Dcjoypwlp/AGf9
eOQYcuorF8FlLIaDISHTiyRBS7oxb8h54XAMGF7dSgd+vgONQskySHE28SV9eGvt
ce373W8laZa9lT57GJyoEo3i+oDwp6uxQLVeEy7hg4aqqBYZ8Flzwt3iUh2KHYp0
qh03QrpcRq/1+mPnekBV1x8fq53qdmC/E+/eQ2jKHKVPcXfzWnI=
=hKzd
-----END PGP SIGNATURE-----

--------------UTUP3vFudTLV6gRQ7OhygL75--
