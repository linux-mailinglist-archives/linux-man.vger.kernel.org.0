Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2DD453443E
	for <lists+linux-man@lfdr.de>; Wed, 25 May 2022 21:35:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231519AbiEYTfX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 May 2022 15:35:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241063AbiEYTfF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 May 2022 15:35:05 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E27621260C
        for <linux-man@vger.kernel.org>; Wed, 25 May 2022 12:35:03 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id s28so31330551wrb.7
        for <linux-man@vger.kernel.org>; Wed, 25 May 2022 12:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=cQtPDGEg0GdqISzwGlf47t/3BM/8v8IRWztvGxXbmqg=;
        b=H9LYHpbgfDY36/wylapLvYcr2teyuVml73QtK9lxv9IiAdNUxiCA9g9S/J4XADfBia
         hVS0ku5znIhc3S7kpuc6KhsoMGJfYEFu6/cZyP5Lnkx8y/bWgUs1ygAMneNda/ooxNsE
         SXqYP0H09Tqo1lztq+8+TwrajVLCNA5CyQVBq1FV/18Wi0erwHRRD14F/qbKIo/EPMAr
         doW6OVJ4T+GMgRaqLvBTWjdw1Yi5ejha+YnCVoxu97XtfH5FFa2i0C4pAEq6zs3qzZYW
         g8fOcb/eaIxNGtsOuMJi1lP1fjwPytdCAg+2tvLJeTTP/i/wu5+uEj+anfE4YuN6wcOr
         UHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=cQtPDGEg0GdqISzwGlf47t/3BM/8v8IRWztvGxXbmqg=;
        b=Nj82TFZ8aYXFgkGSZr8+uQQ9jS27O+EJC9IEIJL9RvdjlL9NbRS+qIu4jL/xYCvYGI
         vQLqMke3ROUToBb+CdvvO0hQrw40uSLn4SVHAXg+rDkfT2mfh7lfDNj/aO4RufERFQKt
         B//lSh8gC5r3Xux9U9f8kzkkpGQHYq6rDE2V1BKBzMNR/9T5l8R818IWN1AIFozYE6gS
         Xh4GaCOq+rL6qQhHmcqCMEYw/TNKDyJJXQwjM8IRd0KYqcAfAVloFnCFpEBs2msLpym0
         cKJliXHjtldjJy256bpaVghYnS3iXWrB9MrAvYoDupJGY//CDNBE7/e81N4eTqxTXOsl
         A9jA==
X-Gm-Message-State: AOAM533u6DOUQ0ua/TLFr0PZuKLUhzBKDgeWKRDObvIt0O6UULHq45HN
        v8gmzSB5CLBeBQL8VT+yjOnCZT4dKlk=
X-Google-Smtp-Source: ABdhPJxSzWPoBYiMjKfCdYBzQpc16BNYOFY8FSy2n+C7x+M/DV7NNWub9UkJAwBRr9buwQEeRlYJRQ==
X-Received: by 2002:adf:e90f:0:b0:20f:fb16:2706 with SMTP id f15-20020adfe90f000000b0020ffb162706mr5429343wrm.50.1653507302318;
        Wed, 25 May 2022 12:35:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u2-20020a5d6da2000000b0020fe61acd09sm3080694wrs.12.2022.05.25.12.35.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 12:35:01 -0700 (PDT)
Message-ID: <8a5df4fc-eadb-d2c8-0c9b-b25150cc5f82@gmail.com>
Date:   Wed, 25 May 2022 21:34:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] execve.2: point to exec(3) early
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220525193004.ntmvrmvb4msnoscu@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220525193004.ntmvrmvb4msnoscu@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------F5H2hg6Tr7KLwHzX3n0BrChq"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------F5H2hg6Tr7KLwHzX3n0BrChq
Content-Type: multipart/mixed; boundary="------------bQGyZALHIdEf32zBM0Ld1i0t";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <8a5df4fc-eadb-d2c8-0c9b-b25150cc5f82@gmail.com>
Subject: Re: [PATCH] execve.2: point to exec(3) early
References: <20220525193004.ntmvrmvb4msnoscu@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220525193004.ntmvrmvb4msnoscu@tarta.nabijaczleweli.xyz>

--------------bQGyZALHIdEf32zBM0Ld1i0t
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxIQ0KDQpPbiA1LzI1LzIyIDIxOjMwLCDQvdCw0LEgd3JvdGU6DQo+IE1vc3Qg
cGVvcGxlIGFjdHVhbGx5IHdhbnQgZXhlYygzKSAob3Igb25lIG9mIGl0cyBhbGlhc2VzKTsN
Cj4gdGhlIG1pbnV0aWFlIGFyZSBhIHNlcGFyYXRlLCByYXJlciwgY29uY2VybiwgYW5kIGV4
ZWN2ZSgyKSBoaWphY2tzDQo+IG1hbiBleGVjdmUgZnJvbSBhbGwgdGhlIG90aGVyIGV4ZWMo
MykgYWxpYXNlcw0KPiAoc2ltaWxhcmx5IHRvIGV4ZWMoMXBvc2l4KSwgYnV0IGl0J3MgYXQg
bGVhc3Qgb2J2aW91cyBpbiB0aGF0IGNhc2UgdGhhdA0KPiAgIHlvdSBnb3QgdGhlIHdyb25n
IHBhZ2UpDQo+IA0KPiBSZXBvcnRlZC1pbjogaHR0cHM6Ly90d2l0dGVyLmNvbS9OaXJlQnJ5
Y2Uvc3RhdHVzLzE1Mjk1MzgwNDMwMzk4NTA0OTkNCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVu
aWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCg0K
UGF0Y2ggYXBwbGllZC4NCg0KVGhhbmtzIQ0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMi9l
eGVjdmUuMiB8IDggKysrKysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9leGVjdmUuMiBiL21hbjIvZXhlY3ZlLjIN
Cj4gaW5kZXggMGQ5NTgyNDkyLi4yOGMxNzUxMzIgMTAwNjQ0DQo+IC0tLSBhL21hbjIvZXhl
Y3ZlLjINCj4gKysrIGIvbWFuMi9leGVjdmUuMg0KPiBAQCAtODAsNiArODAsMTQgQEAgVGhl
DQo+ICAgLkkgZW52cA0KPiAgIGFycmF5IG11c3QgYmUgdGVybWluYXRlZCBieSBhIE5VTEwg
cG9pbnRlci4NCj4gICAuUFANCj4gK1RoaXMgbWFudWFsIHBhZ2UgZGVzY3JpYmVzIHRoZSBM
aW51eCBzeXN0ZW0gY2FsbCBpbiBkZXRhaWw7DQo+ICtmb3IgYW4gb3ZlcnZpZXcgb2YgdGhl
IG5vbWVuY2xhdHVyZSBhbmQgdGhlIG1hbnksIG9mdGVuIHByZWZlcmFibGUsDQo+ICtzdGFu
ZGFyZGlzZWQgdmFyaWFudHMgb2YgdGhpcyBmdW5jdGlvbiBwcm92aWRlZCBieSBsaWJjLA0K
PiAraW5jbHVkaW5nIG9uZXMgdGhhdCBzZWFyY2ggdGhlDQo+ICsuQiBQQVRIDQo+ICtlbnZp
cm9ubWVudCB2YXJpYWJsZSwgc2VlDQo+ICsuQlIgZXhlYyAoMykuDQo+ICsuUFANCj4gICBU
aGUgYXJndW1lbnQgdmVjdG9yIGFuZCBlbnZpcm9ubWVudCBjYW4gYmUgYWNjZXNzZWQgYnkg
dGhlDQo+ICAgbmV3IHByb2dyYW0ncyBtYWluIGZ1bmN0aW9uLCB3aGVuIGl0IGlzIGRlZmlu
ZWQgYXM6DQo+ICAgLlBQDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------bQGyZALHIdEf32zBM0Ld1i0t--

--------------F5H2hg6Tr7KLwHzX3n0BrChq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKOhNkACgkQnowa+77/
2zLCsA//fqhHnkoGvAS01mhB2d+zp1btb0iPqxTwsyuHHtScf/RsWVNWfz8QkQPC
tacOeIk40mhynngl/6t9OpAMDoXKthUCTiWl8mKH43P8Fd5CWiAWugvyvB1UHVMO
/RUnphEQSLwMBoDQ34/JHynPoNhSPxDBKb90Jm5K2N9qfZVCBz1Yw0OuBy/2DrEl
x9YDzce22ynT7INplaQcLm+ZaNnlllVZjGVU+e8x/9obZFuAW8DrMnO20OFvQmhF
5kglzqPCWMdLFWJuER1xOwgpjqfItnaXfH1zsuLISqZA8TjI9M94cnP/zqlkF9mV
u+nEfp03av+kyXOMSTxCtBymhX2+EclnLnElq01lYQWlX8QtC+IBT925JQyiVWwx
ypOweMsFy0+V0wFx7S3EDe9yGCxjOfNrl1t1g3OpiG+G5d3hAwjaIH0WpSVSeJ9j
2Oqhkd+Pmf6Yin8FG/Q0IuseIt4YZ8s/KII0zdI9cD49MNYm9TH5eZD6olDkv2FK
o9+nfqso+HcmXxsWmh5/k+JsJ4BCjPKtyWkGce62L3eThLRCPGsolnn4wZHaIcKR
WimcEiBidQSsY9PuZAZvXKJn5MzHcZgGV5h9lVHsDaOtX3btBMxSI2PAaEMZvXMU
3Tj/rrZO2m8PmhcuRb9i62m3k1wH9DC3fuoGQZbBPrsV3YHwBjA=
=z4pC
-----END PGP SIGNATURE-----

--------------F5H2hg6Tr7KLwHzX3n0BrChq--
