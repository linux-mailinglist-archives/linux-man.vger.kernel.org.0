Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71590641927
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 22:04:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbiLCVEH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 16:04:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiLCVEG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 16:04:06 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6BD617434
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 13:04:05 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so7043855wmi.3
        for <linux-man@vger.kernel.org>; Sat, 03 Dec 2022 13:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p2rx5MT+EVrtclItQrfKrBTxiFGnHJ99OwV+zuGGvGQ=;
        b=Syzk42ugfIpA8QDD+t5Kn4xiX4Wa9zQXsHgZhveOHyezV36S6I7AxV2zC+qirPySdc
         mNeLQBU57e0KxB7M6iwguHO6GLJxDhj0ieFKmvJTEgeoOi8UqbZ7FEZRMUqOOqAmmTZ0
         i4AT9s3yzCeMFwWGNHpp0nDbDOzSl1faU/p1aZexlfcvI1XPxWbi82EWF7X4d69vh+V9
         zvL1fPlwfu3Wbm6vWkCR4DTM70A/R621p+1lnB2LvA4x5PhIPzPJwPuUzDrW6WqNSq1I
         +zSOHRPpUPN78awajshmYz2yOgBM4krZJSp7QcM0pBlqU3l/iMOakayOdYAQKyxIlCSA
         mUng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p2rx5MT+EVrtclItQrfKrBTxiFGnHJ99OwV+zuGGvGQ=;
        b=HgLW5/tLpnR8U6Bexh0NAJdX8ZZfAH63PLZG++EHZJ396JDLYjMrzlC9Gmf38FpsgK
         7u28X3k0hXQymVvgb5aWQjP7xH68Or/ylXqXeMQdhGy+FPKgATM3dxTneUK94DPyLxou
         v9lEfKnKGK99A1Iw5ocmJm8ezeswCzcYhUpTqj5BG0c4qJ6/JoybOag9i3nkxv2AFEEH
         I/3R9wyTXzC9tXiQib9gVRLpW/npeDUbfryF04y2hmO1g0Z8P5K6YvKLFbSR0kHvOE8q
         xLidnDTzggh9ClIHBsjkKIo90a4tEMWQaFoTMatVvPbQsVPZ71P2I54YYg1TaTEtti3E
         rbUA==
X-Gm-Message-State: ANoB5pmwKR/lWi0GIWZvYQLXUxSKknAfYBrVKeScFGx/oysHe+vPWfYf
        Wr3dMfphqzqUCw1PcHkogX5Lo6bSBcU=
X-Google-Smtp-Source: AA0mqf6w8TKolbaNJ8zDisP0jeq+YXqZP5tkrI9RL7bblZ9aw5gUD/DaIwfPGK+aI4NpvX99YbWDAg==
X-Received: by 2002:a05:600c:31a3:b0:3cf:4757:fc3 with SMTP id s35-20020a05600c31a300b003cf47570fc3mr56770837wmp.172.1670101444198;
        Sat, 03 Dec 2022 13:04:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bg9-20020a05600c3c8900b003cf483ee8e0sm17624289wmb.24.2022.12.03.13.04.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Dec 2022 13:04:03 -0800 (PST)
Message-ID: <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
Date:   Sat, 3 Dec 2022 22:03:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>,
        Jonathan Wakely <jwakely.gcc@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Michael Matz <matz@suse.de>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
 <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
Content-Language: en-US
In-Reply-To: <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oAuFvocYVdyXLLgeTDKBse7s"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oAuFvocYVdyXLLgeTDKBse7s
Content-Type: multipart/mixed; boundary="------------1IGxaXkFn689GV5FXiaZCszq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Jonathan Wakely
 <jwakely.gcc@gmail.com>, Joseph Myers <joseph@codesourcery.com>,
 Michael Matz <matz@suse.de>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
 <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
In-Reply-To: <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>

--------------1IGxaXkFn689GV5FXiaZCszq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCkknbGwgcHJvYmFibHkgaGF2ZSB0byByZWxlYXNlIGFnYWluIGJlZm9yZSB0aGUg
RGViaWFuIGZyZWV6ZSBvZiBCb29rd29ybS4gDQpUaGF0J3Mgc29tZXRoaW5nIEkgZGlkbid0
IHdhbnQgdG8gZG8sIGJ1dCB0aGVyZSdzIHNvbWUgaW1wb3J0YW50IGJ1ZyB0aGF0IA0KYWZm
ZWN0cyBkb3duc3RyZWFtIHByb2plY3RzICh0cmFuc2xhdGlvbiBwYWdlcyksIGFuZCBJIG5l
ZWQgdG8gcmVsZWFzZS4gIEl0J3MgYSANCmJpdCB3ZWlyZCB0aGF0IHRoZSBidWcgaGFzIGJl
ZW4gcmVwb3J0ZWQgbm93LCBiZWNhdXNlIGl0IGhhcyBhbHdheXMgYmVlbiB0aGVyZSANCihp
dCdzIG5vdCBhIHJlZ3Jlc3Npb24pLCBidXQgc3RpbGwsIEkgd2FudCB0byBhZGRyZXNzIGl0
IGJlZm9yZSB0aGUgbmV4dCBEZWJpYW4uDQoNCkFuZCBJIGRvbid0IHdhbnQgdG8gc3RhcnQg
d2l0aCBzdGFibGUgcmVsZWFzZXMsIHNvIEkgd29uJ3QgYmUgcmVsZWFzaW5nIA0KbWFuLXBh
Z2VzLTYuMDEuMS4gIFRoYXQgbWVhbnMgdGhhdCBhbGwgY2hhbmdlcyB0aGF0IEkgaGF2ZSBp
biB0aGUgcHJvamVjdCB0aGF0IEkgDQpkaWRuJ3QgcGxhbiB0byByZWxlYXNlIHVudGlsIDIw
MjQgd2lsbCBiZSByZWxlYXNlZCBpbiBhIGZldyB3ZWVrcywgbm90YWJseSANCmluY2x1ZGlu
ZyB0aGUgVkxBIHN5bnRheC4NCg0KVGhpcyBtZWFucyB0aGF0IHdoaWxlIHRoaXMgc3ludGF4
IGlzIHN0aWxsIGFuIGludmVudCwgbm90IHNvbWV0aGluZyByZWFsIHRoYXQgDQpjYW4gYmUg
dXNlZCwgSSBuZWVkIHRvIGJlIGNhcmVmdWwgYWJvdXQgdGhlIGZ1dHVyZSBpZiBJIHBsYW4g
dG8gbWFrZSBpdCBwdWJsaWMgDQpzbyBzb29uLg0KDQpTaW5jZSB3ZSd2ZSBzZWVuIHRoYXQg
dXNpbmcgYSAnLicgcHJlZml4IHNlZW1zIHRvIGJlIHByb2JsZW1hdGljIGJlY2F1c2Ugb2Yg
DQpsb29rYWhlYWQsIGFuZCByZWNlbnRseSBNaWNoYWVsIE1hdHogcHJvcG9zZWQgdXNpbmcg
YSBkaWZmZXJlbnQgcHVuY3R1YXRvciAoaGUgDQpwcm9wb3NlZCAnQCcpIGZvciBkaWZmZXJl
bnRpYXRpbmcgcGFyYW1ldGVycyBmcm9tIHN0cnVjdCBtZW1iZXJzLCBJIHRoaW5rIGdvaW5n
IA0KaW4gdGhhdCBkaXJlY3Rpb24gbWF5IGJlIGEgZ29vZCBpZGVhLg0KDQpIb3cgYWJvdXQg
JyQnPw0KDQpJdCdzIGJlZW4gdXNlZCBmb3IgZnVuY3Rpb24gcGFyYW1ldGVycyBzaW5jZS4u
LiBmb3JldmVyPyBpbiBzaCgxKS4gIEFuZCBpdCdzIA0KYmVpbmcgYWRkZWQgdG8gdGhlIHNv
dXJjZSBjaGFyYWN0ZXIgc2V0IGluIEMyMywgc28gaXQgc2VlbXMgdG8gYmUgYSBnb29kIGNo
b2ljZS4gDQogIEl0IHNob3VsZCBhbHNvIGJlIGludHVpdGl2ZSB3aGF0IGl0IG1lYW5zLg0K
DQpXaGF0IGRvIHlvdSB0aGluayBhYm91dCBpdD8gIEknbSBub3QgYXNraW5nIGZvciB5b3Vy
IG9waW5pb24gYWJvdXQgYWRkaW5nIGl0IHRvIA0KR0NDLCBidXQgcmF0aGVyIGZvciByZXBs
YWNpbmcgdGhlIGN1cnJlbnQgJy4nIGluIHRoZSBtYW4tcGFnZXMgYmVmb3JlIEkgcmVsZWFz
ZSANCmxhdGVyIHRoaXMgbW9udGguICBEbyB5b3UgdGhpbmsgSSBzaG91bGQgYXBwbHkgdGhh
dCBjaGFuZ2U/DQoNCkNoZWVycywNCg0KQWxleA0KDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------1IGxaXkFn689GV5FXiaZCszq--

--------------oAuFvocYVdyXLLgeTDKBse7s
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOLubsACgkQnowa+77/
2zLO5xAAoDNvkUYDwUl7emV8Adn7SLFaj0+KUIjkovk2RgDQKgGAfSsq13wNezQE
8VwXR0txujdV1XCQdahQtTUwAkCTnE43QMLOWs/5WiMALwH+MKSkFptGpwZdNPsx
y3KvPZqpq9VJLgguZWaEiTwwkxjweiRkSzCdui+O0y/drgCsuqiIOzV5GntBJW0U
mjX0GscrpltkFlea5Q/3px2DlaTdOL8dMSR5XeEQv16DZoboUzdUO2kOLGXv2/t0
5lHrurt5YTrPM/O+4ACDz6KZasZBFanjmWj8O7TvfUtWKxOxuKeLx2f0rwR4wVZH
ogiB0D+jxEbPuH3QmVjZouJ9nIfZIpSduCnfUf8xHDaJPQXANEfawRO7xBkBOfcU
WoBeKyvT/aFbhap2fHiwn1EizzB4lrAGtUue7deV7Rx2CDL9YouOZtKiXt92pVns
nSl9OWFqX42Zhe51BOsgYUp69qgn9rZVhhDeLSV9OLQVMv67sgu/SC9tKXH/cEEg
vh9RhKIP+M/QvlRgKc7n+ttomtOPbJtbxIciHfcWbt/5O83k04ChXCwLEuikv5ZG
ZAwhE8DoRVsmB72iQkA1QfLTOmyuzu8LUo7GbQmxcGYNfYPY4Mji0+hpd584Nf5h
2qWbfAIj78jMAkGD/DBO4lPu0NHdaxaL0So6XipnflNoRlpBINk=
=Pddb
-----END PGP SIGNATURE-----

--------------oAuFvocYVdyXLLgeTDKBse7s--
