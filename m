Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DA35643574
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 21:18:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232860AbiLEUSr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 15:18:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231965AbiLEUSq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 15:18:46 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CEB023E98
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 12:18:45 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id bg10so9689041wmb.1
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 12:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2oLP5dacZ6vWH+xd6k3dTLgmCVYWMulGYgyCNppU1Y=;
        b=gDkwrhNjNnmlcg1VXe5IwmUTphZOXJXrniS11PzIcvxTZLDYedwHmX7Ri6WnmGsxl6
         wAqioR3oJBpHB14u3/u3m3JIdTBjwKu5dhAbQrQMuII4NtCQKvuTXr0VvQ04abDJcXyE
         DgmQD8W0LWkQ/6KKdcWNVFO87dfO5u/kA72evrDX6eNC36q5qwWMk/QDhBjgKXhu5W4X
         PBMYYv8pSyJi8gw5CtfSQar1I4D0Onvm8qi8w2u5UQnfwJOELfIDbt+0RlDULnwa4wrv
         U/q3htm4VglGacJfuvb1mxHurTXuq7PhgcQZphm8YsLM5xBZ3ZGzO2DIqGejmG5r/qlW
         YlyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f2oLP5dacZ6vWH+xd6k3dTLgmCVYWMulGYgyCNppU1Y=;
        b=5YfSV7sU0qmsr5Gl28LeDaqUzglRB843tugzNxTTP04Ovg7wbdYkrVE7fyYKwMTrb6
         rZmMnDE+9Hd+gZc7dbLKy8K+dTEeEraFvp/jq0QP+ugkYREVhgLMP0EmBoAM4L+0ePFv
         JfWgRfskSdBu2lrSRhsVNw9UqttIVJPY6BvEkHD66Bk07ofb42ze7BnuCEG5nI2wZKH0
         VwvNdPEWm5fUA10FCTeP5g3SgXjhzTzxe3Cl+3/udc6AVE3IVqp6Rbg9LqBn4YeI7Yhu
         dUkXwl1TvdeRTLMsQvUEFipRuao6usbCoJbUhY6d+j7O3DK6Mf4h00q2zMRkWdCuS/Vu
         qNxg==
X-Gm-Message-State: ANoB5pn90vtrryHuioUN10L7fBENZyin0QsASTKO8Gjj5KIl3qv7Hc2k
        TrFyeDXhDQiyU9j+LPXwnkd2/rKNaAs=
X-Google-Smtp-Source: AA0mqf4RXqr3BX0WMvHauTYt5UCa/0nvu3D38oUHgRpzN3P5hyf4pjQ1dojUmXhNB+6isayyeEas/g==
X-Received: by 2002:a05:600c:3586:b0:3cf:a3b0:df6a with SMTP id p6-20020a05600c358600b003cfa3b0df6amr63864922wmq.126.1670271523648;
        Mon, 05 Dec 2022 12:18:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id co16-20020a0560000a1000b00241b6d27ef1sm15459272wrb.104.2022.12.05.12.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 12:18:43 -0800 (PST)
Message-ID: <0d73c267-334c-fe5f-c64d-ff5a589d4392@gmail.com>
Date:   Mon, 5 Dec 2022 21:18:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page close.2
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090722.GA1155@Debian-50-lenny-64-minimal>
 <d8b948b4-4aa4-c391-9327-431e9f447527@gmail.com>
 <20221205165749.GC5000@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221205165749.GC5000@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------eRvPO3Fz6JnWeEljfy65xxuJ"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------eRvPO3Fz6JnWeEljfy65xxuJ
Content-Type: multipart/mixed; boundary="------------LLuodhtagqBOunslDCmJHEa2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <0d73c267-334c-fe5f-c64d-ff5a589d4392@gmail.com>
Subject: Re: Issue in man page close.2
References: <20221204090722.GA1155@Debian-50-lenny-64-minimal>
 <d8b948b4-4aa4-c391-9327-431e9f447527@gmail.com>
 <20221205165749.GC5000@Debian-50-lenny-64-minimal>
In-Reply-To: <20221205165749.GC5000@Debian-50-lenny-64-minimal>

--------------LLuodhtagqBOunslDCmJHEa2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzUvMjIgMTc6NTcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IEhlbGxv
IEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMDk6MjM6MjNQTSArMDEw
MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDEwOjA3LCBIZWxn
ZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xs
b3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgIC4gdGhlIOKGkiAuIFRoZQ0K
Pj4NCj4+IEkgZG9uJ3QgZmluZCB0aGF0IGlzc3VlIGluIHRoZSB0ZXh0IHF1b3RlZCBiZWxv
dy4gIFBsZWFzZSBjaGVjay4NCj4gDQo+IE1lIG5laXRoZXIuIEFwb2xvZ2llcyBmb3IgdGhl
IG5vaXNlLiBJIHJlbW92ZWQgdGhlIEZJWE1FLg0KDQpPaCwgZG9uJ3Qgd29ycnkgYXQgYWxs
IDopDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBQbGVhc2UgZGlzcmVnYXJkIHRoaXMg
cmVwb3J0Lg0KPiANCj4+PiAiT24gTGludXggKGFuZCBwb3NzaWJseSBzb21lIG90aGVyIHN5
c3RlbXMpLCB0aGUgYmVoYXZpb3IgaXMgZGlmZmVyZW50OiB0aGUiDQo+Pj4gImJsb2NraW5n
IEkvTyBzeXN0ZW0gY2FsbCBob2xkcyBhIHJlZmVyZW5jZSB0byB0aGUgdW5kZXJseWluZyBv
cGVuIGZpbGUiDQo+Pj4gImRlc2NyaXB0aW9uLCBhbmQgdGhpcyByZWZlcmVuY2Uga2VlcHMg
dGhlIGRlc2NyaXB0aW9uIG9wZW4gdW50aWwgdGhlIEkvTyINCj4+PiAic3lzdGVtIGNhbGwg
Y29tcGxldGVzLiAgKFNlZSBCPG9wZW4+KDIpICBmb3IgYSBkaXNjdXNzaW9uIG9mIG9wZW4g
ZmlsZSINCj4+PiAiZGVzY3JpcHRpb25zLikgIFRodXMsIHRoZSBibG9ja2luZyBzeXN0ZW0g
Y2FsbCBpbiB0aGUgZmlyc3QgdGhyZWFkIG1heSINCj4+PiAic3VjY2Vzc2Z1bGx5IGNvbXBs
ZXRlIGFmdGVyIHRoZSBCPGNsb3NlPigpICBpbiB0aGUgc2Vjb25kIHRocmVhZC4iDQo+IA0K
PiBHcmVldGluZ3MNCj4gDQo+ICAgICAgICAgICAgIEhlbGdlDQo+IA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------LLuodhtagqBOunslDCmJHEa2--

--------------eRvPO3Fz6JnWeEljfy65xxuJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOOUiIACgkQnowa+77/
2zJwIA//UJyhzs2Wtpo0oNWE+AFbSEm20XFMrdMqWd0tunyL6Ea6b+hN35gyZHxU
cyh8gBBr0frs03PkEdHtLLavCnozbhatM1R/3bt4nNMl34fMXnAU0jQ69au+pBS0
MPFJdcYemwkI8mRvhwrzSL+j1OoaGKLB0jXQiZkDcyAyHUmMYe43ZzYJvu8zrrak
9Jbil/c6qa/3Mg2X1dVLPk1CYQefb4gy5HoP4EWeziFuXO0qluiQ5d47G3u7ZzSC
saGsbFxUrftgKFt+lIsotvnx8UzfjJfjWRWAAWGZ9V3X3yxM4kGGLhwbxVkgvmf+
HzEkcubkFz8pN6sxMBKHe8n+c6AkNPRCGaTJMu2tat6Oqdw62YQ29j1NfvhEu0pl
Rgx8MFAQ/nLl3aW4/fBfcvnc5BuLmqApHP1m/A4B7AF5tcunlC8Qvo7w7AYY79h9
crRh+4KENy6AmuhDtk8b/MIdzhnmGzd9VBop3jbJhudIZ5WWMAjhCtobKKyqn/ow
0jRMGDHF8hAA3ZY3TYduSjuA1u3c8RWsHwlWIWdrmqaDuLYuxxN9rKId9tgwYqdj
KL/4bM1QF8JOONPcLCp5nzu0sR+LJADdNvPKulgW0EmpDP9Ielp5yB48AYQOEWN0
nxSmTPINgXEm8UwLRBtfmY391l3KayI7zN7ocAiNCQ2IH+H/5sQ=
=v2MX
-----END PGP SIGNATURE-----

--------------eRvPO3Fz6JnWeEljfy65xxuJ--
