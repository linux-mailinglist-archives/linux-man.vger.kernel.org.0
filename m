Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA19C62D706
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 10:31:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239224AbiKQJbA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Nov 2022 04:31:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233466AbiKQJa7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Nov 2022 04:30:59 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83587682A1
        for <linux-man@vger.kernel.org>; Thu, 17 Nov 2022 01:30:58 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id j15so2225012wrq.3
        for <linux-man@vger.kernel.org>; Thu, 17 Nov 2022 01:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6fvlc4xirrrL7peVDqbfw16YyhuQ9zzkw4SpXmQcYFA=;
        b=hjlGveikwPQ01qpsHEdeOB1j1oQ2Z5nLkc4za6PAxMW35yW22WV7nhqWL7R9jHzia8
         nsBqVSkSU4Dq92UsqG8Gle5NWyxOHUVffi+DsMnCjlc8OnR/NT3b4jnvFIu42COD/Hid
         j7yrggLQ14DWEYTFDJNd9ULKW928orTVQZaSFeDMr4os9l1ryDc1N7/b057NnW87h5QW
         0rshCJPhfdAImuKZj6FMVGhW0p03cMcN35YFuDVLv8oY1JS9+4Fb6lhnl7GiHIybHiLf
         iP9lGF9pyzHNlBUyK9VvLMbdXuLfVVlPq4MtTCN8P2KUx6VufKs7WLeRZ1c08RiP+oeu
         G84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6fvlc4xirrrL7peVDqbfw16YyhuQ9zzkw4SpXmQcYFA=;
        b=DBjCPNLp4Y9aBjyUHxUw1QBur/pW4XBN1JKKn6qid/3Bs+trYRhu2/Y1BKzkJQOEdz
         v/puZRwzvvnVSFAk02w6UJRkMuYUG2jsN41UZmfQJvvpHyH2+y5tKpoyW6ZF224hlr1F
         KQxvN/Hy9Crjkv3fmt/neLK3mKoyEyMHKMJh0HjHg35kGDEusBor1Wv2r1Vn6FrMX/wp
         tweBH1VwKdpL+ecw+SfMU8Cu8ZivpDO3XHuW/ehOW1GEvj78oRGA1YVNyzbDqfpHt+nP
         f2SmjaNbCWkxfKvIR0H8j1QZqFOrPCyfguhHd/4ETezTOFHexO1w0073B8fQpi8c/ON5
         eVyw==
X-Gm-Message-State: ANoB5plqFAp/HgiPN6GyzEXh/9yyME/hWCfciNd7ocL8m78dl8SxKYrR
        4u/zpWZUzgSOanjxTvrb8qY=
X-Google-Smtp-Source: AA0mqf6jluqBSnc+xpRp0BaT89B4CzaZ0aGEZHB00FlfZiia73Q0/TX/zV0KcQFXNwyQB2RvjhgGVA==
X-Received: by 2002:a5d:58cc:0:b0:236:5c6c:1e06 with SMTP id o12-20020a5d58cc000000b002365c6c1e06mr877247wrf.156.1668677457085;
        Thu, 17 Nov 2022 01:30:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y10-20020adfe6ca000000b00236860e7e9esm392887wrm.98.2022.11.17.01.30.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Nov 2022 01:30:56 -0800 (PST)
Message-ID: <36f25d72-4c41-dcf7-72ba-91135162edc5@gmail.com>
Date:   Thu, 17 Nov 2022 10:30:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v5] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Content-Language: en-US
To:     Thomas Voss <mail@thomasvoss.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <89372a6f-3339-f81d-28c3-1ca07b3c46d4@gmail.com>
 <20221117005343.22274-1-mail@thomasvoss.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221117005343.22274-1-mail@thomasvoss.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4iuEiU5KHYqeteiKXrVcMYvs"
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
--------------4iuEiU5KHYqeteiKXrVcMYvs
Content-Type: multipart/mixed; boundary="------------9HKDh5Cc6nHM0TbuWKOWM3Zg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Thomas Voss <mail@thomasvoss.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com
Message-ID: <36f25d72-4c41-dcf7-72ba-91135162edc5@gmail.com>
Subject: Re: [PATCH v5] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
References: <89372a6f-3339-f81d-28c3-1ca07b3c46d4@gmail.com>
 <20221117005343.22274-1-mail@thomasvoss.com>
In-Reply-To: <20221117005343.22274-1-mail@thomasvoss.com>

--------------9HKDh5Cc6nHM0TbuWKOWM3Zg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpPbiAxMS8xNy8yMiAwMTo1MywgVGhvbWFzIFZvc3Mgd3JvdGU6DQo+
IFNpZ25lZC1vZmYtYnk6IFRob21hcyBWb3NzIDxtYWlsQHRob21hc3Zvc3MuY29tPg0KPiAt
LS0NCj4gT2ssIHN1cmVseSB0aGlzIGlzIHRoZSBsYXN0IG9uZSENCg0KUGF0Y2ggYXBwbGll
ZC4gIFRoYW5rcyENCg0KDQo+ICBUaW1lIHRvIHJlYWQgbWFuLXBhZ2VzKDcpLg0KDQo6KQ0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gICBtYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNj
b25zdCB8ICAxICsNCj4gICBtYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNjb25zdCB8IDYwICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAgMiBmaWxlcyBjaGFuZ2Vk
LCA2MSBpbnNlcnRpb25zKCspDQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1hbjNjb25zdC9F
WElUX0ZBSUxVUkUuM2NvbnN0DQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1hbjNjb25zdC9F
WElUX1NVQ0NFU1MuM2NvbnN0DQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuM2NvbnN0L0VYSVRf
RkFJTFVSRS4zY29uc3QgYi9tYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNjb25zdA0KPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAuLmJhMGQ2MmRmOQ0KPiAtLS0g
L2Rldi9udWxsDQo+ICsrKyBiL21hbjNjb25zdC9FWElUX0ZBSUxVUkUuM2NvbnN0DQo+IEBA
IC0wLDAgKzEgQEANCj4gKy5zbyBtYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNjb25zdA0KPiBk
aWZmIC0tZ2l0IGEvbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29uc3QgYi9tYW4zY29uc3Qv
RVhJVF9TVUNDRVNTLjNjb25zdA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAw
MDAwMDAwMDAuLmZkMzU5NWY4Mw0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL21hbjNjb25z
dC9FWElUX1NVQ0NFU1MuM2NvbnN0DQo+IEBAIC0wLDAgKzEsNjAgQEANCj4gKy5cIiBDb3B5
cmlnaHQgKGMpIDIwMjIgYnkgVGhvbWFzIFZvc3MgPG1haWxAdGhvbWFzdm9zcy5jb20+DQo+
ICsuXCINCj4gKy5cIiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTGludXgtbWFuLXBhZ2Vz
LWNvcHlsZWZ0DQo+ICsuXCINCj4gKy5cIg0KPiArLlRIIEVYSVRfU1VDQ0VTUyAzY29uc3Qg
KGRhdGUpICJMaW51eCBtYW4tcGFnZXMgKHVucmVsZWFzZWQpIg0KPiArLlNIIE5BTUUNCj4g
K0VYSVRfU1VDQ0VTUywgRVhJVF9GQUlMVVJFIFwtIHRlcm1pbmF0aW9uIHN0YXR1cyBjb25z
dGFudHMNCj4gKy5TSCBMSUJSQVJZDQo+ICtTdGFuZGFyZCBDIGxpYnJhcnkNCj4gKy5SSSAo
IGxpYmMgKQ0KPiArLlNIIFNZTk9QU0lTDQo+ICsubmYNCj4gKy5CICNpbmNsdWRlIDxzdGRs
aWIuaD4NCj4gKy5QUA0KPiArLkJSICIjZGVmaW5lIEVYSVRfU1VDQ0VTUyAgIiAgMA0KPiAr
LkJSICIjZGVmaW5lIEVYSVRfRkFJTFVSRSAgIiAgIi8qIG5vbnplcm8gKi8iDQo+ICsuZmkN
Cj4gKy5TSCBERVNDUklQVElPTg0KPiArLkIgRVhJVF9TVUNDRVNTDQo+ICthbmQNCj4gKy5C
IEVYSVRfRkFJTFVSRQ0KPiArcmVwcmVzZW50IGEgc3VjY2Vzc2Z1bCBhbmQgdW5zdWNjZXNz
ZnVsIGV4aXQgc3RhdHVzIHJlc3BlY3RpdmVseSwNCj4gK2FuZCBjYW4gYmUgdXNlZCBhcyBh
cmd1bWVudHMgdG8gdGhlDQo+ICsuQlIgZXhpdCAoMykNCj4gK2Z1bmN0aW9uLg0KPiArLlNI
IENPTkZPUk1JTkcgVE8NCj4gK0M5OSBhbmQgbGF0ZXI7DQo+ICtQT1NJWC4xLTIwMDEgYW5k
IGxhdGVyLg0KPiArLlNIIEVYQU1QTEVTDQo+ICsuXCIgU1JDIEJFR0lOIChFWElUX1NVQ0NF
U1MuYykNCj4gKy5FWA0KPiArI2luY2x1ZGUgPHN0ZGlvLmg+DQo+ICsjaW5jbHVkZSA8c3Rk
bGliLmg+DQo+ICsNCj4gK2ludA0KPiArbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQ0K
PiArew0KPiArICAgIEZJTEUgKmZwOw0KPiArDQo+ICsgICAgaWYgKGFyZ2MgIT0gMikgew0K
PiArICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIlVzYWdlOiAlcyA8ZmlsZT5cZW4iLCBhcmd2
WzBdKTsNCj4gKyAgICAgICAgZXhpdChFWElUX0ZBSUxVUkUpOw0KPiArICAgIH0NCj4gKw0K
PiArICAgIGlmICgoZnAgPSBmb3Blbihhcmd2WzFdLCAiciIpKSA9PSBOVUxMKSB7DQo+ICsg
ICAgICAgIHBlcnJvcihhcmd2WzFdKTsNCj4gKyAgICAgICAgZXhpdChFWElUX0ZBSUxVUkUp
Ow0KPiArICAgIH0NCj4gKw0KPiArICAgIC8qIE90aGVyIGNvZGUgb21pdHRlZCAqLw0KPiAr
DQo+ICsgICAgZmNsb3NlKGZwKTsNCj4gKyAgICBleGl0KEVYSVRfU1VDQ0VTUyk7DQo+ICt9
DQo+ICsuRUUNCj4gKy5cIiBTUkMgRU5EDQo+ICsuU0ggU0VFIEFMU08NCj4gKy5CUiBleGl0
ICgzKSwNCj4gKy5CUiBzeXNleGl0cy5oICgzaGVhZCkNCg0KLS0gDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------9HKDh5Cc6nHM0TbuWKOWM3Zg--

--------------4iuEiU5KHYqeteiKXrVcMYvs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1/08ACgkQnowa+77/
2zKZhQ//ehkDayAKFPmcWSS8+8S8d0rvvGMf9OgrbufDEb2wIpmw73JwvslvXkEe
JJclY0+5UkWUnmta5yHWWMCKamm+Ih86ZJjf+luYsGqUoUDh56NDejpPIEWiglcN
p3vcya8z4wSGZGwbKOGi0T8A9/Ju/vT8LcCiRe6A85ZiSJl0Xg/oPDzMkQZq3Lf7
qi7g8HPwTzHQsoo7bgwra2MpktZwLtz9tPJ7wJaSKx1GLyp/Wp00uUqiXtxRSe1p
J0sXX+0AX7naykCaKbhWfktrFdkiEcq6rnWsww2MP2IPJ2wFwL3c5GMWSYZj6YAR
aEIsDBJFerYxTjBaYAbxRwCS+MyHV+KEMBaJzNVkaIg7qWTPntWOMLW0cX1KgVGk
9SW3KfaZSvgGkb98mucrOA3SK4a0jMKml0vGwMq1080jSJaVlFiFsKp3jsojL39k
L6ncAR8xyrHL4BgSolac3D92tZ5GEbkJPWGBE1/md5pLbUqJcJYezhSL/m2d8GQ8
xQ3egyAYZgwigXP6lC1HasXDBiDUBZxkntPxjwwQxu5TdMdanDxRWwdA1ddsAoZH
9N9Leek4amQBWOeSoJPz1B98aGAO29bdRZk+7PCjp9Qays7RaHcl27CJvpcbeGNv
lFT/GLpwAOr441e4uQVZucPQ7XCa6jCbZIBITZ/6k3xMXxAYj0k=
=9i6E
-----END PGP SIGNATURE-----

--------------4iuEiU5KHYqeteiKXrVcMYvs--
