Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA28A658714
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:32:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231635AbiL1Vcc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:32:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231607AbiL1VcW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:32:22 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06268B1FE
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:32:21 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so15103287wma.1
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KCFDOJ9IzeUpVdsD9b3xGd7Oczj1CanWjXZ2/DN/8r8=;
        b=KKzPRl1oNIIyRzo9K+3lLZoreaWjsog3aQoE/4Ty+B1ViSvnJ/1lEBe+8xntae6XRf
         CWNDEaAuIm1VEztWIwPEf2mbF2NpJg9ln2+Yo6kKQXgyoRur4d9UHaBNBWod7Q6ImVpg
         0+BzLxnu+KfdqiC7gpqT1w5oJ0xNAmHEbbPuz0JlasSgozZHri511UU1f6aNl2EnPhkm
         xuyvasFJi7t4pDIklO3egfa2CSgGnong3jj8mCoavYAVP7GcPuv83TtmhqKcNlWZZ4q6
         qIOKHz96XM4wgNdLp6h6WQv6peTlptd8h9/aWzHCiJD5IfBmjkIfmbxxm9ID+lOEwd3G
         vY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KCFDOJ9IzeUpVdsD9b3xGd7Oczj1CanWjXZ2/DN/8r8=;
        b=OZdsJL2Po+YRimqSW3mQOwDClgLKZV3lVB18HFm2fEbxo3cj6+mvwRhQ5hMdgn2Nko
         GCOdKs4v+ZstCPLA1vBehk4rlu6d0gXpeqg7R1xwPr/jgajBMP0iRcGDjFg876Uj/5VK
         7XB1ZUT5SZW7LJIlzSC1UADjlIa4S8zQ7h9GiTF0dyqLff7WOq614KwrDVxa8l+jb7qH
         TQtkSS20WTlh35kXIsqrCBfXe1tZKffLMEuWAEDvtZZ7e6kTs/plUwntDnwgEeDmzr0v
         GXy0ux1R096IXV+XWwF4KIVBJRByAvpucKiBZE1rrTOpMUbMa8P2KyoClSiR23doEESC
         QMag==
X-Gm-Message-State: AFqh2kqf+gsK0Pg3RnqMhUg3GogopN+PlV6n2aIpgY0ZXTXdmtFxizeK
        gQYhtK0e/DL26q4srnuvdGQ=
X-Google-Smtp-Source: AMrXdXvcy4f7s2C/gH6GpIW5D3PY8k6kJ9SsQAX2aM+JehBrZ1NGJGwDquBZS39m56ArYllEwmWPTw==
X-Received: by 2002:a05:600c:3485:b0:3d0:761b:f86 with SMTP id a5-20020a05600c348500b003d0761b0f86mr18524765wmq.28.1672263139594;
        Wed, 28 Dec 2022 13:32:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n36-20020a05600c3ba400b003b49bd61b19sm28172981wms.15.2022.12.28.13.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:32:19 -0800 (PST)
Message-ID: <972c5604-ff05-43c6-ec8d-edda8f8d885b@gmail.com>
Date:   Wed, 28 Dec 2022 22:32:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     Jonny Grant <jg@jguk.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
 <54a26539-30c6-b787-7741-39baa28f42cb@gmail.com>
 <558d5ceb-a35e-d990-c9c8-72a7a7784d4c@jguk.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <558d5ceb-a35e-d990-c9c8-72a7a7784d4c@jguk.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0mRD7CSu0onlyKeE4Y1ExJ0B"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0mRD7CSu0onlyKeE4Y1ExJ0B
Content-Type: multipart/mixed; boundary="------------RVnh0xBQeDqIWZSJG0IvShvW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonny Grant <jg@jguk.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <972c5604-ff05-43c6-ec8d-edda8f8d885b@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
 <54a26539-30c6-b787-7741-39baa28f42cb@gmail.com>
 <558d5ceb-a35e-d990-c9c8-72a7a7784d4c@jguk.org>
In-Reply-To: <558d5ceb-a35e-d990-c9c8-72a7a7784d4c@jguk.org>

--------------RVnh0xBQeDqIWZSJG0IvShvW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDEyLzI4LzIyIDIyOjI1LCBKb25ueSBHcmFudCB3cm90ZToNCj4gVGhhdCBl
eGFtcGxlIHByb2dyYW0gbG9va3MgZ29vZCwgdGhhbmsgeW91IGZvciB0YWtpbmcgdGhlIHRp
bWUgdG8gcHJlcGFyZSB0aGF0IHBhdGNoLg0KPiBKb25ueQ0KDQpUaGFua3MhDQoNClRoaXMg
aXMgbXkgdjI6DQoNCkl0IGRvZXNuJ3QgcmVjb21tZW5kIGxpYmJzZCdzIGFyYzRyYW5kb20o
KS4NCkl0IGFsc28gc2hvd3MgdGhhdCBhcmM0cmFuZG9tIGlzIGp1c3QgYSB3YXkgdG8gZ2V0
IGEgcmFuZG9tIHNlZWQsIGFuZCBwcmludHMgaXQsIA0KYnV0IHRoZW4gaXQncyBhcyAiYmFk
IiBhcyBhbnkgb3RoZXIgcnVuIG9mIHNyYW5kKDMpICsgcmFuZCgzKS4NCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCmRpZmYgLS1naXQgYS9tYW4zL3JhbmQuMyBiL21hbjMvcmFuZC4zDQppbmRl
eCA1NzI0NzE3NDkuLjA4YWQwYTgyMiAxMDA2NDQNCi0tLSBhL21hbjMvcmFuZC4zDQorKysg
Yi9tYW4zL3JhbmQuMw0KQEAgLTE5MCw2ICsxOTAsOSBAQCAuU0ggRVhBTVBMRVMNCiAgcHNl
dWRvLXJhbmRvbSBzZXF1ZW5jZSBwcm9kdWNlZCBieQ0KICAuQlIgcmFuZCAoKQ0KICB3aGVu
IGdpdmVuIGEgcGFydGljdWxhciBzZWVkLg0KK1doZW4gdGhlIHNlZWQgaXMNCisuSVIgXC0x
ICwNCit0aGUgcHJvZ3JhbSB1c2VzIGEgcmFuZG9tIHNlZWQuDQogIC5QUA0KICAuaW4gKzRu
DQogIC5cIiBTUkMgQkVHSU4gKHJhbmQuYykNCkBAIC0yMTEsNyArMjE0LDEzIEBAIC5TSCBF
WEFNUExFUw0KICAgICAgc2VlZCA9IGF0b2koYXJndlsxXSk7DQogICAgICBubG9vcHMgPSBh
dG9pKGFyZ3ZbMl0pOw0KDQorICAgIGlmIChzZWVkID09IC0xKSB7DQorICAgICAgICBzZWVk
ID0gYXJjNHJhbmRvbSgpOw0KKyAgICAgICAgcHJpbnRmKCJzZWVkOiAldVxlbiIsIHNlZWQp
Ow0KKyAgICB9DQorDQogICAgICBzcmFuZChzZWVkKTsNCisNCiAgICAgIGZvciAodW5zaWdu
ZWQgaW50IGogPSAwOyBqIDwgbmxvb3BzOyBqKyspIHsNCiAgICAgICAgICByID0gIHJhbmQo
KTsNCiAgICAgICAgICBwcmludGYoIiVkXGVuIiwgcik7DQoNCg0KLS0gDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------RVnh0xBQeDqIWZSJG0IvShvW--

--------------0mRD7CSu0onlyKeE4Y1ExJ0B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOsteEACgkQnowa+77/
2zIZOA//SaPp4WsEfHefQKHKVsz3T1aya0E4xWqZHcUCjmcLg3p/UYFgCeYuboGQ
X33ILm8HSDlYHrtjsoGRHcwectSmwe9UNslAHSZZ0/MUqSPBCAuDM7UrmoY9iurT
Vbq5iP7eFr4MBSNXFfeWksErx8OsryK0coBD3nHuKWeG6s1ASD6hRMqSHygZ0IX4
8L5DQjBawhfts+RCBrYe8PtpLfNO/5hN57tOMnlNOCxo9l/Q+x+RpBWhsDdnEWkq
6MPz1yRnjlTzQS/fWp+ZL898Y6V8U0QymYZqo6WVOJNaHjbD0WKougUbQvCWOoJC
adrL3TCoj6EYUDjYksRY66Q+NHrDc7WEBgTkjsjdCTa/bzww2mQfH0DHeNAUXqZc
L9qJohTbQcw/P/PlV5Tu7MhgTWZVRPWidhICYrIO9B34VYEng2OAis3YvJpylneE
9lonXmQ7TqtLXQzxXnFqagnqaXf1SeAXqnXOsuzphMqNQPfILNrj+9hyNpmmUHUI
uJA6Qpx8/uOfAs6atpk1yYqJj/CN7R+UiHEsjINTj1bgH54SEpvgYr+VqEAPs7oF
TPyiN1+0pyWubkUItaiFU+iEHs3/jNNzLPIZe5kan4dKHlCRFjHI3pG+vNQuo8zu
UTs+OKfTMu6UCdQfotSYaIoSPIK7fZQ+OgOR0QSbr913Nl5QRgg=
=b/it
-----END PGP SIGNATURE-----

--------------0mRD7CSu0onlyKeE4Y1ExJ0B--
