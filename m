Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4829F64CEC9
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 18:19:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237531AbiLNRT3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 12:19:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237276AbiLNRT2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 12:19:28 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C4B9221
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:19:27 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id h11so405872wrw.13
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8J3/wHJcuY/WXIb4sXZy73OPrWDlRmh2WVcjGKWnYlM=;
        b=Rr6TQ+35bhcNVI4zLaNdC7SPlWCS0v/GFErMTMqjQl23JJNHe2C6bFMlpvd7+wofug
         zRrZe9PNBMYHhont2Z202tu3aIYcgljgqTCtHz2qJIku5tKClcap2VQ5Di2qPSvJC6q5
         ZgfD5c5sr03CrtV9Y0LIf7LT8IJLLdd0ouet1EUxANDM5HzAJDDkz7VZOvt95YcaGTZd
         lRnmiwAYuaF+wwyfQEE5PC3wLzVBkx7UCqSpzahOziMuErvGeN76WVlHLabjSsAkFOPR
         Cghuxw4HDjUT0Ax1h1cBva4izozAA+xWVmTyyHi3Cs4JOqrXim3NYBDY0j1pSE3++IxK
         GHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8J3/wHJcuY/WXIb4sXZy73OPrWDlRmh2WVcjGKWnYlM=;
        b=Mvxs5sAg+Op3xZz6gDP0pYDQ+OpS6M0LBD9khm5rS+qMol/+usFK5Ov6fB+8b+1Wez
         8LyaVAWBZGPrf9UqVvpYFv24aNG0YhT7a0/wEZS+GJhnyAddb4T0S61vlqY72cqFqBeG
         EmJAG6RRDpwaorArOPhJv9ju/5Q15x4hkTmvYU6iLROcFM8ciV72+uIn46/OZL0Fa9rc
         l6xbmaqdNgt/DOn1OZDwl7JnLeXGcHjc8Z65PvZ64gygs0jLf0e5XEqQ/z5bQCP7997Y
         39XyBTgA91r5VVjdnwDk+Lirnwaqy1WkvtJNqmzbQHC9pwfP8/wLfgF7rRj2zmTuAbZ4
         i8GA==
X-Gm-Message-State: ANoB5pmJ6fM3Z1/JaCgNb4x5xGU4bEMdGjMNgZTnDijvzIfQykBT6O/C
        0PQvsawukW66E6IA6NIyNa0=
X-Google-Smtp-Source: AA0mqf6JpwPQPRWllasPjggY7zp8hW7hXVYrLLJUzgJJsOCW7nIQnknX2iw043MXXMhmdFajbzedag==
X-Received: by 2002:a5d:4746:0:b0:242:931:6f63 with SMTP id o6-20020a5d4746000000b0024209316f63mr15928899wrs.64.1671038366084;
        Wed, 14 Dec 2022 09:19:26 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o2-20020a5d4a82000000b002366dd0e030sm3405790wrq.68.2022.12.14.09.19.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 09:19:25 -0800 (PST)
Message-ID: <118ec0c9-1f58-c6c5-738a-642c0d396107@gmail.com>
Date:   Wed, 14 Dec 2022 18:19:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 1/1] strcpy.3: Rewrite page to document all
 string-copying functions
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-2-alx@kernel.org>
 <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>
 <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>
 <97feaaf6-f4f4-8cae-afbd-0f43198c3c4a@gmail.com>
In-Reply-To: <97feaaf6-f4f4-8cae-afbd-0f43198c3c4a@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8wUykzrrweRkxizcUrdw1rKn"
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
--------------8wUykzrrweRkxizcUrdw1rKn
Content-Type: multipart/mixed; boundary="------------Rrn0A6J5qmDLBZIcC7o4xW08";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <118ec0c9-1f58-c6c5-738a-642c0d396107@gmail.com>
Subject: Re: [PATCH v3 1/1] strcpy.3: Rewrite page to document all
 string-copying functions
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-2-alx@kernel.org>
 <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>
 <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>
 <97feaaf6-f4f4-8cae-afbd-0f43198c3c4a@gmail.com>
In-Reply-To: <97feaaf6-f4f4-8cae-afbd-0f43198c3c4a@gmail.com>

--------------Rrn0A6J5qmDLBZIcC7o4xW08
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE0LzIyIDE4OjExLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
RG91ZywNCj4gDQo+IE9uIDEyLzE0LzIyIDE3OjM2LCBBbGVqYW5kcm8gQ29sb21hciB3cm90
ZToNCj4+IE9uIDEyLzE0LzIyIDE3OjIyLCBEb3VnbGFzIE1jSWxyb3kgd3JvdGU6DQo+Pj4+
IGNoYWluIGNvcHkNCj4+Pg0KPj4+IFRoaXMgdGVybSBpcyBuZXZlciBvdmVydGx5IGRlZmlu
ZWQuIFRoZSBkZWZpbml0aW9uIG1pZ2h0IGJlIGluZmVycmVkDQo+Pj4gZnJvbSwgIlRvIGNo
YWluIGNvcHkNCj4+PiBmdW5jdGlvbnMsIHRoZXkgbmVlZCB0byByZXR1cm4gYSBwb2ludGVy
IHRvIHRoZSBlbmQiLCBidXQgdGhlDQo+Pj4gcHJvYmxlbWF0aWMgZ3JhbW1hciBvZiB0aGUN
Cj4+PiBzZW50ZW5jZSBkaXZlcnRzIGF0dGVudGlvbiBmcm9tIGl0cyBjb250ZW50Lg0KPj4N
Cj4+IE9rYXksIEknbGwgdHJ5IHRvIGltcHJvdmUgdGhlIHdvcmRpbmcgaW4gdGhhdCBwYXJh
Z3JhcGg7IGluZGVlZCB0aGF0IA0KPj4gc3Vic2VjdGlvbiBpbnRlbmRlZCB0byBkZWZpbmUg
dGhlICJjaGFpbiBjb3B5IiB0ZXJtLg0KPj4NCj4+Pg0KPiANCj4gSSdsbCBob2xkIG9uIHNl
bmRpbmcgdjUgdG8gc2VlIGlmIHRoZXJlIGlzIG1vcmUgZmVlZGJhY2sgZnJvbSBvdGhlcnMs
IGJ1dCBoZXJlJ3MgDQo+IHdoYXQgSSBoYXZlIGZvciBkb2N1bWVudGluZyB0aGUgY2hhaW4g
dGVybToNCj4gDQo+IA0KPiBAQCAtMjAyLDE1ICsxOTIsMzYgQEAgLlNTIFRlcm1zIChhbmQg
YWJicmV2aWF0aW9ucykNCj4gIMKgSXQgaXMgdXNlZCBhcyBhIHNlbnRpbmVsIHZhbHVlLA0K
PiAgwqB0byBiZSBhYmxlIHRvIHRydW5jYXRlIHN0cmluZ3Mgb3IgY2hhcmFjdGVyIHNlcXVl
bmNlcw0KPiAgwqBpbnN0ZWFkIG9mIG92ZXJydW5uaW5nIHRoZSBjb250YWluaW5nIGJ1ZmZl
ci4NCj4gLS5cIiAtLS0tLSBERVNDUklQVElPTiA6OiBDb3B5LCBjb25jYXRlbmF0ZSwgYW5k
IGNoYWluLWNvcHkgLS0tLS0tLS0tLS0tLw0KPiAtLlNTIENvcHksIGNvbmNhdGVuYXRlLCBh
bmQgY2hhaW4tY29weQ0KPiArLlwiIC0tLS0tIERFU0NSSVBUSU9OIDo6IFRlcm1zIChhbmQg
YWJicmV2aWF0aW9ucykgOjogY29weSAtLS0tLS0tLS0tLS0vDQo+ICsuVFANCj4gKy5JIGNv
cHkNCj4gK1RoaXMgdGVybSBpcyB1c2VkIHdoZW4NCj4gK3RoZSB3cml0aW5nIHN0YXJ0cyBh
dCB0aGUgZmlyc3QgZWxlbWVudCBwb2ludGVkIHRvIGJ5DQo+ICsuSVIgZHN0IC4NCj4gKy5c
IiAtLS0tLSBERVNDUklQVElPTiA6OiBUZXJtcyAoYW5kIGFiYnJldmlhdGlvbnMpIDo6IGNh
dGVuYXRlIC0tLS0tLS0tLw0KPiArLlRQDQo+ICsuSSBjYXRlbmF0ZQ0KPiArVGhpcyB0ZXJt
IGlzIHVzZWQgd2hlbg0KPiArYSBmdW5jdGlvbiBmaXJzdCBmaW5kcyB0aGUgdGVybWluYXRp
bmcgbnVsbCBieXRlIGluDQo+ICsuSVIgZHN0ICwNCj4gK2FuZCB0aGVuIHN0YXJ0cyB3cml0
aW5nIGF0IHRoYXQgcG9zaXRpb24uDQo+ICsuXCIgLS0tLS0gREVTQ1JJUFRJT04gOjogVGVy
bXMgKGFuZCBhYmJyZXZpYXRpb25zKSA6OiBjaGFpbiAtLS0tLS0tLS0tLS8NCj4gKy5UUA0K
PiArLkkgY2hhaW4NCj4gK1RoaXMgdGVybSBpcyB1c2VkIHdoZW4NCj4gK2l0J3MgdGhlIHBy
b2dyYW1tZXIgd2hvIHByb3ZpZGVzIGEgcG9pbnRlciB0byB0aGUNCj4gKy5JUiBlbmQgLA0K
PiArYW5kIHRoZSBmdW5jdGlvbiBzdGFydHMgd3JpdGluZyBhdCB0aGF0IGxvY2F0aW9uLg0K
PiArLklSIGRzdCAuDQoNCg0KQEAgLTIxMyw2ICsyMTMsMTAgQEAgLlNTIFRlcm1zIChhbmQg
YWJicmV2aWF0aW9ucykNCiAgLklSIGVuZCAsDQogIGFuZCB0aGUgZnVuY3Rpb24gc3RhcnRz
IHdyaXRpbmcgYXQgdGhhdCBsb2NhdGlvbi4NCiAgLklSIGRzdCAuDQorVGhlIGZ1bmN0aW9u
IHJldHVybnMgYSBwb2ludGVyIHRvIHRoZSBuZXcNCisuSSBlbmQNCithZnRlciB0aGUgY2Fs
bCwNCitzbyB0aGF0IHRoZSBwcm9ncmFtbWVyIGNhbiB1c2UgaXQgdG8gY2hhaW4gc3VjaCBj
YWxscy4NCiAgLlwiIC0tLS0tIERFU0NSSVBUSU9OIDo6IENvcHksIGNhdGVuYXRlLCBhbmQg
Y2hhaW4tY29weSAtLS0tLS0tLS0tLS0tLS0vDQogIC5TUyBDb3B5LCBjYXRlbmF0ZSwgYW5k
IGNoYWluLWNvcHkNCiAgT3JpZ2luYWxseSwNCg0KDQoNCkFuZCB0aGlzIGlzIGZvciBjb21w
bGV0ZW5lc3MuIDopDQoNCg0KPiArLlwiIC0tLS0tIERFU0NSSVBUSU9OIDo6IENvcHksIGNh
dGVuYXRlLCBhbmQgY2hhaW4tY29weSAtLS0tLS0tLS0tLS0tLS0vDQo+ICsuU1MgQ29weSwg
Y2F0ZW5hdGUsIGFuZCBjaGFpbi1jb3B5DQo+ICDCoE9yaWdpbmFsbHksDQo+IC10aGVyZSB3
YXMgYSBkaXN0aW5jdGlvbiBiZXR3ZWVuIGZ1bmN0aW9ucyB0aGF0IGNvcHkgYW5kIHRob3Nl
IHRoYXQgY29uY2F0ZW5hdGUuDQo+ICt0aGVyZSB3YXMgYSBkaXN0aW5jdGlvbiBiZXR3ZWVu
IGZ1bmN0aW9ucyB0aGF0IGNvcHkgYW5kIHRob3NlIHRoYXQgY2F0ZW5hdGUuDQo+ICDCoEhv
d2V2ZXIsIG5ld2VyIGZ1bmN0aW9ucyB0aGF0IGNvcHkgd2hpbGUgYWxsb3dpbmcgY2hhaW5p
bmcNCj4gIMKgY292ZXIgYm90aCB1c2UgY2FzZXMgd2l0aCBhIHNpbmdsZSBBUEkuDQo+ICDC
oFRoZXkgYXJlIGFsc28gYWxnb3JpdGhtaWNhbGx5IGZhc3RlciwNCj4gIMKgc2luY2UgdGhl
eSBkb24ndCBuZWVkIHRvIHNlYXJjaCBmb3IgdGhlIGVuZCBvZiB0aGUgZXhpc3Rpbmcgc3Ry
aW5nLg0KPiAtSG93ZXZlciwgZnVuY3Rpb25zIHRoYXQgY29uY2F0ZW5hdGUgaGF2ZSBhIG11
Y2ggc2ltcGxlciB1c2UsDQo+ICtIb3dldmVyLCBmdW5jdGlvbnMgdGhhdCBjYXRlbmF0ZSBo
YXZlIGEgbXVjaCBzaW1wbGVyIHVzZSwNCj4gIMKgc28gaWYgcGVyZm9ybWFuY2UgaXMgbm90
IGltcG9ydGFudCwNCj4gIMKgaXQgY2FuIG1ha2Ugc2Vuc2UgdG8gdXNlIHRoZW0gZm9yIGlt
cHJvdmluZyByZWFkYWJpbGl0eS4NCj4gIMKgLlBQDQo+IA0KPiANCj4gDQo+IENoZWVycywN
Cj4gDQo+IEFsZXgNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------Rrn0A6J5qmDLBZIcC7o4xW08--

--------------8wUykzrrweRkxizcUrdw1rKn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaBZwACgkQnowa+77/
2zKc3g//UpPcK4q5EqcUYCHIirB+a63w+kpjdBgovknoaoCMjHhwYdd1GY6HflXh
qqAvSooRGLkKlrPWnCF1/BM8C2z0+av2IVjaBKqPgLa9a+HPXjJIKjX04o0waj4z
ryG7NzVRMnCYpPDz/9G9TKNmiLVq576BwTuUeQz2g/ylVqlTf66jj3HWSKK7Dp0F
xNric2xzcl4xzlkNnd8XJhlILjK7LXyViPMRu0yBO4uHbIlmGNUx/wt8MKcveGK2
7baoLYgC79p2Kp5uTQFy1AtRJAt8vA9ElXroXIn2rKVMe3yHzQLrhvQ4f+u2yVFw
qt1vy86oK4s2UYBzk6fWXwA4huSgKNfG1qojgQ4Q1c9aMFdpFVn+NVOpAY0oEMbZ
y+ABatTCBlnphx3fiHjaUTLo7m8tlHopozY+jcV3W+pzcdlcfDjO7pJXnbEbI3iM
xxiHtgHFyuR5y5QkE1VkIExytGbckeINnmxIhhgNgqJLCZuRez+LyCTtmwqmVbzZ
bqgoMSwHHcHifHLo4CEMyZJeomecQLVrj5XGL2OIV8YaewvH8Ry+vpFtoGDSS+Fq
BsqG5z3gFO6VP2LaT6yIESSsHfekTFAUXUMWqVb08ci638yGoLkF9gi+4Pj0crP7
JGMGLP9x13zzgCBmY9DEHMwVQH7H6lGDm5kiUGmFS2AJotbjbP0=
=wBK6
-----END PGP SIGNATURE-----

--------------8wUykzrrweRkxizcUrdw1rKn--
