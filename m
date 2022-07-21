Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD5B257CD28
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 16:17:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbiGUORb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 10:17:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbiGUORa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 10:17:30 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0713026123
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 07:17:29 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id z13so2458257wro.13
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 07:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to;
        bh=o2si0v1TMAsKrKsNqNZY+RhfGlGKOnZHZBg4B5XI6eQ=;
        b=gOX8myTG6A0I34sFdFf4Y9DkQsf5dARVE7arqoBgUMuu16Pub769+E2AbPnRsYnQZU
         3a4KkR8EOJW1zjGQnPYRLN6L2hP7MnXfSICsjN+i/M8URdpRAUxmwI16HayqaJLVFylI
         qVvSkr/BwqG/RWf3iXzq5SHs0WoWaox6IeO3deeahpFqSkclLYJJkh/A1pfl/FH9Jcs2
         caiMbXZekIaSpmJZWKjlaaH6O9tw8YwvwGGuLY8SjiSFJ7FvgIKPegkrsRZgkUyIFmrY
         3hxsGQ1P+NxnBXpKPM/yiONFHEhTlo+JGCNXQEEOz65PJfGsm0wnYzYWCeIDhqwkf5/k
         otpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to;
        bh=o2si0v1TMAsKrKsNqNZY+RhfGlGKOnZHZBg4B5XI6eQ=;
        b=Nd8HHJ5PI309EJ6JDimNEueZltHkEVlM9+n86zjC0wxkRpzuiqONdg8u+zD9YZU8XN
         HyY8gnIAyaRLrnOog+J+xEQP42uqO+FvlIokjsKxLUq9L4RIzRHTQczH8QHtofVzjlt3
         2Moy6bAy5nPIWHPVETzj/N5+16gn4eHaa+9bp67CHxfJACSF+bPMry+arfruXJ7gFoWi
         pNNIx1VVkkz/08ZRmC2bk4TLfftVHMOBpGPqpDmGg/TjXAtszWoonrtPVhl2hBelatZU
         PJ0danh+yVjbip5jY6CRmpAoTZVmTkFkjHrsKK8ti4aIJFhlt/+NdixteW9xoIV0MUdB
         zPkA==
X-Gm-Message-State: AJIora/xLKsMqP7WrtqxJ+0uzeWHxMMGY7Low2etqOuftiqnl5jbHE7r
        NncUUllQL4AlMOjcCIV4Vqs=
X-Google-Smtp-Source: AGRyM1vEKs/8iGNygTHfkebN3vE4m5I/uIg7q8eEuDx+wLBMTJqfK/A1cmwUy/ACzxHwCLv5K7RrRQ==
X-Received: by 2002:a5d:59c7:0:b0:21d:8c8e:3a9d with SMTP id v7-20020a5d59c7000000b0021d8c8e3a9dmr36109103wry.332.1658413047367;
        Thu, 21 Jul 2022 07:17:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w1-20020a5d5441000000b0021e493ff810sm2228994wrv.49.2022.07.21.07.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 07:17:26 -0700 (PDT)
Message-ID: <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
Date:   Thu, 21 Jul 2022 16:17:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Linux man-pages Makefile portability
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
In-Reply-To: <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OmNIfu0smf790WRbWSpdFctP"
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
--------------OmNIfu0smf790WRbWSpdFctP
Content-Type: multipart/mixed; boundary="------------m0YTQrcAz3p81DM8BMRcJkhJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org,
 "G . Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
Subject: Re: Linux man-pages Makefile portability
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
In-Reply-To: <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>

--------------m0YTQrcAz3p81DM8BMRcJkhJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbyENCg0KT24gNy8zLzIyIDIzOjQ0LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToN
Cj4gW2FkZGVkIEJyYW5kZW4sIGFzIGhlIHdhcyBpbnZvbHZlZCBpbiBkaXNjdXNzaW9ucyBy
ZWdhcmRpbmcgbWFuM3R5cGU7DQo+IEJyYW5kZW4sIHlvdSBtaWdodCB3YW50IHRvIHZpc2l0
IHRoaXMgdGhyZWFkIGZyb20gdGhlIGJlZ2luaW5nLCBhcyBJIA0KPiBvbmx5IGNvcGllZCB0
aGUgbWluaW11bSB0byByZXBseTsgaXQncyBpbiBsaW51eC1tYW5AXQ0KPiANCj4gT24gNi8y
MC8yMiAxNTo0OSwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNClsuLi5dDQo+PiBUaGF0IHNhaWQs
IG90aGVyIHByb2plY3RzIGFyZSBvZiBjb3Vyc2UgZnJlZSB0byBoYXZlIHN1Y2ggcGFnZXMg
aWYNCj4+IHRoZXkgd2FudCB0by7CoCBUaGUgbWFuZG9jKDEpIHByb2dyYW0gaXMgYWxzbyBh
YmxlIHRvIGhhbmRsZSBwYXRocyBsaWtlDQo+PiAibWFuMy9pZF90LjN0eXBlIi7CoCBJdCB3
aWxsIGNvbnNpZGVyIHRoYXQgcGFnZSB0byBiZSAqYm90aCogaW4gc2VjdGlvbg0KPj4gIjMi
IChhcyBzcGVjaWZpZWQgYnkgdGhlIGRpcmVjdG9yeSBuYW1lKSBhbmQgaW4gc2VjdGlvbiAi
M3R5cGUiIChhcw0KPj4gc3BlY2lmaWVkIGJ5IHRoZSBmaWxlIG5hbWUgYW5kIGJ5IHRoZSAu
VEggbWFjcm8pLsKgIEkgd291bGQgY29uc2lkZXINCj4+IGl0IGJldHRlciBzdHlsZSB0byBr
ZWVwIHNlY3Rpb24gbmFtZXMgY29uc2lzdGVudCwgaS5lLiB0byB1c2UgZWl0aGVyDQo+PiAi
bWFuMy9pZF90LjMiIC5USCBpZF90IDMgb3IgIm1hbjN0eXBlL2lkX3QuM3R5cGUiIC5USCBp
ZF90IDN0eXBlLA0KPj4gYnV0IGl0J3Mgbm90IGEgYmlnIGRlYWw6IHNpbmNlIG1hbnkgc3lz
dGVtcyAoaW4gcGFydGljdWxhciB2YXJpb3VzDQo+PiBMaW51eCBkaXN0cm9zKSBzdWZmZXIg
ZnJvbSBzdWNoIGluY29uc2lzdGVuY2llcywgaGFuZGxpbmcgc3VjaA0KPj4gaW5jb25zaXN0
ZW5jaWVzIGdyYWNlZnVsbHkgaXMgYW4gaW1wb3J0YW50IGZlYXR1cmUgdGhhdCBjZXJ0YWlu
bHkNCj4+IHdvbid0IGdldCByZW1vdmVkLg0KPiANCj4gSSBjb25zaWRlcmVkWzZdIHVzaW5n
IG1hbjN0eXBlLCBhbmQgdXNlZCBtYW4zIGluIHRoZSBlbmQganVzdCBiZWNhdXNlIA0KPiB3
aGVuIGluIGRvdWJ0IEkgb3B0ZWQgZm9yIHRoZSBzbWFsbGVzdCBjaGFuZ2UuwqAgS25vd2lu
ZyB0aGF0IGl0IGJyZWFrcyANCj4gbWFuZG9jKDEpLCBJJ2xsIGRlZmluaXRlbHkgbW92ZSB0
byA8bWFuM3R5cGUvPi4NCj4gDQo+IFs2XTogDQo+IDxodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1tYW4vNzYxYmIxMmYtMzFlMC0zNjlkLTgzMTUtZDJlMTU0NTUwNWM3QGdtYWls
LmNvbS9ULyN1Pg0KPiANCg0KSSBmaXhlZCBpdDoNCjxodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2lkPTQ1MWEy
N2E3OGQ1MTk3M2IwMWJmYjVkM2IxZTBlYzA4MWQ5MTYxZTE+DQoNCkFuZCBEZWJpYW4gc2Vl
bXMgdG8gd29yayBmaW5lIHdpdGggbWFuM3R5cGUvIGFuZCBtYW4ydHlwZS8gb3V0IG9mIHRo
ZSANCmJveCwgc28gSSBwcmVmZXIgaXQgdGhpcyB3YXkuICBJIGhvcGUgdGhhdCBvdGhlciBw
cm9qZWN0cyBmb2xsb3cgdGhlIA0KZXhhbXBsZTsgYW5kIHRoYXQgcGFja2FnZXJzL2Rpc3Ry
aWJ1dGlvbnMgYWxzbyBjcmVhdGUgc3Vic2VjdGlvbiANCmRpcmVjdG9yaWVzLCBhbmQgZG9u
J3QgdW5kbyBteSB3b3JrLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8g
Q29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------m0YTQrcAz3p81DM8BMRcJkhJ--

--------------OmNIfu0smf790WRbWSpdFctP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLZX+4ACgkQnowa+77/
2zKqEg/8D/j3E2KFI+Lf9kvB/yF1o8zU0iw+zEdSj71tGqtApfNK3jppUbCrJQmn
Uc987Ut1R81svh54JueYhO6egWst3C0YBwxW2ZyQBcWovB8tsrbs88tG1CDj0Mr/
aD0+hlYt0T/dqaEG7mQcBJhQQA45jujFeRzAl424O4dMa2S5RwP9ihKzeUnq164Q
K994PNSs1mBgq7fpjEK5wOnAoIwZUpNW0biZhOGeIMevRYdEOjxTwdYlnbnRRTB8
RIGdsJHMe0lDmIQa7TSrhnWk8VZx8Dy7kn8QlVZTLCZMutMSQy3cz5P8niN4aNu7
ODWTa/Yq0/idNT4rUstl93oSOruN9b71EcLIZwHipTRQPBrx+YZQygpkBcChO1nz
cAneLM7f85QYWcLY+EZ2kKdLeERFUT6CyuDLr08ejpCHb6s30hXeRQ8u3DsL/E0G
UVUMsf+OvQ9gAtSY08dkLJITZfTwUWgksZJmzIvxJpxlmahraIHAX50k9HywAf7w
OoRQYTM8HldtXEti2zM+EWrrBVRXLst2INTL8joMBH+pXYX7vkVvcEg24/wu9MVH
JfanFh4IHKPPVs+TlzYHrBptvzQ0NRW0kB4B1pPCZ20On2Beho0H3Yu2+1RbrYmf
OsK4DhyspuVAnxCi6LY9S5vO2Lr8GmZb8GaArIoEnqW5dqG4dWY=
=PeSe
-----END PGP SIGNATURE-----

--------------OmNIfu0smf790WRbWSpdFctP--
