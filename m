Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B79757A4AC
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 19:11:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233867AbiGSRLl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 13:11:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbiGSRLk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 13:11:40 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DBAE115F
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 10:11:39 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id c22so1174756wmr.2
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 10:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=G2AibbeTdZAUm09z1N7+sqnfPK6HNVxGgHs/a4knKO8=;
        b=YcSNQVGOrVCMOm7bl2HaufeOPVOpnx7Y1wapQPRVSUgHkrc/+REEpRtZq5IFjHo4rb
         K8CyQaIWr2p++ffV2nNkSHFgneqQMspdNjCbnOOYfG4ztfQWjjk+VMbOga63ObJMfjDX
         POeybQ3W35M9OOxBOWv8yhwCCEk3Wv9j/cYVn4LzdMLxWqQ3gQsDtyoD9wp6mBpD8fmm
         sSG2nBxvfP1sAuI6U1x9sNJ+lbrutcNW311Yx4h9QVARxU0N9ypIXSGPicbrdGrrLJZG
         arlloz8/ecmJFIga5Hs2QlX+RPZgPbVSkmzN1Dj6kim5giKqCZ5QZ9AyHCaVX+Ryr17U
         q+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=G2AibbeTdZAUm09z1N7+sqnfPK6HNVxGgHs/a4knKO8=;
        b=bPZLH6rmnJUqKUEr9GI0FqsC72fs4Up1hvYMf3wVlZJYV1rAYqv2oFMLyFNDH2o7FN
         E5BenZg5HaGKh1NfzbLB9n/uo2JGGOtWz+RZBai7qGg3dqASznjTJTyHMUgRks9TbUql
         QCfkgPVfdDouLmy0QbtZHNYCMbzOqZYzDOTchNXG38H/N17jtXBQOkVA5zGQZQm23MbF
         avDA4K0w9bN9CWbByV1fDmM+24zX3z+aqogeN7EynbSbIFZz/0wRAWR+cPNvYA/42r8p
         wdJl7pfoCNwNQlP0KqSgG3i4O04OLVkLexw0xDvnU+Ca/6IZtEBiD34FBOYIY5k5EoFb
         iScQ==
X-Gm-Message-State: AJIora+tgBnjocjpkeT8HbDypZ+u/TUE21osYzTwefmCaFaJ2qqFYogH
        us9DqCLJoF7gchIDaDiorYv9gbgjZ0g=
X-Google-Smtp-Source: AGRyM1stG3IlL1P75e989hlrQyO28RfzKvlfdNuM5SPj3CVipxoZ6zsEGN2xhS+3t9qt5nSOuo+lGA==
X-Received: by 2002:a7b:c417:0:b0:3a3:236f:9f98 with SMTP id k23-20020a7bc417000000b003a3236f9f98mr298139wmi.48.1658250697686;
        Tue, 19 Jul 2022 10:11:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id id15-20020a05600ca18f00b003a31f1edfa7sm5633748wmb.41.2022.07.19.10.11.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 10:11:36 -0700 (PDT)
Message-ID: <1827b181-9541-eb67-7ca5-dc385a5e73d3@gmail.com>
Date:   Tue, 19 Jul 2022 19:11:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v2 3/4] tm.3type: describe tm_zone, tm_gmtoff
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <79b8858b80acc770138afc505eecc08f90ea1be6.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <79b8858b80acc770138afc505eecc08f90ea1be6.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------iI1QtBu3BQNbLYm06069pIRS"
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
--------------iI1QtBu3BQNbLYm06069pIRS
Content-Type: multipart/mixed; boundary="------------QxY482tFwkqgCNvPoRDEvSHz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <1827b181-9541-eb67-7ca5-dc385a5e73d3@gmail.com>
Subject: Re: [PATCH v2 3/4] tm.3type: describe tm_zone, tm_gmtoff
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <79b8858b80acc770138afc505eecc08f90ea1be6.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <79b8858b80acc770138afc505eecc08f90ea1be6.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>

--------------QxY482tFwkqgCNvPoRDEvSHz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8xOS8yMiAxNzozNSwg0L3QsNCxIHdyb3RlOg0KPiAtLS0NCj4gICBtYW4zL3RtLjN0
eXBlIHwgNDggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYg
LS1naXQgYS9tYW4zL3RtLjN0eXBlIGIvbWFuMy90bS4zdHlwZQ0KPiBpbmRleCA3OGUwNWE0
MWEuLmU3ZTM5Y2M1YyAxMDA2NDQNCj4gLS0tIGEvbWFuMy90bS4zdHlwZQ0KPiArKysgYi9t
YW4zL3RtLjN0eXBlDQpbLi4uXQ0KPiBAQCAtNDgsMTAgKzc2LDMwIEBAIGluIEM5OS4NCj4g
ICAuU0ggQ09ORk9STUlORyBUTw0KPiAgIEM5MCBhbmQgbGF0ZXI7DQo+ICAgUE9TSVguMS0y
MDAxIGFuZCBsYXRlci4NCj4gKy5QUA0KPiArLklSIHRtX2dtdG9mZiAiIGFuZCAiIHRtX3pv
bmUNCg0KSSBwcmVmZXIgb25lIGlkZW50aWZpZXIgcGVyIGxpbmU6DQoNCi5JIGZvbw0KYW5k
DQouSSBiYXINCg0KPiArb3JpZ2luYXRlIGZyb20gNC4zQlNELVRhaG9lICh3aGVyZQ0KPiAr
LkkgdG1fem9uZQ0KPiAraXMgYQ0KPiArLklSICJjaGFyICoiICkuDQo+ICAgLlNIIE5PVEVT
DQo+ICAgLkkgdG1fc2VjDQo+ICAgY2FuIHJlcHJlc2VudCBhIGxlYXAgc2Vjb25kIHdpdGgg
dGhlIHZhbHVlDQo+ICAgLkJSIDYwIC4NCj4gKy5QUA0KPiArLkJSIHRpbWV6b25lICgzKSwN
Cj4gK2FzIGEgdmFyaWFibGUsIGlzIGFuIFhTSSBleHRlbnNpb246IHNvbWUgc3lzdGVtcyBw
cm92aWRlIHRoZSBWNy1jb21wYXRpYmxlDQo+ICsuXCIgRnJlZUJTRA0KPiArLkJSIHRpbWV6
b25lICgpDQo+ICtmdW5jdGlvbi4NCj4gK1RoZQ0KPiArLkkgdG1fZ210b2ZmDQo+ICtmaWVs
ZCBwcm92aWRlcyBhbiBhbHRlcm5hdGl2ZSAod2l0aCB0aGUgb3Bwb3NpdGUgc2lnbikgZm9y
IHRob3NlIHN5c3RlbXMuDQo+ICsuUFANCj4gKy5JIHRtX3pvbmUNCj4gK3BvaW50cyB0byBz
dGF0aWMgc3RvcmFnZSBhbmQgbWF5IGJlIG92ZXJyaWRlbiBvbiBzdWJzZXF1ZW50IGNhbGxz
IHRvDQo+ICsuQlIgbG9jYWx0aW1lICgzKQ0KPiArYW5kIHNpbWlsYXIgZnVuY3Rpb25zICh0
aGlzLCBob3dldmVyLCBuZXZlciBoYXBwZW5zIHVuZGVyIGdsaWJjKS4NCg0KSWYgeW91IHJl
b3JkZXIgaXQsIHlvdSBjYW4gcmVtb3ZlIGEgY29tYToNCg0KaG93ZXZlciwgdGhpcyBuZXZl
ciAuLi4NCg0KPiAgIC5TSCBTRUUgQUxTTw0KPiAgIC5CUiBjdGltZSAoMyksDQo+ICAgLkJS
IHN0cmZ0aW1lICgzKSwNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------QxY482tFwkqgCNvPoRDEvSHz--

--------------iI1QtBu3BQNbLYm06069pIRS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLW5cEACgkQnowa+77/
2zI6dhAAgZj0o1MOWLKtYFsGA52dM+bOCQNSIbdfY93Hf3VJvWhJMsNhCOclBU5m
xRI1iXoQ8TYBUP8XV990KfR5FTWxURm7Lss1IyiRvk76FUVWm3B6+pTiNN60kNjv
QTtBrjmF9a9t9WMF9y77I/f7eP+XED/zRGZ3+H25jCttY0TMingwoHdi8UZewxHk
Zb+TsqMHIV+Z8lxtrWLCB7x/+rg+QayYEb29ROq77FfQZukvBWsOc8CpmaOukmA/
kIQ9GLXQJq0EuQ/qPxk0aazyZulo84eCPfg6U0ONIHPTuC8cjOy7bjP2Z782t2RJ
hBbzlCkowdmLIFrg3j/LZLoNiDDkBmtaBPFTbPiI3fC0N6BxiAA/x0QP/ooOWP4v
CKY+e9GDD1XY1MDcQtj+tXfIOeQBbCYH3yPtrmltvic8Rd3wlETpjvseC1qLVhrC
dbb5l7z28KTgkC9Jv1/IwG779qHdVN5i9QBEP/HAafbfEn6Ni1wztsutSmMjvH05
a/b/YL6YA8MUOWhjzkCIFRNlLdbDs0O21RxvIDF0zarsKBS48Q/+pk0kZSTBOJbS
+LIm9gFG+CRUg7f5YL2wiFQlVRD8BK8Y9hf+bT45VYjWY5Lp5egMD6Gwc1Tye/zc
uOFO23y4qsTWjqcBqZ0FKUEWr98B5fFyxr70jT497nKWwEJUMd0=
=i2O3
-----END PGP SIGNATURE-----

--------------iI1QtBu3BQNbLYm06069pIRS--
