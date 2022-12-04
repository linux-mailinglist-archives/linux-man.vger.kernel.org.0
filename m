Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A760F641FC2
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 22:14:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbiLDVOe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 16:14:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLDVOd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 16:14:33 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F3751181C
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 13:14:32 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id u12so14980556wrr.11
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 13:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AiXrmGRUK94jEYqvP8Y/ZMdd1Olw4GiqBMR5Ukp3zsY=;
        b=YD65oL9eLpclH2OspSEyR+9Jzb5qlSoAsQrjc5+Gm8smbBf1jfH+giEPKOGvN0n5vn
         qAa78jVh03xqHOK7XJsQLk7Nk+zC4rWI+izKB9EDp0NbWYMq6raEzK5rfyB/GMXZZ7cj
         qbLF0DX5Bm5pqbCvw1cMpAPxDgdNwZHfQRnYH79gdjfwzB+te5na63bTZ99WrhJ6foum
         bHPpcflqoio1dVSFOdPlwCwmsYjSrtbzHA5TKPuLEshqK5jnd69nJxKFqH0Hu+Wmw4Vw
         nzcaCFXxzo8434ZcjD5Wdj+NC5VgxFfGQGU2DAkpDHmLxMj51XrEtGKZsuXvzuGCHppL
         vE7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AiXrmGRUK94jEYqvP8Y/ZMdd1Olw4GiqBMR5Ukp3zsY=;
        b=x7t53rCLqp46rzqBM3mka4FQQDsq9f+IRQAbYyBzZYPQqH58330CPAMwbcGZ73N36G
         T6IYpSRivw881ItRY/04lNlu1U2AlyYK6dF98pmzzlzAGWgAl0OuoNKKkWK/zbDQs9fP
         DK7DmweUhzjnsScKPPZc5ayww5Wmoa3C17oc7sxr0YjPlOooN8ENYitY872NvKiFrkzi
         dbFDsfrxYGLNDHC5vfaaDtRJ+/4dycvEfaWeAbTm2Abosku/onPd00CJJpDyFb0xBDsI
         iXQQgKViF3wIAhlTFd7pPQmmfBpKkaIAPXVi6sj4YJfN+nhhNbcxskVJyHOobIc9k5IG
         GCXA==
X-Gm-Message-State: ANoB5pkgBK8RkjHGUFuh3hXN+xvgb06HW2gCAGrRb26AZJXRTqfoX7x8
        GUmJrfHOlEWrKq9vjGIG1hQ=
X-Google-Smtp-Source: AA0mqf5KLYVH75f0wBcDoCTOdJaFz3fEgG8Khj+r/pw64iqkGwfGU7Zsc94lR2g9Wun7My6Tfz1qUQ==
X-Received: by 2002:adf:ab1d:0:b0:242:e73:f642 with SMTP id q29-20020adfab1d000000b002420e73f642mr22570415wrc.184.1670188470985;
        Sun, 04 Dec 2022 13:14:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n3-20020a05600c3b8300b003cfbbd54178sm25024013wms.2.2022.12.04.13.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 13:14:30 -0800 (PST)
Message-ID: <ebdfc516-76ea-30a6-7b97-f34a434d40eb@gmail.com>
Date:   Sun, 4 Dec 2022 22:14:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page keyrings.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090709.GA32717@Debian-50-lenny-64-minimal>
 <14ded556-7113-50cd-d705-942c482f09e3@gmail.com>
 <20221204135708.GC441@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204135708.GC441@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MopkEaT9IGnKOBhF58MqBFGe"
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
--------------MopkEaT9IGnKOBhF58MqBFGe
Content-Type: multipart/mixed; boundary="------------606N0CPj6Apmdm4OP290mf53";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <ebdfc516-76ea-30a6-7b97-f34a434d40eb@gmail.com>
Subject: Re: Issue in man page keyrings.7
References: <20221204090709.GA32717@Debian-50-lenny-64-minimal>
 <14ded556-7113-50cd-d705-942c482f09e3@gmail.com>
 <20221204135708.GC441@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204135708.GC441@Debian-50-lenny-64-minimal>

--------------606N0CPj6Apmdm4OP290mf53
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTQ6NTcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMTI6NDc6
NTJQTSArMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDEw
OjA3LCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8s
IHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgIHBpbm5lZCDi
hpIgYW5jaG9yZWQ/DQo+Pj4NCj4+PiAiUHJvY2VzcyBjcmVkZW50aWFscyB0aGVtc2VsdmVz
IHJlZmVyZW5jZSBrZXlyaW5ncyB3aXRoIHNwZWNpZmljIHNlbWFudGljcy4iDQo+Pj4gIlRo
ZXNlIGtleXJpbmdzIGFyZSBwaW5uZWQgYXMgbG9uZyBhcyB0aGUgc2V0IG9mIGNyZWRlbnRp
YWxzIGV4aXN0cywgd2hpY2ggaXMiDQo+Pj4gInVzdWFsbHkgYXMgbG9uZyBhcyB0aGUgcHJv
Y2VzcyBleGlzdHMuIg0KPj4NCj4+IEknbSBub3Qgc3VyZS4gIEkgc2VlIHVzZXMgb2YgYm90
aCB0ZXJtcywgYW5kIGRvbid0IGtub3cgdGhlIGludGVyZmFjZXMNCj4+IGVub3VnaCB0byBi
ZSBhYmxlIHRvIHRlbGwgd2hpY2ggdGVybSBpcyBtb3JlIGFwcHJvcHJpYXRlIGhlcmUuICBQ
bGVhc2UgQ0MNCj4+IGFueSBkZXZlbG9wZXJzIG9mIHRob3NlIGludGVyZmFjZXMgYW5kIHNl
ZSB3aGF0IHRoZXkgdGhpbmsgYWJvdXQgaXQuDQo+IA0KPiBXZWxsLCB5b3UgaGF2ZSBhIHN1
YnRpdGxlIGNhbGxlZDoNCj4gDQo+IEFuY2hvcmluZyBrZXlzDQo+IA0KPiAoSnVzdCBhIGZl
dyBsaW5lcyBhYm92ZSB0aGlzIHBhcmFncmFwaCkuIFRodXMgSSB3b25kZXJlZCBpZiB0aGlz
IGlzIGENCj4gZGlmZmVyZW50IGNvbmNlcHQgdGhhbiBwaW5uaW5nLg0KPiANCj4gSSBtYXJr
IGl0IFdPTlRGSVggZm9yIG5vdyBpbiBvdXIgc291cmNlcywgc28gaXQgZG9lcyBub3QgZ2V0
IHJlcG9ydGVkDQo+IGFnYWluLg0KDQpObywgcGxlYXNlLCByZXBvcnQgaXQgYWdhaW4uICBJ
dCdzIGp1c3QgdGhhdCBJIGRvbid0IGtub3cgYXQgdGhlIG1vbWVudC4gIEknZCANCmxpa2Ug
dG8gY29uZmlybSB0aGlzIHJlcG9ydC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFRo
YW5rcyENCj4gDQo+IEdyZWV0aW5ncw0KPiANCj4gICAgICAgICAgIEhlbGdlDQo+IA0KDQot
LSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------606N0CPj6Apmdm4OP290mf53--

--------------MopkEaT9IGnKOBhF58MqBFGe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONDbUACgkQnowa+77/
2zKp3xAAqZ7V8u7S+JHBtlHDho5dwfZgLEJSz1ogYQeunvF9Nsai27O+tlXQWgef
iebDFC4LKTYzBYstO/NFa/9mOJGrVG8PO2T+EpvMBJDdZZKmVFmBZiECXG5mKvja
93iYVxuHF0L80eWldjr1x875D87+bkXNzlctmaxQ8nuFYQHsdisPSXKh6mEJaiSV
XndPtjx5Kgfr00CPh2x1djMyd4NJJj3HB5xwAODsCqhsu5DrPDEieiAUgqsP/LKe
cTEf2gO/B8yBZ5Iee1pX+DrE3kfAlpibk7QMvL2oLeVyFEwuggAMf/QvYq0qukCH
rgwAqp6j9Ebl87Q9UnHcV/o+aqrp8aKZ7CQAuFTekJSua1Xw5p+eIfaWUwa5R3yY
VyBboCy3dbbFz8iv6qanBWBNFpqXjnwzmXf6SaVW5vrH55grXFNjcly/ckJZ696b
+PWYhLwS9raHHHN90PLfwHCk3Mvv9xvCzcdn177qTDvzDzNfDFdOGBJkl/31BRY4
24CieoEJrFCgZUGqYBylcrrXMPrh1v3FTOTfGmJJYI0bHxryjrf85G9XN3o5/0yS
4gWKD/tRrZ9KwGP9l+Dd7JJMsbx7hVGeTs7gyQLr7RfNU5spmcF255+HHhkWAAfa
UTnDfdPjajtVhFdeK5/OPfKl+tEZ0OEk+EA41GfMb8Cj+GmtbhY=
=s71Z
-----END PGP SIGNATURE-----

--------------MopkEaT9IGnKOBhF58MqBFGe--
