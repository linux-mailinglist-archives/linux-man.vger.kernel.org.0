Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C3DC5A6EC2
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 22:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbiH3Uzv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Aug 2022 16:55:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230473AbiH3Uzt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Aug 2022 16:55:49 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F5F26FA26
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 13:55:45 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id s7so883375wro.2
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 13:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=/8kaJ/0fRIQLcbWFDugIrv2NXaMu1slot7/XRSYL2ps=;
        b=hDXL7UfntkDvCY+1tkVvtoyVnulhJznHDVCUqEEjye7HA9iH/iuZugxnME+0upqxrC
         yJkVdWTzmGBTgeHKXvw7TCDERLiiNfjH9FUvYYhQ6SBGSs7mJ1ZE0E98+PDfKwR8gwcm
         A2itA8OLotmpF67PzgqNpW0okRcOxccEhP0Goax+xy8a9VDhg9iZ8tU0Ae0k2qNqfUht
         DTnfKj5ctvTu0EaDpy2vm2qkn6MDUQarwROS8pRUpjzL854FF4fKHrCQb2AhPgI5rOka
         w+2WqlSo7op4Lb/evdrFBai95L1smodaN+8+ve2QMPGKIvCPKQR4+OasJUrI8JCpYBTy
         +GNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=/8kaJ/0fRIQLcbWFDugIrv2NXaMu1slot7/XRSYL2ps=;
        b=e1tWvdOYr+t8DXuZUOlmNJK+Q/GC+oVOIZvcJq7aoRNY1S6mriB2PiypgjJT+cPCgs
         pEDzfxSZuatkObNYwtk4kLof2P8Z6VDvJ8Ho9ZXQTwIhIpe9BItD5Hx+ZqB6L8EV34Gt
         vRPe1JkAbxh7CE2YWLmi3/hZVOYr0XOEnEpw/W6pwfbMo4s0H8x3yyi/+kor00YAm6n3
         2NNyoX8SIK4vpMbStmNyRbjI1UoAZYvncM3zc2iLFwGAMi777v8ZEcs0iPwIGttqGJk1
         XRS02WD/l7ehIMPvX0Dg52xaLv0s7FlFS1D1c54cyBDfDbzN7waCSFmaE8/7ptcPiXpH
         /w/g==
X-Gm-Message-State: ACgBeo39luyCIdpLguWgn73Wf8mTZqgvwMhlIUwEJ7lLEaejUsIj0AUz
        8TbibiRF05qfmqPKdaEbmcg=
X-Google-Smtp-Source: AA6agR7RorcfmdDsTIILyThWsjJ7jOiYLIrl7ky2+3wlT0+J2zcv7KSENZHfZFtwOXUi0sVf/YISjQ==
X-Received: by 2002:a05:6000:1ac8:b0:220:8168:126b with SMTP id i8-20020a0560001ac800b002208168126bmr10030445wry.288.1661892943859;
        Tue, 30 Aug 2022 13:55:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g12-20020adff40c000000b00226e5e07fe9sm2138531wro.10.2022.08.30.13.55.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 13:55:43 -0700 (PDT)
Message-ID: <594f6315-e431-4624-8474-d0c504783a67@gmail.com>
Date:   Tue, 30 Aug 2022 22:55:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] ioctl_ns.2, stat.2: drop unneeded uintmax_t casts.
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220830195800.1779-1-jwilk@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220830195800.1779-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------esjqQ8F5I4dmEiL5NwM4Hhzz"
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
--------------esjqQ8F5I4dmEiL5NwM4Hhzz
Content-Type: multipart/mixed; boundary="------------8A0l4J6dk3f1RZem2Bn4cSKr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <594f6315-e431-4624-8474-d0c504783a67@gmail.com>
Subject: Re: [PATCH] ioctl_ns.2, stat.2: drop unneeded uintmax_t casts.
References: <20220830195800.1779-1-jwilk@jwilk.net>
In-Reply-To: <20220830195800.1779-1-jwilk@jwilk.net>

--------------8A0l4J6dk3f1RZem2Bn4cSKr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDgvMzAvMjIgMjE6NTgsIEpha3ViIFdpbGsgd3JvdGU6DQo+IG1h
am9yKCkgYW5kIG1pbm9yKCkgcmV0dXJuIHVuc2lnbmVkIGludCwNCj4gc28gdGhlIHR5cGVj
YXN0cyB0byB1aW50bWF4X3QgYXJlIG5vdCBuZWVkZWQuDQoNCkkgZG9uJ3QgcmVtZW1iZXIg
YWxsIG9mIHRoZSBkZXRhaWxzLiAgSSByZW1lbWJlciBoYXZpbmcgZGlzY3Vzc2VkIA0KZXhh
Y3RseSB0aGlzLCBidXQgY2FuJ3QgZmluZCBpdCBpbiB0aGUgYXJjaGl2ZXMuDQoNCkZyZWVC
U0QgcmV0dXJucyBzaWduZWQgaW50IDxodHRwczovL3d3dy5mcmVlYnNkLm9yZy9jZ2kvbWFu
LmNnaT9tYWpvcj4uIA0KTGludXggcmV0dXJucyB1bnNpZ25lZCBpbnQuICBTbyB0aGUgdHlw
ZSB0aGF0IGNhbiBob2xkIHZhbHVlcyBpbiBib3RoIA0KdHlwZXMgd291bGQgYmUgaW50bWF4
X3QuDQoNCkkgZ3Vlc3MgSSB1c2VkIHVpbnRtYXhfdCBiZWNhdXNlIG9mIHRoZSAleCBjb252
ZXJzaW9uIHNwZWNpZmllciwgd2hpY2ggDQpyZXF1aXJlcyBhbiB1bnNpZ25lZCBudW1iZXIs
IGFuZCBzbyB0aGUgb25seSBpc3N1ZSB3aWxsIGJlIHRoYXQgdGhlIA0KbnVtYmVyIHdpbGwg
YmUgdmVyeSBoaWdoIGlmIHRoZSBvcmlnaW5hbCB2YWx1ZSB3YXMgbmVnYXRpdmUuDQoNCkFk
bWl0dGVkbHksIGlmIHlvdSBwYXNzIGFuIGludCB0byAleCwgaXQncyBnb2luZyB0byB3b3Jr
IGluIHRoZSBzYW1lIHdheSANCmFzIHVpbnRtYXhfdCBpcyB3b3JraW5nIHJpZ2h0IG5vdy4N
Cg0KSXQncyBub3QgY2xlYXIgaWYgdGhhdCdzIFVuZGVmaW5lZCBCZWhhdmlvciANCjxodHRw
czovL3N0YWNrb3ZlcmZsb3cuY29tL3EvNDY2NDEwMC82ODcyNzE3PiwgYnV0IGl0J3MgY2Vy
dGFpbmx5IGdvaW5nIA0KdG8gd29yaywgc28gSSdsbCBhcHBseSB5b3VyIHBhdGNoLg0KDQpU
aGFua3MsDQoNCkFsZXgNCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFrdWIgV2lsayA8andp
bGtAandpbGsubmV0Pg0KPiAtLS0NCj4gICBtYW4yL2lvY3RsX25zLjIgfCAxMiArKysrKyst
LS0tLS0NCj4gICBtYW4yL3N0YXQuMiAgICAgfCAgNiArKystLS0NCj4gICAyIGZpbGVzIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9tYW4yL2lvY3RsX25zLjIgYi9tYW4yL2lvY3RsX25zLjINCj4gaW5kZXggOTViMzlj
Y2FjLi4wMmMxZGFiMTEgMTAwNjQ0DQo+IC0tLSBhL21hbjIvaW9jdGxfbnMuMg0KPiArKysg
Yi9tYW4yL2lvY3RsX25zLjINCj4gQEAgLTI5Myw5ICsyOTMsOSBAQCBtYWluKGludCBhcmdj
LCBjaGFyICphcmd2W10pDQo+ICAgICAgICAgICAgICAgZXhpdChFWElUX0ZBSUxVUkUpOw0K
PiAgICAgICAgICAgfQ0KPiAgICAgICAgICAgcHJpbnRmKCJEZXZpY2UvSW5vZGUgb2Ygb3du
aW5nIHVzZXIgbmFtZXNwYWNlIGlzOiAiDQo+IC0gICAgICAgICAgICAgICAiWyVqeCwlanhd
IC8gJWp1XGVuIiwNCj4gLSAgICAgICAgICAgICAgICh1aW50bWF4X3QpIG1ham9yKHNiLnN0
X2RldiksDQo+IC0gICAgICAgICAgICAgICAodWludG1heF90KSBtaW5vcihzYi5zdF9kZXYp
LA0KPiArICAgICAgICAgICAgICAgIlsleCwleF0gLyAlanVcZW4iLA0KPiArICAgICAgICAg
ICAgICAgbWFqb3Ioc2Iuc3RfZGV2KSwNCj4gKyAgICAgICAgICAgICAgIG1pbm9yKHNiLnN0
X2RldiksDQo+ICAgICAgICAgICAgICAgICAgKHVpbnRtYXhfdCkgc2Iuc3RfaW5vKTsNCj4g
ICANCj4gICAgICAgICAgIGNsb3NlKHVzZXJuc19mZCk7DQo+IEBAIC0zMjMsOSArMzIzLDkg
QEAgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQ0KPiAgICAgICAgICAgICAgIHBlcnJv
cigiZnN0YXRcLXBhcmVudG5zIik7DQo+ICAgICAgICAgICAgICAgZXhpdChFWElUX0ZBSUxV
UkUpOw0KPiAgICAgICAgICAgfQ0KPiAtICAgICAgICBwcmludGYoIkRldmljZS9Jbm9kZSBv
ZiBwYXJlbnQgbmFtZXNwYWNlIGlzOiBbJWp4LCVqeF0gLyAlanVcZW4iLA0KPiAtICAgICAg
ICAgICAgICAgKHVpbnRtYXhfdCkgbWFqb3Ioc2Iuc3RfZGV2KSwNCj4gLSAgICAgICAgICAg
ICAgICh1aW50bWF4X3QpIG1pbm9yKHNiLnN0X2RldiksDQo+ICsgICAgICAgIHByaW50Zigi
RGV2aWNlL0lub2RlIG9mIHBhcmVudCBuYW1lc3BhY2UgaXM6IFsleCwleF0gLyAlanVcZW4i
LA0KPiArICAgICAgICAgICAgICAgbWFqb3Ioc2Iuc3RfZGV2KSwNCj4gKyAgICAgICAgICAg
ICAgIG1pbm9yKHNiLnN0X2RldiksDQo+ICAgICAgICAgICAgICAgICAgKHVpbnRtYXhfdCkg
c2Iuc3RfaW5vKTsNCj4gICANCj4gICAgICAgICAgIGNsb3NlKHBhcmVudF9mZCk7DQo+IGRp
ZmYgLS1naXQgYS9tYW4yL3N0YXQuMiBiL21hbjIvc3RhdC4yDQo+IGluZGV4IDU4NWEyMDQ4
NC4uYmRkNmQxNWUzIDEwMDY0NA0KPiAtLS0gYS9tYW4yL3N0YXQuMg0KPiArKysgYi9tYW4y
L3N0YXQuMg0KPiBAQCAtNDgxLDkgKzQ4MSw5IEBAIG1haW4oaW50IGFyZ2MsIGNoYXIgKmFy
Z3ZbXSkNCj4gICAgICAgICAgIGV4aXQoRVhJVF9GQUlMVVJFKTsNCj4gICAgICAgfQ0KPiAg
IA0KPiAtICAgIHByaW50ZigiSUQgb2YgY29udGFpbmluZyBkZXZpY2U6ICBbJWp4LCVqeF1c
ZW4iLA0KPiAtICAgICAgICAgICAodWludG1heF90KSBtYWpvcihzYi5zdF9kZXYpLA0KPiAt
ICAgICAgICAgICAodWludG1heF90KSBtaW5vcihzYi5zdF9kZXYpKTsNCj4gKyAgICBwcmlu
dGYoIklEIG9mIGNvbnRhaW5pbmcgZGV2aWNlOiAgWyV4LCV4XVxlbiIsDQo+ICsgICAgICAg
ICAgIG1ham9yKHNiLnN0X2RldiksDQo+ICsgICAgICAgICAgIG1pbm9yKHNiLnN0X2Rldikp
Ow0KPiAgIA0KPiAgICAgICBwcmludGYoIkZpbGUgdHlwZTogICAgICAgICAgICAgICAgIik7
DQo+ICAgDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------8A0l4J6dk3f1RZem2Bn4cSKr--

--------------esjqQ8F5I4dmEiL5NwM4Hhzz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMOeUgACgkQnowa+77/
2zKRMw//VQJxnKnmYoDjIRB/tStvkwgSLZrsMnj5Z+lHKC6GxQUIqmj0/g22u92D
b7X6gukCr1o1q2MKOQ+7sUTPMSIhu+F6gco06HPQdOX7ztVSRQpu2R+hNLinqvn3
DYnxNLzXPFP+Da5bW2mY0OMLHUT9AtqZ6kGLJjrwRcoXOmtxx7m7uKFNscaVE7eo
byidjY0JMHUZ7FIXi8rloMZOWJXgsILR6u6Z7ObCvvLcZvgPXe8m1I0Pm37wr3f/
ohWVx64lm3S94YobwcPwfq4R3IqA5KJdapRXvkNTZoJEGyfDUNGFtjh9En9ADm6R
UW9DSHVw+zCeY2xG8pI2KQ7GCZbgAK99/FRL5ZSZIAUvOFMpv7dPnhRz4Q3hpUpi
LewmMGw35u2az6e4TzjP0TwpalZmzmIFkMDTpHXtSkCeS0mSwY/5okZOON3Np+Gd
GjPq8mE0IysKTIeQ0ZqrIM77J5jvfK0RXjE6g2yZVQ5vKJAz2Ig/GGAZ3mLRI7bw
BxViKwpsLBGq5CgsZjVXG08OPd3PF2n8+twaL6GAFzYLjG+2MWl/OQDT9rRIegy+
OBBKg+sEBi74w53HaDD4wlmj8m8gYuntdEFZ0ggU9RoFZrHOd9vh/6wwfQJPaxLd
ZPnbE3z8RCknebmabDoJOjE7dbc8mPdP/VmzUQDvqi/kPoomiU0=
=Qf7K
-----END PGP SIGNATURE-----

--------------esjqQ8F5I4dmEiL5NwM4Hhzz--
