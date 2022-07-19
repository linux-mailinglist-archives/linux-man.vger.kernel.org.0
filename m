Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34B5757A1AF
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 16:34:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239230AbiGSOep (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 10:34:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239421AbiGSOeU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 10:34:20 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAADBF79
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 07:25:46 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id bk26so21830940wrb.11
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 07:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=F+gzzAr5omDrUwljkhHtjs/L5kaSQr3OUAO0bl0zAbk=;
        b=IRiIYX6Pt9pi+4uF+fhqYoXGZifzz8O4/XZBu3MjHzB/vZjfp4GyT15ZFEouHDf1TF
         btxHUREk1C3gbyrrxsSbroDMyFEFK9PPX0p10LjHGmriFXAxZmcvbqAwULd+y3eQqTjo
         eS3FGrVHpF+WO3t2u936frDLr1ULeembLHFED3JLkCMp9cXEN1lV/+Bv9eI/87llUj4D
         YhSf5vNpoyxw/R+a1RT1uI5l+51OyKnA124HAmoFy7tO6c0mVUnKw0E2jrHvd7KPQT/O
         p556DXCF9dX7VFRLk2pI8Z9zS/jfbj9ajsPhQ6rpxftKsqEWadzAdH1cq2mCsZsUt5vf
         ASkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=F+gzzAr5omDrUwljkhHtjs/L5kaSQr3OUAO0bl0zAbk=;
        b=RCWtK50tDSKAFKgOMZyowvI9TZg8eHkXJ8YlmNwUrDmDAS76Hk4g2Dt2RqDD4HG4je
         uLjCRWUw/uzrzdQobSRZevnWtOJ8Dq0Rg4SWWlCoDoyrypHpvvaLAt9tSx0nIcrvI9gz
         xTIt26DriW78mmSkgKQFXEukKomJpyXN/LjQ50rAMPWHuIK3UoHSu/sI3mlVVYcwVYx2
         xA9mSBZx+z3QPvmepWSSpmYCif0SyLjjtKSLIQhf8wNDafELuueLzSW8ujP2d8EObLe6
         7YPilDHs4ACBSljx3HyWbXMwRv9HEsNBwCeXhQ8PBGJoaO257k7K11nD3j3aajE0GxMJ
         iXeQ==
X-Gm-Message-State: AJIora/z/FGXxRciwkbdwQ6J5wpVi9BwMbyIwan1/Hb4aNxjNSCnJXql
        DWlRY8XQeMkz9Vhjy4XJcdW7YBxqIhk=
X-Google-Smtp-Source: AGRyM1tW6qsX8WsLD6m4iIAFdHFWlL+HR4wWgj/UhqyW5oFRP9i4phOdu/PHnrcGRXl8z7g8UNhEtw==
X-Received: by 2002:a5d:5228:0:b0:21d:93a8:6e64 with SMTP id i8-20020a5d5228000000b0021d93a86e64mr25970417wra.424.1658240745124;
        Tue, 19 Jul 2022 07:25:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c22-20020a05600c0ad600b003a3270735besm814504wmr.28.2022.07.19.07.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 07:25:44 -0700 (PDT)
Message-ID: <9ee774f6-7658-693d-7526-bfe49a3e3c6a@gmail.com>
Date:   Tue, 19 Jul 2022 16:25:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 2/5] tm.3type: align ranges
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <e1f74540-9a40-1e6a-f334-594b42cfe6a5@gmail.com>
 <20220719141420.5bhgjbqxtev4kx2d@tarta.nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220719141420.5bhgjbqxtev4kx2d@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Qkvtx9oHni0EAcntD0zdICLm"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Qkvtx9oHni0EAcntD0zdICLm
Content-Type: multipart/mixed; boundary="------------wXBFWq880ULKGlxJYX5VvVaG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <9ee774f6-7658-693d-7526-bfe49a3e3c6a@gmail.com>
Subject: Re: [PATCH 2/5] tm.3type: align ranges
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <e1f74540-9a40-1e6a-f334-594b42cfe6a5@gmail.com>
 <20220719141420.5bhgjbqxtev4kx2d@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220719141420.5bhgjbqxtev4kx2d@tarta.nabijaczleweli.xyz>

--------------wXBFWq880ULKGlxJYX5VvVaG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8xOS8yMiAxNjoxNCwg0L3QsNCxIHdyb3RlOg0KPiBPbiBUdWUsIEp1bCAxOSwgMjAy
MiBhdCAwMTo0NDoyMlBNICswMjAwLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IEhp
INC90LDQsSwNCj4+DQo+PiBPbiA3LzE5LzIyIDAzOjU2LCDQvdCw0LEgd3JvdGU6DQo+Pj4g
VGhpcywgdG8gbWUsIG1ha2VzIHRoZXNlIG11Y2ggbW9yZSByZWFkYWJsZQ0KPj4+DQo+Pj4g
U2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5h
YmlqYWN6bGV3ZWxpLnh5ej4NCj4+DQo+PiBJIGxpa2UgdGhlIGNvbmNlcHQgb2YgdGhlIGNv
bW1pdCwgYnV0IEkgd29uZGVyIGlmIHdlIGNhbiBkbyBpdCBpbiBhIGJldHRlcg0KPj4gd2F5
LiAgSSB3YXMgd29uZGVyaW5nIHNwZWNpZmljYWxseSBhYm91dCBtb3ZpbmcgdGhlIHJhbmdl
cyB0byBiZWZvcmUgdGhlDQo+PiBzaG9ydCBkZXNjcmlwdGlvbiwgc28gdGhhdCB0aGV5IHdv
dWxkIGJlIGFsaWduZWQgbmF0dXJhbGx5LCB3aXRob3V0IG5lZWRpbmcNCj4+IHNvIG11Y2gg
d2hpdGVzcGFjZS4NCj4+DQo+PiBXaGF0IHdvdWxkIHlvdSBwcmVmZXI/DQo+IA0KPiBJIHRo
aW5rIHRoYXQgZWl0aGVyIG9mDQo+ICAgIGludCAgICAgICAgIHRtX3NlYzsgICAgLyogU2Vj
b25kcyAgICAgICAgICBbMCwgNjBdICovDQo+ICAgIGludCAgICAgICAgIHRtX21pbjsgICAg
LyogTWludXRlcyAgICAgICAgICBbMCwgNTldICovDQo+ICAgIGludCAgICAgICAgIHRtX2hv
dXI7ICAgLyogSG91ciAgICAgICAgICAgICBbMCwgMjNdICovDQo+ICAgIGludCAgICAgICAg
IHRtX21kYXk7ICAgLyogRGF5IG9mIHRoZSBtb250aCBbMSwgMzFdICovDQo+ICAgIGludCAg
ICAgICAgIHRtX21vbjsgICAgLyogTW9udGggICAgICAgICAgICBbMCwgMTFdICAoSmFudWFy
eSA9IDApICovDQo+ICAgIGludCAgICAgICAgIHRtX3llYXI7ICAgLyogWWVhciBtaW51cyAx
OTAwICovDQo+ICAgIGludCAgICAgICAgIHRtX3dkYXk7ICAgLyogRGF5IG9mIHRoZSB3ZWVr
ICBbMCwgNl0gICAoU3VuZGF5ID0gMCkgKi8NCj4gICAgaW50ICAgICAgICAgdG1feWRheTsg
ICAvKiBEYXkgb2YgdGhlIHllYXIgIFswLCAzNjVdIChKYW4vMDEgPSAwKSAqLw0KPiAgICBp
bnQgICAgICAgICB0bV9pc2RzdDsgIC8qIERheWxpZ2h0IHNhdmluZ3MgZmxhZyAqLw0KPiBv
cg0KPiAgICBpbnQgICAgICAgICB0bV9zZWM7ICAgIC8qIFswLCA2MF0gIFNlY29uZHMgKi8N
Cj4gICAgaW50ICAgICAgICAgdG1fbWluOyAgICAvKiBbMCwgNTldICBNaW51dGVzICovDQo+
ICAgIGludCAgICAgICAgIHRtX2hvdXI7ICAgLyogWzAsIDIzXSAgSG91ciAqLw0KPiAgICBp
bnQgICAgICAgICB0bV9tZGF5OyAgIC8qIFsxLCAzMV0gIERheSBvZiB0aGUgbW9udGggKi8N
Cj4gICAgaW50ICAgICAgICAgdG1fbW9uOyAgICAvKiBbMCwgMTFdICBNb250aCAgICAgICAg
ICAgIChKYW51YXJ5ID0gMCkgKi8NCj4gICAgaW50ICAgICAgICAgdG1feWVhcjsgICAvKiAg
ICAgICAgICBZZWFyIG1pbnVzIDE5MDAgKi8NCj4gICAgaW50ICAgICAgICAgdG1fd2RheTsg
ICAvKiBbMCwgNl0gICBEYXkgb2YgdGhlIHdlZWsgIChTdW5kYXkgPSAwKSAqLw0KPiAgICBp
bnQgICAgICAgICB0bV95ZGF5OyAgIC8qIFswLCAzNjVdIERheSBvZiB0aGUgeWVhciAgKEph
bi8wMSA9IDApICovDQo+ICAgIGludCAgICAgICAgIHRtX2lzZHN0OyAgLyogICAgICAgICAg
RGF5bGlnaHQgc2F2aW5ncyBmbGFnICovDQo+IGlzIGZpbmUsIGFuZCBvdGhlciBvcHRpb25z
IGFyZSBzdHJpY3RseSB3b3JzZSwgYnV0IHdlbnQgd2l0aCB0aGUgZm9ybWVyDQo+IGJlY2F1
c2UgKGEpIHRoZSByYW5nZXMgYWxzbyBhbGlnbiB0aGUgY29tbWVudCB0cmFpbGVycyBzbyBp
dCdzIGVhc2llciB0bw0KPiByZWFkIGFuZCAoYikgaXQgbWFrZXMgbW9yZSBzZW5zZSB0byBo
YXZlICJkZXNjcmlwdGlvbiBbZG9tYWluXSBbYm91bmRdIg0KPiB0aGFuICJbZG9tYWluXSBk
ZXNjcmlwdGlvbiBbYm91bmRdIi4NCj4gDQo+IEkgcGVyc29uYWxseSBwcmVmZXIgdGhlIGZv
cm1lciBidXQgdGhlIGxhdHRlciB3b3VsZCBhbHNvIGJlIGZpbmUuDQoNCk9rYXksIGJvdGgg
bG9vayBnb29kIHRvIG1lLCBzbyBJJ2xsIGxlYXZlIGl0IHVwIHRvIHlvdSA7KQ0KDQo+IA0K
Pj4gICAgICAgICAgICAgaW50ICB0bV9zZWM7ICAgIC8qIFswLCA2MF0gU2Vjb25kcyAqLw0K
Pj4gICAgICAgICAgICAgaW50ICB0bV9taW47ICAgIC8qIFswLCA1OV0gTWludXRlcyAqLw0K
Pj4gICAgICAgICAgICAgaW50ICB0bV9ob3VyOyAgIC8qIFswLCAyM10gSG91ciAqLw0KPj4g
ICAgICAgICAgICAgaW50ICB0bV9tZGF5OyAgIC8qIFsxLCAzMV0gRGF5IG9mIHRoZSBtb250
aCAqLw0KPj4gICAgICAgICAgICAgaW50ICB0bV9tb247ICAgIC8qIFswLCAxMV0gTW9udGgg
KEphbnVhcnkgPSAwKSAqLw0KPj4gICAgICAgICAgICAgaW50ICB0bV95ZWFyOyAgIC8qIFll
YXJzIHNpbmNlIDE5MDAgKi8NCj4+ICAgICAgICAgICAgIGludCAgdG1fd2RheTsgICAvKiBb
MCwgNl0gRGF5IG9mIHRoZSB3ZWVrIChTdW5kYXkgPSAwKSAqLw0KPj4gICAgICAgICAgICAg
aW50ICB0bV95ZGF5OyAgIC8qIFswLCAzNjVdIERheSBvZiB0aGUgeWVhciAoSmFuLzAxID0g
MCkgKi8NCj4+ICAgICAgICAgICAgIGludCAgdG1faXNkc3Q7ICAvKiBEYXlsaWdodCBzYXZp
bmdzIGZsYWcgKi8NCj4gTm90IGNvbHVtbmF0aW5nIGF0IGxlYXN0IHRoZSBkb21haW4gYW5k
IGRlc2NyaXB0aW9uIGlzLCB0byBtZSwNCj4gYSBuby1nbyBmcm9tIGEgcmVhZGFiaWxpdHkg
c3RhbmQtcG9pbnQuDQoNCkFncmVlZC4NCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpB
bGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------wXBFWq880ULKGlxJYX5VvVaG--

--------------Qkvtx9oHni0EAcntD0zdICLm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWvt4ACgkQnowa+77/
2zK/2BAAiIomGXxf0g1p5oo1CGIH42I5Aw09bvDTZD20i4mCh/dg/Glfr4DTO31b
8ZZpGo9mdLlzrtO+8fiUjpsXcuArFr+yLNA/oBbwImwjxXeUyaIQgmilczyLtLb/
F2lA5KyWUDCc1tLgk84ynE1YbhSUwuct/6U2lBEuT/NdRR+SFaseeuuysDBzdhDd
8DGH+afFgPaGmMjxcS70yCwYSWXSkaTENv7bVzh6eUhOcYt+cb7hVMb6Ozf3I63G
WWuqNN1xco7dM5eU90Tbduq2cABS+JI3Xxi0WW7YOke0MyW7E03ZVwVelwNPTena
HQoH/k8ituymciPpQxHu48J2C1qsGq0Vflc9ePZWNUHNiVvkSfwSUFLRJv8cQ/9W
l/ozO+g4jFxr+8mkDYIFjvW+mWt+4tCUUYShfVkYXvAkOj7tWIoVgYyDwO2iQ16l
A7IwHxhM0BO72KI+AObv1kuCHG9P305NHlJPtB0bhCTuX2ypyAQyOxOEwCmnXmx7
sVNixfh9Hee7ueZjBF+N9e/EaEkSvml9MQNzaE19rPLktP/6pjJ0/GCxRViSy6D5
wTQ5buKFjnFzjjqLAB9iB5eTVs84L92YXMUQlKCBmQLhA8f/dHVT9AFDoAuP0jfB
tzZLCErQo73pNiuaqcMvMke81eIgsdXTqOS5G86Iv6Rv57M8CqU=
=rKPg
-----END PGP SIGNATURE-----

--------------Qkvtx9oHni0EAcntD0zdICLm--
