Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65B8D74BE51
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 17:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbjGHPzH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 11:55:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjGHPzG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 11:55:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9881120
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 08:55:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3263360CA5
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 15:55:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F57C433C8;
        Sat,  8 Jul 2023 15:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688831704;
        bh=KuJY/3szcYU9/6XKqcc+HfSDrf1TJeqY0O4mutuDl2w=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Kzd8pMeaz/Ikp20btN7v6crLVxoq5smKhqt/kt6pnRppTnJurE5HdwkFRwBpgBxYr
         gQpmQ9iTc7vRmWx8Z8q6Tkk5h7AkXirh48dMaA+h0j4odg1ssTLnB/C4FJLwqlpJpI
         6DouhqqLfRRwswASmpVtvW+GO2RjLeyikbt/CJZMZp537ajgoXVEkiOj0oxBiGuKsb
         V7MZ4x1aI5q5zYJLns1Tzr4iF0X0dZChw8XnVs3tMB7RlYvF/Yo2pOFSu5uGglQ56G
         hxKoS5OVuFPd6co0dqnlLo0E2xX9cwtbXBV5pHA3bbKTU+0cMjWdubjrl80Krfh4Cj
         hwWq+s2rwqHoQ==
Message-ID: <885059d5-7b95-8468-01a3-0264e0da1288@kernel.org>
Date:   Sat, 8 Jul 2023 17:54:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] grantpt.3: no-op on modern glibc and other UNIXes
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <s55h3vx7kapgrkczmyenyijo5munjjpzpmvxmtea5zlamnjqqx@toofqdlalwzl>
 <tphi327wxuem5xjzwf7u5tv5qekpb2a6cm5hczndq4urp2wp32@xgyidtmglbny>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <tphi327wxuem5xjzwf7u5tv5qekpb2a6cm5hczndq4urp2wp32@xgyidtmglbny>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VxppyGGyDjQHUgqSlwQ8Tg1k"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VxppyGGyDjQHUgqSlwQ8Tg1k
Content-Type: multipart/mixed; boundary="------------p3zP42XieF150x6LfwMKHkla";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Message-ID: <885059d5-7b95-8468-01a3-0264e0da1288@kernel.org>
Subject: Re: [PATCH v2] grantpt.3: no-op on modern glibc and other UNIXes
References: <s55h3vx7kapgrkczmyenyijo5munjjpzpmvxmtea5zlamnjqqx@toofqdlalwzl>
 <tphi327wxuem5xjzwf7u5tv5qekpb2a6cm5hczndq4urp2wp32@xgyidtmglbny>
In-Reply-To: <tphi327wxuem5xjzwf7u5tv5qekpb2a6cm5hczndq4urp2wp32@xgyidtmglbny>

--------------p3zP42XieF150x6LfwMKHkla
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDYvMjAvMjMgMDA6MTEsINC90LDQsSB3cm90ZToNCj4gRnJlZUJTRCwgT3Bl
bkJTRCwgYW5kIExpbnV4ICgvZGV2L3B0bXgpIGRvIGFsbCBpbnRpYWxpc2F0aW9uIGluIG9w
ZW4sDQo+IGFuZCBncmFudHB0KCkgaXMgYSBuby1vcCAodGhhdCBjaGVja3Mgd2hldGhlciB0
aGUgZmQgaXMgYSBwdHksIGV4Y2VwdCBvbg0KPiBtdXNsKS4NCj4gDQo+IFRoZSBpbGx1bW9z
IGdhdGUgYW5kIE5ldEJTRCBkbyBhIGlvY3RsIChhbmQsIGluZGVlZCwgaWxsdW1vcy1nYXRl
IGNvbW1pdA0KPiAgIGZhY2Y0YThkN2I1OWZkZTg5YTg2NjJiNGY0YzczYTc1OGU2YzQwMmMg
KCJQU0FSQy8yMDAzLzI0NiBGaWxlc3lzdGVtDQo+ICAgIERyaXZlbiBEZXZpY2UgTmFtaW5n
IiksIHdoaWNoIGtpbGxzIHB0X2NobW9kLCBub3RlcyB0aGF0IGl0J3MgYmVlbg0KPiAgICAg
IDY0NjQxOTYgYmZ1IHNob3VsZCByZW1vdmUgcHRfY2htb2QsIG9ic29sZXRlZCBieSAvZGV2
IGZpbGVzeXN0ZW0pLg0KPiANCj4gZ2xpYmMgMi4zMyBjb21wbGV0ZWx5IGtpbGxzIEJTRCBQ
VFkgc3VwcG9ydCBvbiBMaW51eA0KPiAoRGViaWFuIGhhc24ndCBjb25maWd1cmVkIHdpdGgg
dGhlbSBvbiBhbnkgYXJjaGl0ZWN0dXJlIHNpbmNlIDIwMDc6DQo+ICAgICBodHRwczovL2J1
Z3MuZGViaWFuLm9yZy8zMzg0MDQNCj4gICBhbmQgZXZlbiBlYXJsaWVyIG9uIHNvbWUgYXJj
aGVzOyB0aGV5J3JlIHJlYWxseSBhbGwgYnV0IHRyaXZpYSB1bmRlcg0KDQp0cml2aWEgb3Ig
dHJpdmlhbD8NCg0KPiAgIExpbnV4IOKAkiB0aGlzIG1heSBiZSBiZXR0ZXIgc2VydmVkIHN0
dWZmZWQgaW50byBISVNUT1JZIGFzIGFuIGV4cGxhaW5lcg0KPiAgIGZvciB0aGUgU0lHQ0hM
RCB0aGluZywgc2luY2UgcmVnYXJkbGVzcyBvZiB0aGUgInZlcnNpb24iLCB0aGUgYmVoYXZp
b3VyDQo+ICAgaXMgd2VsbC1kZWZpbmVkIGFuZCBjb25zaXN0ZW50KS4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFj
emxld2VsaS54eXo+DQoNClBsZWFzZSBhZGQgSmFrdWIuDQoNCj4gLS0tDQo+IEhlaCwgeWVh
aC4gV2hpbGUgd3JpdGluZyBJIHJlYWQgdGhpcyBhcyAib3IgYSBiciBpb2N0bCIgc28gSSBk
aWRuJ3QNCj4gbm90aWNlLg0KDQpIZWgsIHlvdSdsbCBzb29uIHJlYWQgIm9yIGEgbXIgaW9j
dGwiLiAgSG91bmRzIGRvIGJlIHJlbGVhc2VkLg0KDQo+IA0KPiAgIG1hbjMvZ3JhbnRwdC4z
IHwgMTggKysrKysrKystLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9ncmFu
dHB0LjMgYi9tYW4zL2dyYW50cHQuMw0KPiBpbmRleCBhMTkxNzJhM2UuLmUzZDRlNGFhYSAx
MDA2NDQNCj4gLS0tIGEvbWFuMy9ncmFudHB0LjMNCj4gKysrIGIvbWFuMy9ncmFudHB0LjMN
Cj4gQEAgLTg0LDE3ICs4NCwxNSBAQCAuU0ggQVRUUklCVVRFUw0KPiAgIC5hZA0KPiAgIC5z
cCAxDQo+ICAgLlNIIFZFUlNJT05TDQo+IC1NYW55IHN5c3RlbXMgaW1wbGVtZW50IHRoaXMg
ZnVuY3Rpb24gdmlhIGEgc2V0LXVzZXItSUQgaGVscGVyIGJpbmFyeQ0KPiArSGlzdG9yaWNh
bCBzeXN0ZW1zIGltcGxlbWVudGVkIHRoaXMgZnVuY3Rpb24gdmlhIGEgc2V0LXVzZXItSUQg
aGVscGVyIGJpbmFyeQ0KPiAgIGNhbGxlZCAicHRfY2hvd24iLg0KPiAtT24gTGludXggc3lz
dGVtcyB3aXRoIGEgZGV2cHRzIGZpbGVzeXN0ZW0gKHByZXNlbnQgc2luY2UgTGludXggMi4y
KSwNCj4gLXRoZSBrZXJuZWwgbm9ybWFsbHkgc2V0cyB0aGUgY29ycmVjdCBvd25lcnNoaXAg
YW5kIHBlcm1pc3Npb25zDQo+IC1mb3IgdGhlIHBzZXVkb3Rlcm1pbmFsIHNsYXZlIHdoZW4g
dGhlIG1hc3RlciBpcyBvcGVuZWQNCj4gLS5SQiAoIHBvc2l4X29wZW5wdCAoMykpLA0KPiAt
c28gdGhhdCBub3RoaW5nIG11c3QgYmUgZG9uZSBieQ0KPiAtLkJSIGdyYW50cHQgKCkuDQo+
IC1UaHVzLCBubyBzdWNoIGhlbHBlciBiaW5hcnkgaXMgcmVxdWlyZWQNCj4gLShhbmQgaW5k
ZWVkIGl0IGlzIGNvbmZpZ3VyZWQgdG8gYmUgYWJzZW50IGR1cmluZyB0aGUNCj4gLWdsaWJj
IGJ1aWxkIHRoYXQgaXMgdHlwaWNhbCBvbiBtYW55IHN5c3RlbXMpLg0KPiArZ2xpYmMgb24g
TGludXggYmVmb3JlIDIuMzMgY291bGQgZG8gc28gYXMgd2VsbCwNCg0KVGhpcyBjYW4gYmUg
Y29uZnVzaW5nOiAgTGludXggMi4zMywgb3IgZ2xpYmMgMi4zMz8NCkFzIGEgc29sdXRpb24s
IEkgZGVjaWRlZCB0byBhbHdheXMgcHJlZml4IHRoZSB2ZXJzaW9uIHdpdGggdGhlIHNvZnR3
YXJlDQpuYW1lLCBldmVuIGlmIGl0IGZlbHQgYSBiaXQgcmVkdW5kYW50IHNvbWV0aW1lcy4N
Cg0KPiAraW4gb3JkZXIgdG8gc3VwcG9ydCBjb25maWd1cmF0aW9ucyB3aXRoIG9ubHkgQlNE
IHBzZXVkb3Rlcm1pbmFsczsNCj4gK3RoaXMgc3VwcG9ydCBoYXMgYmVlbiByZW1vdmVkLg0K
PiArT24gbW9kZXJuIHN5c3RlbXMgdGhpcyBpcyBlaXRoZXIgYSBuby1vcFxbZW1dd2l0aA0K
DQpcW2VtXSBjbGVhcmx5IGJyZWFrcy9pbnRlcnJ1cHRzIGEgY2xhdXNlIG9yIHBocmFzZS4N
ClNlbWFudGljIG5ld2xpbmVzIHNob3VsZCBhcHBseSBoZXJlIC0tSSBndWVzcyB0aGF0IHlv
dSBwcm9iYWJseSBwdXQgdGhlDQp0d28gd29yZHMgdG9nZXRoZXIgdG8gbm90IGFkZCBhbiBl
eHRyYSBzcGFjZSwgYnV0IEkgZG8gbGlrZSB0aGF0IHNwYWNlDQooYW5kIEkga25vdyB0aGlz
IG1heSBiZSBjb250cm92ZXJzaWFsKS0tLg0KDQpDaGVlcnMsDQpBbGV4DQoNCj4gK3Blcm1p
c3Npb25zIGNvbmZpZ3VyZWQgb24gcHR5IGFsbG9jYXRpb24sDQo+ICthcyBpcyB0aGUgY2Fz
ZSBvbiBMaW51eFxbZW1db3IgYW4NCj4gKy5CUiBpb2N0bCAoMikuDQo+ICAgLlNIIFNUQU5E
QVJEUw0KPiAgIFBPU0lYLjEtMjAwOC4NCj4gICAuU0ggSElTVE9SWQ0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5
MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------p3zP42XieF150x6LfwMKHkla--

--------------VxppyGGyDjQHUgqSlwQ8Tg1k
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSphsIACgkQnowa+77/
2zIyUA//XuXJPvrIl3pqXmN3zNCENkzrLGA52JVUERSsrSN6OPNTNi50ZYBAgNj6
wakZ3zNsziOkXCfDzirgIXdOckKuFB0DigNjL1JxI/x7A4Kff90D0lgZxbsjFxHh
rkA9gRClKIgB+YGrJiHJnoYHEX9F6u534XuSMWrd+POQAhOfnnb75pef5aqnYw7b
YjxmucyilXJEZywcE7ViX87w+mKslat0SdO1l1v555fTz6wQ0deM7wkVAKCyoID/
p3dZovmaxyuv0MwB5uOxQxtPdl324KjJzkXWXxqtKO6NN/HAewy4Ov6NaW1gv+w2
SrQtNyZBiZZ2TJZz1ARZ2hqlMEmxyhBx9g81/IJq+6zGQA4jWgiTA9Th058t5Q7B
1/XlTkllLoPu9lJbsidszUKFYCJltpaJCU0j6R2Rj4ec13UCW90mZuxXPUKg2HjW
HuhV3Vv4irB2v9o9aZWQ8VpHchmB1i90kB8o2CdQ5e4ViHosSWYTTr9ccf9iYWmu
MuI+dIXR965ES8Idu5ciMsfaAZJERwmyQ9XIXGrxxJXiaqMJd35aRtlD+eSLJ7jz
IAmR0NMg21pi0OjoFt6dxuNKa4ACRmA8XswGfrWmaqCWHmcES9YU9aXR8l/QHjoB
GYb5hVn/IXXWa2XclA5WbRhf1bAwn1h2ctdtsNJkPdsrml0pU4w=
=EEyF
-----END PGP SIGNATURE-----

--------------VxppyGGyDjQHUgqSlwQ8Tg1k--
