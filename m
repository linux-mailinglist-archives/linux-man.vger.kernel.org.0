Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6F674BE8C
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 19:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbjGHRLh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 13:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHRLg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 13:11:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DC37191
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 10:11:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DE17360A27
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 17:11:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 136C5C433C7;
        Sat,  8 Jul 2023 17:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688836294;
        bh=O8AeUEtIu+UPzyNa4vm8luAr3q2NZaTFyY1wa9mXW7Q=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=USapzuleN4u95LwcJbH7r2pWJHNvH2hTkFi8hKrMpRD3cPi774RkPKiN/+Mi7shRc
         teP+v05vQkDpH0B/cd7ztnqu68hfPwz2MYeSyHP+Wp1O2pFVO3gwsVlUQm0JLolD2k
         tnAz6UqYqA+CK4Y/sCFJXOicUKiUX0vqxE6qK3ebmRncyhr1+wHzBuu6FrzWNo6Zi6
         dprLgwm5pTSc0xOxePv3bWrHJH/DIC7P41PWGEv5HnNJ0Cm85N8kqoIVAXO5McjcOx
         nj4KR1iawtQKLkt2rQD1g9d4fEsYYScgsnOByaxXccgIoHy1eOl6NO5JXLdYt47rG/
         6abRfkFvKvWGw==
Message-ID: <c79b5d7e-540a-ce0a-2ee7-ce5fdde6947c@kernel.org>
Date:   Sat, 8 Jul 2023 19:11:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
 <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
 <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HG24URS7xRD83q7Teg3m3yqX"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------HG24URS7xRD83q7Teg3m3yqX
Content-Type: multipart/mixed; boundary="------------4aLR0BuIw2TrkG4Bn0lUFD10";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Tom Schwindl <schwindl@posteo.de>, =?UTF-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <c79b5d7e-540a-ce0a-2ee7-ce5fdde6947c@kernel.org>
Subject: Re: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
 <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
 <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
In-Reply-To: <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>

--------------4aLR0BuIw2TrkG4Bn0lUFD10
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDcvNS8yMyAxNTo1NywgVG9tIFNjaHdpbmRsIHdyb3RlOg0KPiBPbiBTYXQg
SnVuIDI0LCAyMDIzIGF0IDI6MzkgQU0gQ0VTVCwg0L3QsNCxIHdyb3RlOg0KPj4gUXVvdGlu
ZyBteXNlbGYgZnJvbSAjbXVzbDoNCj4+IDAxOjU5OjQwIGhtLCBJIHRoaW5rIHRoaXMgd2Fz
IGp1c3QgaW52ZW50ZWQgZm9yIHN5bW1ldHJ5IHdpdGggYmZyZWUvYmF2YWlsDQo+PiAwMjow
MDo0NiBGRlMgaGFzIG1pbmZyZWUgZm9yIHNwYWNlIGJ1dCBub3RoaW5nIGVxdWl2YWxlbnQg
Zm9yIGlub2Rlcw0KPj4gMDI6MzI6MzEgKHRoaXMgaXMgbWlycm9yZWQgaW4gZXh0NDsNCj4+
IAkgIGEgZ2xvYmFsIGdyZXAgb3ZlciBEcmFnb25GbHlCU0QgYW5kIHRoZSBpbGx1bW9zIGdh
dGUNCj4+IAkgIHNob3dlZCBqdXN0IE5GU3YzIGZvcndhcmRpbmcgZnJvbSB0aGUgc2VydmVy
Ow0KPj4gCSAgT3BlbkJTRCBhbHdheXMgc2V0cyBpdCB0byB0aGUgc2FtZSB0aGluZyBhcyBm
X2ZmcmVlOw0KPj4gCSAgb2RkbHksIE5ldEJTRCAvZG9lcy8gY2FsY3VsYXRlIGl0IGRpZmZl
cmVudGx5DQo+PiAJICBmb3IgTEZTIGFuZCBGRlMgYnV0IGR1ZSB0byBxdWV1ZWQgd3JpdGVz
IG9yDQo+PiAJICB3L2Ugbm90IGJlY2F1c2Ugb2Ygcm9vdCByZXNlcnZhdGlvbjsNCj4+IAkg
IGFuZCBhcyBleHBlY3RlZCBhIGxvdCBvZiAiLyogd2hhdCB0byBwdXQgaW4gaGVyZT8gKi8i
DQo+PiAJICAgICAgICAgICAgICAgICAgICAgICBhbmQgIi8vIFhYWCBzYW1lPz8iKQ0KPj4N
Cj4+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1hbi9mNTRrdWRnYmxn
azY0M3UzMnRiNmF0NGNkM2tremhhNmhzbGFodjI0c3pzNHJhcm9hekBvZ2l2amJmZGFxdGIv
dC8jdQ0KPj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6
bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCj4+IC0tLQ0KPj4gICBtYW4zL3N0YXR2ZnMu
MyB8IDggKysrKysrKysNCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0K
Pj4NCj4+IGRpZmYgLS1naXQgYS9tYW4zL3N0YXR2ZnMuMyBiL21hbjMvc3RhdHZmcy4zDQo+
PiBpbmRleCBiMWYwZTc1NDUuLjI3MmVlNTM5MSAxMDA2NDQNCj4+IC0tLSBhL21hbjMvc3Rh
dHZmcy4zDQo+PiArKysgYi9tYW4zL3N0YXR2ZnMuMw0KPj4gQEAgLTIyNyw2ICsyMjcsMTQg
QEAgLlNIIE5PVEVTDQo+PiAgIC5CUiBzdGF0dmZzICgpDQo+PiAgIHdpdGggdGhlIGFyZ3Vt
ZW50DQo+PiAgIC5JUiBwYXRoIC4NCj4+ICsuUFANCj4+ICtVbmRlciBMaW51eCwNCj4+ICsu
SSBmX2ZhdmFpbA0KPj4gK2lzIGFsd2F5cyB0aGUgc2FtZSBhcw0KPj4gKy5JUiBmX2ZmcmVl
ICwNCj4+ICthbmQgdGhlcmUncyBubyB3YXkgZm9yIGEgZmlsZS1zeXN0ZW0gdG8gcmVwb3J0
IG90aGVyd2lzZS4NCj4gDQo+IHMvZmlsZS1zeXN0ZW0vZmlsZXN5c3RlbS8gYXMgdGhhdCdz
IHdoYXQncyB1c2VkIGVsc2V3aGVyZS4NCg0KVG9tIHNlZW1zIHRvIGJlIHJpZ2h0LiAgU2Vl
IG1hbi1wYWdlcyg3KToNCg0KICAgIFByZWZlcnJlZCB0ZXJtcw0KICAgICAgICBUaGUgIGZv
bGxvd2luZyB0YWJsZSBsaXN0cyBzb21lIHByZWZlcnJlZCB0ZXJtcyB0byB1c2UgaW4NCiAg
ICAgICAgbWFuIHBhZ2VzLCBtYWlubHkgdG8gZW5zdXJlIGNvbnNpc3RlbmN5IGFjcm9zcyBw
YWdlcy4NCiAgICAgICAgVGVybSAgICAgICAgICAgICAgICAgQXZvaWQgdXNpbmcgICAgICAg
ICAgICAgIE5vdGVzDQogICAgICAgIOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgA0KICAgICAgICBi
aXQgbWFzayAgICAgICAgICAgICBiaXRtYXNrDQogICAgICAgIGJ1aWx04oCQaW4gICAgICAg
ICAgICAgYnVpbHRpbg0KICAgICAgICBFcG9jaCAgICAgICAgICAgICAgICBlcG9jaCAgICAg
ICAgICAgICAgICAgICAgRm9yIHRoZSBVTklYDQogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBFcG9jaA0KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKDAwOjAwOjAwLCAxDQogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBKYW4g
MTk3MCBVVEMpDQogICAgICAgIGZpbGVuYW1lICAgICAgICAgICAgIGZpbGUgbmFtZQ0KICAg
ICAgICBmaWxlc3lzdGVtICAgICAgICAgICBmaWxlIHN5c3RlbQ0KICAgICAgICBob3N0bmFt
ZSAgICAgICAgICAgICBob3N0IG5hbWUNCiAgICAgICAgaW5vZGUgICAgICAgICAgICAgICAg
aeKAkG5vZGUNCg0KQ2hlZXJzLA0KQWxleA0KDQo+IA0KPj4gK1RoaXMgaXMgbm90IGFuIGlz
c3VlLCBzaW5jZSBubyBmaWxlc3lzdGVtcyB3aXRoIGFuIGktbm9kZQ0KPj4gK3Jvb3QgcmVz
ZXJ2YXRpb24gZXhpc3QuDQo+IA0KPiBzL2ktbm9kZS9pbm9kZS8gZm9yIHRoZSBzYW1lIHJl
YXNvbi4NCj4gDQo+PiAgIC5TSCBTVEFOREFSRFMNCj4+ICAgUE9TSVguMS0yMDA4Lg0KPj4g
ICAuU0ggSElTVE9SWQ0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhE
NTc2MzNENDQxRTI1QkI1DQoNCg==

--------------4aLR0BuIw2TrkG4Bn0lUFD10--

--------------HG24URS7xRD83q7Teg3m3yqX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpmMIACgkQnowa+77/
2zK0tA/9HSow7tNetHK93Q/F+Ef+sL9oai+jx7IrEkBNC9jv+bONjVA2U47Qpj0K
EHSPkGmXZowOyS5pz59U3StnfTKfft9/ImPxI3dCE/kcEwHfJwK5eUiG5VKbe0pA
kT+D0nMC9zQI3fgRhRgSP2zX3dGzjySFkCp9G4qifuduZzs3zHmgcWZX0+vx0apa
xKgFzTzIWd8VmpFE9Ij3CNAF5I/PBOkbDL9C0Zw3IQAhLsrRnq0YWzSfAGH4Nmdc
YC53JiIqjv3PWIolcQFX+fMCgqLrR/beU4+2psh73LlL3M2PC9+6xNik5Y1p1AIU
yOGWTSg76f2/A8G7Ecjyk5ayciiTkQTzPTvxLHTswdXXPjK87khO7kQchsoxx3rL
5k33/fSMB40kxa04wYuItd9Qf2dhUB0CLYRG/fUKNF+N0bZpnWLwGS1TIRBK3ZFs
238KRBxUGajQ8TBJ+l5CjgIKA/EiQg9atXyvUNrkwwP/q4Wzg89cywWhO4iS8suG
4uupNf5uPPtNTSZ8dfe0WekAp7NP2ma0pEBHpmpe/zaDn2a+5foSbvXh08XSG0ht
SfrM9gg08dJ4BydBRd8YfPv+2xGsIWVwt7fDWuurw5gBjThJNNTwMLcP3v+P2I1P
MABeqLFkN8hL6dIoNa2QyW0urN4s66FyD/11CpeQ3asn5ccjljM=
=mYcC
-----END PGP SIGNATURE-----

--------------HG24URS7xRD83q7Teg3m3yqX--
