Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15D0F664C0D
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 20:09:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239755AbjAJTJY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 14:09:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239744AbjAJTI4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 14:08:56 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28DFEDF4D
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:08:55 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id r2so12820064wrv.7
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F0YPmRXaLshn+i2dJep6ZueUQzPuysnykcabiuGFaY4=;
        b=gh0+tw0QWxGWM4Bo0Kq+PHzUvt81GRemQ+EFFnFq/zu4qa28GLvV5D8mOI0NlRH/ER
         i5HHcR3tGHnXxWJuJQbzC6nc/4CnrlI+Llt5p6XH8Q2GAfV8IjD66blpr0LlbbujY2Hg
         kClyOcZdwsJC+5VPI6QjETqago0H88UWKqBHT7pFvxAHpUK1gh3DJeLZhhJyKYuBeV6o
         3ZU8WRo4ckYji6/M86/F9U6NDDGf6zvZmwUsA+LkYCmNRxjmD+i96cXB1z0CGxsZ4ZTz
         daG20c+jj5aNFMHGWoUw4p8Itj82wiKv73j4/KPC+ivn4qJjxBOWUVs9BLpqtutLlya1
         1zQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F0YPmRXaLshn+i2dJep6ZueUQzPuysnykcabiuGFaY4=;
        b=uO5P4Rs5/eKS74BcruetjfJiUwimSxzkmqhRouECqvPVwZIbHq/4K0p8NJci+1buLp
         JDXu+BA74i/tOvCACBs/50Th5rBLwzvGFXmM1n+10uBWDhw1W1BAKa+LFQaJifi+WmZr
         skK4bzOx0op9sFPYxrwBQ9Jf7fEtXvcxJ78Put5jcicvh/izeKo6hrv1TUmCvqfBXW1U
         N1IguSUxXzCcMogVKdOhuZ5yIwTDokXFfAL/F6upeP256p8NK2o45CjHHkgkJppaMekD
         LuOBniSGSSWPCCo0s1mANb8e1Xw13Iyg7iTlttXLbzQAhWmmrhhjZwo2IV/aCAQmU2PX
         PiLg==
X-Gm-Message-State: AFqh2kqeqaMws9Ju3elsyTfJalisyE0NyeqeDxzdACWhso379tXQLH1Q
        ick178yRb95aXOmvf0g37Lc=
X-Google-Smtp-Source: AMrXdXsWsGh9UrTDUEoBMbIOVs6ZHxalWptr4OcCW1aFSDb5hJ1hOLVreP10PV7TRhZhbfH42Oi3Rw==
X-Received: by 2002:adf:fb88:0:b0:269:65c0:79fd with SMTP id a8-20020adffb88000000b0026965c079fdmr41540986wrr.53.1673377733603;
        Tue, 10 Jan 2023 11:08:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m1-20020a5d6241000000b002bbdaf21744sm9009758wrv.113.2023.01.10.11.08.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 11:08:53 -0800 (PST)
Message-ID: <64d1e150-324f-0068-452a-75155e179a80@gmail.com>
Date:   Tue, 10 Jan 2023 20:08:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: misleading note in
 https://man7.org/linux/man-pages/man3/bstring.3.html
To:     Sam James <sam@gentoo.org>
Cc:     Aaron Peter Bachmann <aaron_ng@inode.at>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>
 <01e8c816-6b92-5776-722e-7a6c5a45a913@gmail.com>
 <A99F45B7-F791-4EB2-BF63-A5E6B1FDADD6@gentoo.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <A99F45B7-F791-4EB2-BF63-A5E6B1FDADD6@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OdOUILgNcp9A0EAZ8oW3gA5i"
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
--------------OdOUILgNcp9A0EAZ8oW3gA5i
Content-Type: multipart/mixed; boundary="------------xZHlroqMq0hVWaxyZ5lcH4Zp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: Aaron Peter Bachmann <aaron_ng@inode.at>, mtk.manpages@gmail.com,
 linux-man@vger.kernel.org
Message-ID: <64d1e150-324f-0068-452a-75155e179a80@gmail.com>
Subject: Re: misleading note in
 https://man7.org/linux/man-pages/man3/bstring.3.html
References: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>
 <01e8c816-6b92-5776-722e-7a6c5a45a913@gmail.com>
 <A99F45B7-F791-4EB2-BF63-A5E6B1FDADD6@gentoo.org>
In-Reply-To: <A99F45B7-F791-4EB2-BF63-A5E6B1FDADD6@gentoo.org>

--------------xZHlroqMq0hVWaxyZ5lcH4Zp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxLzEwLzIzIDA5OjE3LCBTYW0gSmFtZXMgd3JvdGU6DQo+IA0KPiAN
Cj4+IE9uIDMwIERlYyAyMDIyLCBhdCAyMzowNSwgQWxlamFuZHJvIENvbG9tYXIgPGFseC5t
YW5wYWdlc0BnbWFpbC5jb20+IHdyb3RlOg0KPj4NCj4+IEhlbGxvIEFhcm9uIFBldGVyLA0K
Pj4NCj4+IE9uIDEyLzMwLzIyIDIzOjQzLCBBYXJvbiBQZXRlciBCYWNobWFubiB3cm90ZToN
Cj4+PiBIZWxsbyENCj4+PiBUaGUgbm90ZSBzZWN0aW9uIGluIGh0dHBzOi8vbWFuNy5vcmcv
bGludXgvbWFuLXBhZ2VzL21hbjMvYnN0cmluZy4zLmh0bWwgc2F5czoNCj4+PiBUaGUgZnVu
Y3Rpb25zKmJjbXAqKCksKmJjb3B5KigpLCBhbmQqYnplcm8qKCkgYXJlIG9ic29sZXRlLiAg
VXNlDQo+Pj4gICAgICAgICAqbWVtY21wKigpLCptZW1jcHkqKCksIGFuZCptZW1zZXQqKCkg
aW5zdGVhZC4NCj4+PiBUaGUgc3RkLXJlcGxhY2VtZW50IHJlcGxhY2VtZW50IGZvciBiY29w
eSgpIGluIE5PVCBtZW1jcHkoKSBidXQgbWVtbW92ZSgpLg0KPj4+IFRodXMgaXQgc2hvdWxk
IHNheToNCj4+PiBUaGUgZnVuY3Rpb25zKmJjbXAqKCksKmJjb3B5KigpLCBhbmQqYnplcm8q
KCkgYXJlIG9ic29sZXRlLiAgVXNlDQo+Pj4gICAgICAgICAqbWVtY21wKigpLCptZW1tb3Zl
KigpLCBhbmQqbWVtc2V0KigpIGluc3RlYWQuDQo+Pg0KPj4gVGhhbmtzISAgSSBmaXhlZCBp
dC4gIEFuZCB3aGlsZSBkb2luZyBpdCwgSSBhbHNvIHJlbW92ZWQgdGhlIHRleHQgdGhhdCBz
YWlkIGJ6ZXJvKDMpIGlzIGRlcHJlY2F0ZWQuICBJIGVuY291cmFnZSBpdHMgdXNlLg0KPj4N
Cj4gDQo+IFRoZSBtYW4gcGFnZSBub3RlcyBpdCB3YXMgaW4gUE9TSVggYW5kIHRoZW4gZ290
IHJlbW92ZWQgaW4gMjAwOC4gQmVmb3JlIGl0IHdhcyByZW1vdmVkIGZyb20gUE9TSVgsDQo+
IHRoZXkgc2FpZCBtZW1zZXQgd2FzIHByZWZlcnJlZC4NCj4gDQo+IEkgZG9uJ3QgYXJndWUg
dGhhdCB3ZSBoYXZlIHRvIGRlZmVyIHRvIFBPU0lYIGFsd2F5cywgYnV0IEknbSB3b25kZXJp
bmcgd2hhdCB5b3VyIHRoaW5raW5nIGlzIG9uIHN1Y2ggY29uZmxpY3RzDQo+IChJJ20ganVz
dCB3b25kZXJpbmcgYWJvdXQgb3RoZXIgY2FzZXMgaWYgd2UgaGl0IHRoZW0pLg0KPiANCj4g
V2hhdCBkbyB5b3UgdGhpbms/DQoNCkknZCBzYXkgdGhhdCBpdCdzIGEgY2FzZS1ieS1jYXNl
IHRoaW5nLiAgSSB3b3VsZG4ndCBjb3VudCBpdCBhcyBhIHByZWNlZGVudCwgYW5kIA0KZGlz
Y3VzcyBhbnkgbmV3IGNhc2UgdGhhdCBhcmlzZXMuICBJIHJlbWVtYmVyIEkgaGFkIHNvbWUg
b3RoZXIgY2FzZXMgb2YgDQpmdW5jdGlvbnMgdGhhdCBoYXZlIGJlZW4gZGVwcmVjYXRlZCBi
eSBQT1NJWCB0aGF0IEkgZGlkbid0IG1hcmsgYXMgc3VjaCwgYmVjYXVzZSANCnRoZSBBUElz
IHRoZW1zZWx2ZXMgYXJlIGZpbmUuICBGb3IgZXhhbXBsZSwgdXRpbWUoMikgaXMgc3VjaCBh
IGNhc2UuICBQT1NJWCANCmRlcHJlY2F0ZWQgaXQgaW4gZmF2b3Igb2YgdXRpbWVuc2F0KDIp
LCBidXQgaWYgeW91IG9ubHkgY2FyZSBhYm91dCBzZWNvbmRzLCBpdCANCmRvZXNuJ3QgbWFr
ZSBtdWNoIHNlbnNlIHRvIGdvIHRvIHRoZSBjb21wbGV4aXR5IG9mIHRoYXQgY2FsbC4NCg0K
T2YgY291cnNlLCBJJ2xsIG1lbnRpb24gaW4gdGhlaXIgcGFnZXMsIGluIFNUQU5EQVJEUywg
dGhhdCBQT1NJWCBvciBJU08gDQpkZXByZWNhdGVzIHRoZW0sIGJ1dCBpbiBTWU5PUFNJUyBJ
J2xsIHRha2Ugc29tZSBmcmVlZG9tIGFzIGxvbmcgYXMgdGhlIEFQSSBpcyANCm5vdCBtYXJr
ZWQgYXMgW1tkZXByZWNhdGVkXV0gaW4gdGhlIGdsaWJjIHNvdXJjZSBjb2RlLg0KDQpBIGtp
bmQgb2YgcnVsZSBmb3IgdXNpbmcgW1tkZXByZWNhdGVkXV0gaW4gdGhlIFNZTk9QU0lTIChi
dXQgaXQncyBub3QgYSBydWxlKToNCg0KLSAgU3lzY2FsbHMgYXJlIGRvbWFpbiBvZiB0aGUg
a2VybmVsLiAgSWYgdGhlIGtlcm5lbCBkZXByZWNhdGVzIGEgc3lzY2FsbCwgaXQgDQpnZXRz
IHRoZSBhdHRyaWJ1dGUgaW4gdGhlIFNZTk9QU0lTLg0KDQotICBsaWJjIGZ1bmN0aW9ucyBn
ZXQgdGhlIGF0dHJpYnV0ZSBpbiB0aGUgU1lOT1BTSVMgaW4gdGhlIGZvbGxvd2luZyBjYXNl
czoNCg0KICAgIC0gIGdjYyBhbmQvb3IgZ2xpYmMgcmVtb3ZlIHRoZSBmdW5jdGlvbiBvciBk
ZXByZWNhdGUgaXQgZm9ybWFsbHkgKHdhcm4gYWJvdXQgDQp1c2VzKS4NCg0KICAgIC0gIEV2
ZW4gaWYgdGhlIGZ1bmN0aW9uIGlzIG5vdCBkZXByZWNhdGVkIGZvcm1hbGx5LCBpZiBpdCBo
YXMgbm8gc2FuZSB1c2UgDQpjYXNlcyAob3BpbmlvbmF0ZWQgY2FsbDsgSSdsbCB0cnkgdG8g
Z2V0IHNvbWUgY29uc2Vuc3VzIG9uIHRoaXMpLCBpdCBtaWdodCBnZXQgDQppdCAoZnNjYW5m
KDMpIGlzIGEgZ29vZCBjYW5kaWRhdGU7IHNvIGZhciBJIG1vdmVkIGl0IHRvIGEgc21hbGwg
cGFnZSBzZXBhcmF0ZSANCmZyb20gc3NjYW5mKDMpLCBhbmQgcmVjb21tZW5kZWQgYWdhaW5z
dCBpdHMgdXNlLCBidXQgZGlkbid0IGRlcHJlY2F0ZSBpdCkuDQoNCkV2ZW4gaWYgdGhlIFNZ
Tk9QU0lTIGRvbid0IG1hcmsgaXQgYXMgZGVwcmVjYXRlZCwgaXQgbWlnaHQgYmUgZGVwcmVj
YXRlZCBieSANClBPU0lYIG9yIElTTywgaW4gd2hpY2ggY2FzZSB0aGF0IHdpbGwgYmUgbm90
ZWQgaW4gU1RBTkRBUkRTLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gQmVzdCwNCj4g
c2FtDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------xZHlroqMq0hVWaxyZ5lcH4Zp--

--------------OdOUILgNcp9A0EAZ8oW3gA5i
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO9t70ACgkQnowa+77/
2zKf6Q//Xvl5T8PZ0NYonv2DIo+kvFGzWLq58ePedrEC5ZsVKst9nzNfZlt8L4Ja
FBY7ZhHhbJNNXQxRE1VVIPdwFlwrVD5gLDk6V45bcVESufjuSRDkF17Q38F+PeyF
eu+lqCXK/hG9+QLd/6XNPl91Oo/WDyeKIhwOQJBSM+O1Ttu19aGCvxWGnuL3Kby+
Uq6/fDdbKgEi2QloYefKga+wQySLTesQhu1XSZa85O2yhTHK28XgClxu3CWwMTZr
qSkOkitumuozLN7aQV3/e26PUVZETKUHVyNAozL336DNNJBR133Au1vjJQq+WbeH
p7HvNfcsLWCVVOjMh/1ZI4fGTcF8/igjQXYZlYg5XAntGzSWj2i6M0Q/v57p3wC0
dYvP+y/ps6/YCyTWooZky3Zs3Omob0Ch4GGq2hMKybxHEasozCJ8Og34BgKytL1X
6/v758e4cbZZ5xqV9YV1EnDCZLkGGOXIiws4PopI7Bi9x4enSpNKl1v1BaKu0/tv
qy0DzNhpVYP4xw3Z1SZQBm8lWmjahuvXW0kuQC+H6dek9ZKrjg3PzoD8xjtfHTuQ
lpl/eVHenKnPusE0Jo7epoeib9Z+rvkpvbrm6cphxuLmAA+vXP3J025VOanl5GqD
10yuLx4yVn+y8C5EUIWRT8pTL4Mo7aOORBMeGFkk8cERdHpnZtA=
=LzPW
-----END PGP SIGNATURE-----

--------------OdOUILgNcp9A0EAZ8oW3gA5i--
