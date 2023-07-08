Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58FAD74BE8B
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 19:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbjGHRHy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 13:07:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHRHy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 13:07:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B982A191
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 10:07:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4E23860DD9
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 17:07:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC9A2C433C8;
        Sat,  8 Jul 2023 17:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688836071;
        bh=xKmuA0M+xZm52Rk9B2JccVPe4mcLy2ihLpDlZSVUjyw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=rDEfvbicuGXPhUBlUnkepRhR3zMhVXasEPD0V1W7YHD8X3wfNO/B4LK6fSl84yuo9
         0/Ks3ZCfQXGzFyWoruW+hGkCkFd+qqaB854Uu/yeLf2ZX9oeTpPHCl5gh7qYhkwoFy
         P/UCOAC5qBg9Ia8oJLtpgkwIQSOITreqzcc+q13pNT7u8pNzs5a7UQ9x8nFqivf8xM
         lCP/HO4q+lvcd4niOfggM0qW/+HEriEPcHjSwee4Huxw7z7QIualJvJ3MXcGfENEkR
         QfNLgBVmp640r8jwYUDCm/9UFyavNzbdvRnX0UF++JYhHpBtvO9mySbOUAJYvi/8VD
         lF5VJ17soGAHw==
Message-ID: <3910b44d-d015-06ca-e774-f754e56a137f@kernel.org>
Date:   Sat, 8 Jul 2023 19:07:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] abort: clarify consequences of calling abort
Content-Language: en-US
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <a1efcd54c02faa51a7a25b9211b3f1f6bd38429f.1688483306.git.tgolembi@redhat.com>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <a1efcd54c02faa51a7a25b9211b3f1f6bd38429f.1688483306.git.tgolembi@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l4IUWAl19QwkS5kbbRFWJgb0"
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
--------------l4IUWAl19QwkS5kbbRFWJgb0
Content-Type: multipart/mixed; boundary="------------jphkbfX3MnZ2ABLtNUq8TeTl";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <3910b44d-d015-06ca-e774-f754e56a137f@kernel.org>
Subject: Re: [PATCH] abort: clarify consequences of calling abort
References: <a1efcd54c02faa51a7a25b9211b3f1f6bd38429f.1688483306.git.tgolembi@redhat.com>
In-Reply-To: <a1efcd54c02faa51a7a25b9211b3f1f6bd38429f.1688483306.git.tgolembi@redhat.com>

--------------jphkbfX3MnZ2ABLtNUq8TeTl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy80LzIzIDE3OjA5LCBUb23DocWhIEdvbGVtYmlvdnNrw70gd3JvdGU6DQo+IENsYXJp
ZnkgdGhhdCBhdGV4aXQvb25fZXhpdCBhcmUgbm90IGNhbGxlZCBiZWNhdXNlIHRob3NlIGFy
ZSBjYWxsZWQgb25seQ0KPiBvbiBub3JtYWwgcHJvY2VzcyB0ZXJtaW5hdGlvbiAoYXMgZG9j
dW1lbnRlZCBvbiB0aGVpciByZXNwZWN0aXZlIG1hbnVhbA0KPiBwYWdlcykuDQo+IA0KPiBD
bGFyaWZ5IHRoZSBzdGF0dXMgcmVwb3J0ZWQgYnkgd2FpdCooKSBmdW5jdGlvbnMuIFRoZSBy
ZXF1aXJlbWVudCBjb21lcw0KPiBmcm9tIFBPU0lYIHNwZWNpZmljYXRpb24uDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBUb23DocWhIEdvbGVtYmlvdnNrw70gPHRnb2xlbWJpQHJlZGhhdC5j
b20+DQoNCkhpIFRvbcOhxaEsDQoNCj4gLS0tDQo+ICAgbWFuMy9hYm9ydC4zIHwgMTAgKysr
KysrKysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvbWFuMy9hYm9ydC4zIGIvbWFuMy9hYm9ydC4zDQo+IGluZGV4IGM2M2Vh
Y2U1ZS4uNmQxNjM4MDMzIDEwMDY0NA0KPiAtLS0gYS9tYW4zL2Fib3J0LjMNCj4gKysrIGIv
bWFuMy9hYm9ydC4zDQo+IEBAIC00Nyw2ICs0NywxNiBAQCBmdW5jdGlvbiB3aWxsIHN0aWxs
IHRlcm1pbmF0ZSB0aGUgcHJvY2Vzcy4NCj4gICBJdCBkb2VzIHRoaXMgYnkgcmVzdG9yaW5n
IHRoZSBkZWZhdWx0IGRpc3Bvc2l0aW9uIGZvcg0KPiAgIC5CIFNJR0FCUlQNCj4gICBhbmQg
dGhlbiByYWlzaW5nIHRoZSBzaWduYWwgZm9yIGEgc2Vjb25kIHRpbWUuDQo+ICsuUFANCj4g
K0FzIHdpdGggb3RoZXIgY2FzZXMgb2YgYWJub3JtYWwgdGVybWluYXRpb24gdGhlIGZ1bmN0
aW9ucyByZWdpc3RlcmVkIHdpdGgNCj4gKy5CUiBhdGV4aXQgIigzKSBhbmQgIiBvbl9leGl0
ICgzKQ0KPiArYXJlIG5vdCBjYWxsZWQuIFRoZSBzdGF0dXMgbWFkZSBhdmFpbGFibGUgdG8N
Cg0KUGxlYXNlIHVzZSBzZW1hbnRpYyBuZXdsaW5lcy4gIFNlZSBtYW4tcGFnZXMoNyk6DQog
ICAgVXNlIHNlbWFudGljIG5ld2xpbmVzDQogICAgICAgIEluICB0aGUgIHNvdXJjZSBvZiBh
IG1hbnVhbCBwYWdlLCBuZXcgc2VudGVuY2VzIHNob3VsZCBiZQ0KICAgICAgICBzdGFydGVk
IG9uIG5ldyBsaW5lcywgbG9uZyBzZW50ZW5jZXMgc2hvdWxkIGJlIHNwbGl0IGludG8NCiAg
ICAgICAgbGluZXMgYXQgY2xhdXNlIGJyZWFrcyAoY29tbWFzLCBzZW1pY29sb25zLCAgY29s
b25zLCAgYW5kDQogICAgICAgIHNvIG9uKSwgYW5kIGxvbmcgY2xhdXNlcyBzaG91bGQgYmUg
c3BsaXQgYXQgcGhyYXNlIGJvdW5k4oCQDQogICAgICAgIGFyaWVzLiAgIFRoaXMgIGNvbnZl
bnRpb24sICBzb21ldGltZXMgIGtub3duIGFzICJzZW1hbnRpYw0KICAgICAgICBuZXdsaW5l
cyIsIG1ha2VzIGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiAgcGF0Y2hlcywNCiAg
ICAgICAgd2hpY2ggb2Z0ZW4gb3BlcmF0ZSBhdCB0aGUgbGV2ZWwgb2YgaW5kaXZpZHVhbCBz
ZW50ZW5jZXMsDQogICAgICAgIGNsYXVzZXMsIG9yIHBocmFzZXMuDQoNClRoYW5rcywNCkFs
ZXgNCg0KPiArLkJSIHdhaXQgIigyKSwgIiB3YWl0aWQgIigyKSwgb3IgIiB3YWl0cGlkICgy
KQ0KPiArYnkNCj4gKy5CUiBhYm9ydCAoKQ0KPiArc2hhbGwgYmUgdGhhdCBvZiBhIHByb2Nl
c3MgdGVybWluYXRlZCBieSB0aGUNCj4gKy5CUiBTSUdBQlJUDQo+ICtzaWduYWwuDQo+ICAg
LlNIIFJFVFVSTiBWQUxVRQ0KPiAgIFRoZQ0KPiAgIC5CUiBhYm9ydCAoKQ0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6
IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------jphkbfX3MnZ2ABLtNUq8TeTl--

--------------l4IUWAl19QwkS5kbbRFWJgb0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpl+IACgkQnowa+77/
2zJCvw/4/o/IckaO4pHN/VsdW8jbcWde/a/7uvgWJ32IGxmSJ3mjziMQSrEUPT7K
ymAERcpVp5K/teJ6+C3XI2K6xIEF5ErHCGylqMdresVKe3nvviwxsqcrMDAtVi8h
ACInsWuYKD+rFk96Fhz/+WHmtAPm7KEl5rn1x8AoH9a3VAY5H7JsnjsVDUwwNw7v
kQz2R6ZgPBkb+10edEiaKLxxlhbqjsP58O/7WPCMNIabWdm7tVtid47afQqvMGkg
atfZmOWU1AfRUdpQHvsCpxeK/mvXOpkSpNbB5h93Nat5eO+Tcyb4oLIanBvsr7gq
1ZIZ4BeOgavDvPodTKhttfXg9YahCnWDyIUBm3LD33YYL32ppOU6HyjIafi0f11W
KB1ow+Ii4vPj+38swKkLgC4EiLSTUP5CW8KpaARALgIQwBnIaSTDRhlQwsK4xsrj
TXd4kXH8O9WSYF3YpltqaNxNTeGw0duCQAINVQTO/2Q83Mo6tAxAahU0gJwCSLcV
avigTIc8qDmB84rw3Xs23XhbrIimJcC9OyacrzPKuJ5XhIVfYAja45EddK8xufup
vsrEK1Qqjl6W4GDgBQwXYoJU+Xurvn1NeZIq/7kFU3jkp0VOcXd3qaWArDmhNJEc
paE2owbnSYv0nuNNC+YPjKLbACAMyXH/GjagllPpfZORgQl8aw==
=kLt4
-----END PGP SIGNATURE-----

--------------l4IUWAl19QwkS5kbbRFWJgb0--
