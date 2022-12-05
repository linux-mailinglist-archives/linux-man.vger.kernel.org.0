Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A7FD64292B
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 14:18:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231599AbiLENSm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 08:18:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232209AbiLENSY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 08:18:24 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9DAF1C100
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 05:18:22 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so11715013wmb.2
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 05:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/xq/mBB431BB1i7T4kMYTr/2fM98AwDsOsJk9Kvf/U=;
        b=MW2kUp9lzFAPeDaw74jjgFa3rbl/4NnN78BjB0UuvdnohIaywkw+fuhm/ptFYtpmfo
         6LgfVZEa177lA/9RNrahRwDjr1dPx6/0RZW1wAQrAgN7PVE1m0HBeGMPZtpPwZeccZy9
         lz5MILpRZzht9KKpbVm7LsnIJlz2b7mV5vxko3L4vdLGRQChTvJQhp41tQJ+G3wlUFst
         8e1AoZ1lvctHsNsznnhTE0GS4BAbAaXTefgA6aIqYrI31GTHAAhkydIaNK5Ay5DMpLqF
         1s7rZVcP/vprZseaLQyNsbCiA5Us1TodkVwSaKXaVPsbM7YyTCG5punA6tFqv9z8BxmQ
         mkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f/xq/mBB431BB1i7T4kMYTr/2fM98AwDsOsJk9Kvf/U=;
        b=MkYDfybDbklPg6iB3a1n7bB+hYY6Pl7DgqK/9iXfgIHFK7CbvgNnCkHo8vUDZt1wX+
         yrJDsDR6jLrqSojsx8TVcwW8LQvBkaSYNuv3Jpv8JTOdaTCeeBDdQrfia4cZGB4s6Xg3
         UCZV65b9Xd5T9Xmr6Q0h4xMBspy3fagysc/72+OFQFOKJB+T8cnyvuP6v1XOiHEOpCQu
         BakYUeruMQpT0S3qNfgbEPFCHXINIMemNcERWtUm0qbSvFpf/S5J96ENUZw549ldP6fA
         ak/EGZTE61CEb0EDq+UG8a/znU1+4O4VaKQRBBhQc6Tqs6aViO3kVt7x/MX1q0fYwoPH
         aE3w==
X-Gm-Message-State: ANoB5pnmBQnQDKmqjTqjN62rjqBgthyeDi+BKVH2X1yUZ5nOZpXaPbBs
        Ujq5OAxBSiUH/+g4sOY82DI=
X-Google-Smtp-Source: AA0mqf6rL2jhsnEEd4ounF3+8DBXNF2iZz3z9FX8oASlJuGU0Kmn74Dcj/h1r+sWdsVWjqjoHR7Lfg==
X-Received: by 2002:a05:600c:4d07:b0:3cf:8108:de64 with SMTP id u7-20020a05600c4d0700b003cf8108de64mr46955002wmp.139.1670246301249;
        Mon, 05 Dec 2022 05:18:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z12-20020adff74c000000b002423620d356sm11937865wrp.35.2022.12.05.05.18.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 05:18:20 -0800 (PST)
Message-ID: <59dde6dc-5970-c422-30b3-e2cbe4fabd09@gmail.com>
Date:   Mon, 5 Dec 2022 14:18:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
 <20221205123809.5p66jmpalhd4bhoq@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221205123809.5p66jmpalhd4bhoq@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Pcv6F8H8WleeYMqg254LYAIo"
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
--------------Pcv6F8H8WleeYMqg254LYAIo
Content-Type: multipart/mixed; boundary="------------82IBXFV5DFtY5EOfH8ozGjPi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Helge Kreutzmann <debian@helgefjell.de>,
 =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <59dde6dc-5970-c422-30b3-e2cbe4fabd09@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
 <20221205123809.5p66jmpalhd4bhoq@jwilk.net>
In-Reply-To: <20221205123809.5p66jmpalhd4bhoq@jwilk.net>

--------------82IBXFV5DFtY5EOfH8ozGjPi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEyLzUvMjIgMTM6MzgsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
QWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+LCAyMDIyLTEyLTA0
IDE1OjA2Og0KPj4+Pj4gSXNzdWU6wqDCoMKgIG1vdW50IHBvaW50IEk8Qj4g4oaSIG1vdW50
IEk8Qj4NCj4+Pj4+DQo+Pj4+PiAiSGVyZSwgSTxCPiBpcyB0aGUgZGVzdGluYXRpb24gbW91
bnQsIGFuZCBJPGI+IGlzIGEgc3ViZGlyZWN0b3J5IHBhdGggdW5kZXIiDQo+Pj4+PiAidGhl
IG1vdW50IHBvaW50IEk8Qj4uwqAgVGhlIHByb3BhZ2F0aW9uIHR5cGUgb2YgdGhlIHJlc3Vs
dGluZyBtb3VudCwgSTxCL2I+LCINCj4+Pj4+ICJmb2xsb3dzIHRoZSBzYW1lIHJ1bGVzIGFz
IGZvciBhIGJpbmQgbW91bnQsIHdoZXJlIHRoZSBwcm9wYWdhdGlvbiB0eXBlIG9mIg0KPj4+
Pj4gInRoZSBzb3VyY2UgbW91bnQgaXMgY29uc2lkZXJlZCBhbHdheXMgdG8gYmUgcHJpdmF0
ZS4iDQo+Pj4+DQo+Pj4+IEknbSBub3Qgc3VyZSBhYm91dCB0aGlzIG9uZS7CoCBJZiB3ZSBj
aGFuZ2UgdGhhdCB3b3JkaW5nLCBJJ2QgbGlrZSB0byBtYWtlIA0KPj4+PiBzdXJlIHdlIGRv
bid0IGxvc2UgYW55IGRldGFpbHMgaW4gdGhlIGluZm9ybWF0aW9uLsKgIFBsZWFzZSBDQyBh
bnkgcmVsYXRlZCANCj4+Pj4ga2VybmVsIGRldmVsb3BlcnMsIGFuZCBzdWdnZXN0IHRoZW0g
cmV2aWV3IHRoZSBkb2N1bWVudGF0aW9uIGZvciBtb3JlIA0KPj4+PiBjb25zaXN0ZW50IGxh
bmd1YWdlLg0KPj4+DQo+Pj4gVW50aWwgcmVjZW50bHksIHRoZXJlIHdhcyAibW91bnQgcG9p
bnQiIHVzZWQgYWxsIG92ZXIgdGhpcyBtYW4gcGFnZXMuIFRoaXMgDQo+Pj4gd2FzIGNoYW5n
ZWQgdG8gIm1vdW50IiBpbiBvbmUgb2YgdGhlIHByZXZpb3VzIHJlbGVhc2Ugb2YgbWFuIHBh
Z2VzLg0KPj4NCj4+IEkgZGlkbid0IGtub3cgdGhhdDsgcGxlYXNlIHBvaW50IHRvIHRoZSBj
b21taXQgdGhhdCBkaWQgdGhhdC4NCj4gDQo+IFByb2JhYmx5IHRoaXMgb25lOg0KPiANCj4g
IMKgIGNvbW1pdCA4YzlhODI3NDI5NzZkYzk4NTc4MzM4ZWY4ODY3NzZmMDZjMGFiM2YyDQo+
ICDCoCBBdXRob3I6IE1pY2hhZWwgS2VycmlzayA8bXRrLm1hbnBhZ2VzQGdtYWlsLmNvbT4N
Cj4gIMKgIERhdGU6wqDCoCAyMDIxLTA4LTE4IDAxOjM0OjU0ICswMjAwDQo+ICDCoMKgwqDC
oMKgIG1vdW50X25hbWVzcGFjZXMuNzogVGVybWlub2xvZ3kgY2xlYW4tdXA6ICJtb3VudCBw
b2ludCIgPT0+ICJtb3VudCINCj4gIMKgwqDCoMKgwqAgTWFueSB0aW1lcywgdGhpcyBwYWdl
IHVzZSB0aGUgdGVybWlub2xvZ3kgIm1vdW50IHBvaW50Iiwgd2hlcmUNCj4gIMKgwqDCoMKg
wqAgIm1vdW50IiB3b3VsZCBiZSBiZXR0ZXIuIEEgIm1vdW50IHBvaW50IiBpcyB0aGUgbG9j
YXRpb24gYXQgd2hpY2gNCj4gIMKgwqDCoMKgwqAgYSBtb3VudCBpcyBhdHRhY2hlZC4gQSAi
bW91bnQiIGlzIGFuIGFzc29jaWF0aW9uIGJldHdlZW4gYQ0KPiAgwqDCoMKgwqDCoCBmaWxl
c3lzdGVtIGFuZCBhIG1vdW50IHBvaW50Lg0KPiAgwqDCoMKgwqDCoCBTaWduZWQtb2ZmLWJ5
OiBNaWNoYWVsIEtlcnJpc2sgPG10ay5tYW5wYWdlc0BnbWFpbC5jb20+DQo+IA0KPiBCb3Ro
IHRlcm1zIGFyZSB2YWxpZCwgYnV0IHRoZXkgaGF2ZSBkaWZmZXJlbnQgbWVhbmluZ3MuDQo+
IA0KPiAoTm8gaWRlYSB3aGljaCBvbmUgaXMgYXBwcm9wcmlhdGUgaW4gdGhlIHBhcmFncmFw
aCBpbiBxdWVzdGlvbi4pDQoNCg0KVGhhbmtzISAgSSBhbHNvIGRvbid0IGtub3csIHNvIEkn
bGwgbGVhdmUgdGhpcyBhcyBpcyBmb3Igbm93Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------82IBXFV5DFtY5EOfH8ozGjPi--

--------------Pcv6F8H8WleeYMqg254LYAIo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmON75sACgkQnowa+77/
2zKzBw//VwOaLVAm0+ICEa5KvhJwvXc79e7NcDGb22GoQZAZyEkWKY8WJxElIr5H
8vB+QFydYhdUn4lGZx4Bb+4hu8ZGKyjgHGyJnLxm121fWmsoT6d9THJhF98T4A2z
LQ6iOwgjPXakjThz72pEMotS4r7LbRM7YLimKuIf6aadKdmzPf0MIiekKaYSKGM9
e9vwHrLLa55cMNP+M/l8E+iOlHPWLJaqE4cUKOPhwl6pYaqSQi7FTSaUX5BkYV2g
WbsJO7OEAUukkq5l92Q7aS3Lv2Cf+ZhdTZG8LWwCj1uN9QCrN01aVqIPlOHFPBuG
adhZ5J5d07gIm5yQX5mHzrqbQlQbUsoOvFljczV6RaOUYrDmZVkQkhwZ04ZnJ3+p
rKNmZFHqKfuXkFAVfDDB59vGek6kZ9NJPTsliwJaS7Ls9UbCI9cIcFohkXGlnlbh
T2AkCoIf+WOwCtRrexdiKlPYmyY85C5Bpja4hkA5inrQl0Mf6Z5W4GREIRB/OKNJ
Pzajw+dOK9rggPb1uEyaO15KI3Vt2HW8vVVD6JEyza2X6mSrEJQZMp+4DgPIkOAG
a2ew/xFBh/UIJThbwe4sJaWnFLw0V+3NTL/NbXd0Bf6yVzxYyFAj4MqmtaeLg3tr
UZTuBfZegzaO1JtmI6lCQv52IfJQL5azYh5G9EiRrioUK0xDktM=
=AS4C
-----END PGP SIGNATURE-----

--------------Pcv6F8H8WleeYMqg254LYAIo--
