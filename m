Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C479675F0B
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 21:38:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjATUis (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 15:38:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbjATUir (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 15:38:47 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75B1BB2D20
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 12:38:42 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id m15so4943938wms.4
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 12:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M5FG0nk0SUUZ+xfVV3+J0YKhKqkVIT9UIATXq7cSTLY=;
        b=E21kvMmKD5L7cvU2iHUO0cZ2saShBV7FYy3aAALidnEsrYo8pQOzgA5jXYyNrohxKJ
         F8DglItwqofwcLlmCdvAGMqKWRdU652FpD2rHG3titzMJWB5C+ap3hLJ5tGdxcM2BsmQ
         Qf8Pn7xBtR2reKyLVExmpOeYNCNa6dSG3b/0Rm1fPUg62dBrHCPvkWn9XfIT0Xm8Kk6o
         xEDvQbDXnApmCad8yuCoOZu5PhWqphs3feHAyvuEYUqAqjg6MzdLkz9vkNcHFncjt5L3
         xLwnzaemAtyG0oIa2TGC98YLuF+Pi2UPuhtinWvd1gnyyzDugZKzW7Lt0ADA/brBcpfu
         9Ung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M5FG0nk0SUUZ+xfVV3+J0YKhKqkVIT9UIATXq7cSTLY=;
        b=dcoPg/7i2wyweXbNLSzzDsENUWhYMeyeuaDRR30WwL5/kgFm89WNOvRmwTcUen4WJZ
         kapMIyPBmLQ0qb4XrWU9ku3ZxBPQaPPC7OoenHJdRbjT6nWU0XxvYk/o75tCrZDgTvYq
         rIFKVeLmUnq+lFSRBYNB5NcoekO2KosNd2w+rXzZpt1JlArdSEelLADel0U8vTrUXbwU
         cafEkd3h67HdFCrIDUqOIbNv8eAlM9zknbraPIIsoCCJyf5bhzCqwAKoE/Yyjl+qg/sD
         x+RSel8RpGAu30VcCeZ8vQtkqOwo6ofG8JmWCUqVzioBF7brD1eLSRt0Hyi57HQ+nA6a
         /Lxw==
X-Gm-Message-State: AFqh2kpLTgxFczZ2kU6jLzLbECke6Bd5AgRbgUFMmTk1kYSUpzTZJuOD
        rvjB6Hh7WS31KDfV3zZLc3o=
X-Google-Smtp-Source: AMrXdXuBGIEiRwzqAw0Yw4vQivz0mBMQ8EouEUwWIlMMFC1yuRrMTkgUydWRRgZON7xZhK0VgYW1kA==
X-Received: by 2002:a05:600c:3d16:b0:3d0:6a57:66a5 with SMTP id bh22-20020a05600c3d1600b003d06a5766a5mr15582281wmb.0.1674247120954;
        Fri, 20 Jan 2023 12:38:40 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p8-20020a5d4588000000b002bdfb97e029sm14697636wrq.19.2023.01.20.12.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 12:38:40 -0800 (PST)
Message-ID: <0646afe5-f726-dd27-9058-17bd042279d5@gmail.com>
Date:   Fri, 20 Jan 2023 21:38:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
Content-Language: en-US
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        libc-alpha@sourceware.org
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, gcc@gcc.gnu.org,
        Joseph Myers <joseph@codesourcery.com>
References: <20230120134043.10247-1-alx@kernel.org>
 <5187043.CeDsVVrsAm@portable-bastien>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5187043.CeDsVVrsAm@portable-bastien>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nar6eVgQNt4xmQ3afjhKAaS2"
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
--------------nar6eVgQNt4xmQ3afjhKAaS2
Content-Type: multipart/mixed; boundary="------------7cp9g40PMme48IWGa0UjwWC1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 libc-alpha@sourceware.org
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
 Eric Blake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>,
 gcc@gcc.gnu.org, Joseph Myers <joseph@codesourcery.com>
Message-ID: <0646afe5-f726-dd27-9058-17bd042279d5@gmail.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
References: <20230120134043.10247-1-alx@kernel.org>
 <5187043.CeDsVVrsAm@portable-bastien>
In-Reply-To: <5187043.CeDsVVrsAm@portable-bastien>

--------------7cp9g40PMme48IWGa0UjwWC1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQmFzdGllbiwNCg0KT24gMS8yMC8yMyAyMTozMiwgQmFzdGllbiBSb3VjYXJpw6hzIHdy
b3RlOg0KWy4uLl0NCg0KPj4gZGlmZiAtLWdpdCBhL2JpdHMvc29ja2V0LmggYi9iaXRzL3Nv
Y2tldC5oDQo+PiBpbmRleCBhYWM4YzQ5YjAwLi5jMGMyM2I0ZTg0IDEwMDY0NA0KPj4gLS0t
IGEvYml0cy9zb2NrZXQuaA0KPj4gKysrIGIvYml0cy9zb2NrZXQuaA0KPj4gQEAgLTE2OCw5
ICsxNjgsMTQgQEAgc3RydWN0IHNvY2thZGRyDQo+PiAgIA0KPj4gICBzdHJ1Y3Qgc29ja2Fk
ZHJfc3RvcmFnZQ0KPj4gICAgIHsNCj4+IC0gICAgX19TT0NLQUREUl9DT01NT04gKHNzXyk7
CS8qIEFkZHJlc3MgZmFtaWx5LCBldGMuICAqLw0KPj4gLSAgICBjaGFyIF9fc3NfcGFkZGlu
Z1tfU1NfUEFEU0laRV07DQo+PiAtICAgIF9fc3NfYWxpZ250eXBlIF9fc3NfYWxpZ247CS8q
IEZvcmNlIGRlc2lyZWQgYWxpZ25tZW50LiAgKi8NCj4gbm8gdGhpcyBpcyBub3QgY29ycmVj
dCB5b3UgYnJlYWsgQUJJIGJ5IHJlZHVjaW5nIHNpemUNCj4+ICsgICAgdW5pb24NCj4+ICsg
ICAgICB7DQo+PiArICAgICAgICBfX1NPQ0tBRERSX0NPTU1PTiAoc3NfKTsJLyogQWRkcmVz
cyBmYW1pbHksIGV0Yy4gICovDQo+PiArICAgICAgICBzdHJ1Y3Qgc29ja2FkZHIgICAgICBz
YTsNCj4+ICsgICAgICAgIHN0cnVjdCBzb2NrYWRkcl9pbiAgIHNpbjsNCj4+ICsgICAgICAg
IHN0cnVjdCBzb2NrYWRkcl9pbjYgIHNpbjY7DQo+PiArICAgICAgICBzdHJ1Y3Qgc29ja2Fk
ZHJfdW4gICBzdW47DQo+PiArICAgICAgfTsNCj4+ICAgICB9Ow0KPiANCj4gQ29ycmVjdCBv
bmUgc3RydWN0dXJlIGlzDQo+IA0KPiBzdHJ1Y3QgX19wcml2YXRlX3NvY2tfc3RvcmFnZSB7
DQo+ICAgICAgX19TT0NLQUREUl9DT01NT04gKHNzcHJpdmF0ZV8pOyAgIC8qIEFkZHJlc3Mg
ZmFtaWx5LCBldGMuICovDQo+ICAgICAgY2hhciBfX3NzX3BhZGRpbmdbX1NTX1BBRFNJWkVd
Ow0KPiAgICAgIF9fc3NfYWxpZ250eXBlIF9fc3NfYWxpZ247IC8qIEZvcmNlIGRlc2lyZWQg
YWxpZ25tZW50LiAqLw0KPiB9DQoNCldoYXQgaXMgdGhpcyBzdHJ1Y3R1cmUgZm9yPyAgSSBl
eHBlY3QgdGhhdCBpdCdzIGZvciBkZWNsYXJpbmcgYSB3aWRlLWVub3VnaCBhbmQgDQpjb3Jy
ZWN0bHkgYWxpZ25lZCB0eXBlLCBidXQgdGhlIHVuaW9uIGNvbnRhaW5pbmcgYWxsIHRoZSBv
dGhlciB0eXBlcyBhbHJlYWR5IA0KZ3VhcmFudGVlcyBhIHNpemUgYXMgd2lkZSBhcyBhbnkg
b3RoZXIgc29ja2FkZHJfKiBhbmQgd2l0aCB0aGUgd2lkZXN0IGFsaWdubWVudC4NCg0KQWxz
bywgYW55IG1lbWJlciB0aGF0IGlzIG5lY2Vzc2FyeSBmb3Igc3VwZXJhbGlnbm1lbnQgb3Ig
cGFkZGluZyBjb3VsZCBiZSBhZGRlZCANCmF0IHRoZSBlbmQgb2Ygc29ja2FkZHJfc3RvcmFn
ZSwgYWZ0ZXIgdGhlIGFub24gdW5pb247IHlvdSBkb24ndCBuZWVkIHRoZSBleHRyYSANCnN0
cnVjdCwgSSBndWVzcy4NCg0KUmlnaHQ/DQoNCj4gDQo+ICAgc3RydWN0IHNvY2thZGRyX3N0
b3JhZ2UNCj4gICAgIHsNCj4gICAgICAgICB1bmlvbg0KPiAgICAgICAgew0KPiAgICAgICAg
ICAgX19TT0NLQUREUl9DT01NT04gKHNzXyk7ICAgICAgIC8qIEFkZHJlc3MgZmFtaWx5LCBl
dGMuICovDQo+ICAgICAgICAgIHN0cnVjdCBzb2NrYWRkciAgICAgIHNhOw0KPiAgICAgICAg
ICAgc3RydWN0IHNvY2thZGRyX2luICAgc2luOw0KPiAgICAgICAgICBzdHJ1Y3Qgc29ja2Fk
ZHJfaW42ICBzaW42Ow0KPiAgICAgICAgICBzdHJ1Y3Qgc29ja2FkZHJfdW4gICBzdW47DQo+
ICAgICAgICAgIHN0cnVjdCBfX3ByaXZhdGVfc29ja19zdG9yYWdlIF9wcml2YXRlOw0KPiAg
ICAgICAgfTsNCj4gfTsNCj4gDQo+IE1heSBpdCBjb3VsZCBiZSBkcm9wcGVkIGxhdGVyIHVz
aW5nIGFsaWduIGNvbnN0cnVjdCBmb3IgbW9kZXJuIEMgYW5kIHBhZGRpbmcNCj4gDQoNCkNo
ZWVycywNCg0KQWxleA0KDQo+IEJhc3RpZW4NCj4+ICAgDQo+PiAgIA0KPj4NCj4gDQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------7cp9g40PMme48IWGa0UjwWC1--

--------------nar6eVgQNt4xmQ3afjhKAaS2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPK+8gACgkQnowa+77/
2zIGYw/+La0s+bLWhXyC3NSV0wwwiqVVsmd500+crm+Xas5wxHnjz7U16bKhY7wL
btltK5CsKBhsDvm+/4u6nuQ1h13xZ8tYfjBGJuuYBNyhgA/DO/KTcknupB6kkLah
Qt00OAkjY6cGv5EHjoshagWG6NSlzftN8jLO2tgR0LYWG7yTOFB4gDSytKGXcFxc
g8fFHAgtq0cFA6lJWU8n+y0FkqmnsMZGKczgDTA2m050rvDz4cDf7kBPzaOfgID2
uDNtf5UC1DgyQKwOdywGplBCWz6OaH2pDyJQ8dFd3MuLa4X9xY4P9pIJLAEQV/Zo
QN5hXqSOnW1R8I08zpiLPB3Ou5n2xy8IfdCB02EGuYGjKaW/+k8C12K2oFLV/EC6
NKq2JYihouJ8uWm+R8wFWwW7TkzoNRO9Zl3RCrO8g00a3xfuAN6FvfljgoPhNteo
By5UT3U+RvuYfqHPrfpNh0cq6T1HmBQpGpC/MmG8EDtyuYnTadbyI9Y74DxSZz9c
txm/UXHNVrmnNK7YOKOBb0jgNJpgchN+BBQrITX3jCUkJg/8bZy6pzQBYsE/t2kp
SMtCo4vf4cqlaRquTQbdC0sNY5pmelvvQ7Vsb4OYx6rsIpfLZGWapV5cA/k0h8Lv
ui+LMKT/YSPd/gtB9E3QciMSAcg2eWGQtDp2yukpzqX1++GLE3I=
=ewOb
-----END PGP SIGNATURE-----

--------------nar6eVgQNt4xmQ3afjhKAaS2--
