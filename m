Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91CEB57BF6B
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 23:07:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbiGTVHE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 17:07:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiGTVHE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 17:07:04 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CA4B167CD
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 14:07:03 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id a5so27792208wrx.12
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 14:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=O7Hz1PKvOoTvpd63E4bHre74hdxUqeDsq+0pj84m44U=;
        b=C8RvJZ5mY7o1h4JMOUgAKTZ0dadpDbuip1C0OaqkW/kjdxGrPCxIhwYBdIbdBMV8Op
         fb0gBsUFaoUUi4V/KiDGRD1aho+feVhD3NXVwNdNHAEzdJjDh9A7IgIhw6mA0M2PX34E
         bSTT8hLRMZEqjJdpyQPetUCSGDKl2JUOxcXQPx73a54TZWo+/wBhVDCGoXlAlnyKS+eD
         F1pFprLooMMhX0MKC03gjaOJgypU3LFFTwsckOzD2ndvX0BBmaFueYFbW8D9S3xEuzux
         Dv8jf44VKM0kGw4n024SzwpjlYo9v+x3lA+/uv+YOFbLgLh1mcIjVgLCW7N9nq6nyN1/
         sm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=O7Hz1PKvOoTvpd63E4bHre74hdxUqeDsq+0pj84m44U=;
        b=DdlF6bNtc7dxjPi2if4QHZCX/LsxQhH2k8KNWeMvwQ8hpexbQtRzU2rWgmij+ZDhst
         iWp/baKTuvPl0yEMj+EKy7L0J7cDw+EBsu/XhcDgysS/rQ7oxstqq9z6PwwRNPtCIavh
         kKPckzPEEMvHZ672xpOUer0nmrNlDhiRD3XcGlO508dphe8vxH1NiiKKH/heFm8krl8L
         xXZ0veHOJIxd2PDGYjpSWwvG/MqYUg0gyf96F7niidZk/cvWu+LAw0X7fPrpuBV/6MrE
         l7Hr71jGFZhi53Jtk3NjQFTWSrJFwzPCURLN5yFFlb1GwtTtz8awcXflYe2GPQ4YkVXj
         y2xA==
X-Gm-Message-State: AJIora9Lbo6RpEwG/2ZqBf6l3iSaVQTk/pvujGooJLj+0XS1pp1XEHY8
        1/C3mc5FAoX2ukUuDGWOIWw=
X-Google-Smtp-Source: AGRyM1uSTRykPZynXd15z2GOGxyLTv/elcDuwnEA5f08yHZdFZYlsczqQefEY18xsvT+ezDosTbU/w==
X-Received: by 2002:a05:6000:15c6:b0:21d:a96b:8ffd with SMTP id y6-20020a05600015c600b0021da96b8ffdmr34101144wry.610.1658351221638;
        Wed, 20 Jul 2022 14:07:01 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x3-20020a05600c420300b003a3200bc788sm3434976wmh.33.2022.07.20.14.07.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 14:07:01 -0700 (PDT)
Message-ID: <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
Date:   Wed, 20 Jul 2022 23:06:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Update bpf-helpers(7) man page
To:     Quentin Monnet <quentin@isovalent.com>
Cc:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pX0AsWa0404tzcUo7LZZmgMp"
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
--------------pX0AsWa0404tzcUo7LZZmgMp
Content-Type: multipart/mixed; boundary="------------WAi5V9Ya7Z49ABSJ4UPMa71x";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Quentin Monnet <quentin@isovalent.com>
Cc: Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
 linux-man <linux-man@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
Subject: Re: Update bpf-helpers(7) man page
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
In-Reply-To: <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>

--------------WAi5V9Ya7Z49ABSJ4UPMa71x
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUXVlbnRpbiwNCg0KT24gNy8yMC8yMiAyMjo0MCwgUXVlbnRpbiBNb25uZXQgd3JvdGU6
DQo+IE9uIFdlZCwgMjAgSnVsIDIwMjIgYXQgMTA6NTAsIEFsZWphbmRybyBDb2xvbWFyIDxh
bHgubWFucGFnZXNAZ21haWwuY29tPiB3cm90ZToNCj4+DQo+PiBIaSBSdW1lbiwNCj4+DQo+
PiBPbiA3LzE5LzIyIDE5OjIxLCBSdW1lbiBUZWxiaXpvdiB3cm90ZToNCj4+PiBIaSBBbGVq
YW5kcm8sDQo+Pj4NCj4+PiBUaGFua3MgZm9yIGZvbGxvd2luZyB1cCBvbiB0aGlzLg0KPj4+
IFF1ZW50aW4gd2lsbCBzZW5kIHlvdSB0aGUgc2NyaXB0IHRoZXNlIGRheXMgZm9yIHlvdSB0
byByZXJ1bi4NCj4+PiBIb3dldmVyLCBJJ20gd29uZGVyaW5nIGlmIHRoZXJlJ3MgYSB3YXkg
dG8gcnVuIGl0IGF1dG9tYXRpY2FsbHkgd2hlbiBhIGNoYW5nZSBpcw0KPj4+IGRldGVjdGVk
IG9yIG90aGVyd2lzZSB3aXRob3V0IG5lZWRpbmcgbWFudWFsIGludGVydmVudGlvbj8gVGhp
cyB3YXkNCj4+PiB0aGUgcHVibGlzaGVkDQo+Pj4gcGFnZSB3aWxsIG5vdCBnZXQgb3V0IG9m
IGRhdGUuIEkgYW0gbm90IHN1cmUgd2hhdCB0aGF0IG1lY2hhbmlzbSBtaWdodCBiZSBidXQN
Cj4+PiBqdXN0IGEgdGhvdWdodC4NCj4+DQo+PiBJJ20gbm90IHN1cmUgYW4gYXV0b21hdGVk
IG1lY2hhbmlzbSB3b3VsZCBiZSBlYXN5IHRvIHNldCB1cC4NCj4+IEJ1dCwgSSdtIHBsYW5u
aW5nIHRvIGFkZCBhIFJFTEVBU0UgZmlsZSB0byB0aGUgbWFuLXBhZ2VzIHJlcG8gd2l0aA0K
Pj4gaW5zdHJ1Y3Rpb25zIHRvIG1ha2UgYSByZWxlYXNlLiAgSSBjYW4gYWRkIHRoZXJlIGEg
c3RlcCB0aGF0IHJlbWluZHMgdG8NCj4+IHJlZnJlc2ggdGhlIGJwZi1oZWxwZXJzKDcpIG1h
bnVhbCBwYWdlIGJlZm9yZSBldmVyeSByZWxlYXNlLg0KPiANCj4gSGkgQWxlamFuZHJvLCBS
dW1lbiwNCj4gDQo+IFRoYW5rIHlvdSBSdW1lbiBmb3IgcmFpc2luZyB0aGlzLiBZZXMsIHRo
ZSBicGYtaGVscGVycyg3KSBtYW4gcGFnZSBpcw0KPiBnZW5lcmF0ZWQgZnJvbSBhIHNjcmlw
dDogaXQncyBzY3JpcHRzL2JwZl9kb2MucHkgdW5kZXIgdGhlIGtlcm5lbA0KPiByZXBvc2l0
b3J5IFswXSwgd2hpY2ggcGFyc2VzIHRoZSBVQVBJIGhlYWRlciBhdA0KPiBpbmNsdWRlL3Vh
cGkvbGludXgvYnBmLmggWzFdIHRvIGdlbmVyYXRlIGEgclNUIGZpbGUgdGhhdCBjYW4gYmUN
Cj4gY29udmVydGVkIHRvIGEgbWFuIHBhZ2UuIEZyb20gdGhlIHJvb3Qgb2YgdGhlIExpbnV4
IHJlcG9zaXRvcnksIG9uZQ0KPiBjYW4gZ2VuZXJhdGUgYW5kIHJlYWQgdGhlIG1hbnVhbCBw
YWdlIHdpdGggdGhlIGZvbGxvd2luZyBjb21tYW5kOg0KPiANCj4gICAgICAkIC4vc2NyaXB0
cy9icGZfZG9jLnB5IGhlbHBlcnMgfCByc3QybWFuIHwgbWFuIC1sIC0NCj4gDQo+IChOb3Rl
IHRoYXQgdGhlIG5hbWUgb2YgdGhlIHNjcmlwdCBoYXMgY2hhbmdlZCBzaW5jZSBtYW4tcGFn
ZSBjb21taXQNCj4gNTM2NjZmNmMzMDQ1LikNCg0KT2theSwgdGhhdCBtYWtlcyBzZW5zZSAo
SSB0cmllZCB0byBmaW5kIHRoZSBzY3JpcHQgbWVudGlvbmVkIGluIHRoYXQgDQpjb21taXQs
IGFuZCBkaW4ndCBmaW5kIGl0KS4NCj4gDQo+IEdpdmVuIHRoYXQgdGhlIHNjcmlwdCBpcyBt
YWludGFpbmVkIGluIHRoZSBMaW51eCByZXBvc2l0b3J5IChpdCBpcyBydW4NCj4gdGhyb3Vn
aCB0aGUgQlBGIENJIFsyXSwgYW5kIGl0IGlzIGFsc28gdXNlZCB0byBnZW5lcmF0ZSBhIEMg
aGVhZGVyDQo+IHRoYXQgaXMgc2hpcHBlZCBhbG9uZyB3aXRoIGxpYmJwZiBbM10pLCBJIHdv
dWxkIHJlY29tbWVuZCBhZ2FpbnN0DQo+IGNvcHlpbmcgaXQgdG8gdGhlIG1hbi1wYWdlcyBy
ZXBvc2l0b3J5LCBzbyB0aGF0IHdlIGF2b2lkIGdldHRpbmcgdHdvDQo+IGNvcGllcyBvdXQt
b2Ytc3luYy4gSXQgaXMgcHJvYmFibHkgYmVzdCB0byBwaWNrIGl0IHVwIGZyb20gdGhlIExp
bnV4DQo+IHJlcG8gKHNpbmNlIHRoZSBVQVBJIGhlYWRlciBpcyBhbHNvIHJlcXVpcmVkIGFu
eXdheSkgd2hlbiByZWdlbmVyYXRpbmcNCj4gdGhlIHBhZ2UuDQo+IA0KDQpZZXMsIGhhdmlu
ZyBpdCBpbiB0aGUga2VybmVsLCBzaW5jZSB5b3UgYWxzbyB1c2UgaXQgZm9yIG90aGVyIHRo
aW5nLCANCm1ha2VzIHNlbnNlIHRvIG1lLiAgSSBjYW4gbWFrZSBhIG5vdGUgb2YgdGhhdCBp
biBvdXIgZnV0dXJlIFJFTEVBU0UgDQppbnN0cnVjdGlvbnMuICBGb3Igbm93LCBJJ2xsIGRv
Y3VtZW50IGl0IGluIGEgbmV3IGNvbW1pdCBtZXNzYWdlLg0KDQo+IElmIGF1dG9tYXRpb24g
aXMgbm90IGRvYWJsZSwgSSB3b3VsZCBiZSB2ZXJ5IGhhcHB5IHRvIGhhdmUgc29tZW9uZQ0K
PiBydW5uaW5nIHRoaXMgc3RlcCBiZWZvcmUgZWFjaCBwcm9qZWN0IHJlbGVhc2UuDQoNCklm
IHlvdSBzZW5kIGEgbWFuLXBhZ2VzIHBhdGNoIGFmdGVyIGV2ZXJ5IGtlcm5lbCByZWxlYXNl
LCB0aGF0IHdvdWxkIGJlIA0KZ3JlYXQuICBXZSBjYW4gYWxzbyBkbyB0aGF0IG91cnNlbHZl
cywgYXMgbG9uZyBhcyB0aGUgdG9vbHMgYXJlIHRoZXJlOyANCmJ1dCBpZiBzb21ldGhpbmcg
Y2hhbmdlcyBpbiB0aGF0IHNjcmlwdCwgaXQgd291bGQgYmUgbmljZSB0byBub3RpZnkgdXMs
IA0KaWYgd2UncmUgdXNpbmcgdGhlbS4NCg0KV2hhdGV2ZXIgeW91IHByZWZlci4NCg0KVGhh
bmtzLA0KDQpBbGV4DQoNCj4gDQo+IE1hbnkgdGhhbmtzLA0KPiBRdWVudGluDQo+IA0KPiBb
MF0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9y
dmFsZHMvbGludXguZ2l0L3RyZWUvc2NyaXB0cy9icGZfZG9jLnB5P2g9djUuMTgNCj4gWzFd
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL2luY2x1ZGUvdWFwaS9saW51eC9icGYuaD9oPXY1LjE4I24x
NTI2DQo+IFsyXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9i
cGYvTWFrZWZpbGUuZG9jcz9oPXY1LjE4DQo+IFszXSBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS90b29s
cy9saWIvYnBmL01ha2VmaWxlP2g9djUuMTgjbjE1OQ0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------WAi5V9Ya7Z49ABSJ4UPMa71x--

--------------pX0AsWa0404tzcUo7LZZmgMp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLYbmsACgkQnowa+77/
2zJ0FA//aCB+OLJZpAUYY6Ck4eMvEqTo26+wTKgHGbhnB45YfkDVVxxJwqNAFH7E
4RjAcEtwQto5Zx8P7FqGXMJUxMTkXm5ht+4aiTNpLn654uG54pcKEK8gEnmgTFDZ
h32gz3fKBl0Rw04Nvbcn1ZNgGTiUs/5SYm9DTQukjeGsVdizo6NEkOIN1lRArNas
PXGMOXSEnaYudgTuX2gNAfObh4D2SfdIgYaEFq1LaKK968rjzgbBU+ima9GGIwGG
MCPR0a6ibpdpSejHfwdeAOQEiBtD3Px7vmLRUlPdrNgQkedjFtmrQ4h7gPkz+pda
K6i+IVLgOATOXomFpFegQa1KRd0EITbrQZZeX5Jkkg4nn4qfK5LuiljQwJ/hmIE5
MwDFEtj4C8m5uUVjK581Vl7wGtjOeMkpwE6Otm+2l3jacBezfMIHovjdBekDzn1Q
IsaMmMsIiEi9l6edL1oT6PWazN+TXgbOD8X5dTi36HpZnfC6bIOa2GfhAeDep3xn
bD3zmu+QNOq8i7UKXMXH9CYt3jLV8CMj4SB6cSnKqcGmEiNuAaxI7jusdSb+uzTD
a1Hq/WOOL2fslj6Uesk2PWd8hxoQ90O6qne+kVJTYUb3OmIH4W2M4DtUISybkjUm
Fihzhf7ZQIkMDnZNUrBvwo9SqbLkVTFB3bcYVYAx+VXckx9EYqo=
=lYGX
-----END PGP SIGNATURE-----

--------------pX0AsWa0404tzcUo7LZZmgMp--
