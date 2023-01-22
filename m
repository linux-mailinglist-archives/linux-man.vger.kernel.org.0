Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7630C67729D
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:17:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjAVVRy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:17:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbjAVVRy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:17:54 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D104EC147
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:17:52 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso9324561wmc.4
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZHA9Kx4Rhch4IplI1HlhWQhQ8u7X3mQIRgAW1ol27fk=;
        b=aQms1XgsGRO5How1VDYsLlszZJRDMpiurNzsVouYiCgXODWnnzaZFEZLSRCq8PxX91
         g9a6U6USIb9HbxrX3hApBflmGIaNjQthjOwizc7WEGe1/VaeJy1OQITjDBHrZsmUkGeH
         +VnZ6gLcNkFO6vXwIpjx1WdWMJ9p8/3eGSssWnvXI/w6M5SASW247SAbqVX93spJJjkL
         R5o8hNtyDdxJa5ah5EwfC97xySdJ+A7GoDRrPDZl8+W2f7LEp8IP5rfojuR2W2I/aGh5
         dMPFDNX8S+5km3s3SvLWXEdHReypocuO8tfw4ESOhu5w2iVmJy1RfebptNhl/JKPJ2+S
         9Ktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZHA9Kx4Rhch4IplI1HlhWQhQ8u7X3mQIRgAW1ol27fk=;
        b=PVs1wbPLCEo75gW1GDxGC5p/ricUMxFaf8lAj85Q5vKqkQjR4jL/4tAhF8UiHmnt59
         1vvyDZg3rhHzLzuiPepe2z64Ms/gt8jVMZwFlAS9RJYoTI34nCfVRovjt30dmcC4DG/P
         B1ZjzcKdtPs6QqmdH5aoXBuINZgzlASaU0KRE2cSbjrIc7zD8A0P1tOyS/+uR2TmDh1q
         YiE6aL5TLUTNy4NRz2hAMtqGkwuXQemqLvc8Ap5I4wx4JgMYcWNSxjmXDfTG71FK8557
         zl6QId2so4JJbBce+6rZD97PV9xWctkHKeTSw+0MSeR5LOoRbVltwjedSdD3P+rBf3Bp
         Wxeg==
X-Gm-Message-State: AFqh2kpcy3vVsl4buEbI1lxuBNlcADzau0XzDONGwQXsybAfuZyytWPC
        XV+IJ2H0N6b7pHriBWdSmV8=
X-Google-Smtp-Source: AMrXdXuAfJvVABnpiP7Qjswi6AkkD9cVvSR7Y1BE6dyDnKRYhu6k4f0extGsoEX+5rhlrC+PFX22oQ==
X-Received: by 2002:a05:600c:1508:b0:3d3:5166:2da4 with SMTP id b8-20020a05600c150800b003d351662da4mr21504271wmg.8.1674422271139;
        Sun, 22 Jan 2023 13:17:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q7-20020a05600c46c700b003db11dfc687sm9348273wmo.36.2023.01.22.13.17.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:17:50 -0800 (PST)
Message-ID: <57fd9115-7293-bcab-6fe2-8ce573081efc@gmail.com>
Date:   Sun, 22 Jan 2023 22:17:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page ttytype.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193131.GA29164@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193131.GA29164@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Pae02fHvjPUR2lZFAkDePeX5"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Pae02fHvjPUR2lZFAkDePeX5
Content-Type: multipart/mixed; boundary="------------1m9yzEgJhZkXUn3dhVQhi62x";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <57fd9115-7293-bcab-6fe2-8ce573081efc@gmail.com>
Subject: Re: Issue in man page ttytype.5
References: <20230122193131.GA29164@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193131.GA29164@Debian-50-lenny-64-minimal>

--------------1m9yzEgJhZkXUn3dhVQhi62x
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIEk8L2Rldi8+cHJlZml4IOKGkiBJPC9kZXYvPiBwcmVmaXgNCj4gDQo+
ICJUaGUgSTwvZXRjL3R0eXR5cGU+IGZpbGUgYXNzb2NpYXRlcyBCPHRlcm1jYXA+KDUpICBh
bmQgQjx0ZXJtaW5mbz4oNSkiDQo+ICJ0ZXJtaW5hbCB0eXBlIG5hbWVzIHdpdGggdHR5IGxp
bmVzLiAgRWFjaCBsaW5lIGNvbnNpc3RzIG9mIGEgdGVybWluYWwgdHlwZSwiDQo+ICJmb2xs
b3dlZCBieSB3aGl0ZXNwYWNlLCBmb2xsb3dlZCBieSBhIHR0eSBuYW1lIChhIGRldmljZSBu
YW1lIHdpdGhvdXQgdGhlIEk8LyINCj4gImRldi8+cHJlZml4KS4iDQoNCkZpeGVkLg0KDQpU
aGFua3MsDQpBbGV4DQoNCg0KY29tbWl0IGY1YjY1NDkzZDkwMDc4YzNlMzIxZmVjM2ZhYTVl
MGE5N2Y3MGFlYjAgKEhFQUQgLT4gbWFzdGVyKQ0KQXV0aG9yOiBBbGVqYW5kcm8gQ29sb21h
ciA8YWx4QGtlcm5lbC5vcmc+DQpEYXRlOiAgIFN1biBKYW4gMjIgMjI6MTc6MTkgMjAyMyAr
MDEwMA0KDQogICAgIHR0eXR5cGUuNTogZmZpeA0KDQogICAgIFJlcG9ydGVkLWJ5OiBIZWxn
ZSBLcmV1dHptYW5uIDxkZWJpYW5AaGVsZ2VmamVsbC5kZT4NCiAgICAgQ2M6IE1hcmlvIEJs
YWV0dGVybWFubiA8bWFyaW8uYmxhZXR0ZXJtYW5uQGdtYWlsLmNvbT4NCiAgICAgU2lnbmVk
LW9mZi1ieTogQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3JnPg0KDQpkaWZmIC0t
Z2l0IGEvbWFuNS90dHl0eXBlLjUgYi9tYW41L3R0eXR5cGUuNQ0KaW5kZXggYmYwN2IwOGIz
Li41OTg5NTRjODIgMTAwNjQ0DQotLS0gYS9tYW41L3R0eXR5cGUuNQ0KKysrIGIvbWFuNS90
dHl0eXBlLjUNCkBAIC0yMSw3ICsyMSw4IEBAIC5TSCBERVNDUklQVElPTg0KICB3aXRoIHR0
eSBsaW5lcy4NCiAgRWFjaCBsaW5lIGNvbnNpc3RzIG9mIGEgdGVybWluYWwgdHlwZSwgZm9s
bG93ZWQgYnkNCiAgd2hpdGVzcGFjZSwgZm9sbG93ZWQgYnkgYSB0dHkgbmFtZSAoYSBkZXZp
Y2UgbmFtZSB3aXRob3V0IHRoZQ0KLS5JUiAvZGV2LyBwcmVmaXgpLg0KKy5JIC9kZXYvDQor
cHJlZml4KS4NCiAgLlBQDQogIFRoaXMgYXNzb2NpYXRpb24gaXMgdXNlZCBieSB0aGUgcHJv
Z3JhbQ0KICAuQlIgdHNldCAoMSkNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------1m9yzEgJhZkXUn3dhVQhi62x--

--------------Pae02fHvjPUR2lZFAkDePeX5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNp/0ACgkQnowa+77/
2zIiCxAAhsw4oWVqZGXLohcZ5apKjpu3S9yMauyJs60buaDBsmHRhcF7kUwzIJHb
Et3Iec4UYMAgSpdNjML3C48QmwUV+SGqBGyoLCZnC5nCv/9e1W897WtX1U/CwX3e
6eha1CpjNuE5Eh7dVcqiiXYr7rIYUF50GI/WK73LQvDxpTcTwtXB3sw8W1hYSeiw
Xhl5qxw4wHc7BIe/1J4QD4d6wfFedPdF7TGoM2y75/0HQQs9jfLIUc4/MmEaxhGw
vRuRIr4IPNH1fE+fKcSS2YSP7GOlqG47UYJ1tbVWZOpi6p7rwF/GplRhXr8O67Xj
Y782NaKzx8P+WkLXPvUj4hd/mlMe/hUv3G+qfmlMRjWG7WTzq9w6ztcWrwtHzWsM
oHHcLzuY0pRfjlIDQrbtxI7Ym2/pI5n/WuYTNnUJJFpXIa+wR5LASltGw0VlIZ7U
WicLkjLP1d7x0uYa3F6AHnrWd4NcDnyawqyml6iEmEwUcj2FbkkuvGiCUN9EI8LK
YWHocitAAMMce/PT5HJhvfu9J7JUGFhc1aG2Vyh9DS45BPmuWh+9dXsAT5/96K+j
UuYA5ebB+BjgWzKy2gtek5UiYyZNGGWoFvWMjAbn3nVE6FaQqh32H/pk+Ov8+7bL
2piQ78oH1a+aeNkcIfLWk8Q0sDFqzxhu3ecxq2pSniAHjQT4guI=
=yWMq
-----END PGP SIGNATURE-----

--------------Pae02fHvjPUR2lZFAkDePeX5--
