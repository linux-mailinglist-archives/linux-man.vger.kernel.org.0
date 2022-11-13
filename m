Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 519BE627001
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 15:02:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233810AbiKMOCw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 09:02:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231972AbiKMOCv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 09:02:51 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6493F25C7
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 06:02:50 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id cl5so12779219wrb.9
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 06:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=keD7VlpSu07Z5vJ+jcyg4FIHybWoYCOuHr9wsg1Ih9Q=;
        b=AvFFDPGk+PnnPZlWG+8R8R8KymPgi0t/VkRivrGyjl1SLcGZVqXn63cbSSoX7FyPAm
         AWDNGXjdQjPTgyMw93dwA+YQ1du0FU5UAvveO0kB/9tGQ01/Dz77iffD6E5P3TUxPUNE
         6BUL1dGyh6XuMI4ZHs2/E/o0PCX2kAOIWf8n1JSKLOivHV32rFw/zzHpPWbrwkmWI1Cw
         hYR7awASAJevhF0AZJG1V26m4IHHaAUqazsPvP+8Gxv3UAzC4roJbI65ZzWdZ/foCjAJ
         Cuo46An9G4hBNAcefWXD+x9PRtLeFmvvLMRzALyYsS2EJZaFa/B9qe43d5gK6Es/mbR5
         YIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=keD7VlpSu07Z5vJ+jcyg4FIHybWoYCOuHr9wsg1Ih9Q=;
        b=2fRAEXz2Tv+OcdeKAyNnLqHGCdaVORji+4nTKYeWy5Gh+xk0p6pboDBC88mRmsOO8S
         IYggTFecIQ4YGC0MqjobT2RNnyxcqR1UfTePo4b0MW1mlcHUavnArf/OGNKlpcstU5t6
         BumYsOmJSJa/9c5WJebTDE+NQiFiXRLl/8thChRwQ491rZk90Gbp3pxp/+3fujXIrPnR
         soCIyuW+iF/qAY3HGjlsfLDidmsz9Y3pGPLGh7iNlO2Am/oj86ghuk/Q34xOX741Afen
         Z+nscUxkC9Om9AJXQzpia4Y8WhPJw4kdiLanksT6wSAaCMOn+dS/diRr9KYr76Vcaj4i
         S5cw==
X-Gm-Message-State: ANoB5pldOTqIoOAFWTsWDyv808YU0k9YIwNTlWxoXzN+uzHFEV/HIFfs
        fMeT0EpwTs0/9Xus00lp0BQ=
X-Google-Smtp-Source: AA0mqf5yFllM0kBqu/SfrYMyxfv3nLv2/yZ9rAQIILlIa0tx1wGpuItydcztFs/GTsqbA/6fOzAPFg==
X-Received: by 2002:a5d:4ed2:0:b0:230:f0d2:e36 with SMTP id s18-20020a5d4ed2000000b00230f0d20e36mr5317097wrv.191.1668348168790;
        Sun, 13 Nov 2022 06:02:48 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f6-20020a05600c4e8600b003cfc02ab8basm16647827wmq.33.2022.11.13.06.02.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 06:02:48 -0800 (PST)
Message-ID: <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
Date:   Sun, 13 Nov 2022 15:02:40 +0100
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
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
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
In-Reply-To: <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0ukCoKx2SXNOsD1s7VLgc41D"
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
--------------0ukCoKx2SXNOsD1s7VLgc41D
Content-Type: multipart/mixed; boundary="------------EAzLK26OPt7PFB1X9vEfwrrQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
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
In-Reply-To: <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>

--------------EAzLK26OPt7PFB1X9vEfwrrQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEzLzIyIDE0OjMzLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
TWFydGluLA0KPiANCj4gT24gMTEvMTMvMjIgMTQ6MTksIEFsZWphbmRybyBDb2xvbWFyIHdy
b3RlOg0KPj4+IEJ1dCB0aGVyZSBhcmUgbm90IG9ubHkgc3ludGFjdGljYWwgcHJvYmxlbXMs
IGJlY2F1c2UNCj4+PiBhbHNvIHRoZSB0eXBlIG9mIHRoZSBwYXJhbWV0ZXIgbWlnaHQgYmVj
b21lIHJlbGV2YW50DQo+Pj4gYW5kIHRoZW4geW91IGNhbiBnZXQgY2lyY3VsYXIgZGVwZW5k
ZW5jaWVzOg0KPj4+DQo+Pj4gdm9pZCBmb28oY2hhciAoKmEpW3NpemVvZiAqLmJdLCBjaGFy
ICgqYilbc2l6ZW9mICouYV0pOw0KPj4NCj4+IFRoaXMgc2VlbXMgdG8gYmUgYSBkaWZmaWN1
bHQgc3RvbmUgaW4gdGhlIHJvYWQuDQo+Pg0KPj4+DQo+Pj4gSSBhbSBub3Qgc3VyZSB3aGF0
IHdvdWxkIHRoZSBiZXN0IHdheSB0byBmaXggaXQuIE9uZQ0KPj4+IGNvdWxkIHNwZWNpZml5
IHRoYXQgcGFyYW1ldGVycyByZWZlcnJlZCB0byBieQ0KPj4+IHRoZSAuaWRlbnRpZmVyIHN5
bnRheCBtdXN0IG9mIHNvbWUgaW50ZWdlciB0eXBlIGFuZA0KPj4+IHRoYXQgdGhlIHN1Yi1l
eHByZXNzaW9uIC5pZGVudGlmZXIgaXMgYWx3YXlzDQo+Pj4gY29udmVydGVkIHRvIGEgJ3Np
emVfdCcuDQo+Pg0KPj4gVGhhdCBtYWtlcyBzZW5zZSwgYnV0IHRoZW4gb3Zlcm5pZ2h0IHNv
bWUgcXVpdGUgdXNlZnVsIHRoaW5nIGNhbWUgdG8gbXkgbWluZCANCj4+IHRoYXQgd291bGQg
bm90IGJlIHBvc3NpYmxlIHdpdGggdGhpcyBsaW1pdGF0aW9uOg0KPj4NCj4+DQo+PiA8aHR0
cHM6Ly9zb2Z0d2FyZS5jb2RpZGFjdC5jb20vcG9zdHMvMjg1OTQ2Pg0KPj4NCj4+IGNoYXIg
Kg0KPj4gc3RwZWNweShjaGFyIGRzdFsuZW5kIC0gLmRzdF0sIGNoYXIgKnNyYywgY2hhciBl
bmRbMV0pDQoNCkhlaCwgSSBnb3QgYW4gb2ZmLWJ5LW9uZSBlcnJvci4gIEl0IHNob3VsZCBi
ZSBkc3RbLmVuZCAtIC5kc3QgKyAxXSwgb2YgY291cnNlLCANCmFuZCB0aGVuIHRoZSByZXN1
bHQgb2YgdGhlIHdob2xlIGV4cHJlc3Npb24gd291bGQgYmUgMCwgd2hpY2ggaXMgZmluZSBh
cyBzaXplX3QuDQoNClNvLCBuZXZlciBtaW5kLg0KDQo+PiB7DQo+PiDCoMKgwqDCoMKgZm9y
ICgvKiB2b2lkICovOyBkc3QgPD0gZW5kOyBkc3QrKykgew0KPj4gwqDCoMKgwqDCoMKgwqDC
oCAqZHN0ID0gKnNyYysrOw0KPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAoKmRzdCA9PSAnXDAn
KQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBkc3Q7DQo+PiDCoMKgwqDC
oMKgfQ0KPj4gwqDCoMKgwqDCoC8qIFRydW5jYXRpb24gZGV0ZWN0ZWQgKi8NCj4+IMKgwqDC
oMKgwqAqZW5kID0gJ1wwJzsNCj4+DQo+PiAjaWYgIWRlZmluZWQoTkRFQlVHKQ0KPj4gwqDC
oMKgwqDCoC8qIENvbnN1bWUgdGhlIHJlc3Qgb2YgdGhlIGlucHV0IHN0cmluZy4gKi8NCj4+
IMKgwqDCoMKgwqB3aGlsZSAoKnNyYysrKSB7fTsNCj4+ICNlbmRpZg0KPj4NCj4+IMKgwqDC
oMKgwqByZXR1cm4gZW5kICsgMTsNCj4+IH0NCg0KPiANCj4gQW5kIEkgZm9yZ290IHRvIHNh
eSBpdDrCoCBEZWZhdWx0IHByb21vdGlvbnMgcmFuayBoaWdoIChwcm9iYWJseSB0aGUgaGln
aGVzdCkgaW4gDQo+IG15IGxpc3Qgb2YgbW9zdCBoYXRlZCBmZWF0dXJlc15XYnVncyBpbiBD
LsKgIEkgd291bGRuJ3QgY29udmVydCBpdCB0byBzaXplX3QsIGJ1dCANCj4gcmF0aGVyIGZv
bGxvdyBub3JtYWwgcHJvbW90aW9uIHJ1bGVzLg0KPiANCj4gU2luY2UgeW91IGNhbiB1c2Ug
YW55dGhpbmcgYmV0d2VlbiBJTlRNQVhfTUlOIGFuZCBVSU5UTUFYX01BWCBmb3IgYWNjZXNz
aW5nIGFuIA0KPiBhcnJheSAod2hpY2ggdG9vayBtZSBzb21lIHRpbWUgdG8gdW5kZXJzdGFu
ZCksIEknZCBhbHNvIGFsbG93IHRoZSBzYW1lIGhlcmUuIFNvLCANCj4gdGhlIHR5cGUgb2Yg
dGhlIGV4cHJlc3Npb24gYmV0d2VlbiBbXSBjb3VsZCBwZXJmZWN0bHkgYmUgc2lnbmVkIG9y
IHVuc2lnbmVkLg0KPiANCj4gU28sIHlvdSBjb3VsZCB1c2Ugc2l6ZV90IGZvciB2ZXJ5IGhp
Z2ggaW5kaWNlcywgb3IgZS5nLiBwdHJkaWZmX3QgaWYgeW91IHdhbnQgdG8gDQo+IGFsbG93
IG5lZ2F0aXZlIG51bWJlcnMuwqAgSW4gdGhlIGZ1bmN0aW9uIGFib3ZlLCBzaW5jZSBkc3Qg
Y2FuIGJlIGEgcG9pbnRlciB0byANCj4gb25lLXBhc3QtdGhlLWVuZCAoaXQgcmVwcmVzZW50
cyBhIHByZXZpb3VzIHRydW5jYXRpb247IHRoYXQncyB3aHkgdGhlIHRlc3QgDQo+IGRzdDw9
ZW5kKSwgZm9yY2luZyBhIHNpemVfdCBjb252ZXJzaW9uIHdvdWxkIGRpc2FsbG93IHRoYXQg
c3ludGF4Lg0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------EAzLK26OPt7PFB1X9vEfwrrQ--

--------------0ukCoKx2SXNOsD1s7VLgc41D
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNw+QAACgkQnowa+77/
2zJ8Yg//WKZQzCBvq9lhwXOWnH+7MYwZHbiJcqVvEPntii9IzoRPYpoM0ay3JyZq
S8ChGNPJBVH4YYbacnLZwbBbqazC3I18Xp8Ue2gRyILtjC7h89jAkbo5QodrBtjf
ZYic/w5zGN6E6qz6LpqW/Avwily/E2o8MTl0OXVuhRYaZbdex+gEL3C7fa5IPNMh
seU6mtSbI3AIDxZURnx3k6jtGTHNq8rkYFfP5EpQvg9/+UH8Tlhb8NEPirjezlGR
QHXDXlgbOSaIRDR6Xufh7aZvvgCRk0LStXYpUI16GMdLKtz3HpMRrICzL6pY2gFQ
Gb/45cStJBsGVxCDnWPs8KJDj4EszG2nLQE9fbSgnh7zIJV/+CeY0B/HVqAhQCBb
gDsYsjB6VHwx6SRkyaKFb0X+iC5NNGJNkxVfBjDOkDB7NIjANJMim0E3Xlw++sNU
uoIT/NE1V98c2XdUNm6GOQ3XCnXV8d9bOUHC2T1jUmoZeb2brH5ZInIdbitRm8XK
IcOlxPu3nsu5BoOZfY9ux6fUiyEU4MNZcfzj/AlzKpu+9yM3T1Y36+bl4TqmiYGC
14CcA/VJn35QPE9+OQiIsNNmtKn5tRkhmroTJ9NgyPJsEoXjqVDmRTjDEBaAOCFV
nsXl+yXejjrcpj48TUuZN+PMptKFfXpZbDbziTK4xUK2/tgH7vw=
=NytS
-----END PGP SIGNATURE-----

--------------0ukCoKx2SXNOsD1s7VLgc41D--
