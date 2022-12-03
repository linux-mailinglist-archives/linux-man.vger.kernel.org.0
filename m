Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0FB6417C9
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 17:36:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbiLCQge (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 11:36:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbiLCQgd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 11:36:33 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96489B8E
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 08:36:31 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id bx10so12492268wrb.0
        for <linux-man@vger.kernel.org>; Sat, 03 Dec 2022 08:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZ2689KaxwyqlgqaGu9zIzeMWwaOwd+qV3mMi65J7d0=;
        b=TKlKMqewao5ELJV+kgQebSTgjaiaNWv7TKgPrfp8sm5YLKv5pQoR4EFlFeQjKRyZxG
         p3+I6pqdtNzHM0PgKpKrDkeM1ROuRmQ4jaOlaKJvqRVZxsKdeW8z2ivHNGDa5WqYsmLr
         4Jc2QIXLykU5H2oCo8pWzGBlOOtCQMOlCbWnWs8QiBbavP5TXW02bDlfJBTWbch1HzwG
         tGp9mh0LO3ar33fN5kHmrXvpVH/2sL8aoFf063nQGcImv4BGCIwQ9+VPV1XdFl+Wybo/
         uOlkigICNZKr6VhaHv5m51pGRYY47OMHSjTCikSWampX2Atrnxh1Clha6WFfHsm9bt8s
         N8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AZ2689KaxwyqlgqaGu9zIzeMWwaOwd+qV3mMi65J7d0=;
        b=e9m6mA1y/AzMgI/ambMMtmsSafcGiP7yhsCpcMCuPpUsxNI3iRNH5dJ+LXtEsSqnFs
         si9m+e82aMesta4KyZllFgc0sYV54jSCBq44RDGF9/39I0cZU0G86E9dFos7RdVYUGWV
         vmR4OnLxP9b5gIQpIbXzOueve3bIF4ze/1AXHGKJD8IPNfAldnUlEcAh9UHXwTObS23s
         tdhG4lCSIQpEucfJ9CSAoz3MJquXakVRaekLWXZ9OzvxfE3HXG9B9wzjeIJMvPQtZwKR
         HDfQMRHnhvunAsmcnrU1rVhkbHK83Prq+rw0S8JTOfpkL/q7SHyDANzfLC+RmTcfx2Ed
         x39A==
X-Gm-Message-State: ANoB5pnjF6Hlx2D6hbGuPHy4GbowGKZ+3moxTI/nOGQNCvCJBMbQC6wp
        PfBO09YkwvBwWVkRV1p/j2IcqM8aCqI=
X-Google-Smtp-Source: AA0mqf6C+g3YvW4Gwa7CK8aCvojJDs+M/zFTjfKWRFZqHfpia9SsqpfH1IJhsHQGJoa8q/uvPQcp7A==
X-Received: by 2002:adf:e345:0:b0:236:2f7f:4c71 with SMTP id n5-20020adfe345000000b002362f7f4c71mr44389006wrj.585.1670085390061;
        Sat, 03 Dec 2022 08:36:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e14-20020a05600c4e4e00b003b95ed78275sm12079222wmq.20.2022.12.03.08.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Dec 2022 08:36:29 -0800 (PST)
Message-ID: <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
Date:   Sat, 3 Dec 2022 17:36:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Conflicting alias for some man pages
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>,
        Marcos Fouces <marcos@debian.org>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------V3zLFDWhdb3NR7bQQdR2LgiO"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------V3zLFDWhdb3NR7bQQdR2LgiO
Content-Type: multipart/mixed; boundary="------------kTgA60kmqb6MbGl9XUufWEV3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: linux-man@vger.kernel.org,
 =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>,
 Marcos Fouces <marcos@debian.org>
Message-ID: <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
Subject: Re: Conflicting alias for some man pages
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
In-Reply-To: <20221203140116.GA15173@Debian-50-lenny-64-minimal>

--------------kTgA60kmqb6MbGl9XUufWEV3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UhDQoNCk9uIDEyLzMvMjIgMTU6MDEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gaGVsbG8gTWljaGFlbCwNCj4gc2hvcnQgZGVzY3Jp
cHRpb246DQo+IFBsZWFzZSByZW1vdmUgZHVwbGljYXRlcyBpbiB0aGUgYWxpYXMgKGFsdGVy
bmF0aXZlKSBuYW1lcyBvZiBtYW4NCj4gcGFnZXMuIChMaXN0IG9mIGtub3duIGV4YW1wbGVz
IGF0IHRoZSBlbmQpLg0KPiANCj4gTG9uZyBkZXNjcmlwdGlvbjoNCj4gDQo+IEkgc3VwcG9y
dCBNYXJpbyBpbiBtYWludGFpbmluZyB0aGUgdHJhbnNsYXRpb24gb2YgbWFucGFnZXMNCj4g
KG1hbnBhZ2VzLWwxMG4pIGFuZCBJJ20gYWxzbyB0aGUgRGViaWFuIG1haW50YWluZXIgb2Yg
bWFucGFnZXMtbDEwbi4NCj4gDQo+IFNvbWUgbWFuIHBhZ2VzIGRlc2NyaWJlIG11bHRpcGxl
LCByZWxhdGVkIGNvbW1hbmRzLCBmdW5jdGlvbnMsDQo+IGludGVyZmFjZXMsIOKApi4gSW4g
dGhlIGVuZ2xpc2ggY2FzZSwgbWFuIGF1dG9tYXRpY2FsbHkgZmlndXJlcyB0aGlzDQo+IG91
dCwgc28gdGhhdCB5b3UgY2FuIGNhbGwgdGhlIG1hbiBwYWdlIHVuZGVyIGVhY2ggbmFtZSB3
aXRob3V0IGFueQ0KPiBmdXJ0aGVyIG1hbnVhbCBjb25maWd1cmF0aW9uIChhdCBsZWFzdCBp
biBEZWJpYW4sIHdoZXJlIEkgdHJpZWQgaXQpLg0KPiANCj4gVXAgdG8gcmVjZW50bHksIG1h
bnBhZ2VzLWwxMG4gc2hpcHBlZCB0aGUgdHJhbnNsYXRlZCBtYWluIG1hbiBwYWdlLA0KPiBl
LmcuIGlmDQo+IGNvbW1hbmQxLjENCj4gY29udGFpbnMNCj4gDQo+IE5BTUUNCj4gY29tbW1h
bmQxLCBjb21tYW5kMiAtIERlc2NyaXB0aW9uDQo+IA0KPiBtYW5wYWdlcy1sMTBuIHNoaXBw
ZWQgZS5nLiBkZS9tYW4xL2NvbW1hbmQxLjENCj4gDQo+IFVuZGVyIERlYmlhbiB0aGVuIHRo
ZSBmb2xsb3dpbmcgaGFwcGVuZDoNCj4gSWYgSSByYW4NCj4gbWFuIGNvbW1hbmQxDQo+IEkg
c2F3IHRoZSBHZXJtYW4gdmVyc2lvbiwgaG93ZXZlciwgd2l0aA0KPiBtYW4gY29tbWFuZDIN
Cj4gSSBnb3QgdGhlIGVuZ2xpc2ggdmVyc2lvbiwgaWYgaXQgZXhpc3RzLCBvdGhlcndpc2Ug
dGhlIEdlcm1hbiB2ZXJzaW9uLg0KPiANCj4gVGhlIG1haW50YWluZXIgb2YgbWFuIHJlcXVl
c3RlZCB0aGF0IEkgcHJvdmlkZSBleHBsaWNpdCBzeW1saW5rcyBmb3INCj4gdGhlc2UgbWFu
IHBhZ2VzWzFdLCB3aGljaCBJIGltcGxlbWVudGVkIGZvciB0aGUgbGFzdCB1cGxvYWQgb2YN
Cj4gbWFucGFnZXMtbDEwbiB0byBEZWJpYW4uDQo+IA0KPiBXaGlsZSBkb2luZyB0aGlzLCBJ
IG5vdGljZWQgdGhhdCBzb21lIGFsdGVybmF0aXZlIG5hbWVzIChhbGlhc2VzKQ0KPiB3aGVy
ZSB1c2VkIG11bHRpcGxlIHRpbWVzLiBUaGlzIGNhdXNlZCBsaW5rIGNyZWF0aW9uIHRvIGZh
aWwgKGZvciB0aGUNCj4gc2Vjb25kIGFuZCBmdXJ0aGVyIG9jY3VyZW5jZXMpIGFuZCBzaG91
bGQgYWxzbyBjYXVzZSAicmFuZG9tIg0KPiBiZWhhdmlvdXIgZm9yIHRoZSBlbmdsaXNoIHBh
Z2VzIChhcyBtYW4gY291bGQgc2VsZWN0IGZyb20gc2V2ZXJhbA0KPiBwYWdlcykuDQo+IA0K
PiBDb3VsZCB5b3UgcmVtb3ZlIHRoZXNlIGR1cGxpY2F0ZXMgaW4geW91ciBuZXh0IHVwbG9h
ZD8NCj4gDQo+IEkgZm91bmQgdGhlIGZvbGxvd2luZyBkdXBsaWNhdGVzLCBJIGRpZCBub3Qg
ZG8gYW4gZXh0ZW5zaXZlIHNlYXJjaDoNCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiByaW5kZXggLSBC
b3RoIGluIGluZGV4LjMgYW5kIGluIHN0cmluZy4zDQo+IHN0cm5jYXNlY21wIC0gQm90aCBp
biBzdHJjYXNlY21wLjMgYW5kIGluIHN0cmluZy4zDQo+IHN0cm5jYXQgLSBCb3RoIGluIHN0
cmNhdC4zIGFuZCBpbiBzdHJpbmcuMw0KPiBzdHJuY21wIC0gQm90aCBpbiBzdHJjbXAuMyBh
bmQgaW4gc3RyaW5nLjMNCj4gc3RybmNweSAtIEJvdGggaW4gc3RyY3B5LjMgYW5kIGluIHN0
cmluZy4zDQo+IF9fZnB1cmdlIC0gQm90aCBpbiBmcHVyZ2UuMyBhbmQgaW4gc3RkaW9fZXh0
LjMNCj4gc3RyY3NwbiAtIEJvdGggaW4gc3Ryc3BuLjMgYW5kIGluIHN0cmluZy4zDQo+IHN0
cnJjaHIgLSBCb3RoIGluIHN0cmNoci4zIGFuZCBpbiBzdHJpbmcuMw0KPiBwc2VsZWN0IC0g
Qm90aCBpbiBzZWxlY3QuMiBhbmQgaW4gc2VsZWN0X3R1dC4yDQo+IA0KPiBUaGFua3MhDQo+
IA0KPiBHcmVldGluZ3MNCj4gDQo+ICAgICAgICAgICAgICBIZWxnZQ0KPiANCj4gWzFdIGh0
dHBzOi8vYnVncy5kZWJpYW4ub3JnL2NnaS1iaW4vYnVncmVwb3J0LmNnaT9idWc9MTAyMDc0
Mg0KDQpTbywgaWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgc3BlY2lmeWluZyB0aGUgc2Ft
ZSBuYW1lIGluIHRoZSAuU0ggTkFNRSBzZWN0aW9uIA0KaW4gbW9yZSB0aGFuIG9uZSBwYWdl
IGlzIHByb2JsZW1hdGljLCByaWdodD8gIEl0IG1ha2VzIHNlbnNlIHRvIG1lLiAgSSdtIGEg
Yml0IA0Kc3VycHJpc2VkIHRoYXQgdGhpcyBidWcgaGFzbid0IGJlZW4gcmVwb3J0ZWQgdGhv
dWdoLCBidXQgb3RoZXJ3aXNlIEknbSBmaW5lIA0KZml4aW5nIGl0Lg0KDQpJIENDZWQgYSBm
ZXcgcGVvcGxlIHRoYXQgaGF2ZSBhIGxvdCBtb3JlIGV4cGVyaWVuY2UgdGhhbiBJIGRvLCBh
bmQgd2lsbCBwcm9iYWJseSANCmJlIGFibGUgdG8gdGVsbCBpZiBJIHVuZGVyc3Rvb2QgdGhl
IHByb2JsZW0gY29ycmVjdGx5Lg0KDQpTbywgc2luY2Ugd2UncmUgc3RpbGwgb24gdGltZSBm
b3IgdGhlIERlYmlhbiBmcmVlemUsIGlmIHlvdSBjb25maXJtIHRoYXQgdGhpcyBpcyANCnRo
ZSBpc3N1ZSBhbmQgdGhlIGZvbGxvd2luZyBmaXggaXMgY29ycmVjdCwgSSdsbCBpbXBsZW1l
bnQgaXQgYW5kIHJlbGVhc2UgDQptYW4tcGFnZXMtNi4wMiBsYXRlciB0aGlzIG1vbnRoOyB0
aGUgc29sc3RpY2Ugc2VlbXMgYSBwcm9wZXIgZGF5IGZvciBhIHJlbGVhc2UsIA0KY2VsZWJy
YXRpbmcgdGhlIG5ldyBTdW4uICBUaGFua3MgZm9yIHRoZSByZXBvcnQhDQoNClNvLCBJJ2xs
IHRyeSB0byBmaW5kIGEgY29tcGxldGUgbGlzdCBvZiBkdXBsaWNhdGUgTkFNRXMsIGFuZCBr
ZWVwIG9ubHkgb25lIG9mIHRoZW0uDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KUC5TLjog
VGhlIGJpZ2dlc3QgaW1wbGljYXRpb24gb2YgZml4aW5nIHRoaXMgYmVmb3JlIHRoZSBmcmVl
emUgaXMgdGhhdCBJJ2xsIA0KcmVsZWFzZSBWTEEgc3ludGF4IGZvciBmdW5jdGlvbiBwYXJh
bWV0ZXJzLCBzb21ldGhpbmcgd2hpY2ggSSB3YXNuJ3QgZXhwZWN0aW5nIA0KdG8gZG8gc28g
c29vbi4gIEl0IHNlZW1zIHRoYXQgTW9sdGtlIHdhcyByaWdodFsxXS4gIEknbSBzdGlsbCBj
b252aW5jZWQgdGhhdCANCml0J3MgYSBnb29kIGNoYW5nZSwgc28gbGV0J3Mgc2VlIGhvdyB0
aGVzZSByYWRpY2FsIGNoYW5nZXMgYXJlIHJlY2VpdmVkLiAgOykNCg0KDQpbMV06IDxodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1tYW4vMjAyMjExMTAwOTQwMzMucHRwZnNxcHZ2
eDJ5ZDV4c0BpbGxpdGhpZC8+DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------kTgA60kmqb6MbGl9XUufWEV3--

--------------V3zLFDWhdb3NR7bQQdR2LgiO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOLewQACgkQnowa+77/
2zIWOQ//Zbk6CZ99yeNZ5uA2y5vdCqOdk+IvtTpUnz+HbiwUgwrFO5jblcMmMsUB
wuYJ/QxxIK9KUIKEPo00IDitMRvhQvLJ4+/kyTyPlodXiV8RUf1xHabz18F8Qv4Y
Ecj/liNjm3r9bMj7+v7F0278J7kDE9vkbzhHwwd0k4TAALMBL0byPss0iLQ3s04r
32hwxXkr4yLcBW1DUs93Dc6lCvmhVACFePVg9keNHfHLVyTc82oQzRj8GVJy02lx
NA5NhlIc0NtOqfJBRmUBOTlejQGmkv6tqQ8BPB8RoGQKm5ikgfMcteXPBlMSYmz4
k2OH6iARUzlTRfM45W3FaeLnG4aFvZmyyN+zAV8A+lQ9TS66Knrko0xc9BpgY/CL
+IBdeYeJnDVchSngEXQf4Z3WJn6uEIcr/fCZWvTqqCkgbpi8gTvSeBz26fBLy1bZ
ojeaNSwT4/aCx6UVPG47RrYRgQ1CYhVYeji2ZIkDystehBMAHbaqorVmK2fEjLG9
gXYgtY/my7nEFNeomZJPmVecbbxvaZJeKC3b8aGdVcHT/lxeoJFBPEY5nLpPLA8m
hzkgxnpUQ9dg6goGzhPRwsxLg1ODiynYtyuZPOilrstnW2r6lFr07o7Scm8/+1eD
qhLxQL9znzmMThnBnyNTlt1tQ7OAOpDkqdpdKEHnNLtNXBNPUaQ=
=xxs6
-----END PGP SIGNATURE-----

--------------V3zLFDWhdb3NR7bQQdR2LgiO--
