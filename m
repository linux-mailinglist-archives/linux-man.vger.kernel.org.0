Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74D0A594E10
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233891AbiHPBex (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 21:34:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233932AbiHPBea (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 21:34:30 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFBD7F47C0
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:24:51 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id j7so10438303wrh.3
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=/Ea/RT//AA442A9hcQXs+NEU7acT/a3q6oEy5izZrfs=;
        b=ftWlX3d1kW85gFn7eP/LBB3Xug8mzLtUa9/UB4cZ/RVEgW5YCxbafPzEUmi1tk02Y+
         khkIzpgiejBh3POkTPVsBQxlidPJ4J6ikfj8a9nV8i24IWqD+9pUjeQdIPVKI29pdE+Q
         2qsefqb74jh3WHT3DwZjTTQviq6/ywaqp0X0yUT+AOcfVVzRwisvrL9QRh5toFZE/MYb
         nVn/mcitrb6iylwQ2maDPIgY6tIk/kiCNYonYjn1ahRnCILLTJui+LZh/JYfd+aJqBqP
         tAoxKoSw6J4WbnS1qUGb2CGIw1+ncPHs8OBj8dwCF5klE3tFuxE+qe/bhpNwC/3HfXNY
         5gNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=/Ea/RT//AA442A9hcQXs+NEU7acT/a3q6oEy5izZrfs=;
        b=hXtOntTVUygkeDavSvb+4bpyDxb9zW/SavCNQQnHPodBt1+KsCW/42K+xcI/j4LrOD
         oGFUL7Bwc3sFxEBrmQHW02Atr2pLN3KiXS3HzsJeQ+GCmMCQsQtX2vypwi29mVwoOZWt
         d/4jVpCMasy5a9KTyJ6sNHJi3ZMY+hnJULiqPCRweSeZGMTGipOwGf9AcnlaB3yWifwY
         CXd7i6Mx3WsDbG4MQbbQd8rGTIs2ncPo6TzcXJSxE/ExVxYMQ08RsQguXs0cpICl0gnx
         hC8TyRimYx0XJ6yb0RZ+Fb8BgI17/gCzeTUzzBP09spOKCZPcIRcXfBo6kDLfZhYmxZX
         Pfvg==
X-Gm-Message-State: ACgBeo27QNHzVXqnHenO6ZR27azQnLTWs2a1og95kDbbC+eriBmIQ3yc
        lVKKqtkiHv9ATa7FxRMcTOI7Qu8wSrI=
X-Google-Smtp-Source: AA6agR5m1xmnJc5ojZoF+Ga2jnE0IOhDWhIWZEYPz6e9zr07te35hPsxQO56LDw+YFeH/PJCwwHh7Q==
X-Received: by 2002:a05:6000:c1:b0:220:5c10:5c51 with SMTP id q1-20020a05600000c100b002205c105c51mr9212286wrx.668.1660598689957;
        Mon, 15 Aug 2022 14:24:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n5-20020a05600c3b8500b003a302fb9df7sm10847794wms.21.2022.08.15.14.24.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:24:49 -0700 (PDT)
Message-ID: <92d7b05a-2532-6fb9-ff4b-eb815e98f3c8@gmail.com>
Date:   Mon, 15 Aug 2022 23:24:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2 3/3] getaddrinfo_a.3: gnu.cz => gnu.org
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <05b8faf09e16a4d5b3510c8adde3615884c2278f.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <05b8faf09e16a4d5b3510c8adde3615884c2278f.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------L0P0qRxgU6sCWNjX7ifApkis"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------L0P0qRxgU6sCWNjX7ifApkis
Content-Type: multipart/mixed; boundary="------------UcRgpJwTkcWVYHDO45Je6XNu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <92d7b05a-2532-6fb9-ff4b-eb815e98f3c8@gmail.com>
Subject: Re: [PATCH v2 3/3] getaddrinfo_a.3: gnu.cz => gnu.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <05b8faf09e16a4d5b3510c8adde3615884c2278f.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <05b8faf09e16a4d5b3510c8adde3615884c2278f.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>

--------------UcRgpJwTkcWVYHDO45Je6XNu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA4LzIvMjIgMTk6MjgsINC90LDQsSB3cm90ZToNCj4gZ251LmN6
IGV4aXN0cyBhdCBhIGRpZmZlcmVudCBhZGRyZXNzIChidXQgaXMgdW5yZWFjaGFibGUgdGhl
cmUpLA0KPiBhbmQgdGhlIGFkZHJlc3Mgd2UgaGFkIGlzIGFuIHVuYXNzaWduZWQgY29vbGhv
dXNpbmcgb25lDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8
bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0KDQpQYXRjaCBhcHBsaWVkIChv
bmx5IDMvMykuDQoNCkkgd291bGQgYWxzbyBhcHBseSAyLzMsIGJ1dCBpdCBtYWtlcyBtb3Jl
IHNlbnNlIGFmdGVyIDEvMywgd2hpY2ggSSdtIG5vdCANCmFwcGx5aW5nIGluIHYyLCBzbyBJ
J2xsIHdhaXQgZm9yIHlvdSB0byBzZW5kIHYzIGZvciAxLzMgYW5kIDIvMy4NCg0KVGhhbmtz
LA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMy9nZXRhZGRyaW5mb19hLjMgfCAxMiArKysr
KystLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvZ2V0YWRkcmluZm9fYS4zIGIvbWFu
My9nZXRhZGRyaW5mb19hLjMNCj4gaW5kZXggNGE1YjM4MDc4Li4yNTI4M2RjZTkgMTAwNjQ0
DQo+IC0tLSBhL21hbjMvZ2V0YWRkcmluZm9fYS4zDQo+ICsrKyBiL21hbjMvZ2V0YWRkcmlu
Zm9fYS4zDQo+IEBAIC0zMjMsMTAgKzMyMywxMCBAQCBUaGUgcHJvZ3JhbSBtaWdodCBiZSB1
c2VkIGxpa2UgdGhpczoNCj4gICAuUFANCj4gICAuaW4gKzRuDQo+ICAgLkVYDQo+IC0kIFxm
Qi4vYS5vdXQgbWlycm9ycy5rZXJuZWwub3JnIGVub2VudC5saW51eGZvdW5kYXRpb24ub3Jn
IGdudS5jelxmUA0KPiArJCBcZkIuL2Eub3V0IG1pcnJvcnMua2VybmVsLm9yZyBlbm9lbnQu
bGludXhmb3VuZGF0aW9uLm9yZyBnbnUub3JnXGZQDQo+ICAgbWlycm9ycy5rZXJuZWwub3Jn
OiAxMzkuMTc4Ljg4Ljk5DQo+ICAgZW5vZW50LmxpbnV4Zm91bmRhdGlvbi5vcmc6IE5hbWUg
b3Igc2VydmljZSBub3Qga25vd24NCj4gLWdudS5jejogODcuMjM2LjE5Ny4xMw0KPiArZ251
Lm9yZzogMjA5LjUxLjE4OC4xMTYNCj4gICAuRUUNCj4gICAuaW4NCj4gICAuUFANCj4gQEAg
LTQwMywxOSArNDAzLDE5IEBAIEFuIGV4YW1wbGUgc2Vzc2lvbiBtaWdodCBsb29rIGxpa2Ug
dGhpczoNCj4gICAuaW4gKzRuDQo+ICAgLkVYDQo+ICAgJCBcZkIuL2Eub3V0XGZQDQo+IC0+
IGEgbWlycm9ycy5rZXJuZWwub3JnIGVub2VudC5saW51eGZvdW5kYXRpb24ub3JnIGdudS5j
eg0KPiArPiBhIG1pcnJvcnMua2VybmVsLm9yZyBlbm9lbnQubGludXhmb3VuZGF0aW9uLm9y
ZyBnbnUub3JnDQo+ICAgPiBjIDINCj4gLVsyXSBnbnUuY3o6IFJlcXVlc3Qgbm90IGNhbmNl
bGVkDQo+ICtbMl0gZ251Lm9yZzogUmVxdWVzdCBub3QgY2FuY2VsZWQNCj4gICA+IHcgMCAx
DQo+ICAgWzAwXSBtaXJyb3JzLmtlcm5lbC5vcmc6IEZpbmlzaGVkDQo+ICAgPiBsDQo+ICAg
WzAwXSBtaXJyb3JzLmtlcm5lbC5vcmc6IDEzOS4xNzguODguOTkNCj4gICBbMDFdIGVub2Vu
dC5saW51eGZvdW5kYXRpb24ub3JnOiBQcm9jZXNzaW5nIHJlcXVlc3QgaW4gcHJvZ3Jlc3MN
Cj4gLVswMl0gZ251LmN6OiA4Ny4yMzYuMTk3LjEzDQo+ICtbMDJdIGdudS5vcmc6IDIwOS41
MS4xODguMTE2DQo+ICAgPiBsDQo+ICAgWzAwXSBtaXJyb3JzLmtlcm5lbC5vcmc6IDEzOS4x
NzguODguOTkNCj4gICBbMDFdIGVub2VudC5saW51eGZvdW5kYXRpb24ub3JnOiBOYW1lIG9y
IHNlcnZpY2Ugbm90IGtub3duDQo+IC1bMDJdIGdudS5jejogODcuMjM2LjE5Ny4xMw0KPiAr
WzAyXSBnbnUub3JnOiAyMDkuNTEuMTg4LjExNg0KPiAgIC5FRQ0KPiAgIC5pbg0KPiAgIC5Q
UA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------UcRgpJwTkcWVYHDO45Je6XNu--

--------------L0P0qRxgU6sCWNjX7ifApkis
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6uaAACgkQnowa+77/
2zJ/SQ/9E9XMFzd93/XGagXI0OGjrSdm9KIxovKPKJIRf03BLuZJh0O1TK7f0cPE
RHt4gIIOfFgLADrYXh65+mKF8ZMR1V9+TZp/GzLe/MXmciS1OF9pWwDN8B0Qcdf5
IjeSEBKScFGF/oSOAhjW2d8jibAd00DS0FIsbInLvAiN9ktQ5+mIZtq4f4YIqd4t
9DTqZbpWNS/GOo8NoqDr6RGSfByTWXWZdLxQ1clq1lTBBmm1iaLvrDq/RGjeGgaL
FPiDEmF12HjJj2cng9TqXqafC1hhZF5j1un2yjwgymAzAsBKrCBJYL2w4pv/38b5
r5igEjhKQ9urFoUdZsvwvcteJymoBXhDSWrzD3A32bLeD6ib/YUUih6pN5FmyMOk
ZpG/oRU1/28gFl1TIQnv/mzkFELjcKG5GrKjCwakbN4r8nOaK91NTx88iHOaZZZZ
O/kJvOmbmwpi/qPjLsUXmeRYo223nekJdJx4IlAxEBrD7Ld7MwFwkw4Mqb+nNpAj
8VvDlMCvn7wcAN4mO3l+TQf+mqW+2j9kISzH5p3cZGXOyI0QNIi6Vloq6u2nYYr2
ZGA5cDNhZWDrvixu5CTq+KX7qpcg96V4Rg7c+++1jZnOGJZ3sxgZdTZQJpKV6iUX
27lUpUcJi6RduITdIg8xxHl7LKUg49t1mJnpm1uLIT4L6QFaenc=
=t54B
-----END PGP SIGNATURE-----

--------------L0P0qRxgU6sCWNjX7ifApkis--
