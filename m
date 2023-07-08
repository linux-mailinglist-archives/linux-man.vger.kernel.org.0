Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66FD774BE6C
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:22:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbjGHQWH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:22:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjGHQWG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:22:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1A2DF
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:22:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 473C660D3E
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC41EC433C8;
        Sat,  8 Jul 2023 16:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688833324;
        bh=Irp0Xdyzj2yaB+C99e3xjeF9CKqfBkX85UOVu5HI9E8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fGWFD+FurBky28BvdF8VLSRgBx4LL3T2jwRvm1qpMavh8xndNDuyalN65mBlt0p6J
         eAbotd2cCnw0RXc7CzboqPRV7RVSugDBy0195jfk2bUmSFH4+YJTHJ8/rFEwmUjcIL
         i71Io+s7TYWhXvBwI9l4SrDPYQB70MVuQrjUMgCVJwKmV4AGCHx3WP4GsT3H23Hn6x
         q2ZIKxcbFSA4IhqDpw1Gvy9afEia/T1cVP2CI8+754LkqUMnGXJiPWUknxlY0mG1o8
         78DN8MM+9LrEfOSeWPifk03rIkqvxXQOzqqTxwsM89pVwqz7GAEH0laIUNJGO6QNm2
         2vGMy57FEXT4A==
Message-ID: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
Date:   Sat, 8 Jul 2023 18:21:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] pipe.7: document read()s with O_NONBLOCK
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <lnvrz4mlpcgpsv4uyh2wkzy2xxv2urogr7643cmasxhm74pbbe@dajglucy2zum>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <lnvrz4mlpcgpsv4uyh2wkzy2xxv2urogr7643cmasxhm74pbbe@dajglucy2zum>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------J1uxKevUKR2E8EEpLic87cQ6"
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
--------------J1uxKevUKR2E8EEpLic87cQ6
Content-Type: multipart/mixed; boundary="------------yI0tPCCF7UE48g3Tevmi00lx";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
Subject: Re: [PATCH] pipe.7: document read()s with O_NONBLOCK
References: <lnvrz4mlpcgpsv4uyh2wkzy2xxv2urogr7643cmasxhm74pbbe@dajglucy2zum>
In-Reply-To: <lnvrz4mlpcgpsv4uyh2wkzy2xxv2urogr7643cmasxhm74pbbe@dajglucy2zum>

--------------yI0tPCCF7UE48g3Tevmi00lx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8yNi8yMyAwMDowNywg0L3QsNCxIHdyb3RlOg0KPiBXaGljaCBkb24ndCBiZWhhdmUg
bGlrZSB5b3UgbWF5IGV4cGVjdCB0aGVtIHRvLg0KPiANCj4gUXVvdGggSXNzdWUgOCBEcmFm
dCAzOg0KPiA2MDc0NiAgV2hlbiBhdHRlbXB0aW5nIHRvIHJlYWQgZnJvbSBhbiBlbXB0eSBw
aXBlIG9yIEZJRk86DQo+IDYwNzQ3ICAgIOKAoiBJZiBubyBwcm9jZXNzIGhhcyB0aGUgcGlw
ZSBvcGVuIGZvciB3cml0aW5nLCByZWFkKCApIHNoYWxsIHJldHVybiAwIHRvIGluZGljYXRl
IGVuZC1vZi1maWxlLg0KPiA2MDc0OCAgICDigKIgSWYgc29tZSBwcm9jZXNzIGhhcyB0aGUg
cGlwZSBvcGVuIGZvciB3cml0aW5nIGFuZCBPX05PTkJMT0NLIGlzIHNldCwgcmVhZCggKSBz
aGFsbCByZXR1cm4NCj4gNjA3NDkgICAgICDiiJIxIGFuZCBzZXQgZXJybm8gdG8gW0VBR0FJ
Tl0uDQo+IDYwNzUwICAgIOKAoiBJZiBzb21lIHByb2Nlc3MgaGFzIHRoZSBwaXBlIG9wZW4g
Zm9yIHdyaXRpbmcgYW5kIE9fTk9OQkxPQ0sgaXMgY2xlYXIsIHJlYWQoICkgc2hhbGwNCj4g
NjA3NTEgICAgICBibG9jayB0aGUgY2FsbGluZyB0aHJlYWQgdW50aWwgc29tZSBkYXRhIGlz
IHdyaXR0ZW4gb3IgdGhlIHBpcGUgaXMgY2xvc2VkIGJ5IGFsbCBwcm9jZXNzZXMgdGhhdA0K
PiA2MDc1MiAgICAgIGhhZCB0aGUgcGlwZSBvcGVuIGZvciB3cml0aW5nLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlq
YWN6bGV3ZWxpLnh5ej4NCj4gLS0tDQo+ICAgbWFuNy9waXBlLjcgfCAxMCArKysrKysrKyst
DQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL21hbjcvcGlwZS43IGIvbWFuNy9waXBlLjcNCj4gaW5kZXgg
YzNlMDZiZGFiLi5mYjJlZDYxY2QgMTAwNjQ0DQo+IC0tLSBhL21hbjcvcGlwZS43DQo+ICsr
KyBiL21hbjcvcGlwZS43DQo+IEBAIC01NiwxMiArNTYsMjAgQEAgLlNTIEkvTyBvbiBwaXBl
cyBhbmQgRklGT3MNCj4gICAuQlIgd3JpdGUgKDIpDQo+ICAgYmxvY2tzIHVudGlsIHN1ZmZp
Y2llbnQgZGF0YSBoYXMgYmVlbiByZWFkIGZyb20gdGhlIHBpcGUNCj4gICB0byBhbGxvdyB0
aGUgd3JpdGUgdG8gY29tcGxldGUuDQo+ICsuUFANCj4gICBOb25ibG9ja2luZyBJL08gaXMg
cG9zc2libGUgYnkgdXNpbmcgdGhlDQo+ICAgLkJSIGZjbnRsICgyKQ0KPiAgIC5CIEZfU0VU
RkwNCj4gICBvcGVyYXRpb24gdG8gZW5hYmxlIHRoZQ0KPiAgIC5CIE9fTk9OQkxPQ0sNCj4g
LW9wZW4gZmlsZSBzdGF0dXMgZmxhZy4NCj4gK29wZW4gZmlsZSBzdGF0dXMgZmxhZyBvciBi
eSBvcGVuaW5nIGENCj4gKy5CUiBmaWZvICg3KQ0KPiArd2l0aA0KPiArLkJSIE9fTk9OQkxP
Q0sgLg0KPiArVGhlcmUgYXJlIG9kZGl0aWVzIGlmIHJlYWRpbmcgYW5kIG5vIGRhdGEgaXMg
YXZhaWxhYmxlOg0KPiAraWYgYW55IHByb2Nlc3MgaGFzIHRoZSBwaXBlIG9wZW4gZm9yIHdy
aXRpbmcsIHJlYWRzIGZhaWwgd2l0aA0KPiArLkJSIEVBR0FJTiA7DQo+ICtvdGhlcndpc2Vc
W2VtXXdpdGggbm8gcG90ZW50aWFsIHdyaXRlcnNcW2VtXXJlYWRzIHN1Y2NlZWQgYW5kIHJl
dHVybiBlbXB0eS4NCg0KSGkg0L3QsNCxIQ0KDQpJJ20gbm90IGNvbnZpbmNlZCB0aGF0IHRo
aXMgaXMgYW4gb2RkaXR5LiAgSWYgdGhlcmUgYXJlIG5vIHdyaXRlcnMsIGENCnJlYWQgYXQg
dGhlIGVuZCBvZiBhIGZpbGUgbXVzdCBub3RpZnkgdGhlIEVPRiwgd2hpY2ggaXMgZG9uZSBi
eSBhbiBlbXB0eQ0KcmVhZCgyKTsgaW4gdGhpcyBjYXNlLCBpdCdzIHRoZSBlbmQgb2YgdGhl
IHBpcGUoNykuICBJZiB0aGVyZSBhcmUNCndyaXRlcnMsIHRoZSBwaXBlIG1heSBnZXQgbW9y
ZSB0ZXh0LCBhbmQgc28gdGhlIHJlYWRlciBnZXRzIEVBR0FJTiBvcg0KYmxvY2tzLCBkZXBl
bmRpbmcgb24gT19OT05CTE9DSy4NCg0KQXJlIHlvdSBzdXJlIHdlIG5lZWQgdGhpcyBwYXRj
aD8NCg0KQ2hlZXJzLA0KQWxleA0KDQo+ICAgLlBQDQo+ICAgVGhlIGNvbW11bmljYXRpb24g
Y2hhbm5lbCBwcm92aWRlZCBieSBhIHBpcGUgaXMgYQ0KPiAgIC5JUiAiYnl0ZSBzdHJlYW0i
IDoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5
IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1
DQoNCg==

--------------yI0tPCCF7UE48g3Tevmi00lx--

--------------J1uxKevUKR2E8EEpLic87cQ6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpjSIACgkQnowa+77/
2zKXkBAAlhpHqmQhmfIYPL3LQgHJG9nYa/aQEw6Ws3iI6gMtLlm77h663k1sHtbc
FmOp77evNlraFCo/XL5GniFL+ZkmWKY9e5OP4dDEonAc+cjKVSqm0miKb8JGqipq
/xS1WgmjROhTv05hOiMQjgKJaQOLT5swAaoTktBqPkn0HxtXaHAipDZCnzBBDka1
n9QpFNSJ0F7/2zVZJhFi5WjfzJtTAk4HKd5n3J4CPpBsVs9VwAtKBeZA4/k1C6d9
rcC01WAIhmFf1jlPSwv28MwDrvkcOdHVPdZz4KsV4xTAZFqU5Y7Bhjn74BUfNLQN
nRNSBJhDWyGQ8B0PCW93HlHpKVwOv4ayf1XGpY0nkJA1+34YiV0/r9Ev/7Cfdrvf
Ve2SvEDpDvWd3IlG5IhBrWuwpw/yHzcWIxo0QIpyyekGfzNg/xZ68qs/Y62TINJ2
8qVDMHrdJmcHMvOj+FS2f2lnIhgQuEXEpHpwVXRkZEo6svbRIEeTkAKKeCahjrPC
QcJ83jweRPMmLdChw1Lf66HKee/QNUwiMpZV46g0Y6UG/JNWobfAZCzED6QNFX4J
xRgVBc6CZ7L4tCQNjNKnY6kU2E9d5q5B+dTFGcNvXjw2p58auxgrqUVL5HCYUcZn
vTb4Mb+jKyYoVLlw1wytgS00zQCI0Rg6kK0eiV4dsQvprqwKf7Y=
=x676
-----END PGP SIGNATURE-----

--------------J1uxKevUKR2E8EEpLic87cQ6--
