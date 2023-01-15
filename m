Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA44266B1C6
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 16:02:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbjAOPCE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 10:02:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231243AbjAOPCC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 10:02:02 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A124F10404
        for <linux-man@vger.kernel.org>; Sun, 15 Jan 2023 07:02:01 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso20464929wms.5
        for <linux-man@vger.kernel.org>; Sun, 15 Jan 2023 07:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0twCWOZFvpYNetWyclstZE/qhVUFhnh+YEWry6RMYtg=;
        b=LMGok794QqBm4YbzB7xZr88uIecxQUq3RrX+LaXOZVcqeHPmH7GTkWP5RMvK4/vQ4Z
         Ldi4Inzh3wHj15Z0xIQVoiitkvQ7ip7Sxtpds6KZvPaulhs4rc6OnJ9lu1t6PV+m9K0C
         /s4mZ8IkcSgXpncyKwNYw1S8IMuHmhk4h/25+svmQX4fuiLzsQoI7ZVow3M8bJSrMpFh
         MeM4J4iSxHc6bVCcd2aUUyzEQOxBUqw6vT4bKMRteHFUN7WYql3gdqSOlsdJkzEC/SsA
         CogmeoqebXChyREaJ4ho3xQbEPr5hN44EO/4vQNIX6NikLQTWIyuIeiqC47iKzY4eVLz
         9DBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0twCWOZFvpYNetWyclstZE/qhVUFhnh+YEWry6RMYtg=;
        b=UlErY+jG3ktKiLbC6Hy8w3rLd2rQ02oSDfUw0NjgHfWap2BMLVzYZN9CHtxgXv/M/n
         +qTPYbLkAA1orW5zosi6krgrdaBzWFnusQLBEJuyRQ7F8M1X4kT9Muxt/TueZ2zLscTB
         6nWlSZ0eVvZDI2/z4hAzsijU1lUOePp7dr/iWexQN4zgpCpzfILpEEdZ+0HieRidoUyV
         gaJoqX4JlYMUfdSXynPw8SsmM1ZHEum/PlUoZvRGWqB0PzPJowqy5yHXq020ZYKdYdFD
         bUwVIn212ifLIdrA0UcMF4X5oyvaIZJSmtwulhisclPVDunpoAFOQlSQD/DRxJCXnrrB
         EBtw==
X-Gm-Message-State: AFqh2kqp6Io1TkhHEokC3o+dieUpGuE3HI2F/IIHCrRLBrfAdiPniVZ5
        s1P/QfOUV5ieRGK8DCEq7TE=
X-Google-Smtp-Source: AMrXdXuZR9g3mJK9yT6tuL1GvS9kbiCRK4Gk7t524z6XGDvSrzT4lHFBahbt8qjml0ua28J6QkQXAg==
X-Received: by 2002:a05:600c:34c2:b0:3cf:7397:c768 with SMTP id d2-20020a05600c34c200b003cf7397c768mr64106646wmq.30.1673794920151;
        Sun, 15 Jan 2023 07:02:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c42c600b003b492753826sm29196362wme.43.2023.01.15.07.01.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 07:01:59 -0800 (PST)
Message-ID: <9055aa36-67c1-c756-e241-bf9e12e9780f@gmail.com>
Date:   Sun, 15 Jan 2023 16:01:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 3/6] libc.7: Revise content
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230115054343.we7tmhl3offylz24@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230115054343.we7tmhl3offylz24@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QbfIrMYFFOIHthFXIDLne6mA"
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
--------------QbfIrMYFFOIHthFXIDLne6mA
Content-Type: multipart/mixed; boundary="------------NLik7b8A01HyUa92y27S6yyl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <9055aa36-67c1-c756-e241-bf9e12e9780f@gmail.com>
Subject: Re: [PATCH v5 3/6] libc.7: Revise content
References: <20230115054343.we7tmhl3offylz24@illithid>
In-Reply-To: <20230115054343.we7tmhl3offylz24@illithid>

--------------NLik7b8A01HyUa92y27S6yyl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8xNS8yMyAwNjo0MywgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gKiBEZWZpbmUgdGhlIHRlcm0gInN0YW5kYXJkIEMgbGlicmFyeSIuDQo+ICog
U2F5IHdobydzIHJlc3BvbnNpYmxlIGZvciBzdGFuZGFyZGl6aW5nIGl0Lg0KPiAqIFByYWN0
aWNhbGx5IGFsbCBDIF9saWJyYXJpZXNfIHVzZSBsaWJjLCB0b28uDQo+ICogTW92ZSBtYXRl
cmlhbCBkZXNjcmliaW5nIHN0cnVjdHVyZSBnbGliYyBmcm9tIGludHJvKDMpIHRvIGhlcmUg
YW5kDQo+ICAgIHJlY2FzdCBpbiBtb3JlIGRldGFpbC4NCj4gKiBVcGRhdGUgZXhhbXBsZSBm
aWxlc3BlYyBmb3IgbGliYy5zby42Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogRy4gQnJhbmRl
biBSb2JpbnNvbiA8Zy5icmFuZGVuLnJvYmluc29uQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICAg
bWFuNy9saWJjLjcgfCAzNCArKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9saWJjLjcgYi9tYW43L2xpYmMuNw0KPiBpbmRleCBj
NjE4MDA3NWMuLjA5ZDIxZTdmNSAxMDA2NDQNCj4gLS0tIGEvbWFuNy9saWJjLjcNCj4gKysr
IGIvbWFuNy9saWJjLjcNCj4gQEAgLTgsMTMgKzgsMTggQEANCj4gICBsaWJjIFwtIG92ZXJ2
aWV3IG9mIHN0YW5kYXJkIEMgbGlicmFyaWVzIG9uIExpbnV4DQo+ICAgLlNIIERFU0NSSVBU
SU9ODQo+ICAgVGhlIHRlcm0gXChscWxpYmNcKHJxIGlzIGNvbW1vbmx5IHVzZWQgYXMgYSBz
aG9ydGhhbmQgZm9yDQo+IC10aGUgXChscXN0YW5kYXJkIEMgbGlicmFyeVwocnENCj4gLWEg
bGlicmFyeSBvZiBzdGFuZGFyZCBmdW5jdGlvbnMgdGhhdCBjYW4gYmUgdXNlZCBieSBhbGwg
QyBwcm9ncmFtcw0KPiAtKGFuZCBzb21ldGltZXMgYnkgcHJvZ3JhbXMgaW4gb3RoZXIgbGFu
Z3VhZ2VzKS4NCj4gLUJlY2F1c2Ugb2Ygc29tZSBoaXN0b3J5DQo+IC0oc2VlIGJlbG93KSwN
Cj4gLXVzZSBvZiB0aGUgdGVybSBcKGxxbGliY1wocnENCj4gLXRvIHJlZmVyIHRvIHRoZSBz
dGFuZGFyZCBDIGxpYnJhcnkgaXMgc29tZXdoYXQgYW1iaWd1b3VzIG9uIExpbnV4Lg0KPiAr
dGhlDQo+ICsuSVIgInN0YW5kYXJkIEMgbGlicmFyeSIgLA0KPiArYSBjb2xsZWN0aW9uIG9m
IGZ1bmN0aW9ucywNCj4gK2RhdGEgdHlwZXMsDQo+ICtjb25zdGFudHMsDQo+ICthbmQgZ2xv
YmFsIHZhcmlhYmxlcyBcIiBsaWtlIGVycm5vDQo+ICtkZWZpbmVkIGJ5IElTTy9JRUMgSlRD
MS9cOlNDMjIvXDpXRzE0IGFuZCBQT1NJWC4xDQo+ICsodGhlIEF1c3RpbiBHcm91cCkNCg0K
SSdkIGp1c3QgY2FsbCBpdCBJU08gQyBhbmQgUE9TSVguMSwgYW5kIGRlZmVyIHRvIHN0YW5k
YXJkcyg3KSBmb3IgbW9yZSBkZXRhaWxzIA0KYWJvdXQgdGhlIEF1c3RpbmcgZ3JvdXAsIFdH
MTQsIGFuZCBjb21wYW55Lg0KDQo+ICthbmQgdXNlZCBieSBwcmFjdGljYWxseSBhbGwgcHJv
Z3JhbXMgYW5kIGxpYnJhcmllcyB3cml0dGVuIGluIEMuDQoNCkFuZCBhY3R1YWxseSwgbm9u
LUMgdG9vLCB1bmxlc3MgeW91IHdyaXRlIHN0YXRpYyBiaW5hcmllcyA6KQ0KDQo+ICsuSSBs
aWJjDQo+ICtyZWZlcnMgdG8gYW55IGxpYnJhcnkgdGhhdCBpbXBsZW1lbnRzIGEgc2lnbmlm
aWNhbnQgcG9ydGlvbiBvZiB0aGUNCj4gK3B1Ymxpc2hlZCBzdGFuZGFyZCBpbnRlcmZhY2Uu
DQo+ICAgLlNTIGdsaWJjDQo+ICAgVGhlIHN0YW5kYXJkIGxpYmMgbW9zdCBwb3B1bGFybHkg
dXNlZCB3aXRoIHRoZSBMaW51eCBrZXJuZWwgaXMNCj4gICAuVVIgaHR0cDovL3d3dy5nbnUu
b3JnXDovc29mdHdhcmVcOi9saWJjLw0KPiBAQCAtMzMsMTMgKzM4LDI2IEBAIHByaW1hcmls
eSBpbiBzZWN0aW9uIDMgb2YgdGhlIG1hbnVhbC4NCj4gICBnbGliYyBhbHNvIG9mZmVycyBh
IG1hbnVhbCBvZiBpdHMgb3duIGluIFRleGluZm8gZm9ybWF0LA0KPiAgIGJyb3dzYWJsZSBh
dCB0aGUgY29tbWFuZCBsaW5lIHdpdGgNCj4gICAuUkkgXChscSAiaW5mbyBsaWJjIiBcKHJx
Lg0KPiArLlBQDQo+ICtnbGliYyBpcyBvcmdhbml6ZWQgaW50byB0aHJlZQ0KDQpXaHkgcHJl
Y2lzZSBhYm91dCBnbGliYz8gIEEgcHJvZ3JhbW1lciBzaG91bGQgb25seSBjYXJlIGFib3V0
IHRoZSBzdGFuZGFyZCBmb3IgDQp0aGVzZSwgcmlnaHQ/ICBJZiBQT1NJWCBzcGVjaWZpZXMg
c29tZSBvcmdhbml6YXRpb24sIHByb2dyYW1tZXJzIHNob3VsZCBub3JtYWxseSANCmxpbmsg
YWdhaW5zdCB0aGUgbGlicmFyeSB0aGF0IFBPU0lYIHNwZWNpZmllcy4gIElmIFBPU0lYIHNh
eXMgZm9vKDMpIGlzIGluIA0KbGliZm9vLnNvLCBidXQgZ2xpYmMgcHV0cyBpdCBpbiBsaWJi
YXIuc28sIEkgd2lsbCBvbmx5IGRvY3VtZW50IHdoYXQgUE9TSVggc2F5cyANCihvZiBjb3Vy
c2UgZ2xpYmMgd2lsbCBtYWtlIHRoZSBtYWdpYyBzbyB0aGF0IGEgUE9TSVgtY29uZm9ybWFu
dCBwcm9ncmFtIHdvdWxkIHdvcmspLg0KDQpUaGlzIHJlbWluZHMgbWUgdGhhdCBJIGhhZCBh
IHBlbmRpbmcgdGFzazogbWFrZSBzdXJlIHRoYXQgTElCUkFSWSBjb250ZW50cyBhcmUgDQpy
aWdodCBhY2NvcmRpbmcgdG8gUE9TSVguDQoNCj4gKy5JIGR5bmFtaWMgc2hhcmVkIG9iamVj
dHMNCj4gKyhEU09zKToNCj4gKy5JIGxpYmMNCj4gK2l0c2VsZiwNCj4gKy5JIGxpYm0NCj4g
K2ZvciBtYXRoZW1hdGljYWwgZnVuY3Rpb25zLA0KPiArYW5kDQo+ICsuSSBsaWJydA0KPiAr
Zm9yIHJlYWwtdGltZSBleHRlbnNpb25zDQo+ICsoaGlzdG9yaWNhbGx5IFBPU0lYLjFiKS4N
Cg0KSXMgaXQ/ICBJIHRob3VnaHQgdGhlcmUgd2VyZSBtb3JlIGxpYnJhcmllcy4gIEknbSB0
aGlua2luZyBhYm91dCBsaWJwdGhyZWFkLCBhbmQgDQptYXliZSBzb21lIG90aGVycy4NCg0K
PiAgIFZlcnNpb24gMS4wIG9mIGdsaWJjIHdhcyByZWxlYXNlZCBpbiBTZXB0ZW1iZXIgMTk5
Mi4NCj4gICAoVGhlcmUgd2VyZSBlYXJsaWVyIDAueCByZWxlYXNlcy4pDQo+ICAgVGhlIG5l
eHQgbWFqb3IgcmVsZWFzZSBvZiBnbGliYyB3YXMgMi4wDQo+ICAgYXQgdGhlIGJlZ2lubmlu
ZyBvZiAxOTk3Lg0KPiAgIC5QUA0KPiAgIFRoZSBmaWxlDQo+IC0uSSAvbGliL2xpYmMuc28u
Ng0KPiArLklSIC9saWIvbGliYy5zby42ICwNCj4gKy5JUiAvbGliL3g4Nl82NFwtbGludXhc
LWdudS9saWJjLnNvLjYgLA0KDQpIb3cgYWJvdXQgYWRkaW5nIGEgRklMRVMgc2VjdGlvbj8N
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gICBvciBzaW1pbGFyDQo+ICAgaXMgbm9ybWFsbHkg
YSBzeW1ib2xpYyBsaW5rIHRvIHRoZSBnbGliYyBsaWJyYXJ5Lg0KPiAgIEV4ZWN1dGUgaXQg
dG8gZGlzcGxheSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdmVyc2lvbiBpbnN0YWxsZWQgb24g
eW91cg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------NLik7b8A01HyUa92y27S6yyl--

--------------QbfIrMYFFOIHthFXIDLne6mA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPEFVoACgkQnowa+77/
2zKo5w//YMAvxXsMjYBYtFHc9inyboO0WSKRGZnCn1XYnUvlPzxIO96BPT4xT3RQ
d3YIfn208Jywl6cuj2ai64oYRaC2tI0FbWz9l44n69XB6GJNq+VoTmDnmP/Lctwq
GcKSSoogoJYVLBMGSnQGugHgvYa9cXA9xht+oan5pXE44oASHsF4YS/k5OxmGzxr
fyPF9cYVdQnJG3xwucXet7ss/r0rGNq62yV1NPoiU9b0Nd4jJ+P9jWXW405t+JAZ
2AgISWyCg/ARXuQyuygEn+XoRE7/2ECYqpfNsmTG7VGYHGKP73WRu8CkLVAUui5X
vzAJWm+HGW0LMSrXyTh7DdQ3/YPXNP7l+hgZd8ldEAVqcqW2YG27MpsRrTOlbuXs
wi8O4kJ8GHvfKvYcGwzq16qSh5gi6xgWYZP//uAQ3mLHKI4QuvwxT8yK6g4/ozIg
gIwPFEVcaulos0GA7VTBnDSGaQ0juj6+bDuek5p6Ht3NF5hjgukbQT/LGpU3cMcq
C207se3dDqbE0O1PKxciPIZRPcTDq0/2221ygwfcREdI3ZaYvJ45iVFR+H6FF6dP
0dNk41sZl41WllLeTSP9ZGYtYk4IEf9cdeRxPTzO4V6mL9LkSnJWIBUmifv1df08
JT7AfcI+3GsfXjzU7VBNuDRlR5UA09Cz+huSTMWmbBjN+N7vfos=
=r2Hg
-----END PGP SIGNATURE-----

--------------QbfIrMYFFOIHthFXIDLne6mA--
