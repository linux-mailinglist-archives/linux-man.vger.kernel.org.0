Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1444B64948D
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 14:53:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbiLKNxF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 08:53:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiLKNxE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 08:53:04 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D13732733
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 05:53:02 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so3038217wmb.2
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 05:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FblbMUIjgPJSIeB08qhvR3TAA0dC/gymQUajUMMxOhE=;
        b=DiBdCbtZOMFHgW3YIhTgG7vra3weJm48pg03XaBuoyhHgESnDBxDRwtg2bL7QZwrGQ
         AkHQjkQ1VJ508XF7iJfo0wWbixJNdz2++fWS+JSVXBDJKQ/n5gr8mZr97lnyYpwfkprS
         qXelXYPAE6Z/VxtIGspopZSymyiBMpaGE63qLkiTXIzjrYytSTszHTd3GSIR8VEU4EbI
         QF6cnSpTREqkUtFp2fiv1hcay25yVj4wOn9j4Rvd3F8NbHi8n018x647ew2Fe/28o8XI
         gHuDGxAe9e9vfgtSDf5TAeVX6NiBBIF00l9qZSdahC6yHSsgMwWMYAygY+yl+2B/s8eC
         nmLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FblbMUIjgPJSIeB08qhvR3TAA0dC/gymQUajUMMxOhE=;
        b=x8VtueqbJ2BdJhrWaoWsfwoG+rRdZgY1BtYPG8CkuWT7iShrjJMLIjfgl1lwPb/TH5
         NdmHK2f43GdyRFqECBT6cmzOTTT+peXLa5hI5UFSB+0zZVDvYf1SgDvZ7XDkiSPYD1bz
         hp6Oe3ZGmACWS02KSCuLnz+EViYNpwgOQ3ddW3LixuSWZyEylJestolVatKYcI9DQMpx
         dYf5Fl+/CQdbVoFNYwpHio9AfwJ3/oZR+D09kNGlrqW1rGsmkEsDR1fE4NptHLVaNRZv
         uhHtu6/RXKYIAOaYKpU5PZ/98R58BW8rZSi1s2GfIcsQf5F5WCDlD2c2Pr1pi+A9XHHL
         2Xkw==
X-Gm-Message-State: ANoB5pnuVMPzUWUrnXFCqC6yWeXaZWB//oEyxIJABi5cqpHkGYV7SfqQ
        ngShoEckMdOQcqd1DFocxoBvTVUwNWY=
X-Google-Smtp-Source: AA0mqf5e+pG5U3zipyzPmKxX2p/ydMp3Kan4E0l+a9zyxO1LWoxVUeWNJVh5xL7AGaJWhf25R0NidA==
X-Received: by 2002:a05:600c:6890:b0:3d1:d1a9:efde with SMTP id fn16-20020a05600c689000b003d1d1a9efdemr9754396wmb.12.1670766781279;
        Sun, 11 Dec 2022 05:53:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18-20020a1cc912000000b003cf75213bb9sm5889765wmb.8.2022.12.11.05.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 05:53:00 -0800 (PST)
Message-ID: <36ffe1fa-67b7-85d8-cefe-a5ca11af5473@gmail.com>
Date:   Sun, 11 Dec 2022 14:52:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Conflicting alias for some man pages
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
 <20221210075302.GA4079@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221210075302.GA4079@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LqEaLVir9bnAJEJpeCLtIa8E"
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
--------------LqEaLVir9bnAJEJpeCLtIa8E
Content-Type: multipart/mixed; boundary="------------vE0I65dpK0d9BkdWhM0xoaZ0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>,
 linux-man@vger.kernel.org, =?UTF-8?Q?Mario_Bl=c3=a4ttermann?=
 <mario.blaettermann@gmail.com>, Marcos Fouces <marcos@debian.org>,
 "Dr. Tobias Quathamer" <toddy@debian.org>
Message-ID: <36ffe1fa-67b7-85d8-cefe-a5ca11af5473@gmail.com>
Subject: Re: Conflicting alias for some man pages
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
 <20221210075302.GA4079@Debian-50-lenny-64-minimal>
In-Reply-To: <20221210075302.GA4079@Debian-50-lenny-64-minimal>

--------------vE0I65dpK0d9BkdWhM0xoaZ0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzEwLzIyIDA4OjUzLCBIZWxnZSBLcmV1dHptYW5uIHdyb3Rl
Og0KPiBIZWxsbyBCcmFuZGVuLA0KPiBPbiBGcmksIERlYyAwOSwgMjAyMiBhdCAwMjozNzox
OVBNIC0wNjAwLCBHLiBCcmFuZGVuIFJvYmluc29uIHdyb3RlOg0KPj4gQXQgMjAyMi0xMi0w
OVQxOTo1Mzo0NCswMTAwLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+Pj4+IENvdWxk
IHlvdSByZW1vdmUgdGhlc2UgZHVwbGljYXRlcyBpbiB5b3VyIG5leHQgdXBsb2FkPw0KPj4+
Pj4NCj4+Pj4+IEkgZm91bmQgdGhlIGZvbGxvd2luZyBkdXBsaWNhdGVzLCBJIGRpZCBub3Qg
ZG8gYW4gZXh0ZW5zaXZlIHNlYXJjaDoNCj4+Pj4+ID09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+Pj4+IHJp
bmRleCAtIEJvdGggaW4gaW5kZXguMyBhbmQgaW4gc3RyaW5nLjMNCj4+Pj4+IHN0cm5jYXNl
Y21wIC0gQm90aCBpbiBzdHJjYXNlY21wLjMgYW5kIGluIHN0cmluZy4zDQo+Pj4+PiBzdHJu
Y2F0IC0gQm90aCBpbiBzdHJjYXQuMyBhbmQgaW4gc3RyaW5nLjMNCj4+Pj4+IHN0cm5jbXAg
LSBCb3RoIGluIHN0cmNtcC4zIGFuZCBpbiBzdHJpbmcuMw0KPj4+Pj4gc3RybmNweSAtIEJv
dGggaW4gc3RyY3B5LjMgYW5kIGluIHN0cmluZy4zDQo+Pj4+PiBfX2ZwdXJnZSAtIEJvdGgg
aW4gZnB1cmdlLjMgYW5kIGluIHN0ZGlvX2V4dC4zDQo+Pj4+PiBzdHJjc3BuIC0gQm90aCBp
biBzdHJzcG4uMyBhbmQgaW4gc3RyaW5nLjMNCj4+Pj4+IHN0cnJjaHIgLSBCb3RoIGluIHN0
cmNoci4zIGFuZCBpbiBzdHJpbmcuMw0KPj4+Pj4gcHNlbGVjdCAtIEJvdGggaW4gc2VsZWN0
LjIgYW5kIGluIHNlbGVjdF90dXQuMg0KPj4+DQo+Pj4gQ291bGQgeW91IHBsZWFzZSBjb25m
aXJtIGlmIHRoaXMgaXMgYSBidWcgaW4gdGhlIExpbnV4IG1hbi1wYWdlcywgb3IgaXMgaXQN
Cj4+PiBzb21ldGhpbmcgZGVzaXJhYmxlPw0KPj4NCj4+IEkgZG9uJ3QgdGhpbmsgaXQgaXMg
YSBidWcgZm9yIG11bHRpcGxlIHBhZ2VzIHRvIGhhdmUgYSBtYW5kYiBlbnRyeSBmb3INCj4+
IHRoZSBzYW1lIG5hbWUuICBUaGUgbWFuKDEpIGxpYnJhcmlhbiBpcyBkZXNpZ25lZCBpbiBl
eHBlY3RhdGlvbiBvZiB0aGF0Ow0KPj4gd2UgaGF2ZSBib3RoIHByaW50ZigxKSBhbmQgcHJp
bnRmKDMpLCBhZnRlciBhbGwuDQo+IA0KPiBPay4gVGhlIHJhdGlvbmFsZSBmb3IgbXkgcmVx
dWVzdCB3YXMgdGhhdCB0aGUgZm9yICpsb2NhbGl6ZWQqIHN5c3RlbQ0KPiB0aGlzIGRvZXMg
bm90IHdvcmsgaW4gRGViaWFuIChyZWxpYWJseSkuIEl0IG9ubHkgd29ya3MgaWYgdGhlIGVu
Z2xpc2gNCj4gbWFuIHBhZ2UgaXMgbm90IHByZXNlbnQsIG90aGVyd2lzZSB5b3UgZ2V0IHRo
ZSBlbmdsaXNoIHZlcnNpb24uDQo+IA0KPiBGb3IgZXhhbXBsZSwgZm9yIHN0cmNhc2VjbXAg
SSBjdXJyZW50bHkgZ2V0IHRoZSBnZXJtYW4gdmVyc2lvbiwNCj4gaG93ZXZlciwgZm9yIHN0
cm5jYXNlY21wIEkgZ2V0IHRoZSBlbmdsaXNoIHZlcnNpb24uDQo+IA0KPiBJIHJlcG9ydGVk
IHRoaXMgdG8gdGhlIG1hbi1kYiBwYWNrYWdlIGluIERlYmlhbiBhbmQgd2FzIHRvbGQgdGhh
dA0KPiB0aGlzIGlzIGEgYnVnIGluIG1hbnBhZ2VzLWwxMG4gYW5kIHRoYXQgSSBzaG91bGQg
Y3JlYXRlIHN5bWxpbmtzLg0KPiANCj4gU2VlIGh0dHBzOi8vYnVncy5kZWJpYW4ub3JnL2Nn
aS1iaW4vYnVncmVwb3J0LmNnaT9idWc9MTAyMDc0MiBmb3INCj4gZGV0YWlscy4NCj4gDQo+
IFdoaWxlIGRvaW5nIHNvLCBJIG5vdGljZWQgdGhpcyBwcm9ibGVtLCBiZWNhdXNlIGhvdyBz
aG91bGQgSSBkZWNpZGUgaWYNCj4gc3RybmNhdC4zIHNob3VsZCBwb2ludCB0byBzdHJjYXQu
MyBvciBzdHJpbmcuMz8gRXNwZWNpYWxseQ0KPiBhdXRvbWF0aWNhbGx5LCBiZWNhdXNlIG1h
bnBhZ2VzLWwxMG4gaGFzIGEgZG96ZW4gb3Igc28gbGFuZ3V1YWdlcyB3aXRoDQo+IG1hbnkg
dGhvdXNhbmQgbWFuIHBhZ2VzLg0KPiANCj4gQ3VycmVudGx5LCB0aGUgbGluayBpcyBzZXQg
cmFuZG9tbHkuDQo+IA0KPiANCj4+PiBJIGZpbmQgaXQgYSBiaXQgd2VpcmQgdGhhdCB3ZSBu
ZWVkIHRvIHNwZWNpZnkgYSBOQU1FIG9ubHkgb25jZS4NCj4+DQo+PiBUaGVyZSBpcyBubyBz
dWNoIG5lZWQsIGFuZCBpdCB3b3VsZCBiZSBpbXBvc3NpYmxlIHRvIGVuZm9yY2UgYWNyb3Nz
DQo+PiBwcm9qZWN0cyBhbnl3YXkuDQo+IA0KPiBGb3IgbWUgSSB3b3VsZCByZXBvcnQgdGhh
dCB3aGVyZSBJIG5vdGljZSBpdCwgaG93ZXZlciwgSSBkbyBzZWUgeW91DQo+IHJhdGlvbmFs
ZS4NCj4gDQo+IEJ1dCBob3cgc2hvdWxkIG1hbiBiZWhhdmU/IElmIHlvdSBlbnRlcg0KPiBt
YW4gc3RybmNhc2VjbXANCj4gc2hvdWxkIGl0IGJlIHRoZSBtYW4gcGFnZSBmb3Igc3RyY2Fz
ZWNtcC4zIG9yIHN0cmluZy4zPw0KDQpUaGUgYW5zd2VyIGlzIGhlcmU6DQoNCmFseEBhc3Vz
NTc3NTp+L3NyYy9saW51eC9tYW4tcGFnZXMvbWFuLXBhZ2VzL21haW4kIGNhdCAuL21hbjMv
c3RybmNhc2VjbXAuMw0KLnNvIG1hbjMvc3RyY2FzZWNtcC4zDQoNCg0KSSBkb24ndCBrbm93
IGhvdyB0aGUgbWFuIHBhZ2VzIGFyZSBwcmVwcm9jZXNzZWQgYmVmb3JlIHRoZXkgYXJyaXZl
IHRvIHlvdSwgc28gaW4gDQp0aGF0IHByb2Nlc3NpbmcgbWlnaHQgYmUgdGhlIHByb2JsZW0u
ICBNYXliZSBzb21lIGluZm9ybWF0aW9uIGlzIGJlaW5nIGxvc3QgaW4gDQp0aGUgcHJvY2Vz
cy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+Pj4gVGhlbiB3aGF0aXMoMSkgd2lsbCBu
b3QgZmluZCB0aGUgb3RoZXIgcGFnZXMgdGhhdCBhbHNvIHRhbGsNCj4+PiBhYm91dCBhbiBp
bnRlcmZhY2UgKG9mIGNvdXJzZSwgaWRlYWxseSwgb25seSBhIHBhZ2Ugd291bGQgZGVzY3Jp
YmUgYW4NCj4+PiBpbnRlcmZhY2UsIGJ1dCB3ZSBrbm93IHRoYXQncyBub3QgcmVhbGl0eSku
DQo+Pg0KPj4gYXByb3BvcygxKSBhbmQgd2hhdGlzKDEpIGRvIGluZGVlZCBiZWhhdmUgaW4g
YSB3YXkgdGhhdCBzdXJwcmlzZXMgbWUgb24NCj4+IG15IERlYmlhbiBzeXN0ZW0gKG1hbi1k
YiAyLjkuNC0yKS4gIEkgd291bGQgaGF2ZSBleHBlY3RlZCBtdWx0aXBsZQ0KPj4gcmVzdWx0
cy4NCj4+DQo+PiBXaGF0IEkgZXhwZWN0ZWQ6DQo+Pg0KPj4gJCB3aGF0aXMgcmluZGV4DQo+
PiByaW5kZXggKDMpICAgICAgICAgICAtIGxvY2F0ZSBjaGFyYWN0ZXIgaW4gc3RyaW5nDQo+
PiBzdHJpbmcgKDMpICAgICAgICAgICAtIHN0cmluZyBvcGVyYXRpb25zDQo+PiBbLi4uYW5k
IG1heWJlIG90aGVycyBJIGhhdmVuJ3QgdGhvdWdodCBvZl0NCj4+DQo+PiBXaGF0IEkgZ290
Og0KPj4gcmluZGV4ICgzKSAgICAgICAgICAgLSBsb2NhdGUgY2hhcmFjdGVyIGluIHN0cmlu
Zw0KPj4NCj4+IEkgYW0gbm90IHN1cmUgd2h5IGZ1cnRoZXIgbWF0Y2hlcyBhcmUgYmVpbmcg
aGlkZGVuLg0KPiANCj4gT24gbXkgRGViaWFuIHRlc3Rpbmcgc3lzdGVtIHRoaXMgaXMgKG1v
cmUpIGNvcnJlY3Q6DQo+IA0KPiBpbmRleCAoMykgICAgICAgICAgICAtIGZpbmRldCBlaW4g
WmVpY2hlbiBpbiBlaW5lciBaZWljaGVua2V0dGUNCj4gcmluZGV4ICgzKSAgICAgICAgICAg
LSBsb2NhdGUgY2hhcmFjdGVyIGluIHN0cmluZw0KPiANCj4gU28gbWF5YmUgc29tZXRoaW5n
IG9uIHlvdXIgc3lzdGVtPyBJcyB0aGlzIERlYmlhbiBzdGFibGUgb3IgdGVzdGluZz8NCj4g
DQo+IEdyZWV0aW5ncw0KPiANCj4gICAgICAgICAgIEhlbGdlDQoNCi0tIA0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------vE0I65dpK0d9BkdWhM0xoaZ0--

--------------LqEaLVir9bnAJEJpeCLtIa8E
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOV4LsACgkQnowa+77/
2zL63A//b+cDZ76+uQJ4LMQgf31hIJWhstGyyc8fxl8KWyUwNVe5WCYmBSuKjj/F
2TVuoz/b6MaSbKkJHNAcB1j74PG9PkTVwBkiyGsDgQcF5y6ztYcrE5tpgNBImEca
iYljawFZCKKKBL7E6PcVuuEW2WEQ9/o2V8aKv31kR7YxdBI7ERtTWBlHqnUl/116
YOIxtnODZl5E2QFHIZ/9/sH91cD0Jqcypm4zbKgX1y7Ra0YvlSSqlfpY9gor/3Wy
FTtV5LHAJDhnaZs0aLVEnglA57WGVk7K7U4IbIW2pWGakMySzyIJX+If9ngTvISI
YuBHu64oMmGZAtvjsYjrfJo7HQ62zuJdrE9zVYJbkzkat2oBmNPzKuR6gKpCe1Mm
aACMjFVnS64NctvSCRiQ6RdvE2Q6BLNNvu0ZhAFZ4zbsXm9YCOUPQSpQQCESKMDp
0PWZPGRGACXu9V9ahwt9aX11CpjceT7zGWcwCKwlHoxQCbDu7ekJFQQXXQGL/ORO
5LopbUea0SqSw7TekfB49qJxSvxrrbty+lw9LxEg2UHPETxAZE7lSltVCUEvRdrx
YBAn8iq8/zOPnELCJK4sOklM244ADLsUvdXs0kNnm+UeQxKCSJ3/fBuh86PMVwUh
PZ12MhtPoj7/V6lqf0+B8mVT7M7IrCllAA7sJGC/spRnQQOP5gM=
=23k+
-----END PGP SIGNATURE-----

--------------LqEaLVir9bnAJEJpeCLtIa8E--
