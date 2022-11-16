Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3694662CD5C
	for <lists+linux-man@lfdr.de>; Wed, 16 Nov 2022 23:06:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234481AbiKPWGt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 17:06:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234376AbiKPWGl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 17:06:41 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37E6E67F61
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 14:06:39 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l14so32393229wrw.2
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 14:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mfCJYqQGFaYM6imjfIOCHaATG8z1Wt2fkWp5QnajI2Q=;
        b=XTwu48ieaIMbwRzKQCECX8BH6aYQKmRSqkJCMe0E3xQ8eYA4vvM3H2X1tyIkjVbf5g
         rQCMFhNpJMo7v62F8kxk9S9UCK8tfQbo9Nu8rcmDURYopmNlNazah+JCI5dH0sVoXArw
         ne/3Gv1CFAM77i6BLCe4qNgUVZMbcrf2KyuvX+/CYybI0Dfv58HpzXc9RrRXF/BkB9tq
         1V54v/jt8pAY8ZwUPNe/IHCSOSN7KT8qreYnJxdxibMRknXZVGpDDHJIS7WOfC/Ysh7x
         zCavloQA2027jrG5iTM53qIRTgSeAvxgwPwjTH/p2R+mms9+LQsb4Qmj2UG8fYeHEEzz
         Sqpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mfCJYqQGFaYM6imjfIOCHaATG8z1Wt2fkWp5QnajI2Q=;
        b=ijlLYNEh4dA55Ef/tyVUxsa3nEEGcH5nyrK5E4LH8R1d35HeucvV5jjCwCKLW5lWLp
         IcJ0NNJ3Af+eaYmsSYJSNaaowoigR115j1g9e0zGpNGd4EZZIGQyjbUbsRWu1mmxRFAi
         1TBAYaXhG8HuiRUq2jZQIDA32EL/8zRv+rBYe6yG1tkuvdcV6pM+vDz3pkedkoKu9dsE
         ECGMZTarzTYHNfELEdq4oavgcy8Lt2QBK7KEinjVsjH/AUjWWm3946ViBEkHhnAJ+f9s
         r4prNcPJI8mtOkSyevq7Sin+F2KFQOtlwo5hlcrmFHyJ3UAZHdqr9wSq8euj7YRdN1xv
         PFsw==
X-Gm-Message-State: ANoB5pnHaRfDjEv/4So9TGwumgmDkoYLuzVIgI0juBkC4BCs6t0qEBsE
        72iHHcAnIPhWfcQOsyYkf1mKv/rtnVQ=
X-Google-Smtp-Source: AA0mqf4HCeQBhaneMTjEyuXX2VQYiGWwdPQ/IT25RPiI2dA00BYknsjfrBCGoikdcJT7SAltmbm5Ow==
X-Received: by 2002:a5d:4105:0:b0:236:63d4:fbbe with SMTP id l5-20020a5d4105000000b0023663d4fbbemr15028743wrp.574.1668636397693;
        Wed, 16 Nov 2022 14:06:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w16-20020a5d4050000000b002365b759b65sm16121442wrp.86.2022.11.16.14.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 14:06:37 -0800 (PST)
Message-ID: <af30ba85-a9c5-741a-9937-e3b1327fe827@gmail.com>
Date:   Wed, 16 Nov 2022 23:06:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Content-Language: en-US
To:     Thomas Voss <mail@thomasvoss.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20221116215036.30423-1-mail@thomasvoss.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221116215036.30423-1-mail@thomasvoss.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------11CHPyuJ3SQ1pfNc3tqWW7vL"
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
--------------11CHPyuJ3SQ1pfNc3tqWW7vL
Content-Type: multipart/mixed; boundary="------------C2t31p5jZ7Te15QaANEOVVnk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Thomas Voss <mail@thomasvoss.com>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Message-ID: <af30ba85-a9c5-741a-9937-e3b1327fe827@gmail.com>
Subject: Re: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
References: <20221116215036.30423-1-mail@thomasvoss.com>
In-Reply-To: <20221116215036.30423-1-mail@thomasvoss.com>

--------------C2t31p5jZ7Te15QaANEOVVnk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpPbiAxMS8xNi8yMiAyMjo1MCwgVGhvbWFzIFZvc3Mgd3JvdGU6DQo+
IEkgc2VlIHdlIGhhdmUgbWFudWFscyBmb3IgY29uc3RhbnRzLCB0eXBlcywgYW5kIG1vcmUg
bm93ISAgVGhhdCBzdXJlIGJyaW5ncyBhDQo+IHNtaWxlIHRvIG15IGZhY2UgOikuDQoNCkl0
J3MgZ29vZCB0byBzZWUgdGhhdCB0aGVyZSdzIGF1ZGllbmNlIHRoYXQgbGlrZXMgdGhlc2Uu
ICA6KQ0KDQoNCj4gIEkgZ3Vlc3MgSSBtaWdodCBoZWxwIG91dCBhIGJpdCB3aWxsIGZpbGxp
bmcgb3V0IHNvbWUgb2YNCj4gdGhlIG1pc3NpbmcgbWFudWFscy4NCg0KU3VyZS4NCg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFZvc3MgPG1haWxAdGhvbWFzdm9zcy5jb20+DQo+
IC0tLQ0KPiAgIG1hbjNjb25zdC9FWElUX0ZBSUxVUkUuM2NvbnN0IHwgIDEgKw0KPiAgIG1h
bjNjb25zdC9FWElUX1NVQ0NFU1MuM2NvbnN0IHwgNTggKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gICAyIGZpbGVzIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKykN
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgbWFuM2NvbnN0L0VYSVRfRkFJTFVSRS4zY29uc3QN
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29uc3QN
Cj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNjb25zdCBiL21h
bjNjb25zdC9FWElUX0ZBSUxVUkUuM2NvbnN0DQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+
IGluZGV4IDAwMDAwMDAwMC4uYmEwZDYyZGY5DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIv
bWFuM2NvbnN0L0VYSVRfRkFJTFVSRS4zY29uc3QNCj4gQEAgLTAsMCArMSBAQA0KPiArLnNv
IG1hbjNjb25zdC9FWElUX1NVQ0NFU1MuM2NvbnN0DQo+IGRpZmYgLS1naXQgYS9tYW4zY29u
c3QvRVhJVF9TVUNDRVNTLjNjb25zdCBiL21hbjNjb25zdC9FWElUX1NVQ0NFU1MuM2NvbnN0
DQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMC4uZGQ2ZjkwOGU1
DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29u
c3QNCj4gQEAgLTAsMCArMSw1OCBAQA0KPiArLlwiIENvcHlyaWdodCAoYykgMjAyMiBieSBU
aG9tYXMgVm9zcyA8bWFpbEB0aG9tYXN2b3NzLmNvbT4NCj4gKy5cIg0KPiArLlwiIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBMaW51eC1tYW4tcGFnZXMtY29weWxlZnQNCj4gKy5cIg0K
PiArLlwiDQo+ICsuVEggRVhJVF9TVUNDRVNTIDNjb25zdCAoZGF0ZSkgIkxpbnV4IG1hbi1w
YWdlcyAodW5yZWxlYXNlZCkiDQo+ICsuU0ggTkFNRQ0KPiArRVhJVF9TVUNDRVNTLCBFWElU
X0ZBSUxVUkUgXC0gdGVybWluYXRpb24gc3RhdHVzIGNvbnN0YW50cw0KPiArLlNIIExJQlJB
UlkNCj4gK1N0YW5kYXJkIEMgbGlicmFyeQ0KPiArLlJJICggbGliYyApDQo+ICsuU0ggU1lO
T1BTSVMNCj4gKy5uZg0KPiArLkIgI2luY2x1ZGUgPHN0ZGxpYi5oPg0KPiArLlBQDQo+ICsu
QiAiI2RlZmluZSBFWElUX1NVQ0NFU1MgIC8qIC4uLiAqLyINCg0KQWx0aG91Z2ggSVNPIEMg
bGVhdmVzIHRoZSB2YWx1ZSB1bnNwZWNpZmllZCwgUE9TSVggZ3VhcmFudGVlcyBpdCBpcyAw
LCBzbyBJJ2QgDQpkb2N1bWVudCBpdCBhcyBzdWNoLg0KDQpUaGUgZXhhY3QgZGVmaW5pdGlv
biBpbiBnbGliYyBpcyAoaW4gbXkgc3lzdGVtKToNCg0KICAgICAkIGdyZXBjIEVYSVRfU1VD
Q0VTUyAvdXNyL2luY2x1ZGUvc3RkbGliLmgNCiAgICAgL3Vzci9pbmNsdWRlL3N0ZGxpYi5o
OjkzOg0KICAgICAjZGVmaW5lCUVYSVRfU1VDQ0VTUwkwCS8qIFN1Y2Nlc3NmdWwgZXhpdCBz
dGF0dXMuICAqLw0KDQpTbyBJJ2QgZG9jdW1lbnQgaXQgYXM6DQoNCi5CICIjZGVmaW5lIEVY
SVRfU1VDQ0VTUyAgMCINCg0KPiArLkIgIiNkZWZpbmUgRVhJVF9GQUlMVVJFICAvKiAuLi4g
Ki8iDQoNClRoZSAvKiAuLi4gKi8gc2hvdWxkIG5vdCBiZSBpbiBib2xkICh3aGljaCBtYWtl
cyBtZSByZWFsaXplIEkgZGlkIGl0IHdyb25nIGluIA0KRU9GLjNjb25zdCwgc29ycnkpLiAg
QWxzbywgUE9TSVggc3BlY2lmaWVzIHRoYXQgaXQgc2hvdWxkIGJlIGEgbm9uLXplcm8gdmFs
dWUsIA0Kc28gSSdkIGRvY3VtZW50IGl0IGFzOg0KDQouQlIgIiNkZWZpbmUgRVhJVF9GQUlM
VVJFIiAiICAvKiBub24temVybyAqLyINCg0KPiArLmZpDQo+ICsuU0ggREVTQ1JJUFRJT04N
Cj4gKy5CUiBFWElUX1NVQ0NFU1MgIiBhbmQgIiBFWElUX0ZBSUxVUkUNCg0KV2UgdXNlIHNl
cGFyYXRlIGxpbmVzIGZvciBzZXBhcmF0ZSBpZGVudGlmaWVyczoNCg0KLkIgRVhJVF9TVUND
RVNTDQphbmQNCi5CIEVYSVRfRkFJTFVSRQ0KDQo+ICtyZXByZXNlbnQgYSBzdWNjZXNzZnVs
IGFuZCB1bnN1Y2Nlc3NmdWwgZXhpdCBzdGF0dXMgcmVzcGVjdGl2ZWx5Lg0KPiArQm90aCBt
YWNyb3MgYXJlIGNvbnN0YW50IGV4cHJlc3Npb25zIG9mIHR5cGUNCj4gKy5JIGludA0KDQpC
ZWluZyAiY29uc3RhbnQgZXhwcmVzc2lvbnMgb2YgdHlwZSBpbnQiIGlzIGlzIHRydWUgb2Yg
bW9zdCBjb25zdGFudHMgaW4gQywgc28gSSANCnRoaW5rIEknZCBza2lwIGl0Lg0KDQo+ICt3
aGljaCBjYW4gYmUgdXNlZCBhcyBhcmd1bWVudHMgdG8gdGhlDQo+ICsuQlIgZXhpdCAoKQ0K
PiArZnVuY3Rpb24uDQo+ICsuU0ggQ09ORk9STUlORyBUTw0KPiArQzk5IGFuZCBsYXRlcjsN
Cj4gK1BPU0lYLjEtMjAwMSBhbmQgbGF0ZXIuDQo+ICsuU0ggRVhBTVBMRVMNCj4gKy5cIiBT
UkMgQkVHSU4gKEVYSVRfU1VDQ0VTUy5jKQ0KPiArLkVYDQo+ICsjaW5jbHVkZSA8c3RkaW8u
aD4NCj4gKyNpbmNsdWRlIDxzdGRsaWIuaD4NCj4gKw0KPiAraW50DQo+ICttYWluKGludCBh
cmdjLCBjaGFyICphcmd2W10pDQo+ICt7DQo+ICsgICAgRklMRSAqZnA7DQo+ICsNCj4gKyAg
ICBpZiAoYXJnYyAhPSAyKSB7DQo+ICsgICAgICAgIGZwcmludGYoc3RkZXJyLCAiVXNhZ2U6
ICVzIDxmaWxlPlxlbiIsIGFyZ3ZbMF0pOw0KPiArICAgICAgICBleGl0KEVYSVRfRkFJTFVS
RSk7DQo+ICsgICAgfQ0KPiArDQo+ICsgICAgaWYgKChmcCA9IGZvcGVuKGFyZ3ZbMV0sICJy
IikpID09IE5VTEwpIHsNCj4gKyAgICAgICAgcGVycm9yKGFyZ3ZbMV0pOw0KPiArICAgICAg
ICBleGl0KEVYSVRfRkFJTFVSRSk7DQo+ICsgICAgfQ0KPiArDQo+ICsgICAgLyogT3RoZXIg
Y29kZSBvbWl0dGVkICovDQoNCkJ1dCBwbGVhc2UgZG9uJ3Qgb21pdCBmY2xvc2UoMykuDQoN
Cj4gKw0KPiArICAgIGV4aXQoRVhJVF9TVUNDRVNTKTsNCj4gK30NCj4gKy5FRQ0KPiArLlwi
IFNSQyBFTkQNCj4gKy5TSCBTRUUgQUxTTw0KPiArLkJSIGV4aXQgKDMpDQoNClRoYW5rcyEN
Cg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------C2t31p5jZ7Te15QaANEOVVnk--

--------------11CHPyuJ3SQ1pfNc3tqWW7vL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1XuIACgkQnowa+77/
2zJM6A//We30ynPpNqeITJYmPkfuis8iq2xiDmnCcRXthhIKM+5x7iM8rbL1ics9
YoPfJeAdlVajVHD59IxQHfJ8udgQo51VhhpIQgT+hJToAqDWWdWo9AYMo3/7mtZ1
jFTdQEdNoWPucFKRZLvptFQQR5CTqEmLj1L6NNOGJyxYjv8F6LcgYRk5OCj60R54
3dAFSZ1K1qwBTZOcVexC4KTaR9jRJqQ43K7FShT1U7lQwVWGsLTOURfilpvaPtjR
beYCLdjC6087C7Z9ZUf/NzccZGs7YUyIpqjFRVKv6PGeAHXAH5LWGzTiA/LPYEYp
pXhRaHbYW0VeDYEGirZbleVus2Vvbf4QGn0vwTEmkJuPgoWQEBhfi/8eBlzgs34g
7SinaNOuQfbMtGWhOeSoTPquQpsN+XGl45fpjS8+rz+FZFyK2PqF/THJ5fm0arZQ
vNN7kvvBJ5z9rcVDrka6rEkB0WC+QUq+p7RaLaMWMOQ5vX47BT32yJvLWDwNr6sU
kiqmVAchWVgxI+ZMqJEkeimyti8UEKiHSrRIsyQ3HxiQ2RDi/8GuxhFsCw55RQVw
5ZieIYsalKy4SFdD8zFNCc4ngtrfDuMjjduWZJK4wCiTa5bkMQbqW3HXGFeusnhZ
yJC3QJOL7xiEggwLCZunEYasO7PylB0kNX24oM33vuscNba3J8U=
=XJD6
-----END PGP SIGNATURE-----

--------------11CHPyuJ3SQ1pfNc3tqWW7vL--
