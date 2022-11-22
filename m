Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7281C63484B
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 21:37:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234862AbiKVUhb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 15:37:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234879AbiKVUhP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 15:37:15 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 447BF5132A
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:37:13 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id v1so26513918wrt.11
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQzfUWRStg7egWGItKYJKna5sGZpJPBnkaHYdc4gKBc=;
        b=Mj1vDupp39w3PYKpYKcnwwf0x+l+xTHEh8c1JtCTGJZYVMLE/Fp5ye/GeQL8BO4h6Z
         ry43VgNLCfiaaFGb+1CjrrO1H+BO+7ujdmLJiMBQ0qD5bZjtSwNL4oAw29FnVY3hjKhq
         uRlgTXnVyrjU3zrEi1J/vpp8bkyiBIsvZcXEhK9OhWXguIUQJY3vSX2k+sonVT3Ms6Dy
         iXp28WF0R3T9jTNcs0pSZZbWsSkHuwEqEUJtBjw7edge6cJOe/O3kkPKFaJP+YOJOrBA
         r3N7B8FtjgB+7ECNbg7M5miE3i52nYIDB+N/VyU0Q536TfIcL7gUYO9VJOJuzZ0FwocX
         w9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OQzfUWRStg7egWGItKYJKna5sGZpJPBnkaHYdc4gKBc=;
        b=lz2ZHbqbIJSbMdM/ruWMXWC2Gi5DyDsltIoD1ttqWdmVRURnrfD5iAwCTIpwMGrJC6
         rAuWVI0LD7X9K2LVBblaoHEjOHurKzNEAJLahLiuMLF41r5DNHPjNFx9NkiIGL2hO923
         rO6N1shngUba/Z7ZlwjkEz4c5iTJMinB8AH5V7MEfOSs76jNA16Fk4ITWVLRFt3Qh3TZ
         K0rVvvKv0uakg21OLLXpRjeAime027Wk6NPO3aYQRrsEfbEo510QVXSTRYphn+yNmkPa
         JBWmPZEbSZJFTaV2XJUTNfk0nbE6IEXXsPzLAQL4I9xAUUZppfqNGTCOiwyhTAIL4Krl
         eeNQ==
X-Gm-Message-State: ANoB5pm1m0gE1wEBJXGUNsazmIswuNe1V3Z5wovxh/2UGznT4yQhaa3K
        iRoEk8Mn5ZKty6zihA+ov0k=
X-Google-Smtp-Source: AA0mqf6Qp4sDXf9quK0P/f8B+z4yfdV2t1wLITxQRdtXSBbu5cQGZskt3YM+uWE1v3VZwDZo58Nvhg==
X-Received: by 2002:adf:f285:0:b0:238:44ec:945b with SMTP id k5-20020adff285000000b0023844ec945bmr14952125wro.209.1669149431707;
        Tue, 22 Nov 2022 12:37:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g17-20020a05600c311100b003cf4ec90938sm19774225wmo.21.2022.11.22.12.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 12:37:11 -0800 (PST)
Message-ID: <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
Date:   Tue, 22 Nov 2022 21:37:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Garbled text in zic(8) man page
Content-Language: en-US
To:     Jonathan Wakely <jwakely@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
 <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qbanr8imZxPgTCZBP0Anr0a6"
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
--------------qbanr8imZxPgTCZBP0Anr0a6
Content-Type: multipart/mixed; boundary="------------SGcXmSaMgIXVeQJbjT2ESnIE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonathan Wakely <jwakely@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
Subject: Re: Garbled text in zic(8) man page
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
 <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
In-Reply-To: <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>

--------------SGcXmSaMgIXVeQJbjT2ESnIE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9uYXRoYW4sIFBhdWwsDQoNCk9uIDExLzIyLzIyIDIxOjMxLCBKb25hdGhhbiBXYWtl
bHkgd3JvdGU6DQo+IE9uIFR1ZSwgMjIgTm92IDIwMjIgYXQgMTk6MjIsIEFsZWphbmRybyBD
b2xvbWFyIHdyb3RlOg0KPj4NCj4+IEhpIEpvbmF0aGFuLA0KPj4NCj4+IE9uIDExLzIyLzIy
IDE0OjEzLCBKb25hdGhhbiBXYWtlbHkgd3JvdGU6DQo+Pj4gT24gVHVlLCAyMiBOb3YgMjAy
MiBhdCAxMzowMCwgSm9uYXRoYW4gV2FrZWx5IHdyb3RlOg0KPj4+Pg0KPj4+PiBPbiBUdWUs
IDIyIE5vdiAyMDIyIGF0IDEyOjU4LCBKb25hdGhhbiBXYWtlbHkgd3JvdGU6DQo+Pj4+Pg0K
Pj4+Pj4gSGksDQo+Pj4+Pg0KPj4+Pj4gVGhlIGRlc2NyaXB0aW9uIG9mIHRoZSBSVUxFUyBm
aWVsZCBvZiBhIFpvbmUgbGluZSBhdDoNCj4+Pj4+IGh0dHBzOi8vbWFuNy5vcmcvbGludXgv
bWFuLXBhZ2VzL21hbjgvemljLjguaHRtbCNGSUxFUw0KPj4+Pj4gc2VlbXMgZ2FyYmxlZDoN
Cj4+Pj4+ICJnaXZpbmcgb2YgdGhlIGFtb3VudCBvZiB0aW1lIHRvIGJlIGFkZGVkIHRvIGxv
Y2FsIHN0YW5kYXJkIHRpbWUgZWZmZWN0Ig0KPj4+Pj4NCj4+Pj4+IEl0IGxvb2tzIGxpa2Ug
aXQgbWlnaHQgYmUgYSBjb3B5JnBhc3RlIGVycm9yIGZyb20gdGhlIHNpbWlsYXIgdGV4dCBm
b3INCj4+Pj4+IHRoZSBTQVZFIGZpZWxkIG9mIGEgUnVsZSBsaW5lLiBJIHRoaW5rIHRoZSBm
aXJzdCAib2YiIGFuZCB0aGUgImVmZmVjdCINCj4+Pj4+IHNob3VsZCBiZSByZW1vdmVkLCBi
dXQgSSdtIG5vdCBzdXJlIGlmIHRoYXQncyBjb3JyZWN0Lg0KPj4+Pg0KPj4+PiBUaGlzIHdh
cyBpbnRyb2R1Y2VkIGJ5DQo+Pj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9k
b2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2NvbW1pdC9tYW44L3ppYy44P2lkPTUzNTVl
MjBmODE2ZTFlMGFmOTNkNmJiODA0MzllODZmMmQxYzdiZTcNCj4+Pj4gc28gbWF5YmUgaXQg
c2hvdWxkIGJlIHJlcG9ydGVkIHRvIHR6ZGIgdXBzdHJlYW0gaW5zdGVhZC4NCj4+Pg0KPj4+
IEl0J3MgYWxyZWFkeSBmaXhlZCB1cHN0cmVhbS4gVGhlIHZlcnNpb24gaW4gdGhlIHR6ZGIt
MjAyMmYgcGFja2FnZSBzYXlzOg0KPj4+DQo+Pj4gICAgICAgICAgUlVMRVMgVGhlIG5hbWUg
b2YgdGhlIHJ1bGVzIHRoYXQgYXBwbHkgaW4gdGhlIHRpbWV6b25lIG9yLA0KPj4+ICAgICAg
ICAgICAgICAgIGFsdGVybmF0aXZlbHksIGEgZmllbGQgaW4gdGhlIHNhbWUgZm9ybWF0IGFz
IGEgcnVsZS1saW5lIFNBVkUNCj4+PiAgICAgICAgICAgICAgICBjb2x1bW4sIGdpdmluZyB0
aGUgYW1vdW50IG9mIHRpbWUgdG8gYmUgYWRkZWQgdG8gbG9jYWwgc3RhbmRhcmQNCj4+PiAg
ICAgICAgICAgICAgICB0aW1lIGFuZCB3aGV0aGVyIHRoZSByZXN1bHRpbmcgdGltZSBpcyBz
dGFuZGFyZCBvciBkYXlsaWdodA0KPj4+ICAgICAgICAgICAgICAgIHNhdmluZy4gIElmIHRo
aXMgZmllbGQgaXMgLSB0aGVuIHN0YW5kYXJkIHRpbWUgYWx3YXlzIGFwcGxpZXMuDQo+Pj4g
ICAgICAgICAgICAgICAgV2hlbiBhbiBhbW91bnQgb2YgdGltZSBpcyBnaXZlbiwgb25seSB0
aGUgc3VtIG9mIHN0YW5kYXJkIHRpbWUNCj4+PiAgICAgICAgICAgICAgICBhbmQgdGhpcyBh
bW91bnQgbWF0dGVycy4NCj4+Pg0KPj4+IFNvIGhlcmUncyBhIHBhdGNoIGZvciB0aGUgbWFu
IHBhZ2UuIFRoZXJlIGFyZSBsb3RzIG9mIG90aGVyIGNoYW5nZXMgaW4NCj4+PiB0aGUgdXBz
dHJlYW0gcGFnZSB0aG91Z2gsIHNvIGFub3RoZXIgc3luYyBtaWdodCBiZSB1c2VmdWwuDQo+
Pg0KPj4gQXMgeW91IHNhaWQsIGEgc3luYyB3b3VsZCBiZSBiZXR0ZXIuICBIb3dldmVyLCBJ
IGRvbid0IGtub3cgaG93IE1pY2hhZWwgZGlkDQo+PiB0aGF0Lg0KPiANCj4gUGF1bCBFZ2dl
cnQgZGlkIGl0IGxhc3QgdGltZS4NCg0KVGhhbmtzIQ0KDQo+IA0KPj4gSWYgeW91IGtub3cg
d2hlcmUgdGhlIHBhZ2UgY29tZXMgZnJvbSwgY291bGQgeW91IHBsZWFzZSBwcmVwYXJlIGEg
cGF0Y2gNCj4+IHRoYXQgZG9lcyB0aGUgc3luYywgYW5kIGRvY3VtZW50IGl0IGluIHRoZSBj
b21taXQgbWVzc2FnZSBzbyB0aGF0IGl0J3MgZWFzaWVyIHRvDQo+PiBkbyBpdCBpbiB0aGUg
ZnV0dXJlPw0KPiANCj4gVXBzdHJlYW0gaXMgaHR0cHM6Ly93d3cuaWFuYS5vcmcvdGltZS16
b25lcw0KDQpBaGgsIEkgcmVtZW1iZXIgbGFzdCB0aW1lIEkgd2FudGVkIHRvIGNoZWNrIHRo
ZSBzb3VyY2UgY29kZSBJIGRlc2lzdGVkIGJlY2F1c2UgDQp0aGVyZSdzIG5vIGdpdCByZXBv
c2l0b3J5LCBhbmQgSSBkaWRuJ3Qgd2FudCB0byBiZSBtZXNzaW5nIHdpdGggdGFyYmFsbHMu
ICBCdXQgDQpnZXR0aW5nIHRoZSBwYWdlcyBmcm9tIHRoZSB0YXJiYWxsIHNlZW1zIGVhc3ks
IHNvIEknbGwgZG8gdGhhdC4NCg0KUGF1bCwgZG8geW91IGhhdmUgYSBwdWJsaWMgZ2l0IChv
ciB3aGF0ZXZlcikgcmVwb3NpdG9yeSB0aGF0IEkgY2FuIGNoZWNrIG91dD8NCg0KVGhhbmtz
LA0KDQpBbGV4DQoNCj4gDQo+IA0KPj4NCj4+IElmIHlvdSBkbyB0aGF0LCBwbGVhc2UgYWxz
byBzeW5jIHR6ZmlsZSg1KSBhbmQgemR1bXAoOCkgaW4gdGhlIGNvbW1pdC4NCj4+DQo+PiBU
aGFua3MsDQo+Pg0KPj4gQWxleA0KPj4NCj4+DQo+PiAtLS0NCj4+DQo+PiAkIGNhdCBNQUlO
VEFJTkVSX05PVEVTDQo+PiBFeHRlcm5hbGx5IGdlbmVyYXRlZCBwYWdlcw0KPj4gPT09PT09
PT09PT09PT09PT09PT09PT09PT0NCj4+DQo+PiBBIGZldyBwYWdlcyBjb21lIGZyb20gZXh0
ZXJuYWwgc291cmNlcy4gRml4ZXMgdG8gdGhlIHBhZ2VzIHNob3VsZCByZWFsbHkNCj4+IGdv
IHRvIHRoZSB1cHN0cmVhbSBzb3VyY2UuDQo+Pg0KPj4gdHpmaWxlKDUpLCB6ZHVtcCg4KSwg
YW5kIHppYyg4KSBjb21lIGZyb20gdGhlIHR6IHByb2plY3QNCj4+IChodHRwczovL3d3dy5p
YW5hLm9yZy90aW1lLXpvbmVzKS4NCj4+DQo+PiBicGYtaGVscGVycyg3KSBpcyBhdXRvZ2Vu
ZXJhdGVkIGZyb20gdGhlIGtlcm5lbCBzb3VyY2VzIHVzaW5nIHNjcmlwdHMuDQo+PiBTZWUg
bWFuLXBhZ2VzIGNvbW1pdHMgNTM2NjZmNmMzIGFuZCAxOWM3Zjc4MzkgZm9yIGRldGFpbHMu
DQo+Pg0KPj4gLS0NCj4+IDxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCj4g
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------SGcXmSaMgIXVeQJbjT2ESnIE--

--------------qbanr8imZxPgTCZBP0Anr0a6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN9Mu8ACgkQnowa+77/
2zKTMA/+NPSzcoZBFT2fPrv6XjESuqFbDmyTZdwCwPUNzI01VTAXAGNRdple5slD
3sPv75cEZNAC3mybmpGlBRKD7EDLbPU5ukC5Gwb7vpmUYCVvx2AA2KeF2AGyBvY8
fGKWxQuq3BxYq4yrR668R8YaaU8DuOZetnbKodwJeqgcqQszVYNkiO0ECSef4ttI
CnU8QBTm2DcvvYh4UKRZf43AHhlgrV4ix3C+NINWY7dvEYVFNwsoeVgbjH86YUKO
58ls/WdgnT3z16t+CVmSoRqa0sH07h8T87Y5NuWiNPnYnQjHf+DcW+M5CJ4hpE7o
z4+kRJ6BCgYG/cknWxTOBVsRFlQhCEUHJ+c9U/mfBSTtQXutB3Ad4+Bc9H6olBOo
8Joc8xSE7huymPiNvWu0BvsrHA5HDntvNTunNBis1HCVB4m5fR5395HlR2VUCjhz
jiNYhv4T47s0757cwT5lGBfrdXxzdxMh1ArlWrtTdg+aIRIRTWCPo+pVKZ0X0+V2
qVdQYWqZRHX/dVMCsVD53qdiKRHVQdpeWZSPv8nJmfYDaCTDe5CHljDCfPv6Zk4z
v7JTip/QTaej3Anlzphe+n/axMfRDzuj20hTtgRZxyI2zJERD2c6+j0fI2s0tg9O
ZxVUgSKJ/OvzcAESeQ2FICOjUheuThkHc42RoUC4zDysPp3Ocjc=
=eAYk
-----END PGP SIGNATURE-----

--------------qbanr8imZxPgTCZBP0Anr0a6--
