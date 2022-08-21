Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12AD959B34C
	for <lists+linux-man@lfdr.de>; Sun, 21 Aug 2022 13:28:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiHUL2T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Aug 2022 07:28:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbiHUL2S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Aug 2022 07:28:18 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DCC7EBF
        for <linux-man@vger.kernel.org>; Sun, 21 Aug 2022 04:28:13 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id h204-20020a1c21d5000000b003a5b467c3abso6283245wmh.5
        for <linux-man@vger.kernel.org>; Sun, 21 Aug 2022 04:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=yy6kWOEJ5BFDYYNTQQrVe749xALOwEQ8VUJ+hI6jYN4=;
        b=ETQa/pkIr1OjMW9fU26Z+aYPF+1un0X03kBThSHQyGXh1kCWWYODQt4W3yHeXtWMQA
         RkzbXUIkYd54vJbytdHhA890uECnxXygYfCsWGisYtUWyRDu4VnaqFeZtP2ToWrCNBTT
         tw8wP5szbhM78S/Xyo4Ua+ImKALupN6XDnPY/CyJJ8yof46DDKtRFA928WpY7hxykuOs
         HeomlBAkTu9dV4VOeuWCR25DJnYgL7Wx/wBDKKoYkQ3JVCs+spCCeEsznc2sgtcngwN8
         czdKOgIyfpV7Sm+V6xebyfuzMt+mTomlUR5zdMR52QhIyRprwgwEmzrZLmC6fCHnfKm6
         EhfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=yy6kWOEJ5BFDYYNTQQrVe749xALOwEQ8VUJ+hI6jYN4=;
        b=uo3Eg1joLO8iEPZyNd8PjbcS8l+5Vnb87Ah8oRHN6SmehGBXM0EZxe3TMXaZQJuDcI
         2lsa5U/WrpRa4QIhRoHE8w7m1V7eTctxYuf84AmVtnmNOYVDNLk8EeQnj1dVqUh4oSMR
         eC0VeiqfraAFHSE0GJEXXs7rjdl6Z36VVF6g96aXYVBIn/KcbFdHId81AynZllXmabgr
         6DknhrU0IoX0bernVSojXT5cM7W2fUjuSxM87k2WNzVgTcvFxl8zbsdPXlYz/Iu9JQW8
         L2BIqc/wHneYaGtg4DX3YmIJf9+KCCiMUv45rzJy9pkQbZVcWxIoF/gO1yMOpkuQ+026
         TJ5g==
X-Gm-Message-State: ACgBeo0h9IY/6MAsY1RVmboDQ7+eBX5/NYMZs5T38quqGv/x5+cqPYSB
        XHMphG55e+en/FBjUKQIDPg=
X-Google-Smtp-Source: AA6agR4LmSBmduA5aHou9e1mzb0+CsUksWyAgk68wuIf8pb6FHFyI+T7wkZMaNaAGFEEoG0/MBWdjg==
X-Received: by 2002:a1c:2783:0:b0:3a2:fd82:bf46 with SMTP id n125-20020a1c2783000000b003a2fd82bf46mr12563522wmn.29.1661081291938;
        Sun, 21 Aug 2022 04:28:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l41-20020a05600c1d2900b003a62052053csm15397697wms.18.2022.08.21.04.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Aug 2022 04:28:11 -0700 (PDT)
Message-ID: <48974e65-dbd4-649b-2c21-c50fcfb7d734@gmail.com>
Date:   Sun, 21 Aug 2022 13:28:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20220819190859.6248-1-jwilk@jwilk.net>
 <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
 <20220821052837.tpxk3qe7vfwo7cef@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220821052837.tpxk3qe7vfwo7cef@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sequPxiH7uI8nMTDZsv0TKh8"
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
--------------sequPxiH7uI8nMTDZsv0TKh8
Content-Type: multipart/mixed; boundary="------------uz9FpW1t7QeAvJ806C77SR0q";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <48974e65-dbd4-649b-2c21-c50fcfb7d734@gmail.com>
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
References: <20220819190859.6248-1-jwilk@jwilk.net>
 <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
 <20220821052837.tpxk3qe7vfwo7cef@illithid>
In-Reply-To: <20220821052837.tpxk3qe7vfwo7cef@illithid>

--------------uz9FpW1t7QeAvJ806C77SR0q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwgSmFrdWIsDQoNCk9uIDgvMjEvMjIgMDc6MjgsIEcuIEJyYW5kZW4gUm9i
aW5zb24gd3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBBdCAyMDIyLTA4LTIwVDAxOjI4OjA0
KzAyMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4+IC1jYXBhYmlsaXR5IHRvIGNy
ZWF0ZSBhbmQgaW50aWFsaXplIGFuIGZhbm90aWZ5IGdyb3VwIHdpdGggbGltaXRlZCBmdW5j
dGlvbmFsaXR5Lg0KPj4+ICtjYXBhYmlsaXR5IHRvIGNyZWF0ZSBhbmQgaW5pdGlhbGl6ZSBh
biBmYW5vdGlmeSBncm91cCB3aXRoIGxpbWl0ZWQgZnVuY3Rpb25hbGl0eS4NCj4+DQo+PiBz
aG91bGQgdGhpcyBiZSAnYSBmYW5vdGlmeScgaW5zdGVhZCBvZiAnYW4gZmFub3RpZnknPw0K
PiANCj4gQW5zd2VyaW5nIHRoaXMgcmVxdWlyZXMgcGVvcGxlIHRvIGRvY3VtZW50IGhvdyB0
aGUgZnVuY3Rpb24vZmVhdHVyZSBuYW1lDQo+IGlzIHN1cHBvc2VkIHRvIGJlIHByb25vdW5j
ZWQuICBVc2UgImFuIiBpZiB3aGF0IGZvbGxvd3MgaXMgYSB2b3dlbA0KPiBzb3VuZC4gIFNw
ZWxsaW5nIGlzIG5vdCBhIGRldGVybWluaW5nIGZhY3Rvci4NCj4gDQo+IFVuZm9ydHVuYXRl
bHkgaXQgaXMgYSB0cmFkaXRpb24gaW4gVW5peCBjdWx0dXJlIG5vdCB0byBtYWtlDQo+IHBy
b25vdWNpYXRpb24gb2YgaXRzIGxleGljb24gb2YgKGhpc3RvcmljYWxseSkgaGVybWV0aWNh
bGx5IHRlcnNlDQo+IGlkZW50aWZpZXIgbGV4aWNvbiBjbGVhciwgc28gdGhhdCB0aGUgbmFt
ZXMgb2YgY29tbWFuZHMgYW5kIGZ1bmN0aW9ucw0KPiB0aGF0IGFyZSB3ZWxsIGtub3duIGVu
b3VnaCB0byBjb21lIHVwIGluIGNvbnZlcnNhdGlvbiBhdCBjb252ZW50aW9ucyBjYW4NCj4g
YmUgdXNlZCBhIHNoaWJib2xldGggdG8gZGlzdGluZ3Vpc2ggc2VsZi10YXVnaHQgdXNlcnMg
YW5kIHByb2dyYW1tZXJzDQo+IChhbmQgY2x1ZWxlc3Mgc2FsZXMgcGVyc29ubmVsIGFuZCB3
b3VsZC1iZSBlbnRyZXByZW5ldXJzKSBmcm9tDQo+ICJhdXRoZW50aWMiIFVuaXggZXhwZXJ0
cyB3aG8gdW5kZXJ3ZW50IGEgcHJvcGVyIGFwcHJlbnRpY2VzaGlwLCBhbmQNCj4gdGhyb3Vn
aCBhIGNoYWluIG9mIG1hc3RlcnMsIGNhbiB0cmFjZSB0aGVpciB0dXRlbGFnZSB0byBhIGx1
bWluYXJ5IGF0DQo+IHRoZSBCZWxsIExhYnMgQ1NSQyBvciBVQyBCZXJrZWxleSBDU1JHLS1z
b21lb25lIHdpdGggYSBuYW1lIHRvIGJlIHNwb2tlbg0KPiBpbiBodXNoZWQgdG9uZXMgbGlr
ZSAiUml0Y2hpZSIgb3IgIkpveSIuDQo+IA0KPiBEb2VzICJ0cm9mZiIgaGF2ZSBvbmUgc3ls
bGFibGUgb3IgdHdvPyAgRG9lcyBvbmUgcmVmZXIgdG8gdGhlIHRleHQNCj4gZWRpdG9ycyBh
cyAiZWUtZGVlIiBhbmQgInZlZS1leWUiIG9yIGFzIGlmIHRoZXkgd2VyZSBFbmdsaXNoIGRp
bWludXRpdmUNCj4gbmFtZXMgIkVkIiBhbmQgIlZpIj8gIE9uZSBzZXQgb2YgY2hvaWNlcyB3
aWxsIG1hcmsgeW91IGFzIGEgcGVyc29uIHdobw0KPiBfbWlnaHRfIGJlIHdvcnRoIGNvbnZl
cnNpbmcgd2l0aDsgdGhlIG90aGVyIHdpbGwgZ2V0IHlvdSBhIHNob3J0IGxvb2sNCj4gZG93
biBhIGxvbmcgbm9zZSBhbmQgdGhlIGNvbGQgc2hvdWxkZXIuICBXZSd2ZSBnb3QgZ2F0ZXMg
dG8ga2VlcC4NCg0KWW91IGNhbiBndWVzcyB0aGUgYW5zd2VycyB0byB0aG9zZSBpbiBteSBo
ZWFkIDspDQoNCj4gDQo+IEJvdGggVW5peCBhbmQgdGhlIExpbnV4IGtlcm5lbCwgdGhlIGxh
dHRlciBwYXJ0aWN1bGFybHkgaW4gaXRzDQo+IGRldmVsb3BtZW50IG1vZGVsLCB3ZXJlIGxl
dmVsbGluZyB0ZWNobm9sb2dpZXMuICBUaGV5IGJyb3VnaHQgYmV0dGVyIE9TDQo+IHRlY2hu
b2xvZ3kgYW5kIHByb2dyYW1taW5nIGVudmlyb25tZW50cyB0byBtdWNoIGxhcmdlciBncm91
cHMgb2YgcGVvcGxlDQo+IHRoYW4gaGFkIGVuam95ZWQgdGhlbSBiZWZvcmUuDQo+IA0KPiBC
dXQgaXQgaXMgYSBzYWRseSByZWN1cnJpbmcgdGhlbWUgb2YgaHVtYW4gaGlzdG9yeSB0aGF0
IGFzIHNvb24gYXMgc29tZQ0KPiBsZXZlbGxpbmcgcHJvY2VzcyBvY2N1cnMsIGEgY2VydGFp
biB0eXBlIG9mIHBlcnNvbiBwcm9tcHRseSBtb3ZlcyBpbiB0bw0KPiByZXN0b3JlIGEgZ3Vp
bGQsIGNhc3RlLCBvciBvdGhlciBoaWVyYXJjaGljYWwgc29jaWFsIG9yZGVyaW5nIHRoYXQg
dGhleQ0KPiBhcmUgbW9yZSBjb21mb3J0YWJsZSB3aXRoLg0KPiANCj4gSWYgeW91IGNhbid0
IGdldCBhbiBhdXRob3JpdGF0aXZlIGFuc3dlciBmcm9tIGEgcHJpbmNpcGFsIGF1dGhvciBv
ZiB0aGUNCj4gZmFub3RpZnkgQVBJLCBJIHN1Z2dlc3QgcmVhZGluZyB0aGUgdGVybSBhcyAi
ZWZmLUEtbm90aWZ5IjsNCg0KQWhoLCBtYWtlcyBzZW5zZSBub3cuICBJdCBoYWRuJ3Qgb2Nj
dXJlZCB0byBtZSB0aGF0IHRoYXQgd2FzIGEgcG9zc2libGUgDQpwcm9ub3VuY2lhdGlvbi4g
IEFueXdheSwgaXQnbGwgYWx3YXlzIGJlIGZhLW5vdGlmeSBpbiBteSBoZWFkLiAgSSdtIA0K
d2FpdGluZyBmb3Igc29sLW5vdGlmeSwgd2hpY2ggd2lsbCBiZSBwcm9ub3VuY2VkIGV4YWN0
bHkgYXMgZmFub3RpZnksIA0KYnV0IGEgdG9uZSBoaWdoZXIgOkQNCg0KPiB0aGlzIHdpbGwN
Cj4gdGhlbiBiZSBpbXBsaWNpdGx5IGRvY3VtZW50ZWQgYnkgeW91ciBjaG9pY2Ugb2YgdGhl
IGFydGljbGUgImFuIi4NCg0KSSB3YXMgdHJ5aW5nIHRvIGNvbWUgdXAgd2l0aCBwb3NzaWJs
ZSBwcm9ub3VuY2lhdGlvbnMgdGhhdCB3b3VsZCBoYXZlIGEgDQp2b3dlbCBhdCB0aGUgYmVn
aW5pbmcsIGJ1dCB0aGVuIEkgdGhvdWdodDogbm8sIHdobyB3b3VsZCBwcm9ub3VuY2UgdGhp
cyANCmFzIGYtYS1ub3RpZnk/ICBJdCdzIHRvbyBtdWNoIHdvcmshICBIZWghDQoNCj4gIEl0
DQo+IGRvZXNuJ3QgaGF2ZSBhbnl0aGluZyB0byBkbyB3aXRoIGZhbnMgb3IgdGhlIGZvdXJ0
aCBkZWdyZWUgb2YgdGhlIG1ham9yDQo+IHNjYWxlLCBhZnRlciBhbGwuDQoNCkNoZWVycywN
Cg0KQWxleA0KDQpQLlMuOiBQYXRjaCBhcHBsaWVkLg0KDQoNCi0tIA0KQWxlamFuZHJvIENv
bG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------uz9FpW1t7QeAvJ806C77SR0q--

--------------sequPxiH7uI8nMTDZsv0TKh8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMCFsMACgkQnowa+77/
2zJJWQ//cI+yw/kTxOxjwvlqlxqptqfAQ73P8KpDXzzfHMK5W0Bbv/1+iUF8lmel
Av8CjhqDGd4QHP50BAHs9K0N+/rDPs4fcOBbuYoohGgXJrDYsGmLAbtduiHczqc5
mgBLvm4R99lN3ZY4Fg3NuV35oKw3+mukKTiYcHSjOLMifqhIXIno/L5iZ1U7NvLD
eUcOYz0YQdc9puvNTi+EwSe4M2UND5MS4TLeiMfWCTphyYYI6K73urxRtUcTCaGE
0i4nmo1rHBqIIQ6FicRA5Hbbn0k8H+JTiTFGIN4RqtuCy+yyNCr/3HpuduAIFde5
5qDSFGNtUNLz1Bkz8gpotjMRb/LImv+aCdHu/rS1JBYHTA6l1FJeydDox7/UYRkk
Vx8kNpbjCcODd649Fsy67lnP+A12tu/icyRuNpPBRxSmc/IbSlRuBC9nGqhbeKWL
A7o+usiQeF8fx9ThHc/u2hporGqk0WCkad3wWCa3/GBZvOputvFdOp+FyxQrNNpJ
XxBHY/m0n3jLiXX7wiXx46z7eyUVoJX5ColdkIBEv6aFoQ4Q1BMyWsVb01yoEOQv
GNx5ewROVbtnAmUH/W0xzoJSAn3VkDbm9yTrRQewhRrv3Gjgi5LrjbmB7JrSS8BZ
OvABltBWUPe9ad0iEJcD2yhzy5V2vscoq6j6FaTdJ6RvaduJGrI=
=pFQy
-----END PGP SIGNATURE-----

--------------sequPxiH7uI8nMTDZsv0TKh8--
