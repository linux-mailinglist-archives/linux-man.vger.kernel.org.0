Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32E9865D292
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 13:27:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239306AbjADM1E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 07:27:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239133AbjADM0h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 07:26:37 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A907C14015
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 04:26:36 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so23877514wms.0
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 04:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iOyHYJUv9PJiEGpx+S3VKme+3HzcDnOW606Hu4CjOWM=;
        b=LrrRfLQ3r04x1VIUICd1m+2dIr9scwP8Yi45h9f4AON7FQVFxdigge/SD0EO50arz/
         n3e8dcS9DIHPhWkrLvFSFViq7LDPchE1PfBKTEMRqef8eC6tSxcpcyNgiOtLJSSOPNnS
         7WOdsTR/a5rhpEZvSr4Gjw2BJQPPokvvF+PALt15hwnwFHAe1P3JqhoFf2p6FN/veSC9
         747tkeTlnGjPtDlK4j30G/a0H+3R8T0BcIfkJzNs6C5CEQ3f0xsNpdfom5hzPNfBBWgL
         c5I5MJOkfcoRAmZl1sDlB+wRs01lWoM+8pGJ50f3TZllajJOaYENK4gdf/VTXd52HEDZ
         Y1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iOyHYJUv9PJiEGpx+S3VKme+3HzcDnOW606Hu4CjOWM=;
        b=kqfz9N7USauhI3Y7DSd64cbyjiiVUrXru37nizVv0MltgeiOZd+c+zbC/tT2bXLgSg
         gRm/IaNSWfX1iFIzkdCOdBKIbb3EdI7uSaWTINdDw0TAIwQspLeswsu0TjTwRRf6NeGP
         62kK+N+NR2YbBy2xHgJ3t5cHB9W/zzEbRkYg0TSHoqaJAc5964iXxyF9FbMruZY/Cijn
         R6VA7Lz+Jd6ZcEqaacL72nOM1siIMuuIELMMrozMoQu1fYkpNVsg0Iacx2NxO2AiSM0B
         S+9XoNPj5O+WKC8bnFeQ0vapespGkP3mEqQNGSWZW1oWAwH0NqLbS74Uw/vk8PWeavxI
         nMpQ==
X-Gm-Message-State: AFqh2kpOC+AcmgM1lnjMS37bvC6PqxE5yna+xBft44Vx5ZtTw3J2Z2Eg
        cHQ47kv/KMTZZzld8gx4vCE=
X-Google-Smtp-Source: AMrXdXvTqx6cSHf2d8M8nIV/Lm/ydqWJnIY/sgWO7ecQ+iCbpo2yt3vixq357Vw5e9uTyuB4HEOeBQ==
X-Received: by 2002:a05:600c:2d91:b0:3cf:735c:9d54 with SMTP id i17-20020a05600c2d9100b003cf735c9d54mr33086376wmg.1.1672835195199;
        Wed, 04 Jan 2023 04:26:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x15-20020a1c7c0f000000b003c6bbe910fdsm63867392wmc.9.2023.01.04.04.26.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 04:26:34 -0800 (PST)
Message-ID: <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
Date:   Wed, 4 Jan 2023 13:26:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073807.gcohk253vopp4ii3@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230104073807.gcohk253vopp4ii3@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------60Aizv6Z98kJKN6kY0n6fcfn"
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
--------------60Aizv6Z98kJKN6kY0n6fcfn
Content-Type: multipart/mixed; boundary="------------5zlTc6u60N77bhsSAr5M4bxS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
References: <20230104073807.gcohk253vopp4ii3@illithid>
In-Reply-To: <20230104073807.gcohk253vopp4ii3@illithid>

--------------5zlTc6u60N77bhsSAr5M4bxS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS80LzIzIDA4OjM4LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIERyb3Agc3RhbGUgRklYTUUgYW5ub3RhdGlvbiByZWdhcmRpbmcgY29tbWl0
IElEIGZvciBgLWlgIG9wdGlvbi4NCj4gKiBSZXdyaXRlIHN5bm9wc2VzIHRvIHVzZSBtYW4o
NykgZm9udCBtYWNyb3MgaW5zdGVhZCBvZiAqcm9mZiBmb250DQo+ICAgIHNlbGVjdGlvbiBl
c2NhcGUgc2VxdWVuY2VzLg0KPiAqIERyb3AgcmVkdW5kYW50IGBQRGAgbWFjcm8gY2FsbHMu
DQo+ICogUmV3cml0ZSBvcHRpb24gbGlzdCB0byB1c2UgbWFuKDcpIGZvbnQgbWFjcm9zIGlu
c3RlYWQgb2YgKnJvZmYgZm9udA0KPiAgICBzZWxlY3Rpb24gZXNjYXBlIHNlcXVlbmNlcy4N
Cj4gKiBVc2UgYFRRYCBtYWNybyB0byBpbmNsdWRlIG11bHRpcGxlIHRhZ3MgZm9yIG9wdGlv
bnMgd2l0aCBsb25nIHN5bm9ueW1zDQo+ICAgIGluc3RlYWQgb2YgY29tbWEgbm90YXRpb24u
DQo+ICogQnJlYWsgaW5wdXQgbGluZXMgYWZ0ZXIgY29tbWFzLg0KPiAqIFNldCBtdWx0aS13
b3JkIHBhcmVudGhldGljYWxzIG9uIHRoZWlyIG93biBpbnB1dCBsaW5lcy4NCj4gKiBCcmVh
ayBpbnB1dCBsaW5lcyBhdCBwaHJhc2UgYm91bmRhcmllcyBtb3JlIG9mdGVuLg0KPiAqIFBy
b3RlY3QgbGl0ZXJhbHMgZnJvbSBhdXRvbWF0aWMgaHlwaGVuYXRpb24gd2l0aCBgXCVgIGVz
Y2FwZSBzZXF1ZW5jZS4NCj4gKiBVc2UgXH4gZXNjYXBlIHNlcXVlbmNlIGluc3RlYWQgb2Yg
cXVvdGVkIGFyZ3VtZW50cyBhdCB3b3JkDQo+ICAgIGJvdW5kYXJpZXMgaW4gb3B0aW9uIHN5
bm9wc2VzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogRy4gQnJhbmRlbiBSb2JpbnNvbiA8Zy5i
cmFuZGVuLnJvYmluc29uQGdtYWlsLmNvbT4NCg0KVGhpcyBwYXRjaCBsb29rcyBnb29kIHRv
IG1lLiAgSG93ZXZlciwgSSBkaWRuJ3QgYXBwbHkgaXQsIHNpbmNlIEkgaGF2ZSBhIGZldyAN
CmNvbW1lbnRzIGJlbG93Lg0KPiAtLS0NCj4gICBtYW44L2xkY29uZmlnLjggfCAxMDkgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDcxIGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL21hbjgvbGRjb25maWcuOCBiL21hbjgvbGRjb25maWcuOA0KPiBpbmRl
eCBkNjA4YWFmNTYuLjBlNzRjMTc5MSAxMDA2NDQNCj4gLS0tIGEvbWFuOC9sZGNvbmZpZy44
DQo+ICsrKyBiL21hbjgvbGRjb25maWcuOA0KPiBAQCAtOSwyMiArOSwyOSBAQA0KPiAgIC5T
SCBOQU1FDQo+ICAgbGRjb25maWcgXC0gY29uZmlndXJlIGR5bmFtaWMgbGlua2VyIHJ1bi10
aW1lIGJpbmRpbmdzDQo+ICAgLlNIIFNZTk9QU0lTDQoNCldlIHNob3VsZCB3cmFwIHRoaXMg
aW4gLm5mLy5maQ0KDQpBbHRob3VnaCBtYXliZSB0aGlzIGdvZXMgYmV0dGVyIGluIHRoZSBz
dHlsZSBwYXRjaCwgc2luY2UgaXQncyBhIGZvcm1hdHRpbmcgZml4Lg0KDQo+IC0uQlIgL3Ni
aW4vbGRjb25maWcgIiBbIiBcLW5OdlhWICJdIFsiIFwtZiAiIFxmSWNvbmZcZlBdIFsiIFwt
QyAiIFxmSWNhY2hlXGZQXSBbIiBcLXIgIiBcZklyb290XGZQXSINCj4gLS5JUiBkaXJlY3Rv
cnkgXC4uLg0KPiAgIC5QRCAwDQo+ICsuXCIgVE9ETz86IC1jLCAtLWZvcm1hdCwgLWksIC0t
aWdub3JlLWF1eC1jYWNoZSwgLS1wcmludC1jYWNoZSwNCj4gKy5cIiAtLXZlcmJvc2UsIC1W
LCAtLXZlcnNpb24sIC0/LCAtLWhlbHAsIC0tdXNhZ2UNCj4gKy5CIC9zYmluL2xkY29uZmln
DQo+ICsuUkIgWyBcLW5OdlhWIF0NCj4gKy5SQiBbIFwtZg0KPiArLklSIGNvbmYgXQ0KPiAr
LlJCIFsgXC1DDQo+ICsuSVIgY2FjaGUgXQ0KPiArLlJCIFsgXC1yDQo+ICsuSVIgcm9vdCBd
DQo+ICsuSVIgZGlyZWN0b3J5IC4uLg0KPiAgIC5QUA0KPiAtLlBEDQo+ICAgLkIgL3NiaW4v
bGRjb25maWcNCj4gICAuQiBcLWwNCj4gICAuUkIgWyBcLXYgXQ0KPiAtLklSIGxpYnJhcnkg
XC4uLg0KPiAtLlBEIDANCj4gKy5JUiBsaWJyYXJ5IC4uLg0KPiAgIC5QUA0KPiAtLlBEDQo+
ICAgLkIgL3NiaW4vbGRjb25maWcNCj4gICAuQiBcLXANCj4gKy5QRA0KPiAgIC5TSCBERVND
UklQVElPTg0KPiAtLkIgbGRjb25maWcNCj4gKy5CIFwlbGRjb25maWcNCg0KSSB3aWxsIHN1
Z2dlc3QgYWdhaW4gdGhhdCBJIGJlbGlldmUgXCUgc2hvdWxkIGJlIHRoZSBkZWZhdWx0IGlu
IG1hbnVhbCBwYWdlcy4gDQpDb3VudCBob3cgbWFueSB0aW1lcyB5b3Ugd2FudCB0byBicmVh
ayBoaWdobGlnaHRlZCBzdHVmZiB2cyBob3cgbWFueSB0aW1lcyB5b3UgDQp3YW50IHRvIG5v
dCBicmVhayBzdWNoIHN0dWZmLg0KDQo+ICAgY3JlYXRlcyB0aGUgbmVjZXNzYXJ5IGxpbmtz
IGFuZCBjYWNoZSB0byB0aGUgbW9zdCByZWNlbnQgc2hhcmVkDQo+ICAgbGlicmFyaWVzIGZv
dW5kIGluIHRoZSBkaXJlY3RvcmllcyBzcGVjaWZpZWQgb24gdGhlIGNvbW1hbmQgbGluZSwN
Cj4gICBpbiB0aGUgZmlsZQ0KPiBAQCAtMzcsNyArNDQsOCBAQCBhbmQNCg0KWy4uLl0NCg0K
PiBAQCAtMTA1LDM1ICsxMjIsNDEgQEAgRmFpbHVyZSB0byBmb2xsb3cgdGhpcyBwYXR0ZXJu
IG1heSByZXN1bHQgaW4gY29tcGF0aWJpbGl0eSBpc3N1ZXMNCj4gICBhZnRlciBhbiB1cGdy
YWRlLg0KPiAgIC5TSCBPUFRJT05TDQo+ICAgLlRQDQo+IC0uQlIgXC1jICIgXGZJZm10XGZQ
LCAiIFwtXC1mb3JtYXQ9XGZJZm10XGZQDQo+ICsuQkkgXC1jXH4gZm10DQo+ICsuVFENCj4g
Ky5CSSBcLVwtZm9ybWF0PSBmbXQNCj4gICAoU2luY2UgZ2xpYmMgMi4yKQ0KPiArLlwiIGNv
bW1pdCA0NWVjYTRkMTQxYzA0Nzk1MGRiNDhjNjljODk0MTE2M2QwYTYxZmNkDQo+ICAgQ2Fj
aGUgZm9ybWF0IHRvIHVzZToNCj4gICAuSVIgb2xkICwNCj4gICAuSVIgbmV3ICwNCj4gICBv
cg0KPiAtLklSIGNvbXBhdCAuDQo+IC1TaW5jZSBnbGliYyAyLjMyLCB0aGUgZGVmYXVsdCBp
cw0KPiArLklSIFwlY29tcGF0IC4NCj4gK1NpbmNlIGdsaWJjIDIuMzIsDQo+ICt0aGUgZGVm
YXVsdCBpcw0KPiAgIC5JUiBuZXcgLg0KPiAgIC5cIiBjb21taXQgY2FkNjRmNzc4YWNlZDg0
ZWZkYWEwNGFlNjRmODczN2I4NmYwNjNhYg0KPiAtQmVmb3JlIHRoYXQsIGl0IHdhcw0KPiAt
LklSIGNvbXBhdCAuDQo+ICtCZWZvcmUgdGhhdCwNCj4gK2l0IHdhcw0KPiArLklSIFwlY29t
cGF0IC4NCj4gICAuVFANCj4gLS5CSSAiXC1DICIgY2FjaGUNCj4gKy5CSSBcLUNcfiBjYWNo
ZQ0KPiAgIFVzZQ0KPiAgIC5JIGNhY2hlDQo+ICAgaW5zdGVhZCBvZg0KPiAgIC5JUiAvZXRj
L2xkLnNvLmNhY2hlIC4NCj4gICAuVFANCj4gLS5CSSAiXC1mICIgY29uZg0KPiArLkJJIFwt
Zlx+IGNvbmYNCj4gICBVc2UNCj4gICAuSSBjb25mDQo+ICAgaW5zdGVhZCBvZg0KPiAgIC5J
UiAvZXRjL2xkLnNvLmNvbmYgLg0KPiAtLlwiIEZJWE1FIGdsaWJjIDIuNyBhZGRlZCAtaQ0K
DQpBbmQgdGhpcyBpcyB3aHkgY29tbWVudHMgYXJlIGhhcm1mdWwuICBJIGZpbnQgaXQgcmF0
aGVyIHVuY29tbW9uIGZvciBjb21tZW50cyB0byANCmJlIHVwLXRvLWRhdGUgd2l0aCB0aGUg
Y29kZSA6UA0KDQo+ICAgLlRQDQo+IC0uQlIgXC1pICIsICIgXC1cLWlnbm9yZVwtYXV4XC1j
YWNoZQ0KPiArLkIgXC1pDQo+ICsuVFENCj4gKy5CIFwtXC1pZ25vcmVcLWF1eFwtY2FjaGUN
Cj4gICAoU2luY2UgZ2xpYmMgMi43KQ0KPiAtLlwiICAgICAgICAgICAgIGNvbW1pdCAyN2Q5
ZmZkYTE3ZGY0ZDIzODg2ODdhZmQxMjg5Nzc3NGZkZTM5YmNjDQo+ICsuXCIgY29tbWl0IDI3
ZDlmZmRhMTdkZjRkMjM4ODY4N2FmZDEyODk3Nzc0ZmRlMzliY2MNCj4gICBJZ25vcmUgYXV4
aWxpYXJ5IGNhY2hlIGZpbGUuDQo+ICAgLlRQDQo+ICAgLkIgXC1sDQo+IEBAIC0xNTQsMzEg
KzE3Nyw0MCBAQCBJbXBsaWVzDQoNClsuLi5dDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------5zlTc6u60N77bhsSAr5M4bxS--

--------------60Aizv6Z98kJKN6kY0n6fcfn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO1cHkACgkQnowa+77/
2zIoxBAAooQbm7QLap2QN78A1FxfR1L9XpbA0hOcohasM0woKu5u4+0F4kwUSZI1
n31Kd6ZdcsFbeJ+cNkV6XJUQVS/ZLeiZgmkpD0aFDWz7446qQG2mTUy01BBA+sPh
gCEpWo1iJsAbYxuMsnOD6w9T8+ZWnfv6PYH9C/jQr9Y2nqTJz8pMmrf8C7IXByb/
E0+qhngNkNtnLSgNktNLll+XLRPqXH62e74FtutWH7UPNnxfedqcDC9tUyr4cE2r
BiJkijmAcXu7QCbclC/HOvtwKALeR7RHRGjjTsx8VQ0w9TY0PahpCvNRQYuoBw0o
xhv0RaFZY7dhs9QO5QOHNuDargawrrHDiSD4w9U3HF9MvStvLzffcphWrnWfcsus
JXxrXrnbt5ySwDiuJcac1t41Uk1WpSBVz3AgH4SS1HS/FmOmpr7dG8ox1V66Bg2z
JbNrdDaOgUratM55K7182yGW8q10PTk1qGZtuXRM206kAsLGeWMiS+hNVtun0gLF
bUdB4r6keqmiUz4y/LdQReZnXcojTFZor5QXEbFdDxfr8hccJ8Q6XY1Ol0hAX6E3
Avf8Walmk53jZsmjv3ZOedB7UQyBpl/f2XfcT8v4EcjOs8g409NSvDLF31cnjeyg
0jyUJYArwXkYTqdNlMQqRvcflcHxbXaIwr8458evj9mJx9E28NY=
=5qX9
-----END PGP SIGNATURE-----

--------------60Aizv6Z98kJKN6kY0n6fcfn--
