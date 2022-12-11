Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88BC3649506
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 17:05:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbiLKQFx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 11:05:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbiLKQFw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 11:05:52 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D39EF597
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:05:51 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id co23so9675935wrb.4
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNyq7ThyYQsek9WXEnsqvON0jIMaN4ZiIUsOgJinVTk=;
        b=lZ/s0vPZS+i5HOeuQPR6HVtWbFi6ydOsDeW/jOdvBfUb4sLrJ6LR6StzsPlqV76plu
         3TSUqOfY5NAVN+BcSDf8uGTwHeo/rBPVBxDRnhI66AGGHnLgV/VSArvJjlRgwxOt8s8O
         a27ABVoj7mQoduUpI+ll0SnPnCiBo8Wn64B+M1G0/0uyxD+/AsP5E+GH+L6JO2QcejPb
         u5kh1CW7QZ2bT3fJwSvB16GPhEHghdC+uQgP/Y1/06G1/IbchJ/PAeAu6aLsCFJjXJeX
         zpSZDmlKKlcraxtlfO1j407btN0eGXCGeX9H10Typi5SeiNuBB+GSEIdMMDxrDQHxaqq
         OyEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YNyq7ThyYQsek9WXEnsqvON0jIMaN4ZiIUsOgJinVTk=;
        b=n09Ek6i5N+RKS4go8gHc4tjBuREygUQJbd11SlaSiMdJkMkgOS6POYS5rHVVtWz5sn
         m1/n5thGdmijRoRcmbSQJ/NASFsg8FPg60d0G6d64DtpebtE4rdrhAGXlQsf3g58NE9s
         g4O8EljkxVfRs86DHr9I+M0gNoNfQ6sZKhqXDnNiAHPPOpw10Wnh5IRIFcx+8kMHWso8
         WAslno0qKBds7RQZ+uAL3QBmGyUUSJ58TOcPeMXa2dcBdHjTdPQJEhZu0F3lrK2LU0yT
         3Cc9q25t7/NfAjacKsGptGT4BGZSA2aaUitQU6OZg04T4cWJeyQkFslv3PPSVMwKABo6
         KcTA==
X-Gm-Message-State: ANoB5pnL5bSV6+eT5nIrrgSwbX0c4GcCvb32j0nlJovt9a1UcMAS6om3
        XCYs2x4kNy6+4LI1uJSHqjc=
X-Google-Smtp-Source: AA0mqf49cNI37iqFD0dMTpXsbXqXmTPYL43cXfWccrtBEhy3YRmS6WgXylMwJ9dthAJHSaJq9UgPEQ==
X-Received: by 2002:a05:6000:81b:b0:242:5a80:79b8 with SMTP id bt27-20020a056000081b00b002425a8079b8mr8110387wrb.20.1670774750211;
        Sun, 11 Dec 2022 08:05:50 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x1-20020a5d4441000000b0023677081f3asm6480799wrr.42.2022.12.11.08.05.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 08:05:49 -0800 (PST)
Message-ID: <f79f3230-8001-12e7-1a93-5aec55b070a0@gmail.com>
Date:   Sun, 11 Dec 2022 17:05:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>,
        Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20221208091442.10595-1-vapier@gentoo.org>
 <20221208163413+0100.348521-stepnem@smrk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221208163413+0100.348521-stepnem@smrk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ExMP0YvxnPQVpOsyOIB1ugZx"
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
--------------ExMP0YvxnPQVpOsyOIB1ugZx
Content-Type: multipart/mixed; boundary="------------EGH4fwIQJ0NFwpXkeCBk8TIT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>,
 Mike Frysinger <vapier@gentoo.org>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <f79f3230-8001-12e7-1a93-5aec55b070a0@gmail.com>
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
References: <20221208091442.10595-1-vapier@gentoo.org>
 <20221208163413+0100.348521-stepnem@smrk.net>
In-Reply-To: <20221208163413+0100.348521-stepnem@smrk.net>

--------------EGH4fwIQJ0NFwpXkeCBk8TIT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgxaB0xJtww6FuICYgTWlrZSwNCg0KT24gMTIvOC8yMiAxNjozNCwgxaB0xJtww6FuIE7E
m21lYyB3cm90ZToNCj4gT24gVGh1LCAgOCBEZWMgMjAyMiAwNDoxNDo0MiAtMDUwMA0KPiBN
aWtlIEZyeXNpbmdlciB3cm90ZToNCj4gDQo+PiBAQCAtMTA2LDE1ICsxMDcsMTUgQEAgY2Fs
bHMgZmFpbCwgb3IgaWYgdGhlIGZ1bmN0aW9uIGNhbm5vdCBhbGxvY2F0ZSBtZW1vcnksDQo+
PiAgIE5VTEwgaXMgcmV0dXJuZWQuDQo+PiAgIC5QUA0KPj4gICAuQlIgcGNsb3NlICgpOg0K
Pj4gLW9uIHN1Y2Nlc3MsIHJldHVybnMgdGhlIGV4aXQgc3RhdHVzIG9mIHRoZSBjb21tYW5k
OyBpZg0KPj4gK29uIHN1Y2Nlc3MsIHJldHVybnMgdGhlIGV4aXQgc3RhdHVzIG9mIHRoZSBj
b21tYW5kOyBpZiBvbmUgb2YgdGhlDQo+PiAgIC5cIiBUaGVzZSBjb25kaXRpb25zIGFjdHVh
bGx5IGdpdmUgdW5kZWZpbmVkIHJlc3VsdHMsIHNvIEkgY29tbWVudGVkDQo+PiAgIC5cIiB0
aGVtIG91dC4NCj4+ICAgLlwiIC5JIHN0cmVhbQ0KPj4gICAuXCIgaXMgbm90IGFzc29jaWF0
ZWQgd2l0aCBhICJwb3BlbigpZWQiIGNvbW1hbmQsIGlmDQo+PiAgIC5cIi5JIHN0cmVhbQ0K
Pj4gICAuXCIgYWxyZWFkeSAicGNsb3NlKClkIiwgb3IgaWYNCj4+IC0uQlIgd2FpdDQgKDIp
DQo+PiAtcmV0dXJucyBhbiBlcnJvciwgb3Igc29tZSBvdGhlciBlcnJvciBpcyBkZXRlY3Rl
ZCwNCj4+ICsuQlIgd2FpdCAoMikNCj4+ICtmYW1pbHkgb2YgY2FsbHMgcmV0dXJucyBhbiBl
cnJvciwgb3Igc29tZSBvdGhlciBlcnJvciBpcyBkZXRlY3RlZCwNCj4+ICAgXC0xIGlzIHJl
dHVybmVkLg0KPj4gICAuUFANCj4+ICAgT24gZmFpbHVyZSwgYm90aCBmdW5jdGlvbnMgc2V0
DQo+IA0KPiBJJ2xsIGp1c3QgcG9pbnQgb3V0IHRoYXQsIGlmIHRoaXMgZ29lcyBpbiwgcHV0
dGluZyAib25lIG9mIHRoZSIgX2FmdGVyXw0KPiB0aGUgY29tbWVudCB3b3VsZCBwcmV2ZW50
IHJlbmRlcmluZyBpdCBpbmNvbXByZWhlbnNpYmxlLg0KDQpZZXMsIHRoYW5rcyBmb3IgcG9p
bnRpbmcgdGhhdCBvdXQhDQoNCkknZCBtb3ZlIHRoZSBlbnRpcmUgImlmIG9uZSBvZiB0aGUi
Lg0KDQo+IA0KPiBUaGFua3MsDQo+IA0KPiAgICDFoHTEm3DDoW4NCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------EGH4fwIQJ0NFwpXkeCBk8TIT--

--------------ExMP0YvxnPQVpOsyOIB1ugZx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOV/9wACgkQnowa+77/
2zKZKA/8Cc2gi84Gny3I69ixycicSHEyNE6F1MZj+o0SeIAD7pEH5K/EMJDBfg2n
NJKxvLPs5RkKCn2J5oEG7IneqiFJcjChJPNU8dRr4Q6bm7GaB9hh4ux1NRmZyssO
UiR2agm+IPbW1VeBNPu+XM+j6OemJgyKmvgO6iRdYsyEnONg+9gdIBsi46cOoxx1
0rBab3BxmXIlz9ktCjodiMEqJiRyBGA9Dv1OM8IweOrIrnCK0b8krgLuVjLT4L5+
nJVH3VN0R1y5dOulZb6QD+FVdMaPLQlwOA7ehzSqBpykfnfIvK0v/Zuozps/wJk5
DUS/7WiVWtQ+VdM+9TTwQbZ1eMHM34kTNFOzcExKW6M1d0pWxpq+IY1/KNEAkIcM
AX7CsfH4yU0BgNkqXfzgcBhXf9k74qC/l22EJKNQHmhCaSWPuE47Rv9PgA4OvUwC
KRUA+3EsGduSw1JXzSI8vZWQppgFvzJjgAzhrdTl+XU84c01ywXQZYJCRpxzm7za
V4ohOdGaHqzZSgV6FCQCeueM61kEqukOUFV7rokNZ4OyzKsW/HhWTg6u/Pq8KOmM
nuk8OnsY52wgHf9gDG6w2N1LmF6RLMqR1i5IeCVsDFhr0vASQyspFQRqMzdBEY9C
wysHmAjenLcx51znsWOa+LGsWP7r9BOFOvXmfPWa7z5t+QzYnzk=
=p0Br
-----END PGP SIGNATURE-----

--------------ExMP0YvxnPQVpOsyOIB1ugZx--
