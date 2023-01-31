Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE416682D03
	for <lists+linux-man@lfdr.de>; Tue, 31 Jan 2023 13:52:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231795AbjAaMwa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Jan 2023 07:52:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbjAaMwa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Jan 2023 07:52:30 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 747DA392A8
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 04:52:16 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id o36so4227851wms.1
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 04:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wu3KRmlPQ+rjVlxmlWf0BMGzqBj8iIwfoXyfuLsrRE=;
        b=OrzPcZUPyQCn2JYvEjsvk8Bv6bmI3MAviIsWAVLQU7oSFrPF2LSZ9kPOPJZRAf3GI1
         iewjkTrcyq+YpV5lKZBxAXMt390rokxrb0pGpxhTUalTBJ0DRnMMV8PhGcFej+76pVOQ
         RY0oCelrowDjgeIUMNGG9KExRqR5IMSiXK4n5DdjlmCk7/kiRcZYSWYmvkJud+lc7ZlV
         rZDp9z87yHEjccK9rnSRiyohMrwTnIg/3iF/ldSwcfdMiTiwFkQsQ9kaHUipu/SRfkkq
         M/RchNx565YTUBLQOynkbw7O8isBCSybWR3/0ZERv0QOfbhCh+36DURHGEYnxtU539x+
         6nDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5wu3KRmlPQ+rjVlxmlWf0BMGzqBj8iIwfoXyfuLsrRE=;
        b=lxVHOVG+7WmxZYUqwFaOX1wT7H2hUW7IGrPYLAn6u8TcIlp013zx+uTHvdkPzQ9bNg
         Kl87hVOEVHVhTCbHy/jC75AqZ/uXPKUXBz7IetZy0qJdjxJblbhEIjQ7xvU+MoaYEbHw
         08420vprvbv+92htV5/o1ilELyz9G6cnu/1CoFUOrqJAkoxiY7pIjOuY8L+dmalOQ7DZ
         jeOPy3hIijEeMK3pL8ozdNhDybVooyBv7FZFo5jH2p5Y8n73SfsgGQQH5KrnKHVsjkGI
         X9khJrINAkQhfJPBz8aZR8H5NbsjZAaNvI/WXEqUGjDYE8ZEBr6Dc00Xzw2j4bH74V/2
         Zwlg==
X-Gm-Message-State: AFqh2krZTBMwsmiKoxvlwuvCvbFeey0pe78g1B+gqWaAdqjyNu0AWKS1
        JOVmqToL38AhgEVjIkFGURJtLaT+m+c=
X-Google-Smtp-Source: AMrXdXv0/c7/Ghh7qWqr53PzKvPAixKQz0W+VSVnlPw8Bi+drvkU6w8asXZbNn23D5X6Sel8bOnPMw==
X-Received: by 2002:a05:600c:4687:b0:3db:2e06:4091 with SMTP id p7-20020a05600c468700b003db2e064091mr44859148wmo.37.1675169534962;
        Tue, 31 Jan 2023 04:52:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n6-20020a7bcbc6000000b003d237d60318sm16092926wmi.2.2023.01.31.04.52.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 04:52:14 -0800 (PST)
Message-ID: <b1496bcd-4cf5-ba8c-8e83-c262f4af178e@gmail.com>
Date:   Tue, 31 Jan 2023 13:51:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] vdso.7: fix risc-v symbol names.
Content-Language: en-US
To:     enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
References: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qL8C0SjCQzK9tqRyXuV10Ksr"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qL8C0SjCQzK9tqRyXuV10Ksr
Content-Type: multipart/mixed; boundary="------------abksbO09gRLKIjE04aBOqjrQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Message-ID: <b1496bcd-4cf5-ba8c-8e83-c262f4af178e@gmail.com>
Subject: Re: [PATCH] vdso.7: fix risc-v symbol names.
References: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>
In-Reply-To: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>

--------------abksbO09gRLKIjE04aBOqjrQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDEvMzEvMjMgMDA6MDIsIGVuaCB3cm90ZToNCj4gVGhlIGtlcm5lbCBnaXQg
aGlzdG9yeSBzYXlzIHRoZSBuYW1lcyBoYXZlIGFsd2F5cyBiZWVuICJfX3Zkc29fIiByYXRo
ZXINCj4gdGhhbiAiX19rZXJuZWxfIiwgc28gSSBhc3N1bWUgdGhpcyB3YXMgYSBjb3B5ICYg
cGFzdGUgbWlzdGFrZSBmcm9tIGENCj4gZGlmZmVyZW50IGFyY2hpdGVjdHVyZS4NCj4gDQo+
IEx1Y2tpbHksIHRoZSBwYXRoIHRvIHRoZSBrZXJuZWwgc291cmNlIHRoYXQgbGV0cyB5b3Ug
Y29uZmlybS9kZW55IHRoaXMNCj4gX2lzXyBjb3JyZWN0IDotKQ0KDQpDb3VsZCB5b3UgcGxl
YXNlIHNpZ24gdGhlIHBhdGNoPw0KDQpBbHNvLCBpdCBzZWVtcyBzb21ldGhpbmcgaXMgYnJv
a2VuIGluIHRoZSBwYXRjaDsgbWF5YmUgdGhlIG1haWxlciBicm9rZSBpdD8gIEkgDQpjYW4n
dCBzZWVtIHRvIGFwcGx5IGl0LiAgUGxlYXNlIGNoZWNrLg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KPiAtLS0NCj4gICBtYW43L3Zkc28uNyB8IDEyICsrKysrKy0tLS0tLQ0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvbWFuNy92ZHNvLjcgYi9tYW43L3Zkc28uNw0KPiBpbmRleCBmYWJiMzRkMGQu
LjlmNDdlZmM3ZCAxMDA2NDQNCj4gLS0tIGEvbWFuNy92ZHNvLjcNCj4gKysrIGIvbWFuNy92
ZHNvLjcNCj4gQEAgLTQ1OSwxMiArNDU5LDEyIEBAIFRoZSB0YWJsZSBiZWxvdyBsaXN0cyB0
aGUgc3ltYm9scyBleHBvcnRlZCBieSB0aGUgdkRTTy4NCj4gICBsIGwuDQo+ICAgc3ltYm9s
IHZlcnNpb24NCj4gICBfDQo+IC1fX2tlcm5lbF9ydF9zaWdyZXR1cm4gTElOVVhfNC4xNQ0K
PiAtX19rZXJuZWxfZ2V0dGltZW9mZGF5IExJTlVYXzQuMTUNCj4gLV9fa2VybmVsX2Nsb2Nr
X2dldHRpbWUgTElOVVhfNC4xNQ0KPiAtX19rZXJuZWxfY2xvY2tfZ2V0cmVzIExJTlVYXzQu
MTUNCj4gLV9fa2VybmVsX2dldGNwdSBMSU5VWF80LjE1DQo+IC1fX2tlcm5lbF9mbHVzaF9p
Y2FjaGUgTElOVVhfNC4xNQ0KPiArX192ZHNvX3J0X3NpZ3JldHVybiBMSU5VWF80LjE1DQo+
ICtfX3Zkc29fZ2V0dGltZW9mZGF5IExJTlVYXzQuMTUNCj4gK19fdmRzb19jbG9ja19nZXR0
aW1lIExJTlVYXzQuMTUNCj4gK19fdmRzb19jbG9ja19nZXRyZXMgTElOVVhfNC4xNQ0KPiAr
X192ZHNvX2dldGNwdSBMSU5VWF80LjE1DQo+ICtfX3Zkc29fZmx1c2hfaWNhY2hlIExJTlVY
XzQuMTUNCj4gICAuVEUNCj4gICAuaWYgdCBce1wNCj4gICAuaW4NCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------abksbO09gRLKIjE04aBOqjrQ--

--------------qL8C0SjCQzK9tqRyXuV10Ksr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPZDu8ACgkQnowa+77/
2zK5+g//d0dFRrYoCFxTK0eyLOlYup1TvoUEjZ/rQKjZP9K3m8Xu6CGXlrwNo33n
u4HV1OmrbzY5euW37lE+78u+SscRa3oVK2xuZw54rRwpiw4v/V+CXue6PJDBhcAz
Z4d4rj5H4Fqd17ASe1lOe0kw8s6n3p2+obelefolnRAc1JX8JK1qJuCBf47+wwdf
FFwoix6Co1ixmuBU0OH5ELYstO++/WRMCBgYJHD5vTMAvXbuhO+/qgmP9fSaWBG5
FFww/UXEa1CjPgoIR8JOKGuyRQ8lomN/GKuphn2U20hP9rY5i1RLvh6fVOA18kdR
APy6g4JU7ARxZaPC7fh5R5+zGjuB4vOEEEvSm72ouTh1WjyjpRUlEoShCyr3BFfE
jNPxWPwKYkIQp7VUxqstf8zxGYIpGHJPkB4dDD5aC+68joCwchxq59aNg1oa+e6k
rqLhtPw7BEGJ+9SWiWmAOjT5sfTOxYNLLR+mG+eR4wN2IXJIgUpeF4YvCnWkwBAA
zy0kZZvJ/laGGU7Bhe6KxarJ6ciLHfsQrA1vzOX01SMlaLiUzZM+6NkjSpgTLEDM
DGueyPhgpCqMfRwjdv9OPwBxTd65akv5kHssNs7bZPVh2akynGH/lfhi9P4ZtO/A
Tz9aMWPzC+xyCK7JjPBhzsU4bhFWnH6vLTHNthzIaAIPtwomkNI=
=nAHt
-----END PGP SIGNATURE-----

--------------qL8C0SjCQzK9tqRyXuV10Ksr--
