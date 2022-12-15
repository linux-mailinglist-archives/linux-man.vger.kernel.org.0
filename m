Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B74964DDC5
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 16:26:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbiLOP0A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 10:26:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbiLOPZ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 10:25:58 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57B5F5FE0
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 07:25:56 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso2161451wmb.0
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 07:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j0KA8K9YfDodIBPJuIhROlUndbZ/R0pwDO6cyQj+JYg=;
        b=an52LNehhjzLUI+QUtgk6QK8ZOSD8F2dvCIpZsdzMiLnK0m0bo3C9WZCYAEku4/NAO
         cNEC0DZmFGMLHBF18wiK/ZzMbs0EwugSh2/gHceMaEp2QPmwTEKVgfIyirywPhC3q1gF
         eennsE1YvLjN5f6qr1kxCaabrk3SxAldagLcSImeV69C5/OD3ZT03LAUqWmKHCkPB+c2
         s+vZbYB2y/FR1Cex0w32vlgXvKO39kCilJX0QOwf2e+1gG//77syV2/bHFqRWneyN+kA
         KAhMiC5dd6a9TsmVGj7kBJOE/5ADo/4oFsIFtLBEMtflSChptvkY6uCUmigzdX5f2hyG
         uRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j0KA8K9YfDodIBPJuIhROlUndbZ/R0pwDO6cyQj+JYg=;
        b=Q4TFr43lZ+KHQtmW0DH+a9H3Wis7f4dYg5kOeLnI8F+W2UKF0+NLQK0+ga6uk0WOtG
         3dR9gM+OHrOaOj83q2WxSF+Y4WEdSr4aGp4VkOdMuXP5FVKWw68FIaiiUzoZxkfa6OrV
         Ny1bN3nV6xtaKOlxnsyxKAI4Zcpa0MK+ukmeri75IVpw4DpdJyr/YGr9yzynGKhRkx+z
         lyneNSuccqzatlkrjgx9elIeYkhGV4nR9YIiyJ7Se2Zz7flH0+pDdDzuGajvD2vmTQKl
         AYPA53EY6z2PTitZPrDjHD58FH1W4Cie7kMrGkjxEiOpGZ+VehJvfwB0wvydx8i5/crg
         sAag==
X-Gm-Message-State: ANoB5pn9R0WqSrs2w9umaqBfpb0F3eqqqRMmWrJyrkj+oByL8Sr3MiyV
        QWdvo43DBoAENHRQ1mTBEMnvvFACUbU=
X-Google-Smtp-Source: AA0mqf6VCPC2Bq8kcrgjaf+gtFDb2D5dIRdM6ZwgFhrK1tjPYrbBo5btom68zWmhirmbmc2fa/X31A==
X-Received: by 2002:a05:600c:3508:b0:3c6:e63e:816f with SMTP id h8-20020a05600c350800b003c6e63e816fmr21186273wmq.38.1671117954841;
        Thu, 15 Dec 2022 07:25:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t16-20020a1c7710000000b003c6f3f6675bsm6249582wmi.26.2022.12.15.07.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 07:25:54 -0800 (PST)
Message-ID: <97ab9255-3996-d9bb-44ef-f9d037431795@gmail.com>
Date:   Thu, 15 Dec 2022 16:25:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Linux man-pages prehistory
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>
Cc:     "Andries E. Brouwer" <aeb@cwi.nl>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
References: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>
In-Reply-To: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bmh81ey3yiQIntAGWaG0vn4Y"
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
--------------bmh81ey3yiQIntAGWaG0vn4Y
Content-Type: multipart/mixed; boundary="------------xyBk4AFNqGiivcmcxj0YehvU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>
Message-ID: <97ab9255-3996-d9bb-44ef-f9d037431795@gmail.com>
Subject: Re: Linux man-pages prehistory
References: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>
In-Reply-To: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>

--------------xyBk4AFNqGiivcmcxj0YehvU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE1LzIyIDE2OjI0LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
YWxsIQ0KPiANCj4gSSdtIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhhdCB0aGVyZSdzIGEgbmV3
IGJyYW5jaCBpbiB0aGUgZ2l0IHJlcG9zaXRvcnksIG5hbWVkIA0KPiAncHJlaGlzdG9yeScs
IHdoaWNoIGNvdmVycyBleGFjdGx5IHRoYXQuwqAgSXQgaXMgY29ubmVjdGVkIHRoZSB0aGUg
bWFzdGVyIGJyYW5jaCANCj4gaW4gYSBiYWNrd2FyZHMtdGltZS10cmF2ZWwgd2F5LCBzbyB0
aGF0IHRoZSB0aXAgb2YgdGhlIGJyYW5jaCBpcyB0aGUgb2xkZXN0IG1hbiANCj4gcGFnZXMg
dGhhdCBvbmUgY2FuIGZpbmQgLS10aGF0IGlzLCAxLjAtLS4NCj4gDQo+IFRoaXMgaXMgbm90
IGEgc3RhYmxlIGJyYW5jaCwgYW5kIG1heSBiZSByZWJhc2VkIGluIHRoZSBmdXR1cmUgdG8g
ZmlsbCBnYXBzIChzdWNoIA0KPiBhcyBtYW4tcGFnZXMtMS4xLCB3aGljaCBpcyBtaXNzaW5n
KSwgd2hpY2ggaXMgdGhlIHJlYXNvbiBJIGRpZG4ndCBjcmVhdGUgdGFncyANCj4gZm9yIHRo
ZSB2ZXJzaW9ucy4NCj4gDQo+IEFueW9uZSBjdXJpb3VzIGFib3V0IHRoZSBvbGQgcGFnZXMg
bGlrZSBtZSwgY2FuIG5vdyB1c2UgYWxsIHRoZSBwb3dlciBvZiBnaXQoMSkgDQo+IGZvciB0
aGF0IHB1cnBvc2UuwqAgQmVsb3cgeW91IGNhbiBzZWUgYSBnbGFuY2Ugb2Ygd2hhdCBpcyBu
b3cgYXZhaWxhYmxlIHRocm91Z2ggZ2l0Lg0KPiANCj4gVG8gYXZvaWQgbWlzYXR0cmlidXRp
bmcgYXV0aG9yc2hpcCBvZiBjaGFuZ2VzLCBJIGF0dHJpYnV0ZWQgdGhlbSB0byB0aW1lIGl0
c2VsZi4NCj4gDQo+IENoZWVycywNCj4gDQo+IEFsZXgNCj4gDQo+IFAuUy46wqAgQW5kcmll
cywgZG8geW91IGtub3cgYW55dGhpbmcgYWJvdXQgMS4xP8KgIFRoZXJlJ3MgdGhlIGFubm91
bmNlIGluIHlvdXIgDQo+IGZ0cCBzZXJ2ZXIsIGJ1dCB0aGUgdGFyYmFsbCBpcyBtaXNzaW5n
Lg0KDQpCeSBmdHAgc2VydmVyLCBvZiBjb3Vyc2UgSSBtZWFudCB0aGUgZnRwZG9jcyBkaXIg
b24geW91ciB3ZWJzaXRlOg0KDQo8aHR0cHM6Ly93d3cud2luLnR1ZS5ubC9+YWViL2Z0cGRv
Y3MvbGludXgtbG9jYWwvbWFucGFnZXMuYXJjaGl2ZS8+DQoNCi0tIA0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------xyBk4AFNqGiivcmcxj0YehvU--

--------------bmh81ey3yiQIntAGWaG0vn4Y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmObPIEACgkQnowa+77/
2zKRJA/+Kw/Fq0QolbpYwt+PSbUB4gGLBsuN3GKIONVrtSYNaRVGpm4p3DtCyRfG
bmW4rkqwSa47bkZL8drgrQnxsmkELvnOSP6yqEehm+NT71ORrdzLSLrneZJxTFTh
fOko15a3/llKqa/3MQIj2JPddYB8tKYkmhbTVe42Oh+u9FNX1j4Hq61CmxNNHrhT
KdqH6ELKbt055kRYq8VaDFIvTOLhjGfXQpX5f3iPdrpVT4wpbcT9GJvkLZAX2YD8
g262bEsYeAbA72b+W+vIwbSJ9fLg49Pvg/bGW1NEVixlPDq6Web+DvrxfCOCqZse
AvowPkM3+eJGZTRmD9HPLygktM9sZ8/dAeYsCGfyz8tYz5EMIyS8mWrfWBpvyC9h
mDFBjR+9SFZIzpxww4Za7+jjX9libgrBYFBgHCN2+fvKehTdxtR66Ingi4LhYqw9
RvdWu7iAgoBN11osrsILDcipyqSNEFEsKs5oio33iCxFuMh5QvapUNyYxVVcLCKB
qjMfzwRerD4EK5g9xqlInkUalIMeV0iy5hIoTnycTBX7HhN6X2KC09wIG/Mows6U
HSLjsSNTKadh/mXS1r19C4LfDPMG24+uphzg6C55I5zFYo3TJvaSmmOgDLwKPH66
aw0Fl3UzwrEAlrE3SVnbyF33tthlrwMm4+tg9fHTcMY3aoYhFds=
=Mnhb
-----END PGP SIGNATURE-----

--------------bmh81ey3yiQIntAGWaG0vn4Y--
