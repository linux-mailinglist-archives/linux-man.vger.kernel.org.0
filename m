Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 721A574BE72
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbjGHQ06 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:26:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHQ05 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:26:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A99E44
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:26:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6AFA660D3E
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:26:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C538CC433C8;
        Sat,  8 Jul 2023 16:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688833615;
        bh=r6MVFXm0KdrDVyqYgnXrpiR0HjUoM7crdIjJbYhSKds=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=V2v+7t2OLdclQq90fhqUZjscpzAYdhFZtZMJmzI2n23OeMEqa3eSj7DIMPgl61lpQ
         pmll6GLS25rVRBhVS2FfYtz7Tv+stOx1y0DMeLS2uRIIIn6b546DxUezLHqgEyluYM
         vJObsgGicr5fQ7Dyw4URrhyxuTXEl3W0ElIH8Yh5SCBYYaRRG+nU0/NYH6JvZwEOrG
         a3nQMXsq74nPxKd5qdAcS8FeSXOitfO4Er9sn375I8T7BhlPA2aI3oBUaJsSDPt9S0
         SPc+aHYxCAkc+gfTTvcFXgfwCho5s0lqrd4647fDpMWCpJ3xgY2OZtB5ZyxEiSdsTE
         c4e6b1+DIQXqg==
Message-ID: <7c0279c1-bbb8-c623-14d2-bb4d25966d28@kernel.org>
Date:   Sat, 8 Jul 2023 18:26:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] epoll_create.2: HISTORYise "max_user_instances" EMFILE
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <e62fj2mtcm3tj2vnl22fdbmtwajm2cbnx6uqlnibe5oajque67@24stcomulycd>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <e62fj2mtcm3tj2vnl22fdbmtwajm2cbnx6uqlnibe5oajque67@24stcomulycd>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------w2rbeoS6SZorYsCNEFK0xVme"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------w2rbeoS6SZorYsCNEFK0xVme
Content-Type: multipart/mixed; boundary="------------f6LgC3Rpt9nHZ9HPAbL3NYAl";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <7c0279c1-bbb8-c623-14d2-bb4d25966d28@kernel.org>
Subject: Re: [PATCH] epoll_create.2: HISTORYise "max_user_instances" EMFILE
References: <e62fj2mtcm3tj2vnl22fdbmtwajm2cbnx6uqlnibe5oajque67@24stcomulycd>
In-Reply-To: <e62fj2mtcm3tj2vnl22fdbmtwajm2cbnx6uqlnibe5oajque67@24stcomulycd>

--------------f6LgC3Rpt9nHZ9HPAbL3NYAl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8yOC8yMyAyMDowOSwg0L3QsNCxIHdyb3RlOg0KPiAvcHJvYy9zeXMvZnMvZXBvbGwv
bWF4X3VzZXJfaW5zdGFuY2VzIGhhc24ndCBleGlzdGVkIHNpbmNlIDIwMDkuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFi
aWphY3psZXdlbGkueHl6Pg0KPiAtLS0NCj4gICBtYW4yL2Vwb2xsX2NyZWF0ZS4yIHwgMjIg
KysrKysrKysrKysrKystLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvZXBvbGxf
Y3JlYXRlLjIgYi9tYW4yL2Vwb2xsX2NyZWF0ZS4yDQo+IGluZGV4IDRkMzU2NmE3OS4uZTkx
NzI4YmZkIDEwMDY0NA0KPiAtLS0gYS9tYW4yL2Vwb2xsX2NyZWF0ZS4yDQo+ICsrKyBiL21h
bjIvZXBvbGxfY3JlYXRlLjINCj4gQEAgLTgzLDE0ICs4Myw2IEBAIC5TSCBFUlJPUlMNCj4g
ICAuSVIgZmxhZ3MgLg0KPiAgIC5UUA0KPiAgIC5CIEVNRklMRQ0KPiAtVGhlIHBlci11c2Vy
IGxpbWl0IG9uIHRoZSBudW1iZXIgb2YgZXBvbGwgaW5zdGFuY2VzIGltcG9zZWQgYnkNCj4g
LS5JIC9wcm9jL3N5cy9mcy9lcG9sbC9tYXhfdXNlcl9pbnN0YW5jZXMNCj4gLXdhcyBlbmNv
dW50ZXJlZC4NCj4gLVNlZQ0KPiAtLkJSIGVwb2xsICg3KQ0KPiAtZm9yIGZ1cnRoZXIgZGV0
YWlscy4NCj4gLS5UUA0KPiAtLkIgRU1GSUxFDQo+ICAgVGhlIHBlci1wcm9jZXNzIGxpbWl0
IG9uIHRoZSBudW1iZXIgb2Ygb3BlbiBmaWxlIGRlc2NyaXB0b3JzIGhhcyBiZWVuIHJlYWNo
ZWQuDQo+ICAgLlRQDQo+ICAgLkIgRU5GSUxFDQo+IEBAIC0xMzQsNiArMTI2LDIwIEBAIC5T
SCBISVNUT1JZDQo+ICAgaW4gb3JkZXIgdG8gZW5zdXJlIGJhY2t3YXJkIGNvbXBhdGliaWxp
dHkgd2hlbiBuZXcNCj4gICAuQiBlcG9sbA0KPiAgIGFwcGxpY2F0aW9ucyBhcmUgcnVuIG9u
IG9sZGVyIGtlcm5lbHMuDQo+ICsuUFANCj4gK1ByaW9yIHRvIExpbnV4IHYyLjYuMjksDQoN
ClBsZWFzZSB1c2UgdmVyc2lvbmluZyBzeW50YXggY29uc2lzdGVudCB3aXRoIHRoZSBwcm9q
ZWN0Lg0KSSBkaWQgaXQgc28gdGhhdCBncmVwcGluZyBpcyBlYXN5Lg0KDQpDaGVlcnMsDQpB
bGV4DQoNCj4gKy5cIiBjb21taXQgOWRmMDRlMWYyNWVmZmRlODIzYTYwMGU3NTViNTE0NzVk
NDM4ZjU2Yg0KPiArLlwiICgiZXBvbGw6IGRyb3AgbWF4X3VzZXJfaW5zdGFuY2VzIGFuZCBy
ZWx5IG9ubHkgb24gbWF4X3VzZXJfd2F0Y2hlcyIpDQo+ICsuXCIgRGF0ZTogICBUaHUgSmFu
IDI5IDE0OjI1OjI2IDIwMDkgLTA4MDANCj4gKy5cIiB2Mi42LjI5LXJjMy0yNC1nOWRmMDRl
MWYyNWVmDQo+ICthDQo+ICsuSSAvcHJvYy9zeXMvZnMvZXBvbGwvbWF4X3VzZXJfaW5zdGFu
Y2VzDQo+ICtzeXNjdGwgbGltaXRlZCBsaXZlIGVwb2xscyBmb3IgZWFjaCByZWFsIHVzZXIg
SUQsDQo+ICthbmQgY2F1c2VkDQo+ICsuQlIgZXBvbGxfY3JlYXRlICgpDQo+ICt0byBmYWls
IHdpdGgNCj4gKy5CIEVNRklMRQ0KPiArb24gb3ZlcnJ1bi4NCj4gICAuU0ggU0VFIEFMU08N
Cj4gICAuQlIgY2xvc2UgKDIpLA0KPiAgIC5CUiBlcG9sbF9jdGwgKDIpLA0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6
IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------f6LgC3Rpt9nHZ9HPAbL3NYAl--

--------------w2rbeoS6SZorYsCNEFK0xVme
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpjkwACgkQnowa+77/
2zJ96Q//QySmcymfUmY+VfxUc/wW/ask9twOBc2XE1vrJr/GKKs6Uj1Crd9myCzF
9n/oU8v5aT6IenRt5VWPeFAmLKhekRv5USstTLE+a8LR2aGlspfF3uy3l/JhhZwv
suAdbXkNk7umS/imh5FG7sRxl5q4FhezxWRwkOoe7gTaOY9Q67ekM6N8yX9c3tLR
R4esPAUGoc3QFOUhnRaCVqvJOV2HC+MuXcgh93a9wC2h/HlIj5RG9J75uCt7h+Dp
fNHe13GXX3+XPSfMBgF0IYNK+jxJZhuEaTrCdSoUVMfxPwHeYsGR4uETP6yUSNWA
xpve/TNZqcIK6SJR3wFuUEhizAt6aEqJ+CK2Q+QxZKltqGkAFiJpKh8KC2oxQWNX
kGyN1xhqimDZXYnnP4qrSAdoCqIVcvEXPY1dx3Nen53fIoeTqOn9G1Uaa0OP2fqk
PhYs0gKkNhSZES2DYYIgKKbNE++rpHaeiWT+iEadUyVUG0jrdeiz2cUpZ+2V8qsg
3FYsxuAoIUirrti2tLdL+o/M8a9v9BqJVfGV3wMSkaUZVhfRM8+GDjDehQhVVNfR
yY9gSp9zKbmVpz9lX4gqcTHF0JoHoCc1n7Q1Mo52Cou3t0H9Vp7cUwah57iR9ou6
yBSAtZ3lhyOx1fka0+T3VVtA+WXx46QiRvuNdwziCIATPBiAqp4=
=aj47
-----END PGP SIGNATURE-----

--------------w2rbeoS6SZorYsCNEFK0xVme--
