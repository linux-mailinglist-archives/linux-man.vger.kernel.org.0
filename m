Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF2995A3D6C
	for <lists+linux-man@lfdr.de>; Sun, 28 Aug 2022 13:53:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbiH1Lxf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Aug 2022 07:53:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiH1Lxe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Aug 2022 07:53:34 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C4E911A0D
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 04:53:33 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id c7so283424wrp.11
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 04:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=h+hOI76OFPl737axz8OZJIQMnmWStVkZ6ccvQjXotL4=;
        b=Wvj9slqmhHeG+jIJDzng4kQU9vowSxM4QQWsHD/GKDXYZ/OCyXrwvQwMeS/pVdVsai
         vtE+7+n8efaK+H/QGlRjDaoDteLj1wT8t/LzGt77l6+5Ga9Oj2l0CI+nnD09bor/z/Xn
         QaFR5mTp658FMROPz7zEpML4SQ6uHZcNJGJvfLOyBjFMycGFdKiipL917H0A6QRJbpqW
         fRdXiZmhm1aBYX7f7Js1bz5nxj+/OaL2chsnOErduQ10ol/wsw266N1RYK/sDxoHkT8Z
         9dHFVZTKHXZ+v89cYI+JMbNn247ezzrw11ZKc0KA8f3DS1ZG7rUMS/4BWgul6BeEj8n1
         gQjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=h+hOI76OFPl737axz8OZJIQMnmWStVkZ6ccvQjXotL4=;
        b=Zktau1HdSbs7vTO+vlMOKLqOv1SK4FomAZUDF/wKejtP6y4fp9oYeo4NWDq3A3IOgF
         7cZUt33t4QsBnFx3IV0dGf/ycXy9RCDRRd4g4U0sfAjPUCNSbBFlVZss5PLrwH6uCKIP
         Kv+bvkqclGZxbXEIahkEGOO4caPIzTVCDTipD2WsXqLoDqTUCqneDgyp9Yl+rA8nsi6P
         GZ0Eol6pFFNPoZV6zim3oV9ZTE90lKjrsZ3cG/FqVCLN6B8r1L8G8qZ+CYbRFXNIecVb
         QJrKwUB2Y5Ao9sn4Y62KPdlgwPpIP7VCMiiPzTnbNUS3Ipkb/TSdzyA0BXHLK2cTrPqo
         +8og==
X-Gm-Message-State: ACgBeo3Pt+DRCdxEYntKfJ0UD1SnxJmNgzOkmFE4M/M2tRURt7qfQylF
        WUmNzsbFpo6/doJ7Xs8WQWJ+f5KF/Pg=
X-Google-Smtp-Source: AA6agR42P/GCZlu0I/x+C9h0kQxfeZaCMJBa/2cxDyEhKAWGlhwNqDn97mCJoe+WZ9ScUXCctrF/LA==
X-Received: by 2002:a5d:4c51:0:b0:226:d2fb:85d7 with SMTP id n17-20020a5d4c51000000b00226d2fb85d7mr2947927wrt.210.1661687611727;
        Sun, 28 Aug 2022 04:53:31 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j5-20020a05600c1c0500b003a2f6367049sm5822633wms.48.2022.08.28.04.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 04:53:30 -0700 (PDT)
Message-ID: <34d0decb-4f2c-9a43-bed5-a7e733a463ce@gmail.com>
Date:   Sun, 28 Aug 2022 13:53:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] lint-man.mk: Use a pipeline instead of the groff(1)
 wrapper
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Ralph Corderoy <ralph@inputplus.co.uk>, groff@gnu.org
Cc:     linux-man@vger.kernel.org
References: <20220827190946.10128-1-alx.manpages@gmail.com>
 <20220828083627.430A51FB49@orac.inputplus.co.uk>
 <0121d378-bf04-b2de-f1d5-c0f254a3f8ef@gmail.com>
In-Reply-To: <0121d378-bf04-b2de-f1d5-c0f254a3f8ef@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------S8IzbSjLiLjaJ1tYlNFyxTEZ"
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
--------------S8IzbSjLiLjaJ1tYlNFyxTEZ
Content-Type: multipart/mixed; boundary="------------YGKfHNutBIT0k6nPO0MuIK0d";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ralph Corderoy <ralph@inputplus.co.uk>, groff@gnu.org
Cc: linux-man@vger.kernel.org
Message-ID: <34d0decb-4f2c-9a43-bed5-a7e733a463ce@gmail.com>
Subject: Re: [PATCH] lint-man.mk: Use a pipeline instead of the groff(1)
 wrapper
References: <20220827190946.10128-1-alx.manpages@gmail.com>
 <20220828083627.430A51FB49@orac.inputplus.co.uk>
 <0121d378-bf04-b2de-f1d5-c0f254a3f8ef@gmail.com>
In-Reply-To: <0121d378-bf04-b2de-f1d5-c0f254a3f8ef@gmail.com>

--------------YGKfHNutBIT0k6nPO0MuIK0d
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUmFscGgsIEJyYW5kZW4sDQoNCk9uIDgvMjgvMjIgMTM6MjAsIEFsZWphbmRybyBDb2xv
bWFyIHdyb3RlOg0KPiBIaSBSYWxwaCwNCj4gDQo+IE9uIDgvMjgvMjIgMTA6MzYsIFJhbHBo
IENvcmRlcm95IHdyb3RlOg0KPj4gSGkgQWxlamFuZHJvLA0KPj4NCj4+PiArREVGQVVMVF9F
UU5GTEFHUyA6PSAtVHV0ZjgNCj4+IC4uLg0KPj4+ICtERUZBVUxUX1RST0ZGRkxBR1PCoMKg
ICs9IC1UdXRmOA0KPj4NCj4+IEknZCBoYXZlIGEgdmFyaWFibGUgc2V0IHRvIOKAmHV0Zjji
gJkgdG8gZWFzZSBjaGFuZ2luZyB0byBhbm90aGVyIG91dHB1dA0KPj4gZGV2aWNlLg0KPiAN
Cj4gRG9uZTsgdGhhbmtzIcKgIEFuZCBhcyBJIHNhaWQgaW4gYW5vdGhlciB0aHJlYWQsIEkg
Y2hhbmdlZCBpdCBiYWNrIHRvIA0KPiBhc2NpaSwgc2luY2UgSSBub3RpY2VkIGEgcHJvYmxl
bSB3aXRoIGJveGVkIHRhYmxlcyAoYWN0dWFsbHkgc2V2ZXJhbCkuDQo+IA0KPiBJIG5vdGlj
ZWQgYW5vdGhlciBpc3N1ZTogZm9yIHNvbWUgcmVhc29uLCB0aGUgYm94ZWQgdGFibGVzIGFy
ZSBiZWluZyANCj4gZ2VuZXJhdGVkIHdpZGVyIHRoYW4gdGhlIHRlcm1pbmFsLCBleGFjdGx5
IGJ5IG9uZSBjaGFyLsKgIElmIEkgc3BlY2lmeSANCj4gLXJMTD04MCwgdGhlIHJpZ2h0IGVk
Z2Ugb2YgdGhlIGJveCBpcyBwbGFjZWQgYXQgY29sdW1uIDgxOyBpZiBJIHNwZWNpZnkgDQo+
IExMIHRvIGJlIDcyLCB0aGUgcmlnaHQgZWRnZSBvZiB0aGUgYm94IGlzIGF0IGNvbCA3My4N
Cj4gDQo+IFNlZSB0aGUgZXhhbXBsZSBiZWxvdyAoSSB0d2Vha2VkIGl0IHRvIHVzZSA2NCBj
aGFycyB0byBvdmVyY29tZSANCj4gVGh1bmRlcmJpcmQgaXNzdWVzKToNCj4gDQo+IA0KPiAk
IHRibCBtYW4zL2Vyci4zIFwNCj4gIMKgIHwgZXFuIC1UYXNjaWkgXA0KPiAgwqAgfCB0cm9m
ZiAtbWFuIC10IC1NIC4vZXRjL2dyb2ZmL3RtYWMgLW0gY2hlY2tzdHlsZSAtckNIRUNLU1RZ
TEU9MyBcDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqAgLXd3IC1UYXNjaWkgLXJMTD02NG4gXA0K
PiAgwqAgfCBncm90dHkgLWMgXA0KPiAgwqAgfCBjb2wgLWIgLXggXA0KPiAgwqAgfCAoISBn
cmVwIC1uICcuXHs2NFx9LicpDQo+IDIxOsKgwqDCoMKgwqDCoCBub3JldHVybiB2b2lkIHZl
cnIoaW50IGV2YWwsIGNvbnN0IGNoYXIgKmZtdCwgdmFfbGlzdCBhcmdzKTsNCj4gMjI6wqDC
oMKgwqDCoMKgIG5vcmV0dXJuIHZvaWQgdmVycngoaW50IGV2YWwsIGNvbnN0IGNoYXIgKmZt
dCwgdmFfbGlzdCBhcmdzKTsNCj4gNTE6wqDCoMKgwqDCoMKgICstLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSstLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLSsNCj4gNTI6wqDCoMKg
wqDCoMKgIHxJbnRlcmZhY2XCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IEF0dHJpYnV0
ZcKgwqDCoMKgIHwgVmFsdWXCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPiA1MzrCoMKgwqDCoMKg
wqAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0t
LS0tLS0tKw0KPiA1NDrCoMKgwqDCoMKgwqAgfGVycigpLCBlcnJ4KCksIHdhcm4oKSwgfCBU
aHJlYWQgc2FmZXR5IHwgTVQtU2FmZSBsb2NhbGUgfA0KPiA1NTrCoMKgwqDCoMKgwqAgfHdh
cm54KCksIHZlcnIoKSzCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8DQo+IDU2OsKgwqDCoMKgwqDC
oCB8dmVycngoKSwgdndhcm4oKSzCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPiA1NzrCoMKgwqDC
oMKgwqAgfHZ3YXJueCgpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwN
Cj4gNTg6wqDCoMKgwqDCoMKgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0t
LS0tLS0rLS0tLS0tLS0tLS0tLS0tLSsNCj4gDQo+IA0KPiBEbyB5b3Uga25vdyBob3cgSSBj
YW4gZml4IHRoYXQ/DQoNCkhtbW0sIEkndmUgYmVlbiB0ZXN0aW5nIHRoaW5ncywgYW5kIGdy
b2ZmIC1yTEw9NzggYmVoYXZlcyBhcyBNQU5XSURUSD04MCANCm1hbi4gIFRoYXQncyB3ZWly
ZC4gIFdlIGNvbWUgYmFjayB0byB0aGlzIDc4IGlzc3VlIHdlIGRpZG4ndCBrbm93IA0KZXhh
Y3RseSB3aHkgaXQgd2FzIHRoZXJlLg0KDQpTZWFyY2hpbmcgdGhyb3VnaCBtYW4tZGIncyBz
b3VyY2UgY29kZSwgaXQgc2VlbXMgdG8gY29uZmlybSB0aGF0IA0Kc3VidHJhY3Rpb246DQoN
CmFseEBhc3VzNTc3NTp+L3NyYy9jandhdHNvbi9tYW4tZGIkIGdyZXBjIGdldF9saW5lX2xl
bmd0aA0KLi9saWIvbGluZWxlbmd0aC5oOjIzOg0KaW50IGdldF9saW5lX2xlbmd0aCAodm9p
ZCk7DQoNCg0KLi9saWIvbGluZWxlbmd0aC5jOjQ5Og0KaW50IGdldF9saW5lX2xlbmd0aCAo
dm9pZCkNCnsNCgljb25zdCBjaGFyICpjb2x1bW5zOw0KCWludCB3aWR0aDsNCiNpZmRlZiBU
SU9DR1dJTlNaDQoJaW50IGRldl90dHksIHR0eV9mZCA9IC0xOw0KI2VuZGlmDQoNCglpZiAo
bGluZV9sZW5ndGggIT0gLTEpDQoJCXJldHVybiBsaW5lX2xlbmd0aDsNCg0KCWxpbmVfbGVu
Z3RoID0gODA7DQoNCgljb2x1bW5zID0gZ2V0ZW52ICgiTUFOV0lEVEgiKTsNCglpZiAoY29s
dW1ucyAhPSBOVUxMKSB7DQoJCXdpZHRoID0gYXRvaSAoY29sdW1ucyk7DQoJCWlmICh3aWR0
aCA+IDApDQoJCQlyZXR1cm4gbGluZV9sZW5ndGggPSB3aWR0aDsNCgl9DQoNCiAgICAgICAg
IFsuLi5dDQp9DQoNCmFseEBhc3VzNTc3NTp+L3NyYy9jandhdHNvbi9tYW4tZGIkIGdyZXBj
IGdldF9yb2ZmX2xpbmVfbGVuZ3RoDQouL3NyYy9tYW4uYzo2NTE6DQpzdGF0aWMgaW50IGdl
dF9yb2ZmX2xpbmVfbGVuZ3RoICh2b2lkKQ0Kew0KCWludCBsaW5lX2xlbmd0aCA9IGNhdF93
aWR0aCA/IGNhdF93aWR0aCA6IGdldF9saW5lX2xlbmd0aCAoKTsNCg0KCS8qIGdyb2ZmID49
IDEuMTggZGVmYXVsdHMgdG8gNzguICovDQoJaWYgKCghdHJvZmYgfHwgZGl0cm9mZikgJiYg
bGluZV9sZW5ndGggIT0gODApIHsNCgkJaW50IGxlbmd0aCA9IGxpbmVfbGVuZ3RoICogMzkg
LyA0MDsNCgkJaWYgKGxlbmd0aCA+IGxpbmVfbGVuZ3RoIC0gMikNCgkJCXJldHVybiBsaW5l
X2xlbmd0aCAtIDI7DQoJCWVsc2UNCgkJCXJldHVybiBsZW5ndGg7DQoJfSBlbHNlDQoJCXJl
dHVybiAwOw0KfQ0KDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------YGKfHNutBIT0k6nPO0MuIK0d--

--------------S8IzbSjLiLjaJ1tYlNFyxTEZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMLVyUACgkQnowa+77/
2zK4Dg/+OK1PK0ZTAHH0OsJOSR7nWIGxxhNLoAXfvF82t/hpj6RKIOZC92BCkvt4
WmD+/xOHQ6RLk5of6kTpSnLtmofcskIrWmU7tZBpgh+svhdRnu4kUgVnL3U663No
1XPT0JrAJtxSQbOs3SkeBltbclTbLTX2jR/tbCK4aRYm3vHSmVwCndR05T+Mm1T4
oNxE4wSOrX71iNl9YNe8mNHvb7YudFL5szohf5u1W9fAmr2Dk6QzmPoCSLjD1L05
+25f704boY5p7Q19JYyEZ8pCE8oobMt8H0aloEjjX6MMWiI3uWMVmDCp40JWAZcT
Z/R5ta77GNJUkDXXuVBwK8ieCuSXfof5Fa+0Ic5cEfd+F6DIAj5vLTmyUp5Qsgaa
LAleyQTy+Zn/uJaqPg1pph6b8ttjgr3u6XsF832c1p2owV9hFOhJbhd8N+TtkbcY
v76jJv7jMq6S94EH0GBNju+zagLJw0XXaVyDzu0p7FTXeTos9yi7uO1WsU5ZyhnQ
4Af89yQE3z4QVytg3QXqC8olMgSpM5Hp7nwIHixTFRN9/yAIbz0+Mgue5seXscDJ
1SagE6Xg2n8T8FSpPq/fC3s310DXbA45OF62Ex5HvBaW53iBT/oHLdO9ISOkDoV/
sngmchPqcN+L7iHSx5bj1T9S5stA8OoFZTzZDp/rm8fNbfmxEO8=
=xctc
-----END PGP SIGNATURE-----

--------------S8IzbSjLiLjaJ1tYlNFyxTEZ--
