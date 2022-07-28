Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB5E65848AD
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 01:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233582AbiG1X2p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jul 2022 19:28:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232711AbiG1X2o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jul 2022 19:28:44 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8825D78DD4
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 16:28:43 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id x23-20020a05600c179700b003a30e3e7989so1775275wmo.0
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 16:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=B7ywiNi+kl3mQBmMIvmK7ACAEkRosKPwbuKLtM1sERs=;
        b=lP7NveuvllAOOYh6mulK9ANeBN4XOgxgLxYAdiyydFm5zRQQTWFs6q6FQzQI6PSyX5
         7v2MmfWZX+OfmlR0dJqFAVeSoK+X3O7hg0bYntpDSSdvwBo7vwhTZYVazsrpYCL4qrEO
         aRyC3Dn7//8hsF7XxyCsGMfL6kYs6EA3cwmfqjRViY5+cOl2eqVv5u5MA+rv3iB9mJtt
         KaTPqR950qVoj81bf28i9hDaBxXED5F4yL3ECpRbkpeGUe9ZJ29hbF2pWkh6G4BDx8c7
         jZGkmA+4igxXO3ZbampRK14kM7Zxl/6yWoUfMUm8QFMflM3WlrYfuhn8uMMwmBdKWl9P
         II7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=B7ywiNi+kl3mQBmMIvmK7ACAEkRosKPwbuKLtM1sERs=;
        b=qzOZ09keq7Xpw67BMSy/6k8t2lKpL1UtT827GK7jdN74zqLGS0ZaqGzFSmIYxj2OlW
         /BrPyYzIG6EpOL1WXbYqMw3k+8L+MP5wu6+uoWGo+YnK+rwFwqp1ycygqvhfFrXHMGbW
         EZDIMQUbXBskdp/jS7321QW9cM7fKVAFD9saM3i7uiQz3XP3lcAxEyPKg8hDbx/fyl7Y
         UGTWRAoMoPeIWehs87l0eC3tMW9tMod0OH4U7AtjbEjpYZ2b4mk+9/IDPaZ4VvfoZJo8
         yAymx57HwcThMD8Toif28jRhKRE042uJKhLHKsmVxBPVUs5xujxJr0P0aR+OsA1aDzaz
         KOXQ==
X-Gm-Message-State: AJIora9+QZ3w4dbF+VLyrTIO0Ahiqx3Ck6LgLA4fJeoZsF/xdxY3c98r
        o0beRWBSnVNiNabdAB++2W8=
X-Google-Smtp-Source: AGRyM1svgEVT+1w5eUfQMTquYm61pU4C0fdq0IzRDDa665Gey9vNkeCEUai2dLrBWBuCfj+tVvzM3w==
X-Received: by 2002:a05:600c:40cf:b0:3a3:1fd6:47b7 with SMTP id m15-20020a05600c40cf00b003a31fd647b7mr660721wmh.32.1659050922124;
        Thu, 28 Jul 2022 16:28:42 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u13-20020a05600c19cd00b003a2e1883a27sm8577388wmq.18.2022.07.28.16.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 16:28:41 -0700 (PDT)
Message-ID: <94e9eedb-d2c8-4b89-08bb-007bca6b9d5c@gmail.com>
Date:   Fri, 29 Jul 2022 01:28:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org, groff@gnu.org,
        g.branden.robinson@gmail.com,
        Ralph Corderoy <ralph@inputplus.co.uk>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
 <Yt7loB0u3RgKGiDt@asta-kit.de>
 <7368e5aa-4f26-4623-9f29-7564ff36fde5@gmail.com>
 <YuEYRGc1/KBiIfuw@asta-kit.de>
 <36ff0943-4766-e933-012a-82c9ad611791@gmail.com>
In-Reply-To: <36ff0943-4766-e933-012a-82c9ad611791@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uaodgQ9QBxn5RlE0Zeoywlzj"
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
--------------uaodgQ9QBxn5RlE0Zeoywlzj
Content-Type: multipart/mixed; boundary="------------0vctOVQDGJE7wioopl0LAEPU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org, groff@gnu.org, g.branden.robinson@gmail.com,
 Ralph Corderoy <ralph@inputplus.co.uk>
Message-ID: <94e9eedb-d2c8-4b89-08bb-007bca6b9d5c@gmail.com>
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
 <Yt7loB0u3RgKGiDt@asta-kit.de>
 <7368e5aa-4f26-4623-9f29-7564ff36fde5@gmail.com>
 <YuEYRGc1/KBiIfuw@asta-kit.de>
 <36ff0943-4766-e933-012a-82c9ad611791@gmail.com>
In-Reply-To: <36ff0943-4766-e933-012a-82c9ad611791@gmail.com>

--------------0vctOVQDGJE7wioopl0LAEPU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gNy8yNy8yMiAxNToxMSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6
DQo+Pj4+PiArLlNIIENPTkZPUk1JTkcgVE8NCj4+DQo+Pj4+IFRoYXQgc2hvdWxkIGJlICIu
U0ggU1RBTkRBUkRTIi4NCj4+DQo+Pj4gV2UgdXNlIENPTkZPUk1JTkcgVE8gaW4gTGludXgu
wqAgRG9uJ3Qga25vdyB3aHk7IGp1c3QgaGlzdG9yeSwgSSBndWVzcy4NCj4+PiBTZWUgbWFu
LXBhZ2VzKDcpLg0KPj4NCj4+IFdlaXJkLg0KPj4NCj4+IEkgZmFpbGVkIHRvIGZpbmQgYSBz
aW5nbGUgaW5zdGFuY2Ugb2YgIkNPTkZPUk1JTkcgVE8iIGluIEFUJlQgVU5JWA0KPj4gKGlu
Y2x1ZGluZyB2NiwgUFdCLCB2NywgMzJ2LCB2OCwgdjEwLCBTeXN0ZW0gSUlJLCBTVlIxLCBT
VlIyKSBub3IgaW4NCj4+IGFueSB2ZXJzaW9uIG9mIFVDQiBDU1JHIEJTRC7CoCBTbyBjb25z
aWRlcmluZyB0aGF0IFN5c3RlbSBWIGFuZCBCU0QgYXJlDQo+PiB3aWRlbHkgY29uc2lkZXJl
ZCB0aGUgdHdvIG1haW4gb3JpZ2luYWwgYnJhbmNoZXMgb2YgdGhlIGRldmVsb3BtZW50DQo+
PiBvZiBVbml4LWxpa2Ugb3BlcmF0aW5nIHN5c3RlbXMgYW5kIExpbnV4IGlzIG9mdGVuIGNv
bnNpZGVyZWQgdG8gaGF2ZQ0KPj4gZHJhd24gaW5zcGlyYXRpb24gZnJvbSBib3RoLCB0aGUg
c2VjdGlvbiBuYW1lICJDT05GT1JNSU5HIFRPIiBkb2VzDQo+PiBub3QgYXBwZWFyIHRvIGJl
IGEgVU5JWCB0aGluZy7CoCBGb3IgZXhhbXBsZSwgQWVsZWVuIEZyaXNjaCwgIkVzc2VudGlh
bA0KPj4gU3lzdGVtIEFkbWluaXN0cmF0aW9uIiwgTydSZWlsbHksIENhbWJyaWRnZSAxOTk1
LCBjb25zaWRlcnMgTGludXgNCj4+IGFzIHNsaWdodGx5IG1vcmUgaW5mbHVlbmNlZCBieSA0
LjNCU0QgdGhhbiBieSBTeXN0ZW0gViBSZWxlYXNlIDMuDQo+Pg0KPj4gU1RBTkRBUkRTLCBv
biB0aGUgb3RoZXIgaGFuZCwgaXMgcHJlc2VudCBzaW5jZSA0LjNCU0QtUmVubyAoSnVuZSAx
OTkwKS4NCj4+DQo+PiA0LjNCU0QtUmVubyBwcmVkYXRlcyB0aGUgZmlyc3QgdmVyc2lvbiBv
ZiB0aGUgTGludXgga2VybmVsIGJ5IG1vcmUgdGhhbg0KPj4gYSB5ZWFyLCBhbmQgdGhlIGZp
cnN0IExpbnV4IG1hbnVhbCBwYWdlcyBwcm9iYWJseSBmb3IgbG9uZ2VyIHRoYW4gdGhhdC4N
Cj4+DQo+PiBTbyBpIGhhdmUgbm8gaWRlYSB3aGVyZSAiQ09ORk9STUlORyBUTyIgbWF5IGhh
dmUgY29tZSBmcm9tLg0KPiANCj4gSSBkb24ndCBsaWtlIHRoZSBpZGVhIG9mIGJlaW5nIGlu
Y29uc2lzdGVudCB3aXRoIG90aGVyIFVuaXggc3lzdGVtcyB3aXRoIA0KPiBubyBnb29kIHJl
YXNvbi7CoCAncy9DT05GT1JNSU5HIFRPL1NUQU5EQVJEUy8nIG1pZ2h0IGhhcHBlbiBzb21l
IGRheTsgDQo+IGp1c3Qgc2F5aW5nLg0KDQpJJ3ZlIGFscmVhZHkgY2hhbmdlZCB0aGF0LiAg
SSBkaWRuJ3QgeWV0IHB1c2ggdG8gPGtlcm5lbC5vcmc+LiAgVGhlIA0KcGF0Y2ggaXMgaW4g
bXkgc2VydmVyLCBmb3IgeW91IHRvIGNoZWNrOiANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzL3NyYy9hbHgvbGludXgvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvY29tbWl0
Lz9pZD04YWFjNmY4ZjUxMmU0NmEwMDgxNDBiOTM5NTZiNmM0MTRhYjEzYTA0Pi4gDQogIEl0
IGRpZG4ndCBmaXQgaW4gYW4gZW1haWwgKHRoZSBtYWlsaW5nIGxpc3QgaXMgbGltaXRlZCB0
byAxMDBLQikuDQoNCkknbGwgcHJvYmFibHkgcHVzaCB0b21vcnJvdy4NCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------0vctOVQDGJE7wioopl0LAEPU--

--------------uaodgQ9QBxn5RlE0Zeoywlzj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLjG6AACgkQnowa+77/
2zIo9Q//QNl05JMEJGBHziy2GkiVXhkJt2TThuc+9w9wWQx0T8RvKg5KfKGeiYJV
to06aaNo3xKpHenDAYkxPPadjqtZYLxQnd2/+nwfSIzvVAyb32oIYrMtuXG3D+5s
gEKy3UuTA5tx27EEUYw2XiYsMttdhrJ7mktCJIHwqAm5QwWIeLzKfMLhq0xS/GNE
RDioeESPMJRemHFqhP+TqSZaAAvUec0sDMtH0vGrMsQbOnCvlbPe9kZErPjxut/6
CAv6jAVk0zpks8P/aYKTMyORkLuMTgM3psPfpRYk7o/uGJGKzchh7JrUYJzblFv+
Tj2l+Otr+sBhKJs/VVg9EJEyB/6ozUUlDHTeVk3Yjt4YGIFz7z6x+53qr6U9sfYO
F5kZZT6QtrdOyG2w+YNyHfI7ixLJ9G0Pr+qAmuugcouVjbTZLEpTUTzB7/PBz5FR
wF4CItJ60cJVi6MgxaaHscp6zN7GAT581F9SXHMw8ryskRiMB1nw41Jogo2zVp4q
lp4vTgKCFUVVTkQxguJXvhvbSI+wEj2ARki9wAX/uLDUrEgM6Nx7rLwlq590b+uU
FBKaRhcxA6NKNuOnHGfj9QLpPKn7RyoeJ7IxVw5Fch36Z3rshc4CfikXxNP1jOK9
1K9xL8cl2AAMK+NfUrlr5QUW51rE+br/IJT9iA6zxs30hN0gHck=
=mq4l
-----END PGP SIGNATURE-----

--------------uaodgQ9QBxn5RlE0Zeoywlzj--
