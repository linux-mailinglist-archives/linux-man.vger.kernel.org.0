Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CD31587BC8
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 13:51:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233683AbiHBLvB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 07:51:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232953AbiHBLvA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 07:51:00 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CD5220E5
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 04:50:58 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id c22so7082414wmr.2
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 04:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=gl8ojAXofaruD98jiDq8FDZ71kqax8N3BoS78fYmWyc=;
        b=qFLMujvO3xt4l/CN8YI1LQypRcWO1uDEMfDy3z4gorom6M0OXc5Q4lBA0qwsnUoEBK
         GD1TObknPnM3yNLpFSxYQou68Zjkjw8r1EuNb67r/f6r40Rso3P27CSDWEs0Sn/PKZcw
         BkScChXpzhnp3nILxrI42L59tk6al5PsXPB9RmamNz9JNR+Dap8rlJbmvVVnKNZJkiic
         cxj5ER5iolLr467y+pNZIzeNqUdTK5uuIlTIiWgUyeiekxzlt0W1IrsYdAtZCiDqQPY8
         HLz7MmR7in6mLzBovlPGwKCWukwxzH9RR/4gl838lNwFljXigA4RaDNRZsWT/bRMRZb1
         Ry+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=gl8ojAXofaruD98jiDq8FDZ71kqax8N3BoS78fYmWyc=;
        b=wfBDvtANs5MYuopGIAUnMPwWPb0S5k5wTWVcmGVr0i5RKlNEaWWL4uOOoOml2956ki
         2h97fknvxNjoOR30dBKE2/JYm4MrAbccUtteSdI9JWXfLCPz1Cxmi9GqMc8xGB0Um4k0
         5tKiPzwwCCY97Fqz8f31BZWDh2xzvrsDFSquVq/v0Qa2VrrnUCd4+AdFYUX33LrWemle
         4hFhqyYSHDjb6I29fyXusveUZxynKsVVpBQ9vZYHmFjre+feWIqzZaNjE1kZNrfhx0//
         Ad2JbRDR8eHQ8AI0l12sGcC6znzwXZL3o0S566gb7Y/sUEryQ7Y+1MN0tFKr9wWW5cUL
         4nrQ==
X-Gm-Message-State: ACgBeo174oshHDDRoFkas1QCl8tL7e9IRHt764UV1uULaF8ErIxQmGPQ
        YrnRCuC6YdPZis4xCNu00X8UVFMfoGw=
X-Google-Smtp-Source: AA6agR5ps/piCg7j8UP0FhreaKVsMw6pPV1USza1cOIWfzTJCwwLjr1HBj88M6pvivlH+0Is01Sg7w==
X-Received: by 2002:a7b:cb44:0:b0:3a4:e8c7:59a2 with SMTP id v4-20020a7bcb44000000b003a4e8c759a2mr1613686wmj.67.1659441056662;
        Tue, 02 Aug 2022 04:50:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j20-20020a5d6e54000000b0021e5e5cd3a8sm14754248wrz.87.2022.08.02.04.50.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 04:50:56 -0700 (PDT)
Message-ID: <173d8559-c026-91cf-a2d2-9901e99d468f@gmail.com>
Date:   Tue, 2 Aug 2022 13:50:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [PATCH 2/3] futex.2, futex.7: {ftp://ftp =>
 https://mirrors.edge}.kernel.org
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <cafa37c8b88565aa8a9aeb21b972f2fc8cf01b53.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <cafa37c8b88565aa8a9aeb21b972f2fc8cf01b53.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------83Zoa3zH7XfjsFTmISgb7Pgz"
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
--------------83Zoa3zH7XfjsFTmISgb7Pgz
Content-Type: multipart/mixed; boundary="------------755kSvulkCkPQfeb2nIPnv40";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <173d8559-c026-91cf-a2d2-9901e99d468f@gmail.com>
Subject: Re: [PATCH 2/3] futex.2, futex.7: {ftp://ftp =>
 https://mirrors.edge}.kernel.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <cafa37c8b88565aa8a9aeb21b972f2fc8cf01b53.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <cafa37c8b88565aa8a9aeb21b972f2fc8cf01b53.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>

--------------755kSvulkCkPQfeb2nIPnv40
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA4LzIvMjIgMDM6MTEsINC90LDQsSB3cm90ZToNCj4gVGhlIGZv
cm1lciBkb2Vzbid0IGV4aXN0OyB0aGUgbGF0dGVyIGlzIHRoZSBuZXcgbG9jYXRpb24gd2l0
aCBzZWVtaW5nbHkNCj4gY29tcGF0aWJsZSBkYXRhDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBB
aGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6
Pg0KPiAtLS0NCj4gICBtYW4yL2Z1dGV4LjIgfCAyICstDQo+ICAgbWFuNy9mdXRleC43IHwg
MiArLQ0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvZnV0ZXguMiBiL21hbjIvZnV0ZXguMg0K
PiBpbmRleCBhMDM2Y2E0N2EuLmMwZDIzZjcwZiAxMDA2NDQNCj4gLS0tIGEvbWFuMi9mdXRl
eC4yDQo+ICsrKyBiL21hbjIvZnV0ZXguMg0KPiBAQCAtMTk4MSw3ICsxOTgxLDcgQEAgRHJl
cHBlciwgVS4sIDIwMTEuIFxmSUZ1dGV4ZXMgQXJlIFRyaWNreVxmUCwNCj4gICAuUFANCj4g
ICBGdXRleCBleGFtcGxlIGxpYnJhcnksIGZ1dGV4LSoudGFyLmJ6MiBhdA0KPiAgIC5icg0K
PiAtLlVSIGZ0cDovL2Z0cC5rZXJuZWwub3JnXDovcHViXDovbGludXhcOi9rZXJuZWxcOi9w
ZW9wbGVcOi9ydXN0eS8NCj4gKy5VUiBodHRwczovL21pcnJvcnMuZWRnZS5rZXJuZWwub3Jn
XDovcHViXDovbGludXhcOi9rZXJuZWxcOi9wZW9wbGVcOi9ydXN0eS8NCg0KV2hhdCBpcyAn
ZWRnZS4nIGZvcj8gIEl0IHNlZW1zIHRvIG1lIHRoYXQgdGhlIHNhbWUgZXhhY3QgVVJJIGJ1
dCANCnJlbW92aW5nIHRoYXQgc3ViZG9tYWluIChlLmcuLCA8aHR0cHM6Ly9taXJyb3JzLmtl
cm5lbC5vcmcvLi4uPiB3b3JrcyANCmV4YWN0bHkgdGhlIHNhbWUuDQoNCklmIHRoZXkgYXJl
IHRoZSBzYW1lLCBJIHByZWZlciB0aGUgc2hvcnRlciwgdW5sZXNzIHRoZXJlJ3MgYSBnb29k
IHJlYXNvbiANCmZvciB1c2luZyB0aGUgbG9uZ2VyLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0K
PiAgIC5VRQ0KPiAgIC5cIg0KPiAgIC5cIiBGSVhNRShUb3J2YWxkKSBXZSBzaG91bGQgcHJv
YmFibHkgcmVmZXIgdG8gdGhlIGdsaWJjIGNvZGUgaGVyZSwgaW4NCj4gZGlmZiAtLWdpdCBh
L21hbjcvZnV0ZXguNyBiL21hbjcvZnV0ZXguNw0KPiBpbmRleCAxOGMyZjU4MDMuLmYyMTlj
Yjk0NSAxMDA2NDQNCj4gLS0tIGEvbWFuNy9mdXRleC43DQo+ICsrKyBiL21hbjcvZnV0ZXgu
Nw0KPiBAQCAtMTE3LDUgKzExNyw1IEBAIHByaW1pdGl2ZXM7IGl0IGlzIGJ5IG5vIG1lYW5z
IHRoZSBvbmx5IG9uZS4NCj4gICAuSSBGdXNzLCBGdXRleGVzIGFuZCBGdXJ3b2NrczogRmFz
dCBVc2VybGV2ZWwgTG9ja2luZyBpbiBMaW51eA0KPiAgIChwcm9jZWVkaW5ncyBvZiB0aGUg
T3R0YXdhIExpbnV4IFN5bXBvc2l1bSAyMDAyKSwNCj4gICBmdXRleCBleGFtcGxlIGxpYnJh
cnksIGZ1dGV4LSoudGFyLmJ6Mg0KPiAtLlVSIGZ0cDovL2Z0cC5rZXJuZWwub3JnXDovcHVi
XDovbGludXhcOi9rZXJuZWxcOi9wZW9wbGVcOi9ydXN0eS8NCj4gKy5VUiBodHRwczovL21p
cnJvcnMuZWRnZS5rZXJuZWwub3JnXDovcHViXDovbGludXhcOi9rZXJuZWxcOi9wZW9wbGVc
Oi9ydXN0eS8NCj4gICAuVUUgLg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------755kSvulkCkPQfeb2nIPnv40--

--------------83Zoa3zH7XfjsFTmISgb7Pgz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLpD58ACgkQnowa+77/
2zI/ug//clfsLPNM0v8FzfM6OUXLWR2jmvQT8lvWl7iCwEwnXkBlqkPBXBWxjq2u
SS0JCE8M0jSlB8wUZsdHfnYpkKYgdUpy9mExt/wLjBIwqPfjp4pr435VJIDKkNUT
KhrbdnXe/5JUMcDbof+D2VTHr3WrRjx+P9A/Zr6x8khfGwwXgiHRKiVx9SmXBhuQ
kJQt+liHldZ6ukM+FFVm/ruHb6MXv+/FMvjwUT566MGCC0NGXQfm6quPzZ55xZ41
1gJ0cXyDWZIRmRXy0SoSGZm5aoWDDUxFb8ayxjIuZiodPejMH3ke4b2FRIqZbmJR
QJIPdwSVObAYtjzpURZHai32FddfPaEO7nxrkI6HjaTenM32PjxabS4v+BzeenNA
7dvYyVLBvSs3O71kxbnarJsP/ByKcPjsrQB4pNXlg76akwm4BFNqqzyQM2jsJmAg
Z0y/ckhjB8ITk3foozpbm8MgcNuBqZQONZJ8VLkZi3tCsNxBzB8ErD4+gydEVqky
YWEHU9hZv+TmL0OLlEZUgef4Nkiyc9R625fNXL6d1S72Jzorl5Cj0FzacUo8ymn3
Ja+KtOkI5bCghyd5x+helgD9aGfAUS6R4gAWcbR8WT8HXXUMOcD68lqTqiUzEEdl
G4VkuozUKaRRasbp9cp1Z4FQkbpzPStZovkX6LTNMP84RiqSfzA=
=WuLe
-----END PGP SIGNATURE-----

--------------83Zoa3zH7XfjsFTmISgb7Pgz--
