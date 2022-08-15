Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DDD1592E91
	for <lists+linux-man@lfdr.de>; Mon, 15 Aug 2022 13:59:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232272AbiHOL7r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 07:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiHOL7q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 07:59:46 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 503BC25EB7
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 04:59:45 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id l4so8788727wrm.13
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 04:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=CylQG8NH/TpiOBfOJsUHXvI5uPRkkL++v0ftiF6vptI=;
        b=PUo3PZGR/BeAoP/41h0EBz+7wsSCiD/ag7w/8ILF737nm643MnVTfR2nYn3EznhK7m
         b+22z81sfbokJvVssPgE4ZCEVXJr/uoUuHfj/HkgmjyeX87EzKT7wXBwQfc/lAcF8hdY
         3a+ZXHljVK+3P6AQWJQoAJh4j+nvdeREoa0FLJUkKprW5dQhfc3n0vrF33yDBv8MQKm8
         hsuvIexJLq4JV1JRlkRplj91dWX3i1pqBipNMq6CJAKA2aDc/jKl2xHFZpzk4CknaqNo
         IYWEElE1p9pZCLoNLzIGYx8VgHdQ8yqCsRu8w6afDazhnhgqe6aCkgloQlAkDtbJBmHp
         4OPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=CylQG8NH/TpiOBfOJsUHXvI5uPRkkL++v0ftiF6vptI=;
        b=WKz/JD9NHTODzt/BYavoMAeYDdJ3kW3He16turhWI471MSlD/ghqiATxH3Ig+M8K0A
         +hnIIVgHApE+J0w0+Vhv5jNjVYogkFppa2r40qPaKJclY/TXVmPeEDbUjzzVTmw6Zk41
         sQInNGNDInOokpprGJrAJAkyzrqU2neP56ScorMfvoQB+ePA/AWUavx5fQQG3NgLaGhm
         CyX4Gnjx+J1pesrbC1Q8ZpqTW85hHBLxIggzwkJAifwaJxLw/RxP811q0EQgmj/qK/nz
         8kHIybNLSXfysL4Yn9lpOi/GTBs4PkFXJ0CFbFe9qDfXYBwFBddq2N/AF9xnn16/nl8q
         csFQ==
X-Gm-Message-State: ACgBeo0P5gtWMx4H0SDF0/rMXpqCLCF/MSg6VpwUp/a2/4Hw4U6qRtnV
        l2Z0sGTG9kuZOg274ymWzI7agC1qz34=
X-Google-Smtp-Source: AA6agR5f2HyawwTuFnPOCiZou4fnuMoxu9OknmG20K9hEtLF9vCLEkIYm/dj25R515o/t6aG/b7MaQ==
X-Received: by 2002:adf:ee4d:0:b0:220:5a4e:da73 with SMTP id w13-20020adfee4d000000b002205a4eda73mr8299189wro.386.1660564783729;
        Mon, 15 Aug 2022 04:59:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b5-20020adfee85000000b0021eaf4138aesm8705408wro.108.2022.08.15.04.59.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 04:59:43 -0700 (PDT)
Message-ID: <094e3016-a8fc-b9a8-f6c0-bf2461a30216@gmail.com>
Date:   Mon, 15 Aug 2022 13:59:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: Standardize roff (was: *roff `\~` support)
To:     DJ Chase <u9000@posteo.mx>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org, Ingo Schwarze <schwarze@usta.de>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
 <738eadd5-5495-d848-ef08-544e97fc1452@gmail.com>
 <CM60BZSRVXB6.19YICCPQBUCTD@grinningface>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CM60BZSRVXB6.19YICCPQBUCTD@grinningface>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QMu3M5UHhUXVCdPKbxdfbNCj"
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
--------------QMu3M5UHhUXVCdPKbxdfbNCj
Content-Type: multipart/mixed; boundary="------------iIVHVyYFGVCOkfkbB27Xm3AH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: DJ Chase <u9000@posteo.mx>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org, groff@gnu.org,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <094e3016-a8fc-b9a8-f6c0-bf2461a30216@gmail.com>
Subject: Re: Standardize roff (was: *roff `\~` support)
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
 <738eadd5-5495-d848-ef08-544e97fc1452@gmail.com>
 <CM60BZSRVXB6.19YICCPQBUCTD@grinningface>
In-Reply-To: <CM60BZSRVXB6.19YICCPQBUCTD@grinningface>

--------------iIVHVyYFGVCOkfkbB27Xm3AH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDgvMTQvMjIgMjE6NDMsIERKIENoYXNlIHdyb3RlOg0KPiBUcnVlOyBwcmVz
Y3JpcHRpdmUgc3RhbmRhcmRzIGNhbiBjZXJ0YWlubHkgbWFrZSBzb21lIHRoaW5ncyB3b3Jz
ZS4gQXMgYQ0KPiBmdXJ0aGVyIGV4YW1wbGUsIElTTyA4NjAxIHN1Y2tzLiBJIG1lYW4sIGl0
cyBjb3JlIHNwZWNpZmljYXRpb24gaXMNCj4gZ3JlYXQsIGJ1dCB0aGVyZSBhcmUgc28gbWFu
eSBkaWZmZXJlbnQgd2F5cyB0aGF0IGFyZSBhbGxvd2VkIHRoYXQgdGhlDQo+IGZ1bGwgc3Rh
bmRhcmQgaXMgYWxtb3N0IGNvbXBsZXRlbHkgdW5wYXJzZWFibGUuIEl0IGFsc28gdXNlcyBh
IHNsYXNoDQo+IGJldHdlZW4gdGhlIHN0YXJ0IGFuZCBlbmQgdGltZXMgb2YgYSBwZXJpb2Qg
aW5zdGVhZCBvZiBzb21ldGhpbmcNCj4gc2Vuc2libGUsIGxpa2UsIEkgZG9u4oCZdCBrbm93
LCBhbiBlbi1kYXNoISBXaGljaCBtZWFucyB0aGF0IHBlcmlvZHMgY2FuDQo+IGJlIHdyaXR0
ZW4gd2l0aCBhIHNsYXNoIChiZWNhdXNlIHRoYXTigJlzIHRoZSBzdGFuZGFyZCkgYnV0IGFs
c28gd2l0aCBhbg0KPiBlbi1kYXNoIChiZWNhdXNlIHRoYXTigJlzIGhvdyByYW5nZXMgd29y
ayBpbiBFbmdsaXNoKSwgYnV0IGFsc28gdGhhdCBvbmUNCj4gY2Fu4oCZdCBwcm9wZXJseSB3
cml0ZSBhIHBlcmlvZCBpbiBhIGZpbGUgbmFtZSBvciBVUkkuDQo+IA0KPiBTdGlsbCwgdGhv
dWdoLCBJIHRoaW5rIGRlc2NyaXB0aXZlIHN0YW5kYXJkcyBjYW4gYmUgbmV0LXBvc2l0aXZl
LiBUaGUNCj4gUE9TSVggc2hlbGwgdXRpbGl0aWVzIGNvbWVzIHRvIG1pbmQuIFN1cmUsIHRo
ZXkgY2VydGFpbmx5IGhhdmUgc29tZQ0KPiBpc3N1ZXMsIGJ1dCBiZWNhdXNlIGl04oCZcyBh
IHRyYWlsaW5nIHN0YW5kYXJkLCBpbXBsZW1lbnRlcnMgYXJlIGZyZWUgdG8NCj4gZml4IHRo
ZW0uDQo+IA0KPiBEbyB5b3UgdGhpbmsgdGhhdCBhIGRlc2NyaXB0aXZlL3RyYWlsaW5nIHN0
YW5kYXJkIGNvdWxkIGJlIGJlbmVmaWNpYWwNCj4gb3Igd291bGQgeW91IHN0aWxsIHNheSB0
aGF0IGl0IGNvdWxkIG1vc3RseSBoaW5kZXIgKnJvZmYNCj4gaW1wbGVtZW50YXRpb25zPw0K
DQpXZWxsLCBhIHN0YW5kYXJkIHRoYXQgdHJ1bHkgcmVjb2duaXplcyB0aGUgYXV0aG9yaXR5
IG9mIGltcGxlbWVudGF0aW9ucyANCnRvIGRyaXZlIHRoZSBsYW5ndWFnZSBhbmQgZG9lc24n
dCBkbyBhbnl0aGluZyBlbHNlIGJ1dCBkZXNjcmliZSB0aGUgYmVzdCANCmFscmVhZHktaW1w
bGVtZW50ZWQgd2F5cyB0byBhY2hpdmUgdGhpbmdzIGlzIGEgZ29vZCB0aGluZy4gIEl0IGNh
bid0IA0KaGluZGVyIGZ1dHVyZSBpbXBsZW1lbnRhdGlvbnMsIGJlY2F1c2UgaXQgZG9lc24n
dCBoYXZlIHRoZSBwb3dlciB0byANCmRyaXZlIHRoZSBmdXR1cmUgb2YgdGhlIGxhbmd1YWdl
LCBvbmx5IGRlc2NyaWJlcyB0aGUgcGFzdC4NCg0KUE9TSVggQyBoYXMgYmVlbiBkb2luZyBn
b29kIGluIHRoYXQ7IG11Y2ggYmV0dGVyIHRoYW4gSVNPIEMuDQoNCkkgZG9uJ3QgdW5kZXJz
dGFuZCBob3cgUE9TSVggd29ya3MgaW50ZXJuYWxseSwgdGhvdWdoLiAgSWYgc29tZSBlbnRp
dHkgDQpjYW4gZnVuZCAoYW5kIGlzIGludGVyZXN0ZWQgaW4pIHN1Y2ggYSBzdGFuZGFyZGl6
YXRpb24gcHJvY2VzcywgaXQgY291bGQgDQpicmluZyBzb21lIGdvb2QuICBCdXQgeWVhaCwg
aXQgd2lsbCBsaWtlbHkgYmUgdmVyeSBjb3N0bHkgaW4gdGltZSBhbmQgDQptb25leS4gIFdv
cnRoIGl0PyAgSSBkb24ndCBrbm93Lg0KDQpCdXQgd2UgY2FuIGFjaGlldmUgc29tZXRoaW5n
IHZlcnkgc2ltaWxhciBieSBkb2N1bWVudGluZyB0aGUgZGlmZmVyZW5jZXMgDQpiZXR3ZWVu
IGtub3duIHJvZmYgYWx0ZXJuYXRpdmVzIHNvbWV3aGVyZS4gIEFuZCB0aGF0J3MgbGlrZWx5
IHRvIGJlIG11Y2ggDQplYXNpZXIuDQoNCkluIHRoZSBMaW51eCBtYW4tcGFnZXMgd2UgZG9j
dW1lbnQgd2hlbiBhIGZ1bmN0aW9uIGlzIGluIElTTyBDIG9yIGluIA0KUE9TSVgsIGJ1dCBh
bHNvIHdoZW4gaXQncyBub3Qgc3RhbmRhcmRpemVkIGJ1dCBwcmVzZW50IGluIG90aGVyIFVu
aXggDQpzeXN0ZW1zIChzbyB0aGF0IGl0IGhhcyBzb21lIGRlZ3JlZSBvZiBwb3J0YWJpbGl0
eSksIG9yIHdoZW4gaXQgaXMgDQpMaW51eC1vbmx5LiAgTWF5YmUgaGF2aW5nIHNvbWV0aGlu
ZyBzaW1pbGFyIGluIGdyb2ZmJ3MgbWFudWFsIHBhZ2VzIA0Kd291bGQgYmUgZWZmZWN0aXZl
Lg0KDQpGb3IgZXhhbXBsZSwgZm9yIC5NUiwgd2Ugd2VyZSBkaXNjdXNzaW5nIHRoYXQgcHJv
YmFibHkgaXQgd291bGQgYmUgZ29vZCANCnRvIGFkZCBhIG5vdGUgbGlrZSAiKHNpbmNlIGdy
b2ZmIDEuMjMuMCkiIGFuZCBtYXliZSBpdCBjb3VsZCBhbHNvIHN0YXRlIA0Kd2hpY2ggb3Ro
ZXIgcm9mZiAob3IgbWFuZG9jKSBpbXBsZW1lbnRhdGlvbnMgc3VwcG9ydCBpdC4NCg0KQ2hl
ZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------iIVHVyYFGVCOkfkbB27Xm3AH--

--------------QMu3M5UHhUXVCdPKbxdfbNCj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6NRwACgkQnowa+77/
2zLo5A//TKSHwOjJ7gq7AiZ2yQGyZXgqBn9DZRqR+YghLtd9eOSjgQ5RKE45QNeQ
Y/+YhwBYcXhj7XmzUoXcdUE4oflUY7vNSuQeAX9tODomb/mr7PuM8pPWTTJBlZcB
4irl2QeKorjtk9xmy821KoEbWJmI5CTvHwOP3s0opXmeUgzwZ/ffely3VdIwQkhR
4XR2ndV9Al+fdXqTKJcM6FMYo/ar3BI3UUrA2iOlh9vYcErb82J5osR2CAMZ4kAH
4hRugMPppO/qj2UhK93qAwEBLSgUqmOK9TKaIHpEilcAkgZXSe7/8ytnprYXwQVX
ybRxo4MQ1VO7V4r1TKP52c4r10JiXoAkkL7T0w8K58MhVQp8MH8PyPshADU2s3It
TS4gPCedbdHjRYQ5CVW03rSXJsga7N+M3PESjB2sZECNvX5espVaJQm2px58Y2Sa
SOUKgIdiZxsZy7Jy0/DNth8nhpeR7npm3vJ8HOfySWhy5XZUvNqJwv/2bFzhIR2c
x1R38gxuephg1iBkpMwRF6mqzntFuQukd2u4J/d6ym13QyY63QAZbDxUdGeCijxw
xp6xEgiatclf55UwPMSx2hxU9z5SlVXCbyqYBlGaMjB9L2VjFIKFx1YJnLqW79pI
LHXlltJ9TdU03HHKyPF1cFp6/nGT/7YV7cKEyJsyy6pfg29N3O8=
=Sfc6
-----END PGP SIGNATURE-----

--------------QMu3M5UHhUXVCdPKbxdfbNCj--
