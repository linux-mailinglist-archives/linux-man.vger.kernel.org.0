Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E98258E37E
	for <lists+linux-man@lfdr.de>; Wed, 10 Aug 2022 01:03:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiHIXDn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Aug 2022 19:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiHIXDn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Aug 2022 19:03:43 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 847A16A4B1
        for <linux-man@vger.kernel.org>; Tue,  9 Aug 2022 16:03:42 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id n4so14109101wrp.10
        for <linux-man@vger.kernel.org>; Tue, 09 Aug 2022 16:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=wlVvFPJK61a10Km7reBiJ50w6eGykblkNQdmF47tcDk=;
        b=m6/+WOySRbR26fxN2SwKNW5GvBwbQeIewyNxP0wITlFf/l+sN6zqcjrrZPvJBPiu8B
         XcNXalrut6Z6NpuZq2oWD2saTzGx3jyKFOt7Yx+wyVAojEe9lJ3MQtHzt5BSyLMWo/pj
         4100eDiOio0VJqV91ahAmt5ZZAVhGbPrbYFFj1lXdBopCJelDJTOhtbrMK4QOiOeuFbO
         yOCQ5OOWpBU/bjAiru4HKcqlMcVJmT4/jfAe5L33JuxYJi49N5TTl6MZiXS0sW+tFIDK
         kaoumm7zBjC87a0RXyVPfzlekfXK3bPU4/VriDu8TptBiw6Uo75SlkORScxjKcpSqpSe
         d+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=wlVvFPJK61a10Km7reBiJ50w6eGykblkNQdmF47tcDk=;
        b=OLGPO7p17WEcI/e1msyfpfHWc3YOUyuvHYyhRS/kItc5KXSK0D3Z4p3JIEkPOnr4dr
         NHQzKs6Zs1fVLucl5xJIx0XhKeGdon2VXCOovwqFuFI1SPXiefkmhWAhkJb+ZRR9WFEh
         qcPnlheVxPoEeAnYkp39xhnH+j7GQUUnCnOr3tv4ajuimnFs2KrnLNvuks5Z3ULJ0968
         +85GX0dqNj5o3t2CuaWPYbNjp1i6NN6ap11Jfa1N/FPwWTfmRP6ERUgpn4UvC9QdqX+Q
         +K+LqQowTVC26wNIlSfghnAvzQKUWQtkPgp6iUk2zDAVc+8hcs5rYOn+L0g4PQGN+Y41
         +zig==
X-Gm-Message-State: ACgBeo2iAbeLcPATlP6F+nqwNksW1GzuUPjevQQHV2J9XAkKWNBXzXrE
        sna6gLOsQWmgytPtWcqzRI4=
X-Google-Smtp-Source: AA6agR7+ieNPnE4QYbCseV5QnE+joseC8osH4hWUtohLM+F/ej4Y8Xg4QezuZ5dftSJa9htJmINODw==
X-Received: by 2002:a5d:595f:0:b0:220:619d:da07 with SMTP id e31-20020a5d595f000000b00220619dda07mr15507970wri.10.1660086221061;
        Tue, 09 Aug 2022 16:03:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g11-20020a7bc4cb000000b003a54109a6a0sm383504wmk.3.2022.08.09.16.03.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Aug 2022 16:03:40 -0700 (PDT)
Message-ID: <abff3c2f-f3ae-5b62-6a49-591a6b4289be@gmail.com>
Date:   Wed, 10 Aug 2022 01:03:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: man7.org update
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        Michael Kerrisk <man-pages@man7.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Quentin Monnet <quentin@isovalent.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <CA+FoirA6PSOztihqrvOTVRKiSR8KnqiiZM-Tj9jVZjur3cia4w@mail.gmail.com>
 <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>
 <95f12d46-f6e6-25b0-123b-5ce2d24e3ec0@gmail.com>
In-Reply-To: <95f12d46-f6e6-25b0-123b-5ce2d24e3ec0@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6jX6te686x1pOuLxOyfO2iXQ"
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
--------------6jX6te686x1pOuLxOyfO2iXQ
Content-Type: multipart/mixed; boundary="------------uE2LIVmUV8PZeC9gshan5cdI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
 Michael Kerrisk <man-pages@man7.org>
Cc: linux-man <linux-man@vger.kernel.org>,
 Quentin Monnet <quentin@isovalent.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <abff3c2f-f3ae-5b62-6a49-591a6b4289be@gmail.com>
Subject: Re: man7.org update
References: <CA+FoirA6PSOztihqrvOTVRKiSR8KnqiiZM-Tj9jVZjur3cia4w@mail.gmail.com>
 <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>
 <95f12d46-f6e6-25b0-123b-5ce2d24e3ec0@gmail.com>
In-Reply-To: <95f12d46-f6e6-25b0-123b-5ce2d24e3ec0@gmail.com>

--------------uE2LIVmUV8PZeC9gshan5cdI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SSBqdXN0IGNoZWNrZWQgdGhhdCBoZSBoYXMgYSBkaWZmZXJlbnQgYWRkcmVzcyBmb3IgcmVw
b3J0cyBhYm91dCB0aGUgDQpvbmxpbmUgbWFuIHBhZ2VzLiAgSSByZWRpcmVjdGVkIHRoaXMg
dG8gdGhlIGNvcnJlY3QgZW1haWwgb2YgaGltLg0KDQpPbiA4LzEwLzIyIDAxOjAxLCBBbGVq
YW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkgUnVtZW4sDQo+IA0KPiBPbiA4LzkvMjIgMTg6
NTgsIFJ1bWVuIFRlbGJpem92IHdyb3RlOg0KPj4gSGkgQWxlamFuZHJvLCBsaXN0LA0KPj4N
Cj4+IEluIHNob3J0OiBRdWVudGluIGFuZCBJIHdlcmUgd29uZGVyaW5nIGlmIHlvdSBrbm93
IHdobyBtYWludGFpbnMgYW5kIA0KPj4gdXBkYXRlcw0KPj4gaHR0cHM6Ly9tYW43Lm9yZy9s
aW51eC9tYW4tcGFnZXMvbWFuNy9icGYtaGVscGVycy43Lmh0bWwNCj4gDQo+IE1pY2hhZWwg
S2Vycmlzay4NCj4gPGh0dHBzOi8vbWFuNy5vcmcvPg0KPiANCj4gVGhhdCdzIGhpcyBvd24g
d2Vic2l0ZS4NCj4gDQo+Pg0KPj4gVGhpcyBpcyB3aXRoIHJlZ2FyZHMgdG8gdGhlIGNoYW5n
ZXMgdGhhdCB3ZSB0YWxrZWQgYWJvdXQgcHJldmlvdXNseSB0bw0KPj4gdGhlIGJwZi1oZWxw
ZXJzIG1hbiBwYWdlIGFuZCB0aGUgc2NyaXB0IHRoYXQgbmVlZHMgdG8gYmUgcnVuIGluIG9y
ZGVyDQo+PiB0byB1cGRhdGUgdGhlIG1hbiBwYWdlLiBUaG9zZSBjaGFuZ2VzIGRvbid0IHNl
ZW0gdG8gYmUgcmVmbGVjdGVkIGluDQo+PiB0aGUgbGluayBhYm92ZS4gQXNzdW1pbmcgdGhh
dCB0aGUgc2NyaXB0IGhhcyBiZWVuIHJ1biBhbHJlYWR5IGFuZCBhbGwNCj4+IHRoZSBjaGFu
Z2VzIGFyZSBpbiBwbGFjZSwgZG8geW91IGhhdmUgYW55IGlkZWEgd2hlbi93aG8gdXBkYXRl
cyB0aGlzDQo+PiBwYWdlIHRvIHJlZmxlY3QgdGhhdD8NCj4gDQo+IFRoZXJlIGhhc24ndCBi
ZWVuIGEgbWFuLXBhZ2VzIHJlbGVhc2UgeWV0IHNpbmNlIHRoYXQgaGFwcGVuZWQuIE5vcm1h
bGx5LCANCj4gTWljaGFlbCB1cGRhdGVzIHRoYXQgcGFnZSBhZnRlciBldmVyeSByZWxlYXNl
IG9mIHRoZSBMaW51eCBtYW4tcGFnZXMuDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBBbGV4DQo+
IA0KPiANCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------uE2LIVmUV8PZeC9gshan5cdI--

--------------6jX6te686x1pOuLxOyfO2iXQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLy58sACgkQnowa+77/
2zLRxQ//WHAc3GROW1X+HEtDCWtMpnn8Ss5MbBlfx3GVyaPtmX6/ta5gtrVFirR2
g00+VP9mo8z4pddZ1vL7UlZhn/XnLEqFZlf0mV7UPRYosHu4UxzyDT8WdfhmCmNI
6QrnYjJtPWPO1R7oU8ipWPhST+cu56oxHjrg5093gkNirOwk6rmCPeYDJqvV2zMC
EhY4xewd5bHf8/WsUrl7gdkCbWt8eH6LT1cJpGsERioaBBKAufEWSRQYYXfdp867
/CmpDbgpvdmuXJ2GpMSAQenFoq3KoEmdLr7plkxJKd6J1e14fbVy2rto19Xa7FrW
LrvHP4EtUjy/KaiVWjwZoWyd0J0qN4/GtjBNkWb4mYp6IhKt1khUBnnhdLHOds/k
N4gWQipwTN7CdqXOeCQPEpmQRtFiSx8NNkfJlnO9iMmrcYZebxMpOqucYTLXfcPd
E8PX132uVPYysgO3EuQSDIQnnDAmQFusPIKRsDG0mxUxelw5/dGRVXwmdpfqi1Wg
besh7tvR8gr/8uVISScPlwbFknNL9dkyOwTS6B8DnOSR4pF7sbrB7h1+oyL5gy0b
UteX0eTJmW8/Fa5tbHZIbBPa5hyNFXITmKH381ItKsm5whTxvgDYPyTvWXoKww2C
TB8OE2QqFP3btbLvMqI0ZTaV7TpFxhYeejILa6dDuSLaJoGDQno=
=PJc/
-----END PGP SIGNATURE-----

--------------6jX6te686x1pOuLxOyfO2iXQ--
