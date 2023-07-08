Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED3B374BE63
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbjGHQJO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:09:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjGHQJO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:09:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 283A5125
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:09:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4E8D560D54
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:09:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD7F1C433C7;
        Sat,  8 Jul 2023 16:09:09 +0000 (UTC)
Message-ID: <47742448-b1f5-4e22-1a2a-3a782e18afa9@gmail.com>
Date:   Sat, 8 Jul 2023 18:09:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] poll.2: explicitly say what happens for regular files &c.
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <h2mlruw5d63kkzfd7277qhqc6izaq32fuwxiuk5q3k3j55lul7@jowskzwxe3mf>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <h2mlruw5d63kkzfd7277qhqc6izaq32fuwxiuk5q3k3j55lul7@jowskzwxe3mf>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7g0cv4sDva0TNggP1GfCDLZM"
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,NML_ADSP_CUSTOM_MED,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7g0cv4sDva0TNggP1GfCDLZM
Content-Type: multipart/mixed; boundary="------------ik00Y1YmxHkfpTxwYJIRnpSz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <47742448-b1f5-4e22-1a2a-3a782e18afa9@gmail.com>
Subject: Re: [PATCH] poll.2: explicitly say what happens for regular files &c.
References: <h2mlruw5d63kkzfd7277qhqc6izaq32fuwxiuk5q3k3j55lul7@jowskzwxe3mf>
In-Reply-To: <h2mlruw5d63kkzfd7277qhqc6izaq32fuwxiuk5q3k3j55lul7@jowskzwxe3mf>

--------------ik00Y1YmxHkfpTxwYJIRnpSz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8yNC8yMyAxNDoxMywg0L3QsNCxIHdyb3RlOg0KPiBOYWl2ZWx5LCBvbmUgbWF5IGNv
bnNpZGVyIGJlaW5nICJyZWFkeSIgdG8gbWVhbiwgZm9yIGV4YW1wbGUsDQo+ICAgIGxzZWVr
KDAsIDAsIFNFRUtfRU5EKTsgcG9sbCh7LmZkID0gMCwgLmV2ZW50cyA9IFBPTExJTn0sIDAp
Ow0KPiB0byBiZSBhYmxlIHRvIHNheSB3aGV0aGVyIG5ldyBkYXRhIGhhcyBhcHBlYXJlZCBh
dCB0aGUgZW5kIG9mIHRoZSBmaWxlLg0KPiANCj4gVGhpcyBpcyBub3QgdGhlIGNhc2UsIGFu
ZCBwb2xsKCkgaXMgb25seSBtZWFuaW5nZnVsIGFzDQo+ICJ3aWxsIGEgcmVhZCBvciBhIHdy
aXRlIHNsZWVwIjogcmVndWxhciBmaWxlcyBhbmQgYmxvY2sgZGV2aWNlcyBhcmUNCj4gYWx3
YXlzIHJlYWR5IHRvIHJldHVybiBhbiBlbXB0eSByZWFkIGluIHRoaXMgY2FzZSwgZm9yIGV4
YW1wbGUsDQo+IGFuZCB5b3UgbmVlZCB0byB1c2UgaW5vdGlmeSB0byBhY2hpZXZlIHRoaXMu
DQo+IA0KPiBVbmRlciBMaW51eCB0aGlzIGlzIGdvdmVybmVkIGJ5IERFRkFVTFRfUE9MTE1B
U0sNCj4gICAgKEVQT0xMSU4gfCBFUE9MTE9VVCB8IEVQT0xMUkROT1JNIHwgRVBPTExXUk5P
Uk0pDQo+IGJlaW5nIHJldHVybmVkIGlmIG5vIGV4cGxpY2l0IHBvbGwgb3BlcmF0aW9uIGlz
IGRlZmluZWQgZm9yIHRoZSBmaWxlLg0KPiANCj4gQXMgY29udHJhc3QsIHVucG9sbGFibGVz
IGxpa2UgdGhlIGFib3ZlIGFyZSByZWZ1c2VkIGJ5IGVwb2xsX2N0bChBREQpLg0KPiANCj4g
SSBleHBsaWNpdGx5IGhpdCB0aGUgdHdvIGtleXdvcmRzIEkgc2VhcmNoZWQgZm9yIChyZWd1
bGFyLCBibG9jaykNCj4gYmVmb3JlIGp1c3Qgd3JpdGluZyBhIHRlc3QgcHJvZ3JhbSB0byBj
b25maXJtIHRoYXQgcG9sbCgpIGJlaGF2ZWQgYXMNCj4gZXhwZWN0ZWQgYW5kIGlzIG5vdCBh
IGdvb2QgZml0IGZvciBteSB1c2UtY2FzZS4NCj4gDQo+IFRoaXMgYmVoYXZpb3VyIGlzIGd1
YXJhbnRlZWQgYnkgUE9TSVggKElzc3VlIDggRHJhZnQgMyk6DQo+IDUxMzgxICBUaGUgcG9s
bCggKSBhbmQgcHBvbGwoICkgZnVuY3Rpb25zIHNoYWxsIHN1cHBvcnQgcmVndWxhciBmaWxl
cywgdGVybWluYWwgYW5kIHBzZXVkby10ZXJtaW5hbA0KPiA1MTM4MiAgZGV2aWNlcywgRklG
T3MsIHBpcGVzLCBhbmQgc29ja2V0cy4gVGhlIGJlaGF2aW9yIG9mIHBvbGwoICkgYW5kIHBw
b2xsKCApIG9uIGVsZW1lbnRzIG9mIGZkcyB0aGF0IHJlZmVyDQo+IDUxMzgzICB0byBvdGhl
ciB0eXBlcyBvZiBmaWxlIGlzIHVuc3BlY2lmaWVkLg0KPiANCj4gNTEzODQgIFJlZ3VsYXIg
ZmlsZXMgc2hhbGwgYWx3YXlzIHBvbGwgVFJVRSBmb3IgcmVhZGluZyBhbmQgd3JpdGluZy4N
Cj4gDQo+IDUxMzg1ICBBIGZpbGUgZGVzY3JpcHRvciBmb3IgYSBzb2NrZXQgdGhhdCBpcyBs
aXN0ZW5pbmcgZm9yIGNvbm5lY3Rpb25zIHNoYWxsIGluZGljYXRlIHRoYXQgaXQgaXMgcmVh
ZHkgZm9yDQo+IDUxMzg2ICByZWFkaW5nLCBvbmNlIGNvbm5lY3Rpb25zIGFyZSBhdmFpbGFi
bGUuIEEgZmlsZSBkZXNjcmlwdG9yIGZvciBhIHNvY2tldCB0aGF0IGlzIGNvbm5lY3RpbmcN
Cj4gNTEzODcgIGFzeW5jaHJvbm91c2x5IHNoYWxsIGluZGljYXRlIHRoYXQgaXQgaXMgcmVh
ZHkgZm9yIHdyaXRpbmcsIG9uY2UgYSBjb25uZWN0aW9uIGhhcyBiZWVuIGVzdGFibGlzaGVk
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6
bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCg0KUGF0Y2ggYXBwbGllZC4gIFRoYW5rcywN
CkFsZXgNCg0KPiAtLS0NCj4gICBtYW4yL3BvbGwuMiB8IDcgKysrKysrKw0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL3Bv
bGwuMiBiL21hbjIvcG9sbC4yDQo+IGluZGV4IDBiODM0MzA2YS4uYzI5ODJhMjQzIDEwMDY0
NA0KPiAtLS0gYS9tYW4yL3BvbGwuMg0KPiArKysgYi9tYW4yL3BvbGwuMg0KPiBAQCAtMTIz
LDYgKzEyMywxMyBAQCAuU0ggREVTQ1JJUFRJT04NCj4gICAuSVAgXFtidV0NCj4gICB0aGUg
dGltZW91dCBleHBpcmVzLg0KPiAgIC5QUA0KPiArQmVpbmcgInJlYWR5IiBtZWFucyB0aGF0
IHRoZSByZXF1ZXN0ZWQgb3BlcmF0aW9uIHdpbGwgbm90IGJsb2NrOyB0aHVzLA0KPiArLkJS
IHBvbGwgKClpbmcNCj4gK3JlZ3VsYXIgZmlsZXMsIGJsb2NrIGRldmljZXMsIGFuZCBvdGhl
ciBmaWxlcyB3aXRoIG5vIHJlYXNvbmFibGUNCj4gK3BvbGxpbmcgc2VtYW50aWMNCj4gKy5J
IGFsd2F5cw0KPiArcmV0dXJucyBpbnN0YW50bHkgYXMgcmVhZHkgdG8gcmVhZCBhbmQgd3Jp
dGUuDQo+ICsuUFANCj4gICBOb3RlIHRoYXQgdGhlDQo+ICAgLkkgdGltZW91dA0KPiAgIGlu
dGVydmFsIHdpbGwgYmUgcm91bmRlZCB1cCB0byB0aGUgc3lzdGVtIGNsb2NrIGdyYW51bGFy
aXR5LA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBr
ZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVC
QjUNCg0K

--------------ik00Y1YmxHkfpTxwYJIRnpSz--

--------------7g0cv4sDva0TNggP1GfCDLZM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpiiMACgkQnowa+77/
2zKfzQ//WgC/B9lTjjyHzAoytTwWfz/+e/rvXzOURZAIxmlwuFLOasGwD5QetPss
PpNqUGdMWlw2qVqdC6V7IrO+nF7A4Q/QqQooOkXARYUFuUEx4H43TGfJ4onIK1zi
0jm2VNWfhr4t3OYQ2JmqbK+S/q8W50ritUp21VoZJ0xetQxZxzYZxh7DetQkw7q+
01yTfoXYnvhwW72hVf8NFbCfHOdh08Ry83xVC8sGxqeI2iupCJdFdvy5EOgOeb0M
FLUaoPPAGEu9i0R10Z03T/0m/8teH8K33YqLbmloPN1i3aZ7Pm9bcJrmVGhrW0DR
pUiJIxsL0FuydTb1Vr88VOvT0BqY64jE4xcMkwQJoOGv/889BF1LYTeoQ6b9EiL0
kkYZo7V1pwjFSB5FglW4/UtdtmgHSltgBLTRVvgjyl5cRqs3cwNRJQvJt8P1UxHK
JZPolYMugdPNGnku4a02M4hVwAwPxFKTy+Y3KmaPUg84xj1k/JJvJ3p6zt5u8vjL
St/2Rvw0+YQJoqHq4ZUwkCw83B4toK/GsKrD4fnO0fJo01HGoM04glGayxpNeTw8
0zwwgHs1lWkUyinU7bAH0LwoGOQGAlxvZMlN2Q6NRc4/v1mFoXUOJihK8XlMLLRs
Y9rW+Hc15cmZcpNBvHpSiMq+8Al/5wAf3LJOY2M1yzNmZx6ltS4=
=am7q
-----END PGP SIGNATURE-----

--------------7g0cv4sDva0TNggP1GfCDLZM--
