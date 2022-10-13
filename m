Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9303F5FE292
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 21:19:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbiJMTTj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 15:19:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiJMTTj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 15:19:39 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2AEA152C63
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 12:19:34 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id w18so4331221wro.7
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 12:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FXHUzY8fspMPhh5xjs7+IyRv5+69nNQj1mxNw1b7fOk=;
        b=BuRQtbtVB5iUZrrf44JE28LNxnlq2AiQSZRFqvuVxOqEh59LMffb/KTwzWMU+KYqUg
         RXu/ueU6pYDv+od3K18laDH1aKUoNWs4iaEPYCYVL4Y0Di9YHra0RkQw1LCovYtMbj3O
         JQHu7cSRV0gA6WCEsLxZU7Q9hQneMBuoZOOkgv0KQf+3/vvHAd6ORwzZ1E7AC1x2OCpO
         VQlcHwejIwUxKQh93S1SDprj2ypbC8dbuOoWZx8o36mgzTbD1/Y+qYCJthTIeRydu5fD
         TAXRu8d1GbmHD20UGTXyGcstQhitP1S6jcjCrrJ0Bm3RD9HNrTiUxZFzlT4wmrF0SWgl
         Ur9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FXHUzY8fspMPhh5xjs7+IyRv5+69nNQj1mxNw1b7fOk=;
        b=XBT+j48wUGxdcFduzh/sfLTXUjMMmYCT9r2FE7djtKT8W62qquVTnF0b003Jyf8bPC
         jxDX/1jsd08pZCbLvkQf66tfXyLMy8auYKCV+nUt4gzBr+JxO3JP9Dvw5FVpW2aw+L2m
         sEBDdQs5bUcZ8Y6vcxPuKHDOD4WCwb8E0/JZWviHFWaGkeDq9FQsoasnwCx5SPzuMhPf
         TmAEIDFyCSkCZ+/RrEn77KTrzweavNjMoglwjkDfRlistzd3J7VYvCnf0pbETIhmjknb
         D70u3Whjf6/kxyM41w+P8cOLZOGWspIKC9yhIAFyOUgU2gHTAsbIT1iXs+n+HtsMHsyO
         lMwg==
X-Gm-Message-State: ACrzQf1eVFbxdMsr3Y3kibMBCFCqEiJX5boEHOLNxzPYOhlw0ePhAivz
        JYYF8vgT+jYRSjTt6L9xdKKwkRC3LNo=
X-Google-Smtp-Source: AMsMyM5Ntj1zM7xuyVj0nz374VtnKkX/XYpbkYD2W17PdLGKra4J1/D2aBUj8ll5j3hm6gKzi5v2dA==
X-Received: by 2002:a5d:584b:0:b0:232:b68c:9e6 with SMTP id i11-20020a5d584b000000b00232b68c09e6mr944759wrf.111.1665688772762;
        Thu, 13 Oct 2022 12:19:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a1-20020adfdd01000000b0022add371ed2sm292529wrm.55.2022.10.13.12.19.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 12:19:32 -0700 (PDT)
Message-ID: <bba53c12-bf59-e9f1-4649-14644904801f@gmail.com>
Date:   Thu, 13 Oct 2022 21:19:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
 <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
 <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mL9RpVUkYhrzzcCXR0Aj4P0B"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mL9RpVUkYhrzzcCXR0Aj4P0B
Content-Type: multipart/mixed; boundary="------------Xx6MDVHxlqG5ABmX0MSb6Phi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <bba53c12-bf59-e9f1-4649-14644904801f@gmail.com>
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
 <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
 <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
In-Reply-To: <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>

--------------Xx6MDVHxlqG5ABmX0MSb6Phi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMTMvMjIgMjA6NTIsIFNhbSBKYW1lcyB3cm90ZToNCj4+DQo+PiBQbGVhc2UgdXNl
IHNlbWFudGljIG5ld2xpbmVzLiAgU2VlIG1hbi1wYWdlcyg3KToNCj4+DQo+PiAgICBVc2Ug
c2VtYW50aWMgbmV3bGluZXMNCj4+ICAgICAgICBJbiB0aGUgc291cmNlIG9mIGEgbWFudWFs
IHBhZ2UsIG5ldyBzZW50ZW5jZXMgIHNob3VsZCAgYmUNCj4+ICAgICAgICBzdGFydGVkIG9u
IG5ldyBsaW5lcywgbG9uZyBzZW50ZW5jZXMgc2hvdWxkIGJlIHNwbGl0IGludG8NCj4+ICAg
ICAgICBsaW5lcyAgYXQgIGNsYXVzZSBicmVha3MgKGNvbW1hcywgc2VtaWNvbG9ucywgY29s
b25zLCBhbmQNCj4+ICAgICAgICBzbyBvbiksIGFuZCBsb25nIGNsYXVzZXMgc2hvdWxkIGJl
IHNwbGl0IGF0IHBocmFzZSBib3VuZOKAkA0KPj4gICAgICAgIGFyaWVzLiAgVGhpcyBjb252
ZW50aW9uLCAgc29tZXRpbWVzICBrbm93biAgYXMgICJzZW1hbnRpYw0KPj4gICAgICAgIG5l
d2xpbmVzIiwgIG1ha2VzIGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiBwYXRjaGVz
LA0KPj4gICAgICAgIHdoaWNoIG9mdGVuIG9wZXJhdGUgYXQgdGhlIGxldmVsIG9mIGluZGl2
aWR1YWwgc2VudGVuY2VzLA0KPj4gICAgICAgIGNsYXVzZXMsIG9yIHBocmFzZXMuDQo+Pg0K
PiANCj4gTWVhIGN1bHBhIC0tIGxldCBtZSByZWFkIHRoYXQgb3ZlciBhZ2FpbiA6KQ0KDQpJ
ZiB5b3UncmUgY3VyaW91cywgaGVyZSB5b3UnbGwgZmluZCBhIGJpdCBtb3JlIGFib3V0IGl0
Og0KPGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4t
cGFnZXMuZ2l0L2NvbW1pdD9pZD02ZmY2ZjQzZDY4MTY0Zjk5YThjM2ZiNjZmNDUyNWQxNDU1
NzEzMTBjPg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQo=

--------------Xx6MDVHxlqG5ABmX0MSb6Phi--

--------------mL9RpVUkYhrzzcCXR0Aj4P0B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIZMMACgkQnowa+77/
2zJBGQ/9G0CbVkEwI9gNjQFKjN99TpLP5AyiJonaJUQXYZO7DbliJxQjjwXFSDXe
XuKfDMQ6VlvdkMLIqkNyPvSTe+NfGFbNVXisAGhCntJFKI/gP1tjQS4n6iHvoISe
TdbTrrt4kPvfqfhQa/demdIj6DrD05KGYfAErMv52uZh2tN4kRpaBQyUnDoLhOqj
Xpl2vW04meorz5jDFOFIoZFbS90qfuZpIpgnVZG2B/HQljob5kMNdxIDXxhWs1P7
W5n2K0PSejPbKwOkcCHOLcdoBb08BtHOhp5QUI9Ow1EbJax0de45C8yZoxycI6H1
cSDTnnRA7tJeooTz6ZZFBhFvgbHL/QeQdZTgXLbaqN7WkC/cJhJAtCMBFD6xcLKZ
adjce7TUA0UKRhtEr8QF6pRgSEdrYiAXQHf0oEE5rl2XpD9Yr9qgo+ZjN40mPPvm
4Tev0bUA+QPwm7wfFRJVsvkDqP1ykcumSckgH0iN8eTbI6PDuQfdId0lneU0G6Da
8X3Cnd6O9HJZcjESuoqwzx6eXeaGHdYOa2MWdYLpEddT7NUaUxsxeKAbo5Aiuxuv
9XRaVIzZH7gkjS0+HQUMTUbM52zXi530M2v2u0SDDcTRnjuGhFgIxfDpXvkIXBRQ
vwtlscBZPjOQfdQKRzOjjU9CEJvXlOyz7yL9bp8BLDZqmyFWW0o=
=e80L
-----END PGP SIGNATURE-----

--------------mL9RpVUkYhrzzcCXR0Aj4P0B--
