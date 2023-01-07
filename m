Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13BC9660E96
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:09:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbjAGMJ0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:09:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232172AbjAGMJY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:09:24 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E54A5D405
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:09:21 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id w1so3522361wrt.8
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CIpnuzUBoS0ie1cNBdHF93X/kDU/lfa+/sXc+qrMyXQ=;
        b=RRAjRzh6xcq0kDcEKAUkxMROPU8u2VB02TmTOALzFRGVNtiD+JihtfRcCKjyXvX1c7
         hH4lIzm/SIuf/LidGOnSzuwHZKRFss9f9MW0lWAgVWfOcZ8EBvj2jMMqH3+1V7OA1+K3
         Lt6h9d48S9XJOMYYzoM10VmaTehM0dgbt0H7o36vmoxKmOMKpwvh36Mn0p3l1uQLwQS6
         wmjm17nA9JO1RWpsgpBIk//NkHP77DYqYd+uM4uQmCfRh+jbwGjHlPSK5kWgBh7fjdJB
         0akppj1++/UQiW4/Vn6XPA2sASZvnpKv86WMf+DQItV5KBge8kCPBuk+S9VUWFWTplY9
         T5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CIpnuzUBoS0ie1cNBdHF93X/kDU/lfa+/sXc+qrMyXQ=;
        b=V8QhiDIZI0IpGX380QU8844ja9U8eexlisDsuabu6MEEpXNDU+leQZ4XlXUUR4VIGj
         6hp8FIzQM8paOA/URk+nhDFWRAZvukpgNL/sK+0SBmBYGapCOfOSdvvUYZ/NlRWyicFH
         wVqLbgXyX+TTPlwXVwWppoTYJQ099vQzSUI4SkFhEz9Ztb2Gdaj1jtDVACcbD+qn8ZEN
         kaKBclJGxCUiL7v8UfDEprPzFbvxJoGHOCjgC7sjYf2c0BtEYHOltSsr1Q7bfQzJUy63
         Qbo1IfMliHpz6Jqxp8PaRTN9PslZ7rKye/Pcog5LwjeTQCmbgJnZQTFp/euH9YLGHnqW
         IQfg==
X-Gm-Message-State: AFqh2koMiutfquqClN/Q3HgzWOy1xciju4uC2k8CoyFL4qH0zG1T1I26
        KoO43LWebY2WmXCKDeilXUQ=
X-Google-Smtp-Source: AMrXdXtfW/fpSKGcxmvDzEHUk1XoXhz5WBavapxrJWlrkZZU7borwBeRArTWnvqIwyxz1gB5CvRB7A==
X-Received: by 2002:a05:6000:383:b0:242:5a80:79b8 with SMTP id u3-20020a056000038300b002425a8079b8mr38068677wrf.20.1673093360214;
        Sat, 07 Jan 2023 04:09:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n5-20020adfe785000000b00281eab50380sm4162282wrm.117.2023.01.07.04.09.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:09:19 -0800 (PST)
Message-ID: <97ab0bfa-5c10-f8bd-7f39-edc5031ff648@gmail.com>
Date:   Sat, 7 Jan 2023 13:09:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 03/10] libc.7: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095431.6rnc3hczostxl2iv@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107095431.6rnc3hczostxl2iv@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JrdbuTP0HnjOwJ025yQ08NtI"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JrdbuTP0HnjOwJ025yQ08NtI
Content-Type: multipart/mixed; boundary="------------0F3lFPlc0g4tH4ejXa2G03fr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <97ab0bfa-5c10-f8bd-7f39-edc5031ff648@gmail.com>
Subject: Re: [PATCH v4 03/10] libc.7: ffix
References: <20230107095431.6rnc3hczostxl2iv@illithid>
In-Reply-To: <20230107095431.6rnc3hczostxl2iv@illithid>

--------------0F3lFPlc0g4tH4ejXa2G03fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAxMDo1NCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gKiBT
ZXQgcGFnZSB0b3BpYyBpbiBsb3dlcmNhc2UuDQo+ICogVXNlIHR5cG9ncmFwaGVyJ3MgcXVv
dGF0aW9uIG1hcmtzIGluc3RlYWQgb2YgJyInIGZvciBxdW90YXRpb24uDQo+ICogSHlwZXJs
aW5rIHRoZSB0ZXh0ICJHTlUgQyBMaWJyYXJ5IiB0byBpdHMgd2Vic2l0ZS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IEcuIEJyYW5kZW4gUm9iaW5zb24gPGcuYnJhbmRlbi5yb2JpbnNvbkBn
bWFpbC5jb20+DQoNClBhdGNoIGFwcGxpZWQuICBUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0N
Cj4gICBtYW43L2xpYmMuNyB8IDExICsrKysrKy0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9t
YW43L2xpYmMuNyBiL21hbjcvbGliYy43DQo+IGluZGV4IGJiYTQ5ZGE0Mi4uNDNlYzAyNjlm
IDEwMDY0NA0KPiAtLS0gYS9tYW43L2xpYmMuNw0KPiArKysgYi9tYW43L2xpYmMuNw0KPiBA
QCAtNywxNyArNywxOCBAQA0KPiAgIC5TSCBOQU1FDQo+ICAgbGliYyBcLSBvdmVydmlldyBv
ZiBzdGFuZGFyZCBDIGxpYnJhcmllcyBvbiBMaW51eA0KPiAgIC5TSCBERVNDUklQVElPTg0K
PiAtVGhlIHRlcm0gImxpYmMiIGlzIGNvbW1vbmx5IHVzZWQgYXMgYSBzaG9ydGhhbmQgZm9y
DQo+IC10aGUgInN0YW5kYXJkIEMgbGlicmFyeSIsDQo+ICtUaGUgdGVybSBcKGxxbGliY1wo
cnEgaXMgY29tbW9ubHkgdXNlZCBhcyBhIHNob3J0aGFuZCBmb3INCj4gK3RoZSBcKGxxc3Rh
bmRhcmQgQyBsaWJyYXJ5XChycQ0KPiAgIGEgbGlicmFyeSBvZiBzdGFuZGFyZCBmdW5jdGlv
bnMgdGhhdCBjYW4gYmUgdXNlZCBieSBhbGwgQyBwcm9ncmFtcw0KPiAgIChhbmQgc29tZXRp
bWVzIGJ5IHByb2dyYW1zIGluIG90aGVyIGxhbmd1YWdlcykuDQo+ICAgQmVjYXVzZSBvZiBz
b21lIGhpc3RvcnkNCj4gICAoc2VlIGJlbG93KSwNCj4gLXVzZSBvZiB0aGUgdGVybSAibGli
YyINCj4gK3VzZSBvZiB0aGUgdGVybSBcKGxxbGliY1wocnENCj4gICB0byByZWZlciB0byB0
aGUgc3RhbmRhcmQgQyBsaWJyYXJ5IGlzIHNvbWV3aGF0IGFtYmlndW91cyBvbiBMaW51eC4N
Cj4gICAuU1MgZ2xpYmMNCj4gLUJ5IGZhciB0aGUgbW9zdCB3aWRlbHkgdXNlZCBDIGxpYnJh
cnkgb24gTGludXggaXMgdGhlIEdOVSBDIExpYnJhcnkNCj4gK0J5IGZhciB0aGUgbW9zdCB3
aWRlbHkgdXNlZCBDIGxpYnJhcnkgb24gTGludXggaXMgdGhlDQo+ICAgLlVSIGh0dHA6Ly93
d3cuZ251Lm9yZ1w6L3NvZnR3YXJlXDovbGliYy8NCj4gK0dOVSBDIExpYnJhcnkNCj4gICAu
VUUgLA0KPiAgIG9mdGVuIHJlZmVycmVkIHRvIGFzDQo+ICAgLklSIGdsaWJjIC4NCj4gQEAg
LTUwLDcgKzUxLDcgQEAgdGhlcmUgd2FzIGZvciBhIHdoaWxlDQo+ICAgYSBmb3JrIG9mIGds
aWJjIDEueCBjcmVhdGVkIGJ5IExpbnV4IGRldmVsb3BlcnMgd2hvIGZlbHQgdGhhdCBnbGli
Yw0KPiAgIGRldmVsb3BtZW50IGF0IHRoZSB0aW1lIHdhcyBub3Qgc3VmZmljaW5nIGZvciB0
aGUgbmVlZHMgb2YgTGludXguDQo+ICAgT2Z0ZW4sDQo+IC10aGlzIGxpYnJhcnkgd2FzIHJl
ZmVycmVkIHRvIChhbWJpZ3VvdXNseSkgYXMganVzdCAibGliYyIuDQo+ICt0aGlzIGxpYnJh
cnkgd2FzIHJlZmVycmVkIHRvIChhbWJpZ3VvdXNseSkgYXMganVzdCBcKGxxbGliY1wocnEu
DQo+ICAgTGludXggbGliYyByZWxlYXNlZCBtYWpvciB2ZXJzaW9ucyAyLCAzLCA0LCBhbmQg
NSwNCj4gICBhcyB3ZWxsIGFzIG1hbnkgbWlub3IgdmVyc2lvbnMgb2YgdGhvc2UgcmVsZWFz
ZXMuDQo+ICAgTGludXggbGliYzQgd2FzIHRoZSBsYXN0IHZlcnNpb24gdG8gdXNlIHRoZSBh
Lm91dCBiaW5hcnkgZm9ybWF0LA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------0F3lFPlc0g4tH4ejXa2G03fr--

--------------JrdbuTP0HnjOwJ025yQ08NtI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5YO4ACgkQnowa+77/
2zJsNw//fqTjkVi6bd2t35qk26dzTaX1foLFu8WZ+DcA5YSni581AEbASPzeRxt3
dzk1QQkczZp8fjI8d8BMeYP4a5rd1NtApFPlK/fyJ+UpvjFsbrc9+S/rfYdzwA7o
X0N1IGi+dVnFAvGRXYysu//YHu3zB0GeP40IsbdjsJ6y0JAk+7tY89fJydi6Q1Fe
ztSmfvVf+VUgOYW2q+uEioUsm83KFnOAP+nclqOJZUmnA0wCUppceF5u7gwyJCm0
n9/dfPb5dyRgmbvq+LlfvrBDEwXrwoa/9M2V3dC0dQw0kpl9lJ150IAqGmSx3WEl
6mMHioSbxq3VxuvYd7jSBXjuflBbOUGgLcgnZJydByZrwdHqvmVm4hBtZc2xnP1r
q7bEUWIQXmjYo/1epGXGOFMXT95s2CD/gjchFCyNzEVNxIRb94WeTn2GpAFsVn1K
9PYm3SEPl2Lh4DDhHz432hhg22T2dE1LaUN8R5sYpFeP8bX6vP3een4YztKgtp9C
cb+6cMQKnfQHFnzVchDELuAQqXj0I0UP1BcxlioJnl7zVmbM7q5ej9FS/FfGpmaN
+zvZjg3Y0gYyXZ3+wnw2mgAqD0Y0D4lmjVntBUC4jlpBz1h6nkM6eb+IvzJ+5U2H
euRUgjXSVx3YpZFiZf+HXAxKyxWA9/rUkowDA+X4E5q5p1f1eO4=
=oVN+
-----END PGP SIGNATURE-----

--------------JrdbuTP0HnjOwJ025yQ08NtI--
