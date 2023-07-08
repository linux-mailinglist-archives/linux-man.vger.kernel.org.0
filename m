Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F1DC74BEA6
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 19:50:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229458AbjGHRuA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 13:50:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjGHRt7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 13:49:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0224012A
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 10:49:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 905C560B82
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 17:49:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B0ECC433C8;
        Sat,  8 Jul 2023 17:49:55 +0000 (UTC)
Message-ID: <71ad8174-80cb-a494-1562-4ee3b788f817@gmail.com>
Date:   Sat, 8 Jul 2023 19:49:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] regex.3: "([^...])" is not an end of sentence
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Tom Schwindl <schwindl@posteo.de>
Cc:     linux-man@vger.kernel.org
References: <cndmjlonfcjogtpy7fsrtouncxn335fu52u35poylcwtxihztd@hq2fb3sqvizd>
 <CTWPJBPKXRDW.3KYB31EMTA2B5@morphine>
 <20230708135240.b2wmsbatluv2keko@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230708135240.b2wmsbatluv2keko@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KjQYCGkaTobww0CcVrNSAfiN"
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,NML_ADSP_CUSTOM_MED,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KjQYCGkaTobww0CcVrNSAfiN
Content-Type: multipart/mixed; boundary="------------3Oi8PPJBuUlSuvNfUEoxFacC";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Tom Schwindl <schwindl@posteo.de>
Cc: linux-man@vger.kernel.org
Message-ID: <71ad8174-80cb-a494-1562-4ee3b788f817@gmail.com>
Subject: Re: [PATCH] regex.3: "([^...])" is not an end of sentence
References: <cndmjlonfcjogtpy7fsrtouncxn335fu52u35poylcwtxihztd@hq2fb3sqvizd>
 <CTWPJBPKXRDW.3KYB31EMTA2B5@morphine>
 <20230708135240.b2wmsbatluv2keko@illithid>
In-Reply-To: <20230708135240.b2wmsbatluv2keko@illithid>

--------------3Oi8PPJBuUlSuvNfUEoxFacC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDcvOC8yMyAxNTo1MiwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4g
SGkgVG9tLA0KPiANCj4gQXQgMjAyMy0wNy0wOFQxMDoxMDowMSswMDAwLCBUb20gU2Nod2lu
ZGwgd3JvdGU6DQo+PiBPbiBTYXQgSnVsIDgsIDIwMjMgYXQgNToxMSBBTSBDRVNULCDQvdCw
0LEgd3JvdGU6DQo+Pj4gZGlmZiAtLWdpdCBhL21hbjMvcmVnZXguMyBiL21hbjMvcmVnZXgu
Mw0KPj4+IGluZGV4IDEzZTU0MGIyMi4uNjMwYzAzNjlkIDEwMDY0NA0KPj4+IC0tLSBhL21h
bjMvcmVnZXguMw0KPj4+ICsrKyBiL21hbjMvcmVnZXguMw0KPj4+IEBAIC0xMDksNyArMTA5
LDcgQEAgLlNTIENvbXBpbGF0aW9uDQo+Pj4gICBNYXRjaC1hbnktY2hhcmFjdGVyIG9wZXJh
dG9ycyBkb24ndCBtYXRjaCBhIG5ld2xpbmUuDQo+Pj4gICAuSVANCj4+PiAgIEEgbm9ubWF0
Y2hpbmcgbGlzdA0KPj4+IC0uUkIgKCBbXFtoYV0uLi5dICkNCj4+PiArLlJCICggW1xbaGFd
Li4uXCZdICkNCj4+PiAgIG5vdCBjb250YWluaW5nIGEgbmV3bGluZSBkb2VzIG5vdCBtYXRj
aCBhIG5ld2xpbmUuDQo+Pj4gICAuSVANCj4+PiAgIE1hdGNoLWJlZ2lubmluZy1vZi1saW5l
IG9wZXJhdG9yDQo+Pg0KPj4gSSBjYW5ub3QgcmVwcm9kdWNlIHRoaXMgb24gbXkgc3lzdGVt
OyBvbmx5IG9uZSBzcGFjZSBpcyByZW5kZXJlZC4NCj4gDQo+IFlvdSBtYXkgaGF2ZSB0aGUg
aW50ZXItc2VudGVuY2Ugc3BhY2UgYW1vdW50IGNvbmZpZ3VyZWQgdG8gemVyby5bMV0NCj4g
DQo+IEkgZ2V0IHRoZSBleHRyYSBzcGFjZSB3aXRoIGFsbCBvZiBEV0IgMy4zIG5yb2ZmLCBI
ZWlybG9vbSBEb2N0b29scw0KPiBucm9mZiwgbWFuZG9jLCBhbmQgZ3JvZmYuDQo+IA0KPiAk
IHByaW50ZiAnLmxsIDEwMG5cbkEgbm9ubWF0Y2hpbmcgbGlzdFxuKFtcKGhhLi4uXSlcbm5v
dCBjb250YWluaW5nIGEgbmV3bGluZSBkb2VzIG5vdCBtYXRjaCBhIG5ld2xpbmUuXG4nIHwg
Z3JvZmYgLVRhc2NpaSB8IGNhdCAtcw0KPiBBIG5vbm1hdGNoaW5nIGxpc3QgKFteLi4uXSkg
IG5vdCBjb250YWluaW5nIGEgbmV3bGluZSBkb2VzIG5vdCBtYXRjaCBhIG5ld2xpbmUuDQo+
IA0KPiBbY2QgRFdCXVsyXQ0KPiAkIHByaW50ZiAnLmxsIDEwMG5cbkEgbm9ubWF0Y2hpbmcg
bGlzdFxuKFtcKGhhLi4uXSlcbm5vdCBjb250YWluaW5nIGEgbmV3bGluZSBkb2VzIG5vdCBt
YXRjaCBhIG5ld2xpbmUuXG4nIHwgRFdCSE9NRT0uIC4vYmluL25yb2ZmIHwgY2F0IC1zDQo+
IEEgbm9ubWF0Y2hpbmcgbGlzdCAoWy4uLl0pICBub3QgY29udGFpbmluZyBhIG5ld2xpbmUg
ZG9lcyBub3QgbWF0Y2ggYSBuZXdsaW5lLg0KPiANCj4gW2NkIEhlaXJsb29tXQ0KPiAkIHBy
aW50ZiAnLmxsIDEwMG5cbkEgbm9ubWF0Y2hpbmcgbGlzdFxuKFtcKGhhLi4uXSlcbm5vdCBj
b250YWluaW5nIGEgbmV3bGluZSBkb2VzIG5vdCBtYXRjaCBhIG5ld2xpbmUuXG4nIHwgLi9i
aW4vbnJvZmYgfCBjYXQgLXMNCj4gQSBub25tYXRjaGluZyBsaXN0IChbXi4uLl0pICBub3Qg
Y29udGFpbmluZyBhIG5ld2xpbmUgZG9lcyBub3QgbWF0Y2ggYSBuZXdsaW5lLg0KPiANCj4g
JCBwcmludGYgJy5sbCAxMDBuXG5BIG5vbm1hdGNoaW5nIGxpc3RcbihbXChoYS4uLl0pXG5u
b3QgY29udGFpbmluZyBhIG5ld2xpbmUgZG9lcyBub3QgbWF0Y2ggYSBuZXdsaW5lLlxuJyB8
IG1hbmRvYyB8IGNhdCAtcw0KPiAoKSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKCkNCj4gDQo+IEEg
bm9ubWF0Y2hpbmcgbGlzdCAoW14uLi5dKSAgbm90IGNvbnRhaW5pbmcgYSBuZXdsaW5lIGRv
ZXMgbm90IG1hdGNoIGEgbmV3bGluZS4NCj4gDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICgpDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCj4gDQo+
IFsxXSBBZGRpbmcgdGhlIGZvbGxvd2luZyBsaW5lIHRvIHlvdXIgbWFuLmxvY2FsIGZpbGUg
aW4gYSBncm9mZg0KPiAgICAgIGluc3RhbGxhdGlvbiB3b3VsZCBkbyB0aGUgdHJpY2suDQo+
IA0KPiAgICAgIC5zcyAxMiAwDQo+IA0KPiAgICAgIEluIGdyb2ZmLCB0aGlzIGlzIGFsc28g
dGhlIGRlZmF1bHQgZm9yIHNldmVyYWwgImdyb2ZmIGxvY2FsZXMiLA0KPiAgICAgIGluY2x1
ZGluZyAiY3MiLCAiZGUiLCAiZnIiLCAic3YiLCBhbmQsIG5ldyBpbiBncm9mZiAxLjIzLjAs
ICJpdCIuDQo+IA0KPiBbMl0gSSByZXNwZWxsZWQgdGhlIFxbaGFdIHNwZWNpYWwgY2hhcmFj
dGVyIGVzY2FwZSBzZXF1ZW5jZSBpbiBsZWdhY3kNCj4gICAgICBmb3JtIGZvciBncmVhdGVy
IHBvcnRhYmlsaXR5LCBidXQgdGhlICJoYSIgc3BlY2lhbCBjaGFyYWN0ZXIgX25hbWVfDQo+
ICAgICAgaXMgbm90IHJlY29nbml6ZWQgYnkgRFdCIHRyb2ZmICh3aGljaCBoYXMgbm90IGJl
ZW4gbWFpbnRhaW5lZCBmb3INCj4gICAgICBhYm91dCAzMCB5ZWFycykuDQoNClRoYW5rcyB5
b3UgYWxsISAgUGF0Y2ggYXBwbGllZC4NCg0KQ2hlZXJzLA0KQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5
MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------3Oi8PPJBuUlSuvNfUEoxFacC--

--------------KjQYCGkaTobww0CcVrNSAfiN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpocEACgkQnowa+77/
2zIcExAAlblUBmH1c5gnHkcgzKteVFXcgALKvi0Cz2y8G67V5B1w1QmqJR/JOAAW
b9cPjcyYw+AmcYsodETY3BlJ2RJJe3cZACH/468XQGnNwL5Zcj2dYBCA66D5GXw1
JON+73PdqEtj1QUdTJMu6MYcpRz3u1QE/Ht6nxmNQ3GhulMkV1YvZjDv5vY9lolf
X5H3CGV3GbJh31OxeQpk/bl9PFIiOWJ94vJvZZa7ptNlqChv6u8f62SI9ejHVgaV
QSHhnQqDH3V8r9Z7f63J5NZvrXzHnTMcmTX5p4pwapm/PZxPUjMHplLnL9Si7DuZ
6L3wPF/62gJ42/34EuRYcH3nME2GMg4NL8fPVFroe1qBzBtPMqITfRz/hA/pVZ+Q
nvnv7xkWjds8NG3GmD/FjikI5R2JbANkDf+sv1oqQ0Qoy8eKkVEpPn52GnVSVXRF
3K+Xp2KoHaS0SE4AH6cVIqvGpKTsU0WCOipcu8YWIYPjm3lkuECU9rnbBtytKeJp
UvMJ/SGV+k5IpDKLnovOnxhdbHX+t6f3fmxcXM5A94qsikKtOkxKbUZ+2GjneEjT
J5U8tglENelCwEiHPNs8xRIt7w4WXnG3T/nM8nDPDkzCTg3JBQP+OaoS7ekXDYf4
e+z26Tpoxhy6E51aPgKCwBKNZB7P7nlldhJfXVsWHWX5W4lR8H4=
=mm0T
-----END PGP SIGNATURE-----

--------------KjQYCGkaTobww0CcVrNSAfiN--
