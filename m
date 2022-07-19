Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F98B57A4B8
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 19:12:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237546AbiGSRMq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 13:12:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238379AbiGSRMj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 13:12:39 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D4B4F186
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 10:12:38 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id bk26so22565473wrb.11
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 10:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=ZFuXDHZXwWQ7B+4zk651pdfPbYAETPyvMeI1fbEcHJQ=;
        b=iXvaOHKS00nG23Eu+XTdi3/T1A6TzuPrneDUp3ozla0AIYU0pK2znvr53ePJMH4WuK
         Hf5f1CDtzzfGHiGiBhdA3U+xIk9ulsWaws78h8RNMuVPTZ0CUH52wesj9BmX2IweqrZD
         i9BRQutTUFu4YXhJKYGW9Ljq+tpARHSKKqoiPqyKcR8vzNwZxSAVGndBdRBre9O3CRPe
         YszRHG/AkT32/O+dJOOSa9YXJ0lE/rvq5C5ObbZHRQESZXyX6IgJH+rGcE7FH3gmZGMH
         UAEntq8/D/TL0rKcrBrU6+fbhmNCTe+QhWF3g3orwf1+JksKHe20dtFF8fNHYAiMuKV/
         449g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=ZFuXDHZXwWQ7B+4zk651pdfPbYAETPyvMeI1fbEcHJQ=;
        b=wMNxOIKxHjjwfgSbz8Hl5o5Bg92GXXX478cYjnlrAWOEPJyIfP4y1czP20nXHIgope
         IbSzrHSPncUxD4627aPohhpZiwGwLvYCqgP5JSzxeIKUQQaWJawdA/638YcSf0tfOefj
         AZqv0VK+Wi0ytzZKyKw0kYTzgrYk4p6jaE/yX34u1cLyAFAJb3N18dBpzgVxojEbZY8Q
         xn3ZUmenxz8+1V+TsBWF62OyzHotO9xVBG4xsxICOaVMNHALv0F6MO365sAtnQmsf9tT
         yR7Oru4RFy0z9IF1Mum0ZNFfWq05kwvXW96+QsVuFb5/QTcx+LMgcT+peFVQ4akLdF6x
         tK3w==
X-Gm-Message-State: AJIora9k8GvDq6WdfdaH2bbo3i36H4WQJmS08BAvt57v2BcTXrvlW9Dg
        syGq/jp7m5AsZdMTN/nc9Hw=
X-Google-Smtp-Source: AGRyM1suK2AS5QAFGwBim/oftV6yb+HOXqh+Pft9VBDaOjWcuT2IhsnQOwFQcTDUcMSKuIvFBxkmlA==
X-Received: by 2002:a05:6000:18c1:b0:21e:4712:b284 with SMTP id w1-20020a05600018c100b0021e4712b284mr585373wrq.545.1658250756884;
        Tue, 19 Jul 2022 10:12:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n125-20020a1ca483000000b003a02de5de80sm2208729wme.4.2022.07.19.10.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 10:12:36 -0700 (PDT)
Message-ID: <838d07e3-8b4f-f0bc-7d31-e07483439456@gmail.com>
Date:   Tue, 19 Jul 2022 19:12:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v2 4/4] ctime.3: remove struct tm vestigia
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <e9b0e687ff10a4607ec0442a3208dd31b6d4eed8.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <e9b0e687ff10a4607ec0442a3208dd31b6d4eed8.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fet6XJpMtqFTTmyKUT90TMRf"
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
--------------fet6XJpMtqFTTmyKUT90TMRf
Content-Type: multipart/mixed; boundary="------------dakoUlXouWaJ2qHDmCRRBTam";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <838d07e3-8b4f-f0bc-7d31-e07483439456@gmail.com>
Subject: Re: [PATCH v2 4/4] ctime.3: remove struct tm vestigia
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <e9b0e687ff10a4607ec0442a3208dd31b6d4eed8.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <e9b0e687ff10a4607ec0442a3208dd31b6d4eed8.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>

--------------dakoUlXouWaJ2qHDmCRRBTam
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

0L3QsNCxLCBJIHRoaW5rIHRoaXMgd291bGQgbmVlZCBhIGJpdCBtb3JlIG9mIGEgY29tbWl0
IG1lc3NhZ2UsIGV2ZW4gaWYgdGhlIA0KcHJldmlvdXMgb25lIGFscmVhZHkgaGludHMgdGhh
dCB0aGlzIHJlbW92YWwgd2lsbCBoYXBwZW4uDQoNCkNoZWVycywNCg0KQWxleA0KDQpPbiA3
LzE5LzIyIDE3OjM1LCDQvdCw0LEgd3JvdGU6DQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlh
IFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQo+IC0t
LQ0KPiAgIG1hbjMvY3RpbWUuMyB8IDE1IC0tLS0tLS0tLS0tLS0tLQ0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zL2N0aW1l
LjMgYi9tYW4zL2N0aW1lLjMNCj4gaW5kZXggZDIyOGJkYzIxLi42MGVlNDQxOGQgMTAwNjQ0
DQo+IC0tLSBhL21hbjMvY3RpbWUuMw0KPiArKysgYi9tYW4zL2N0aW1lLjMNCj4gQEAgLTM1
NiwyMSArMzU2LDYgQEAgSW4gbWFueSBpbXBsZW1lbnRhdGlvbnMsIGluY2x1ZGluZyBnbGli
YywgYSAwIGluDQo+ICAgLkkgdG1fbWRheQ0KPiAgIGlzIGludGVycHJldGVkIGFzIG1lYW5p
bmcgdGhlIGxhc3QgZGF5IG9mIHRoZSBwcmVjZWRpbmcgbW9udGguDQo+ICAgLlBQDQo+IC1U
aGUgZ2xpYmMgdmVyc2lvbiBvZiBcZklzdHJ1Y3QgdG1cZlAgaGFzIGFkZGl0aW9uYWwgZmll
bGRzDQo+IC0uUFANCj4gLS5pbiArNG4NCj4gLS5FWA0KPiAtbG9uZyB0bV9nbXRvZmY7ICAg
ICAgICAgICAvKiBTZWNvbmRzIGVhc3Qgb2YgVVRDICovDQo+IC1jb25zdCBjaGFyICp0bV96
b25lOyAgICAgIC8qIFRpbWV6b25lIGFiYnJldmlhdGlvbiAqLw0KPiAtLkVFDQo+IC0uaW4N
Cj4gLS5QUA0KPiAtZGVmaW5lZCB3aGVuDQo+IC0uQiBfQlNEX1NPVVJDRQ0KPiAtd2FzIHNl
dCBiZWZvcmUgaW5jbHVkaW5nDQo+IC0uSVIgPHRpbWUuaD4gLg0KPiAtVGhpcyBpcyBhIEJT
RCBleHRlbnNpb24sIHByZXNlbnQgaW4gNC4zQlNELVJlbm8uDQo+IC0uUFANCj4gICBBY2Nv
cmRpbmcgdG8gUE9TSVguMS0yMDAxLA0KPiAgIC5CUiBsb2NhbHRpbWUgKCkNCj4gICBpcyBy
ZXF1aXJlZCB0byBiZWhhdmUgYXMgdGhvdWdoDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXIN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------dakoUlXouWaJ2qHDmCRRBTam--

--------------fet6XJpMtqFTTmyKUT90TMRf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLW5gIACgkQnowa+77/
2zJVCw//Ygq5eFRvkH/GRjEFBM5412QnPFJFmsvDUU8w4P3tFJQektuUpFReDQI2
edCcPbEPgxXfKRmLg+kbBnLDcwdjKPgGYzxWpx2/9qKTWotfYbRAi0KDERrrInhA
ZtthETrv8BIh+/vBiI2KZ3Jjam+/zmWhM53MdhZ8YIDwqBgP+1n0tVXh+hNzdGv0
kiUA7LmeyVeEeHi6Le656GlJhN7zQWpzbSQ+IHXaOxgWJQF08zveVRj9sWIci/hJ
plricx6EjILrx7luYKwUUvmWUCiJKhd+WBR2qtlum9e3GzODH2A1tndOmsM4YqT/
CG440InDVYJwpx2p+F37dH6A8zX2k3i23ubr5lSXg+JHS/2lwyi4cVEzROW56gDk
p8PpJP0u3tVxxz0hU4dAZFfzGYeNVbc/Rj9pd+YgoMJCrWUfXpaCL0uXJhalePmF
thwKPqLhenHDlc8RBZiPjEo5u30XVB6l/Qxzd79nQBvK7vg8mYQjH3wuoGscOHKl
P7HlZQWKbT43n3EUjDcadOWW05UAhePM4KK0komS3v79BvCkyC4dLqx5lEDllRT9
PuA6eG3+UbIdacaLn2jtkgX+Q+68GvmM9/P2v1A1yY/Eq+9wx3hN4FpmQFgrkTKI
g0AAl+p7NNNdpfGT4tHh40701e2iCFFSAgKsAFxe4dDn7kIBHjA=
=O/ul
-----END PGP SIGNATURE-----

--------------fet6XJpMtqFTTmyKUT90TMRf--
