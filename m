Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB535AC146
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 22:03:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232243AbiICUDG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 16:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiICUDF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 16:03:05 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CBBE5464B
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 13:03:04 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id k9so6419041wri.0
        for <linux-man@vger.kernel.org>; Sat, 03 Sep 2022 13:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=sDhIGKY0Sy/ewgMs82na3j8pFdF1YvY8XHt551DZwbY=;
        b=dItZaP4RsZSPAZPK72ka4iYzPItlyjvD31jTST2qsOJ9kmjorxngzaDZhfFT7XYLns
         lFAZwjIBMrW48ARo0C7HRbgRs2LwB86BGvM/UUxCXO5pq1LjGWc61hLqboWirjZrVTOV
         RHx0USS8/vskM2h1d877b+2XtjkYx23AEKsZkZJ0PL5Zx//7cqEe/sGEiaXk0wdpKCeg
         d6skNroJaldGBkc8i3bpQuC/zc28kKiAM17L0GF5gi/1zEbfjPv1jj4KU+rdJntncB4O
         rH579UzfI3H7V7Ohf6crXvWJjrpPA5f+MM7nMGdT2U98kpzxLYXsE1e5d3o6vq1NkxKm
         qvuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=sDhIGKY0Sy/ewgMs82na3j8pFdF1YvY8XHt551DZwbY=;
        b=BsQa60DLsfOd3vL2SgaxygW3iFfC+tja8AoSqLJPUEmbrHJuv+uCF0WW0X3cubvwTS
         dccj/EsUntedwh53cE2EdAmMnHQpRjy/c24STKl5Tz0k+HqSSTSxvpdb2zNR6bat9cvq
         +Xc2mo0irDeupwENIad2ZBf8yvnxC743RbbftknVV77KypXgCiClveL0J4kDaLYRBgZQ
         kO7JUCUepiwmb2dc/M3xUbcK9MTjGL+3NfMOJplmrQJVgKhBfZ4VSuHZAqZMjTtaZgtJ
         FaEGXXfPeYcnxOlVz6cdk+0UwhMcFiP9xbsR9L4jtSwflSWR04XrsQU8v+lgwOu9lvUB
         HqWg==
X-Gm-Message-State: ACgBeo0TgxuaPH0aRl8kKdi65FIL1EbSjy183kqAFpNrhRiSPyJoF2Sf
        FpyvIEAiPF9eA+O+KB2l9nQ=
X-Google-Smtp-Source: AA6agR4Y6FMHA4dKq2uisT8Uf/4D+3Oeo+PIL5PxVpxrZPm4s3XZjPHVetTKxHbiZqKMfxMkuqrTmg==
X-Received: by 2002:a5d:6e10:0:b0:226:ed14:e340 with SMTP id h16-20020a5d6e10000000b00226ed14e340mr10071539wrz.122.1662235382889;
        Sat, 03 Sep 2022 13:03:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f16-20020adff590000000b0022865038308sm57048wro.93.2022.09.03.13.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Sep 2022 13:03:02 -0700 (PDT)
Message-ID: <d9865e28-fc81-9878-769b-471652a8be94@gmail.com>
Date:   Sat, 3 Sep 2022 22:02:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
To:     Martin Uecker <uecker@tugraz.at>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hqc9JUicnx1EMdJdWi4JyVyN"
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
--------------hqc9JUicnx1EMdJdWi4JyVyN
Content-Type: multipart/mixed; boundary="------------UegMgurV0Hqe80kpaUfZr7Md";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <d9865e28-fc81-9878-769b-471652a8be94@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
In-Reply-To: <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>

--------------UegMgurV0Hqe80kpaUfZr7Md
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiA5LzMvMjIgMTc6MzEsIE1hcnRpbiBVZWNrZXIgd3JvdGU6DQpb
Li4uXQ0KDQo+PiBCdXQgdGhlIHJlY2VudCBkaXNjdXNzaW9uIGFib3V0IHByZXNlbnRpbmcN
Cj4+IG5vbm51bGwgcG9pbnRlcnMgYXMgW3N0YXRpYyAxXSBpcyBob3JyaWJsZS4gIEJ1dCBs
ZXQncyB3YWl0IHRpbGwgdGhlDQo+PiBmdXR1cmUgaG9wZWZ1bGx5IGZpeGVzIHRoaXMuDQo+
IA0KPiB5ZXMsIFtzdGF0aWMgMV0gaXMgcHJvYmxlbWF0aWMgYmVjYXVzZSB0aGVuIHRoZSBu
dW1iZXINCj4gY2FuIG5vdCBiZSB1c2VkIGFzIGEgYm91bmQgYW55bW9yZS4NCj4gDQo+IE15
IGV4cGVyaWVuY2UgaXMgdGhhdCBpZiBvbmUgd2FudHMgdG8gc2VlIHNvbWV0aGluZyBmaXhl
ZCwNCj4gb25lIGhhcyB0byBwdXNoIGZvciBpdC4gIFN0YW5kYXJkaXphdGlvbiBpcyBtZWFu
dA0KPiB0byBzdGFuZGFyZGl6ZSBleGlzdGluZyBwcmFjdGljZSwgc28gaWYgd2Ugd2FudCB0
byBzZWUNCj4gdGhpcyBpbXByb3ZlZCwgd2UgY2FuIG5vdCB3YWl0IGZvciB0aGlzLg0KPiAN
Cg0KWWVhaCwgSSdtIG5vdCBqdXN0IHdhaXRpbmcgdG8gc2VlIGlmIGl0IGdldHMgZml4ZWQg
YWxvbmUuICBJJ3ZlIGJlZW4gDQpkaXNjdXNzaW5nIGFib3V0IG5vbm51bGwgYmVpbmcgYWRk
ZWQgdG8gdGhlIHN0YW5kYXJkLCBvciBpbXByb3ZlZCBpbiB0aGUgDQpjb21waWxlcnMsIGJ1
dCBzbyBmYXIgbm8gY29tcGlsZXIgaGFzIHNvbWV0aGluZyBjb252aW5jaW5nLiAgR0NDJ3Mg
DQphdHRyaWJ1dGUgaXMgcHJvYmxlbWF0aWMgZHVlIHRvIFVCIGlzc3VlcywgYW5kIENsYW5n
J3MgX05vbm51bGwga2V5d29yZCANCmlzIHVzZWxlc3MgYXMgb2Ygbm93Og0KDQo8aHR0cHM6
Ly9naXRodWIuY29tL2xsdm0vbGx2bS1wcm9qZWN0L2lzc3Vlcy81NzU0Nj4NCg0KTWF5YmUg
R0NDIGNvdWxkIGFkZCBDbGFuZydzIF9Ob25udWxsIChhbmQgbWF5YmUgX051bGxhYmxlIGFu
ZCB0aGUgDQpwcmFnbWFzLCBidXQgZGVmaW5pdGVseSBub3QgX051bGxfdW5zcGVjaWZpZWQp
LCBhbmQgYWRkIHNvbWUgZ29vZCB3YXJuaW5ncy4NCg0KT25seSB0aGVuIGl0IHdvdWxkIG1h
a2Ugc2Vuc2UgdG8gdHJ5IHRvIHN0YW5kYXJkaXplIHRoZSBmZWF0dXJlLg0KDQpbLi4uXQ0K
DQo+IEluIEsmUiBzeW50YXggdGhpcyB3b3JrZWQgZm9yIGRlZmluaXRpb246DQo+IA0KPiB2
b2lkIGZvbyh5LCBuKQ0KPiAgIGludCBuOw0KPiAgIGludCB5W25dOw0KPiB7IC4uLg0KPiAN
Cj4gQnV0IHRoaXMgd29ya2VkIGJlY2F1c2UgeW91IGNvdWxkIHJlb3JkZXIgdGhlDQo+IGRl
Y2xhcmF0aW9ucyBzbyB0aGF0IGxhdGVyIGRlY2xhcmF0aW9ucyBjb3VsZA0KPiByZWZlciB0
byBwcmV2aW91cyBvbmVzLg0KPiANCj4gU28gb25lIGNvdWxkIGRvDQo+IA0KPiBpbnQgZm9v
KGludCBuLCBjaGFyIGJ1ZltuXTsgIGJ1Ziwgbik7DQo+IA0KPiB3aGVyZSB0aGUgc2Vjb25k
IHBhcnQgZGVmaW5lcyB0aGUgb3JkZXIgb2YNCj4gdGhlIHBhcmFtZXRlciBvcg0KPiANCj4g
aW50IGZvbyhidWYsIG47IGludCBuLCBjaGFyIGJ1ZltuXSk7DQo+IA0KPiB3aGVyZSB0aGUg
Zmlyc3QgcGFydCBkZWZpbnMgdGhlIG9yZGVyLA0KPiBidXQgdGhlIGRlY2xhcmF0aW9ucyBu
ZWVkIHRvIGhhdmUgdGhlIHNpemUNCj4gZmlyc3QuIEJ1dCB0aGVuIHlvdSBuZWVkIHRvIHNw
ZWNpZnkgZWFjaA0KPiBwYXJhbWV0ZXIgdHdpY2UuLi4NCg0KSG1tLCB5ZWFoLCBtYXliZSB0
aGUgWy5uXSBub3RhdGlvbiBtYWtlcyBtb3JlIHNlbnNlLg0KDQo+IA0KPiANCj4+PiBXZSB0
aG91Z2h0IGFib3V0IHVzaW5nIHRoaXMgc3ludGF4DQo+Pj4NCj4+PiBpbnQgZm9vKGNoYXIg
YnVmWy5uXSwgaW50IG4pOw0KPj4+DQo+Pj4gYmVjYXVzZSBpdCBpcyBuZXcgc3ludGF4IHdo
aWNoIG1lYW5zIHdlIGNhbiByZXN0cmljdCB0aGUNCj4+PiBzaXplIHRvIGJlIHRoZSBuYW1l
IG9mIGEgcGFyYW1ldGVyIGluc3RlYWQgb2YgYWxsb3dpbmcNCj4+PiBhcmJpdHJhcnkgZXhw
cmVzc2lvbnMsIHdoaWNoIHRoZW4gbWFrZXMgZm9yd2FyZCByZWZlcmVuY2VzDQo+Pj4gbGVz
cyBwcm9ibGVtYXRpYy4gIEl0IGlzIGFsc28gY29uc2lzdGVudCB3aXRoIGRlc2lnbmF0b3Jz
IGluDQo+Pj4gaW5pdGlhbGl6ZXJzIGFuZCBjb3VsZCBhbHNvIGJlIGV4dGVuZCB0byBhbm5v
dGF0ZQ0KPj4+IGZsZXhpYmxlIGFycmF5IG1lbWJlcnMgb3IgZm9yIHN0b3JpbmcgcG9pbnRl
cnMgdG8gYXJyYXlzDQo+Pj4gaW4gc3RydWN0dXJlczoNCj4+DQo+PiBJdCdzIG5vdCBjcmF6
eS4gIEkgZG9uJ3QgaGF2ZSBtdWNoIHRvIGFyZ3VlIGFnYWluc3QgaXQuDQo+Pg0KPj4+IHN0
cnVjdCB7DQo+Pj4gICAgIGludCBuOw0KPj4+ICAgICBjaGFyIGJ1Zlsubl07DQo+Pj4gfTsN
Cj4+Pg0KPj4+IHN0cnVjdCB7DQo+Pj4gICAgIGludCBuOw0KPj4+ICAgICBjaGFyICgqYnVm
KVsubl07DQo+Pj4gfTsNCj4+DQo+PiBQZXJoYXBzIHNvbWUgZG91YnRzIGFib3V0IGhvdyB0
aGlzIHdvdWxkIHdvcmsgZm9yIG5lc3RlZCBzdHJ1Y3R1cmVzLCBidXQNCj4+IG5vdCB1bnJl
YXNvbmFibGUuDQo+IA0KPiBJdCBpcyBub3QgaW1wbGVtZW50ZWQgdGhvdWdoLi4uDQoNCldl
bGwsIGFyZSB5b3UgcGxhbm5pbmcgdG8gaW1wbGVtZW50IGl0Pw0KSWYgeW91IGRvLCBJJ20g
dmVyeSBpbnRlcmVzdGVkIGluIHVzaW5nIGl0IGluIHRoZSBkb2N1bWVudGF0aW9uIDspDQoN
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------UegMgurV0Hqe80kpaUfZr7Md--

--------------hqc9JUicnx1EMdJdWi4JyVyN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMTstgACgkQnowa+77/
2zJwvw//S72faFj70IgjC8BVG9D+iqWr8I2GNOHuVbLpMI1WNwEeeFKff8zL1uo6
HZn2Dl6nIWO3PuiNwvarNgOsqwsqOgX9InEeyPQ4FY+UoD7jnUPog2BN4ODDMBU9
S5PGGO3Ss2v0cPBzxkuoHY5lskQcjNzOBXdeNyiJ51NLKkiFTkQAycp7lEtw37sg
sbY11bAa1Sv/rNS8F0tSqiiaY17QRXaOhpo1KDRXqaUvxTy6IE68y2HOKqw7972n
M8xo7KZoFdFJDZJOHMql56HP8Be+C5PSkzE7S2r4wpwp78SV6NGIryMVt4aTPEkJ
UWvv1DDh7TPa0lxoQrc52Fs4XI+h/gZlPmRIT0ngxI2Sq1+naBh083qT1/jWon4y
m30yTcZg96Qnt1koxknwh3z2kRB2UhISEbHK33E/3Vs2RAXTQ0kAyNe6WlXBsPt7
lLmPU+gPElz/aSykr4ci6KihDq5g1fO5bBsCQrf+qr2jdjSSsiIxaaVKZPmWxSfO
XfOtCv5qCz0SwEcsHgRH9yVARYmuudmn3wyUKjiRVmWnjeWOlHt7NMYLrIK24fJj
FIuEbvbX9r/leGIw0uWB+YnOrN19J3yq72Pb6qaV4GXiAu1sFnr1jfE1HBKn+pxG
ajfXy2zMBU/cemv41fEurTxfMTmmmjrpdzRVdzsxN/D2WDyps84=
=qZS9
-----END PGP SIGNATURE-----

--------------hqc9JUicnx1EMdJdWi4JyVyN--
