Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3533659AE63
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 15:12:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346657AbiHTNFK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Aug 2022 09:05:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347234AbiHTNFB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Aug 2022 09:05:01 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1399F8A6CA
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 06:05:00 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id k6-20020a05600c1c8600b003a54ecc62f6so3715158wms.5
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 06:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=AydQHz5kfny2gdn1zUuOYuUIDZu1pfZmJ1cezDyxDQA=;
        b=I1L2+1qqhz9ZFjn11OhiT8nr1hiS1WsaRaXsYX/BgESkNEooDlJI6o3UfHjY10eMkA
         sX9wZ6IuQGpr8dOCKuEvmxwu9e47hYvH/trklrtHJKTTCBjNa8n73xbweJZL+pQjtX4y
         xvebk0VI87c4BZa35+HzN28wirWn3yxHBUA/HLxA6wxS2542erHLzT3MsMNPIcx8V9IS
         eWkNBtxKCx+KV9LIY0KPdB5jQxJSDM4L5en+QoMOOONBgbw0XpJqum2cBvcHsS6uPTOx
         yGzZ3Xf3jx8Z7dBTgPM/Srav5xz0wUzo/i3ltDyvVwXhnm8bVocnlgtzyyEzqWGlXj8J
         b0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=AydQHz5kfny2gdn1zUuOYuUIDZu1pfZmJ1cezDyxDQA=;
        b=rLtj1isQJytejDQ/WjkoBXFoyKZ135P5HPBMMNA5mEKBhc7m1knqbYwvHa25YN8pxB
         Ws3Fc+CuhcaYZ98CWX7IG+Bd5sAwBQBVjF9f0HcvPCBZABI9pvEd8FAoNm0p0Dd/5Mzi
         vS6YS02scPGmkoqFgwyF6inIQs4UcK46QoUrI/FJ8jk/GXDJwymJL0DitvyRIPZqx2uB
         HGWLuju8TSFyme0gjx9H2P20xnDzXlcj3ZXQIUnO035xCqeNDyI73DPYMk4+YssTs5pX
         4NJ/KMsfJFyI+ByykCuWyJHBJmVrKRKyCT/ZgcUL9awBRM5US649DMchjg1CfhmDDW4E
         ZRTg==
X-Gm-Message-State: ACgBeo2CSpU5Zwpd2w2LHEFBp/vyVOgW0O1DwZTR+AonDcwm5bz6P4sU
        jmLfSaHd3jnBIRqHknd6rho=
X-Google-Smtp-Source: AA6agR42zallD3GIEm1C+Z8rIU5oFIPNUlPiiZWjkzW8ptfV39eiWEb2e3Hmo3EnxdwsbZveiVooWg==
X-Received: by 2002:a1c:6a0a:0:b0:3a5:bcad:f2cc with SMTP id f10-20020a1c6a0a000000b003a5bcadf2ccmr10662466wmc.74.1661000698361;
        Sat, 20 Aug 2022 06:04:58 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m128-20020a1c2686000000b003a5dbdea6a8sm14017042wmm.27.2022.08.20.06.04.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Aug 2022 06:04:57 -0700 (PDT)
Message-ID: <67ad80cd-fc55-8636-7d50-4c29865f8c4b@gmail.com>
Date:   Sat, 20 Aug 2022 15:04:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
In-Reply-To: <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3BGA4dmuXHLogvGSE8IoFOQh"
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
--------------3BGA4dmuXHLogvGSE8IoFOQh
Content-Type: multipart/mixed; boundary="------------5tgZxXs3EFP0hfwPTb6tb0m0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <67ad80cd-fc55-8636-7d50-4c29865f8c4b@gmail.com>
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
In-Reply-To: <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>

--------------5tgZxXs3EFP0hfwPTb6tb0m0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gOC8yMC8yMiAxNDo0MCwgQWxlamFuZHJvIENvbG9tYXIgd3Jv
dGU6DQo+IEhpIEJyYW5kZW4sDQo+IA0KPiBPbiA4LzIwLzIyIDE0OjIwLCBHLiBCcmFuZGVu
IFJvYmluc29uIHdyb3RlOg0KWy4uLl0NCj4+IEkgd291bGQgYWRkICIgKGluIHByZXBhcmF0
aW9uKSIgdG8gdGhlIHN0cmluZywgYW5kIGhhdmUgdGhlIHNjcmlwdCB0aGF0DQo+PiBmaW5h
bGl6ZXMgYSByZWxlYXNlIHN0cmlwIHRoYXQgb3V0Lg0KPiANCj4gSSdsbCB1c2UgIkxpbnV4
IG1hbi1wYWdlcyAodW5yZWxlYXNlZCkiIGZvciB0aGUgcmVwbyBwYWdlcywganVzdCB0byBi
ZSANCj4gbW9yZSBzaW1pbGFyIHRvIERlYmlhbidzIGNoYW5nZWxvZyBmb3JtYXQuwqAgSSBk
b24ndCBsaWtlIGludmVudGluZyBzdHVmZiANCj4gaWYgSSBkb24ndCBuZWVkIHRvLsKgIERv
ZXMgaXQgbWFrZSBzZW5zZSB0byB5b3U/DQo+IA0KPiBIYXZpbmcgYSBmaXhlZCBzdHJpbmcg
dGhlcmUgd2lsbCBiZSBnb29kLCBzaW5jZSB0aGF0IHdheSBJIHdvbid0IGRpc3R1cmIgDQo+
IHRoZSBzY3JpcHQgdXBkYXRpbmcgdGhlIGxhc3QtbW9kaWZpZWQgZGF0ZS4NCg0KSSB0aGlu
ayB0aGlzIHdpbGwgYmUgdGhlIGRlZmluaXRpdmUgY29tbWl0Og0KDQoNCiAgICAgQWxsIHBh
Z2VzOiBSZXBsYWNlIHRoZSA0dGggYXJndW1lbnQgdG8gLlRIIGJ5ICJMaW51eCBtYW4tcGFn
ZXMgDQo8dmVyc2lvbj4iDQoNCiAgICAgU2NyaXB0ZWQgY2hhbmdlOg0KDQogICAgICQgZmlu
ZCBtYW4qIC10eXBlIGYgXA0KICAgICAgIHx4YXJncyBzZWQgLUVpICcvXi5USCAvcy8oLlRI
ICtbXiBdKyArW14gXSsgK1teIF0rKSArIlteIl0qIi9cMSANCiJMaW51eCBtYW4tcGFnZXMg
KHVucmVsZWFzZWQpIi8nDQoNCiAgICAgJCBmaW5kIG1hbiogLXR5cGUgZiBcDQogICAgICAg
fHhhcmdzIHNlZCAtRWkgJy9eLlRIIC9zLyguVEggK1teIF0rICtbXiBdKyArW14gXSspICtb
XiIgXSsvXDEgDQoiTGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSIvJw0KDQogICAgICQg
Z2l0IHJlc3RvcmUgbWFuNS90emZpbGUuNQ0KICAgICAkIGdpdCByZXN0b3JlIG1hbjgvemR1
bXAuOA0KICAgICAkIGdpdCByZXN0b3JlIG1hbjgvemljLjgNCiAgICAgJCBnaXQgcmVzdG9y
ZSBtYW43L2JwZi1oZWxwZXJzLjcNCg0KICAgICBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5kcm8g
Q29sb21hciA8YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT4NCg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------5tgZxXs3EFP0hfwPTb6tb0m0--

--------------3BGA4dmuXHLogvGSE8IoFOQh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMA2/IACgkQnowa+77/
2zLlCQ//d4o0EKSBRjm4QUI+J3zrmpL4dMM6dA5ABXIg0dA8KY6JrRVueJrrJMUF
8H8+pj3w+1PwMMHik6GNwUp3zimz9P5+LcvUWDf+TniqsD2fm+OxE8DTEusSgwVi
TEHUAzqrNMjdWmSzbPURfQtBEMAW7Extwx6gozAFBnVK6TJqBALMbfTAix6X51OK
Ya9aPg8dErB4V9Dn6E+z8xYEUCQ99KRxh0zMob7L3mqzTH4yqxBK+OJnbFsw6uiB
M5E96AQOW/THYdAd1ZlVNOsC0JzUnAnjpegIV3bduhmk6sz/DH34FBy+vytDCJAF
69bNfIs4JxK9SZs5OrhcMNUGsGsusNO0d8roUIgdZZ8dpH5isnUqSs/hOuk0rstc
T/GLqX7VWc6qu1q0uBWX4WbnWh0caYRCkHqhxx04VmXnfnIlcViXA/QgkbrIlQEg
TGl2Ul+pyvL7x7eU/0daXy1NGEfKOS1ku9u0Xs1IuofmIQEb8c54+bBA/VHCkHP1
ZirzBI1cb3u3Aw43p3bb2gVqrgCJrM5njsJSyqDZlg3S1yHFHEl92znovU96bLSh
6ZpWxija69tRkIZQNbrPSv++ZGwdKv1IK4mP6vZWrRno0JJdR2PUAZNNS/9sE4Zg
krRWWH3C96DseFE1CEtg3CoDovNVduPULDr7qhzfKeBlLi5ZjLU=
=cmP1
-----END PGP SIGNATURE-----

--------------3BGA4dmuXHLogvGSE8IoFOQh--
