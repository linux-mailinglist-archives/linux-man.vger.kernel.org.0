Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54027622D14
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 15:02:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbiKIOCG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 09:02:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiKIOCF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 09:02:05 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C66EC233
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 06:02:03 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id g12so25853365wrs.10
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 06:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:cc:references:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WNAnVIDTzgxm1wDjod2LjMai3VvHsvcbtJpeyKKSaEs=;
        b=nyrqNnUMH5KM3I0dqCFNk/3cp94RxweibveisbnxEuA441ECjpI7M/Z3C0uZvY3Gqd
         nAkxEm+XSqfnMOHi/085wrwnmArcd7D2f4HZAi8I/wZ94eqkuWlV3DHFzpsoxmzac1zc
         g6Z18kHIIRDH56j5PIdUV9Pd0XLY3Cnu3SkL1ICRvPcPHXEsLRzlJzuNzY5iDPjuL6+4
         784De1MGk3MnQj/qVmNqZa02ShQwqxyP/Ik0suganrvq9fT5rWU7qKzQedk32Nqc6Y1S
         U9KATxnI+MPSiBbUPRsNVRH46/WhaC0DwCmgT5t1ghXFQgRG/wrbeqgNKG4cAFGeUzO6
         imWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:cc:references:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WNAnVIDTzgxm1wDjod2LjMai3VvHsvcbtJpeyKKSaEs=;
        b=P3D/awO5CQAmPG2E1QBy3QJB0Le595Ao8NeqzfCnlPTaZCDgl1y5t3rbkLwi7m/upJ
         jhUJHjTvZ24hAmwJlgNgxfISw3KIfWixwG8N75kvfOcLwO/FFmkjQMPQIYFTTBTX0RYb
         N4EljwRIGalagKEH8A7mUZWanUQlTwCORrMSTHhzvbLhI84XHxgGcqmOmPTIc76uAW0T
         6m2c1uFMRbG9ZDy53rHcmvjJfBOPm19kcIiK4MeX8wnX/U03lfDDLrTOkISTgaThdbUx
         eqCuF7tlAWr49bccEeprx2gNcM9p5C0eQeaOl367NYb17R38zXZ5xD4nOj/w4skh2xKP
         B/aw==
X-Gm-Message-State: ACrzQf3grUH/6kJ8LeGzo0itOqGKTb2Mx8ZDGhQF4laRc4ARq8QJg7hy
        3iutAQGLpcJIGp3WmjvAp8c=
X-Google-Smtp-Source: AMsMyM5NL8SzXGhC9dlvGXT6N3OJ/tycKDhwN/4+Nx2kMtit5Bw+eAlyr1JOXxTrN9Ew+BDUFv0Srw==
X-Received: by 2002:a5d:6b02:0:b0:236:d484:2d01 with SMTP id v2-20020a5d6b02000000b00236d4842d01mr31866213wrw.623.1668002522340;
        Wed, 09 Nov 2022 06:02:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q7-20020a05600c46c700b003a83ca67f73sm1926087wmo.3.2022.11.09.06.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 06:02:01 -0800 (PST)
Message-ID: <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>
Date:   Wed, 9 Nov 2022 15:02:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
        linux-man <linux-man@vger.kernel.org>
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
Cc:     Ken Brown <kbrown@cornell.edu>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Michael T. Kerrisk" <mtk@man7.org>
In-Reply-To: <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wa7O3FpNCbQZP9622vYNaxXi"
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
--------------wa7O3FpNCbQZP9622vYNaxXi
Content-Type: multipart/mixed; boundary="------------U9oKan6Ufus034ASE0LQYmgI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
 linux-man <linux-man@vger.kernel.org>
Cc: Ken Brown <kbrown@cornell.edu>, Michael Kerrisk <mtk.manpages@gmail.com>,
 "Michael T. Kerrisk" <mtk@man7.org>
Message-ID: <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
In-Reply-To: <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>

--------------U9oKan6Ufus034ASE0LQYmgI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

LS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6IFJlOiBTaW1w
bGUgY2hhbmdlcyB0byBzZWxlY3QoMikgYW5kIHBpcGUoNykgLS0gdGhlIG1lc3NhZ2UgSSBz
ZW50IHRvIA0KTS5LLiBzb21lIHRpbWUgYWdvLg0KRGF0ZTogVHVlLCA4IE5vdiAyMDIyIDE1
OjU4OjI3ICswMTAwDQpGcm9tOiBKLkguIHZkIFdhdGVyIDxoZW5yaS52YW4uZGUud2F0ZXJA
eHM0YWxsLm5sPg0KVG86IEFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwu
Y29tPg0KQ0M6IG10ay5tYW5wYWdlc0BnbWFpbC5jb20NCg0KQWxleCwNCg0KQmVsb3cgdGhl
IG1lc3NhZ2UgdGhhdCBJIHNlbnQgdG8gTS5LLiBzb21lIHRpbWUgYWdvOyB0aGUgZm9sbG93
aW5nIHN1YmplY3Qgd2FzIHVzZWQ6DQoNCiJMUEkgNjMuMi4zICh3aGVuIGlzIGEgZmlsZSBk
ZXNjcmlwdG9yIHJlYWR5PykgL0p1c3QgYSBub3RlIChmb3IgdGhlIGVycmF0YT8pIg0KDQpU
aGlzIG1lc3NhZ2Ugc2hvd3MgMiB0aGluZ3M6DQoNCiAgMS4gaXQgd2FzIG5vdCBtZSB0aGF0
IGZvdW5kIHRoZSBtYW4gcGFnZXMgKGFuZCBMUEkpIGxhY2tpbmcgLi4uDQogIDIuIGFmdGVy
IHNvbWUgZWZmb3J0IGJ5IG1lLCBJIGRlY2lkZWQgdGhhdCBLZW4ncyBjbGFpbSB3YXMgY29y
cmVjdCBhbmQgdGhhdCANCnRoZSBtYW4NCiAgICAgcGFnZXMgKCBzZWxlY3QoMikgYW5kIHBp
cGUoNykgKSBuZWVkZWQgdG8gYmUgaW1wcm92ZWQgLi4uDQoNClJlZ2FyZHMsDQpIZW5yaQ0K
DQotLS0tLS0tLSBGb3J3YXJkZWQgTWVzc2FnZSAtLS0tLS0tLQ0KU3ViamVjdDogTFBJIDYz
LjIuMyAod2hlbiBpcyBhIGZpbGUgZGVzY3JpcHRvciByZWFkeT8pIC9KdXN0IGEgbm90ZSAo
Zm9yIHRoZSANCmVycmF0YT8pDQpEYXRlOiBUaHUsIDI5IFNlcCAyMDIyIDE0OjMxOjQ1ICsw
MjAwDQpGcm9tOiBKLkguIHZkIFdhdGVyIDxoZW5yaS52YW4uZGUud2F0ZXJAeHM0YWxsLm5s
Pg0KVG86IG10a0BtYW43Lm9yZw0KDQpEZWFyIE1yLiBLZXJyaXNrLCBNaWNoYWVsDQoNCkkg
ZGVjaWRlIHRvIGRyb3AgeW91IGEgbm90ZSBhYm91dCBMUEkvIHNlbGVjdCgpIC4uLg0KDQog
IC0gaHR0cHM6Ly9jeWd3aW4uY29tL3BpcGVybWFpbC9jeWd3aW4vMjAyMi1TZXB0ZW1iZXIv
MjUyMjQ2Lmh0bWwNCg0KICAgIChSZTogRklGTyBpc3N1ZXMgLSByZXNwb25zZSBieSBLZW4g
QnJvd24gaW4gd2hpY2ggaGUgYW5ub3VuY2VzDQogICAgIHRoZSBjb3JyZWN0aW9uIG9mIGhp
cyBpbXBsZW1lbnRhdGlvbiBvZiBzZWxlY3QoKSAtIGluIEN5Z3dpbikNCg0KUmVjZW50bHkg
SSBoYXZlIGJlZW4gcmVhZGluZyAoYW5kIHJlcmVhZGluZykNCg0KICAtIExQSSBjaDQ0IChQ
aXBlcyBhbmQgRklGT3MpDQogICAgZXNwZWNpYWxseSBjaDQ0LjcgKEZJRk9zKSwgY2g0NC45
IChOb24gYmxvY2tpbmcgSS9PKSBhbmQNCiAgICBjaDQ0LjkgKFNlbWFudGljcyBvZiByZWFk
KCkgYW5kIHdyaXRlKCkgb24gcGlwZXMgYW5kIEZJRk9zKQ0KDQogIC0gTFBJIGNoNjMgKGFs
dGVybmF0aXZlIEkvTyBtZXRob2RzKQ0KICAgIGVzcGVjaWFsbHkgY2g2My4yIChJL08gTXVs
dGlwbGV4aW5nKSwgY2g2My4yLjEgKFRoZSBzZWxlY3QoKQ0KICAgIHN5c3RlbSBjYWxsIGFu
ZCBjaDYzLjIuMyAoV2hlbiBpcyBhIGZpbGUgZGVzY3JpcHRvciByZWFkeT8pDQoNCmFuZCB0
aGUgYXNzb2NpYXRlZCBtYW51YWwgcGFnZXMgLi4uDQoNCihhbmQgd3JvdGUgY29kZSB0aGF0
IGNvbmZpcm1zIHRoYXQgYSBub3RlIHNob3VsZCBiZSBpbmNsdWRlZCB3aXRoDQogIHRoZSAi
b2ZmaWNpYWwgZG9jdW1lbnRhdGlvbiIpDQoNCldoeT8gQmVjYXVzZSBvZiB0aGUgcHJvYmxl
bSB0aGF0IHdhcyByZXBvcnRlZCBhZ2FpbnN0IEtlbiBCcm93bidzDQppbXBsZW1lbnRhdGlv
biBvZiBzZWxlY3QoKSAoQ3lnd2luKS4NCg0KLS0tDQogRnJvbSBMUEkgY2g2My4yLjMgKFdo
ZW4gaXMgYSBmaWxlIGRlc2NyaXB0b3IgcmVhZHk/KSBhbmQgZnJvbSB0aGUNCm1hbnVhbCBw
YWdlcywgSSBnb3QgdGhlICJpbXByZXNzaW9uIiAoYW5kIHNvIGRpZCBLZW4gQnJvd24pLCB0
aGF0DQoNCiAgICAgdGhlIHJlYWQgZW5kIG9mIGEgRklGTyBpcyAicmVhZCByZWFkeSIgd2hl
biB0aGUgd3JpdGUgZW5kIG9mDQogICAgIHRoZSBGSUZPIGlzIChzdGlsbCkgY2xvc2VkLg0K
DQpIb3dldmVyIHRoYXQgdHVybmVkIHRvIGJlIHRydWUgT05MWSBBRlRFUiB0aGUgRklGTyBo
YXMgYmVlbiBvcGVuZWQNCmFuZCBjbG9zZWQgb25jZSAuLi4NCg0KVHJ1ZSB3aGVyZT8gSXQg
dHVybmVkIHRvIGJlIHRydWUgZm9yIExpbnV4IGFuZCB0aGUgIm90aGVyIFVuaXhlcyIuDQoN
CkFueSBwcm9vZiB5b3UgbWF5IGFzaz8NCg0KS2VuIEJyb3duIGltcGxlbWVudGVkIHNlbGVj
dCgpIChDeWd3aW4pIGFjY29yZGluZyB0byB0aGUgIm9mZmljaWFsDQpkb2N1bWVudGF0aW9u
Ii4NCg0KVGhlIHRocmVhZCAoc2VlIHRoZSBhYm92ZSBVUkwpIG1ha2VzIGl0IGNsZWFyLCB0
aGF0IExpbnV4IGFuZCB0aGUNCiJvdGhlciBVbml4ZXMiIGJlaGF2ZSBkaWZmZXJlbnQgKGhv
dz8gc2VlIGFib3ZlKSBmcm9tIEtlbiBCcm93bidzDQppbXBsZW1lbnRhdGlvbiBvZiBzZWxl
Y3QoKS4NCg0KS2VuIEIuIG1vZGlmaWVkIGhpcyBpbXBsZW1lbnRhdGlvbiBvZiBzZWxlY3Qo
KSAoc2VlIFVSTCkuIFRoZSBVUkwNCmluY2x1ZGVzIHRoZSB0ZXN0IHByb2dyYW0gaGUgdXNl
ZCB0byB2ZXJpZnkgaGlzIG1vZGlmaWNhdGlvbi4NCg0KQm90dG9tLWxpbmU6IHRoZSBvZmZp
Y2lhbCBkb2N1bWVudGF0aW9uIChMUEksIG1hbnVhbCBwYWdlcykgc2hvdWxkDQppbmNsdWRl
IGEgbm90ZToNCg0KICAgICB0aGUgcmVhZCBlbmQgb2YgYSBGSUZPIGlzIE5PVCAicmVhZCBy
ZWFkeSIgd2hlbiB0aGUgd3JpdGUgZW5kDQogICAgIG9mIHRoZSBGSUZPIGhhcyBuZXZlciBi
ZWVuIG9wZW5lZCAoc3RpbGwgY2xvc2VkKQ0KICAgICAod2hlbiB0aGUgd3JpdGUgZW5kIGhh
cyBiZWVuIG9wZW5lZCBhbmQgY2xvc2VkIG9uY2UsIHRoZW4gdGhlDQogICAgICByZWFkIGVu
ZCB3aWxsIGJlICJyZWFkIHJlYWR5IiBmcm9tIHRoZW4gb24pDQoNCldpdGgga2luZCByZWdh
cmRzLA0KDQpIZW5yaSAoSi5ILiB2ZCBXYXRlcikNCg0KLS0tLS0NCg==

--------------U9oKan6Ufus034ASE0LQYmgI--

--------------wa7O3FpNCbQZP9622vYNaxXi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrstgACgkQnowa+77/
2zI63A/8CTFSOGijFDNjty18xlpVWXYErFP4vNplZKxDh+XXl+xhYfdSuj8V8MGp
iGEBmA3VdQW4DjqQnWAlpCOIUu7cr3UwGiWB4P3JSRClr7jtUVKd1MS4/zx++8UY
fpCyNS5oIEfPeF9I81HXPvR/L7fNGX4zh81/M/Fuav5xYqgD/0aK6e69uvqBFBxF
OgjkFQdUplWNauWABnFMo6+pP0yI28ZRGQyRGMgLiegI5NkhJGM+N/MCaRtZLWSI
txmSGXwyV0bXW616T7AudPF5HjEb98zNhEnZKXNVhvUFtYbq5HGHh9zqhnuEsh52
3bnAgX01V9veVuf5a53onuR9gsTbW1Kuj/p7J3EmukTtZDCw6C+1S6DvOkfwtVm5
nE7yd1PRj9iHhkq3Kzsga8VNMVgVIhzyvDzRPbFQqGySPUGYQDoEuwR6onP47w6W
DfzPJr31vcUFHZbUc8bG1iv3I0uKsyGej8WNQem39SZFs6ufNBcMVfIAbs5WRmn9
mEI1Z6rGYQzMNx+yYTT0ChNqI8Jxgn4WvO/HYS3fS14NayvfuuH66o1Iif1b8691
M97tki3WWHgmfVfKe/xajIDhdFK/qJ/frF66UyeNZpw6caO/HzOUCFlTx95aTzTc
HltFS3epdOhsq2oYshfvXfGBuJjuj1NBT3Q465PTvSXehufmpwo=
=k3tO
-----END PGP SIGNATURE-----

--------------wa7O3FpNCbQZP9622vYNaxXi--
