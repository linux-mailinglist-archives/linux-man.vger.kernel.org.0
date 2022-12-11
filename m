Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6CE8649508
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 17:06:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbiLKQGW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 11:06:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230247AbiLKQGV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 11:06:21 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C0D5FAC8
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:06:20 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id bg10so3306126wmb.1
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yHXyQ4leKiWCni50pUOSTSaYYrqDdI4IXsfk526n23Y=;
        b=dzhDEpoU6nPOHe/nSBemwRaHLl3KoScbfkkhBWe+VPNTyRMoOvMy5/GXAYcbCKaKJM
         8zz6/ISXoiFEInrgZnLin/jRoxzUOIDFNDWQAu1oi78NU2AgsYZMSMnQvA/qgM591ueP
         Q60S0tLsIn6QnOO2UL1Ab7zWjaso4kFmqOzwAIZempUrU+giCkq/cStVrHN+0O+/roeC
         Fg6Bh30ts6vZi2eKxfRE2l5aUXSwDDLZEqrqHi1euxPHV3vmgL/bBMf1oeRs9ijbxWK8
         ExfRYN3xFQ8SK064ghzkI7GDr7h2Mzl73E3N6zdU2l6fFtrQinRD1Ptv6e36yMgr8CPU
         M9hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yHXyQ4leKiWCni50pUOSTSaYYrqDdI4IXsfk526n23Y=;
        b=Nvim0vmdzQcqd5oneOI5VbNa8ZF3pVgSS4e3gE67ar0LQ8VOg7lvt0ygWl8TpuhscN
         VDsgj4epCwCC5K0ZZ0uMH99s9RKSR8MK7uHuCw0Yi53Fr6PW79iogCHud9IXT/Iaw0qA
         rXDfQVmSYlup7Jw9OMgrjTZp5NfKddgs5UCPq8BedMrRVi0GlptPevqHyIehwf6biOx/
         gFGVuwS9AChVMBlpSBhS7OGVLExSEiA64oKFTMKuPuWzbHwmAfcAkmp2dalSPqw9zJhn
         gpiNoky8NmzYt99M5pTDiPPsd8MBv7xeSh+eLhscC8kxAKz9LEbskadl4dOJUwThn66x
         qxlw==
X-Gm-Message-State: ANoB5pnw0y2mBxljmdyu66pHb0ocI2wqoOSGzQvLM+AfPWjkTJaJL7Ic
        PDFbBrggLILghaNb4+0z6Ts=
X-Google-Smtp-Source: AA0mqf5lacKyB148p6QPGinvrwhbHC7sLvCrphnSfYbJ/j9jZbE8uztgJlI0nvL6kOWqIbLEfhJOFg==
X-Received: by 2002:a05:600c:3d19:b0:3d0:bd9:edd4 with SMTP id bh25-20020a05600c3d1900b003d00bd9edd4mr10233949wmb.0.1670774778841;
        Sun, 11 Dec 2022 08:06:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az25-20020a05600c601900b003cf9bf5208esm6446162wmb.19.2022.12.11.08.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 08:06:18 -0800 (PST)
Message-ID: <324f6d6b-ec63-3ec6-20a8-b3daff09d193@gmail.com>
Date:   Sun, 11 Dec 2022 17:06:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, Mike Frysinger <vapier@gentoo.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20221208091442.10595-1-vapier@gentoo.org>
 <20221208163605.w7hmtcuwwma5tgfz@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221208163605.w7hmtcuwwma5tgfz@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lj79AgzTn012RvoAW02cdqUz"
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
--------------lj79AgzTn012RvoAW02cdqUz
Content-Type: multipart/mixed; boundary="------------zwPgUBa0LAzjxz23rhMVPL0o";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Mike Frysinger <vapier@gentoo.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <324f6d6b-ec63-3ec6-20a8-b3daff09d193@gmail.com>
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
References: <20221208091442.10595-1-vapier@gentoo.org>
 <20221208163605.w7hmtcuwwma5tgfz@jwilk.net>
In-Reply-To: <20221208163605.w7hmtcuwwma5tgfz@jwilk.net>

--------------zwPgUBa0LAzjxz23rhMVPL0o
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIgJiBNaWtlLA0KDQpPbiAxMi84LzIyIDE3OjM2LCBKYWt1YiBXaWxrIHdyb3Rl
Og0KPiAqIE1pa2UgRnJ5c2luZ2VyIDx2YXBpZXJAZ2VudG9vLm9yZz4sIDIwMjItMTItMDgg
MDQ6MTQ6DQo+PiBTaW5jZSB3YWl0NCgyKSBpcyBkZXByZWNhdGVkIGFuZCBwZW9wbGUgc2hv
dWxkIHVzZSB3YWl0cGlkKDIpIGluc3RlYWQsDQo+IA0KPiBGb3Igc2ltcGxpY2l0eSBJJ2Qg
anVzdCBkbyBzL3dhaXQ0L3dhaXRwaWQvLCBiZWNhdXNlIEFGQUlDUyB0aGF0J3Mgd2hhdCBn
bGliYyB1c2VzLg0KPiANCj4+IGFuZCB0aGUgc3BlY2lmaWMgd2FpdCBmdW5jdGlvbiB1c2Vk
IGlzIGxhcmdlbHkgYW4gaW50ZXJuYWwgZGV0YWlsLA0KPj4gdXBkYXRlIHRoZSByZWZlcmVu
Y2VzIHRvIHRhbGsgYWJvdXQgdGhlIHdhaXQgImZhbWlseSIgb2YgZnVuY3Rpb25zLg0KPiAN
Cj4gQnV0IGlmIHdlIGNob3NlIHRvIHRhbGsgYWJvdXQgZmFtaWxpZXMsIHRoZW4uLi4NCj4g
DQo+PiArc3RhdHVzIG9mIHRoZSBjb21tYW5kIGFzIHJldHVybmVkIGJ5IG9uZSBvZiB0aGUN
Cj4+ICsuQlIgd2FpdCAoMikNCj4+ICtmYW1pbHkgb2YgY2FsbHMuDQo+IA0KPiAuLi4gbWF5
YmUgcy9jYWxscy9mdW5jdGlvbnMvPw0KDQpBZ3JlZS4NCg0KVGhhbmtzLA0KQWxleA0KDQo+
IA0KPiAiZmFtaWx5IG9mIGZ1bmN0aW9ucyIgc2VlbXMgdG8gYmUgdGhlIG1vc3Qgd2lkZWx5
IHVzZWQgdGVybToNCj4gDQo+ICQgZ3JlcCAtcmhvUCAnZmFtaWx5IG9mIChmdW5jdGlvbnN8
KHN5cyh0ZW0gKT8pP2NhbGxzKScgbWFuKiB8IHNvcnQgfCB1bmlxIC1jIHwgDQo+IHNvcnQN
Cj4gIMKgwqDCoMKgwqAgMSBmYW1pbHkgb2YgY2FsbHMNCj4gIMKgwqDCoMKgwqAgMSBmYW1p
bHkgb2Ygc3lzdGVtIGNhbGxzDQo+ICDCoMKgwqDCoMKgIDIgZmFtaWx5IG9mIHN5c2NhbGxz
DQo+ICDCoMKgwqDCoCAyMCBmYW1pbHkgb2YgZnVuY3Rpb25zDQo+IA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------zwPgUBa0LAzjxz23rhMVPL0o--

--------------lj79AgzTn012RvoAW02cdqUz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOV//kACgkQnowa+77/
2zKTjBAAqll+oQu0vTIbzDMALlVh6w3iGaLUmhm0jnWDHbO9D59GaeezqePwxBTF
0UN40SJx3C5qQWwxBuJ+8RLuJZqE5g7UcwtdeUhlxfNC1CyMBqOWbX8nVTNqAtol
PGwO3r4oBKerGRmBBrqyM5MQXwRNQdIq58lxSwyS7+jola4TsuNpXEhXjhcCUkIo
oLg98KOB21FhKYe/mKvs5udfKE/j41EvwM/52K1PeHyO9GX5Z3+8UXmIIjIHfWYI
05lPamucyfPc8B8w4t6YX8O1Ef8GJ4gmEdTEivH0oAnLr+ocMt/Qt1az4qy+Mhre
/Ct7iw8yViIDuNBeaY5CqaE5oA5cVglQvbuB3gniZD5WD6W5VxNsYZ7Oe2Ev8kmh
j5BV7L55RxvZ0SAhn+RIrGvUqPjfAc7fwHDwx/qIXI4CT0uO46amnnQOXtZvopZi
6XusDqNuY32t8wsXpaY3bERiZhpSYxMb0kG1EprL2goq62Rps0nhj1sOrLpUIq5I
4MZEGgV22UOx1nCPbB7ZSbt/imNwItBMJJTq6LSmTeH52rZjhkDZ5RwDPTpquF+1
Z1+gplo0Uw79KIiOdwPVbpb/3if6yhvFBo4AX/JviWcrljRhg4V9Mdfl2oLjI8nD
AgYCiOjkYwE8vM/Qkx6/kh3kyfzymorc+q89o7iSHGISGkW90FA=
=R76d
-----END PGP SIGNATURE-----

--------------lj79AgzTn012RvoAW02cdqUz--
