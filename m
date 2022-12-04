Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA8864208A
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 00:28:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbiLDX22 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 18:28:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLDX20 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 18:28:26 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B235DA1BD
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 15:28:25 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so8750147wmi.3
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 15:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=daIFigpfqeEXHyqnpJBdDzlbkr2Z/fF8RqF7U1qjnHo=;
        b=kC/AuuRXDbxAHJmtfJqjdmmAXF7SrL40V2xggCT6uFkHOBiNJOYUrsAr6PVLBNnHmr
         UCC7JgnZJoODGksW5CYQRK3vVSDxVEInLK3OZBo8V3tmHHWftlEbP/XY4JklHSwqFcwE
         W7vEYbV4ExSKEcB7YgkO+N0Q1OjiShSdoHamdLsw76bx1qKYWi8TurPAFsdmbkK35dvu
         1Bv4ikMK+hZGKha/SaXYhjITjFSujbJk5C58G9cfU45pZVpug4tdgMf7V7hkY4xdsrN6
         1LGdf/S3FvtchiIHKE+YyaJOUGMDZWYJGQMl8DD6dBNokT1Czeu8gsm7vQlvRyINTuth
         fQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=daIFigpfqeEXHyqnpJBdDzlbkr2Z/fF8RqF7U1qjnHo=;
        b=LiPm1q/pDY28LKfd9eUbdaYLmoLjB6VHmstk83+vZSfzKT4Vn8WSXCmHqAQIPZ5Iv/
         pn6AGEsURkODoQpkqzCygQDk0zRBIPLybouzfjkuEJqy5unrRkQ3MG2Xrcq4R41cLClm
         9ffdATof46ZI4nz8a9JLU7hfv3JwfBcTtjJ6smMVrMMhaRRYIFPuPgIxn4f/5v351JVm
         x0YzR89B7oSQY4Uv0FhL5VBHDn943mGJqR5YX7YOSXA1M+yhl7ci9xyNLuxPi08gG/iP
         iZdb5Zb+pnRfpb/Hj/+1yk3Df27m0sHLf38sNBqWb6X61cCZrH7zQEMpBKE/GgQVpvH3
         /DcQ==
X-Gm-Message-State: ANoB5pmr3Tymebe3moBn0qYAomA2Ny97TnRK9meXIBvOchN0UFfLpEH/
        XLPYplTJh8dAWoKiHvbTOXM=
X-Google-Smtp-Source: AA0mqf4IwVQPjowdb7fOZK2U9JwFG3vH7ktGE/B0N73fkpfAmckuPGQI639Jiv0mnyeETgAFoYQpPQ==
X-Received: by 2002:a7b:c4d8:0:b0:3cf:b0ed:de9d with SMTP id g24-20020a7bc4d8000000b003cfb0edde9dmr44319853wmk.188.1670196504118;
        Sun, 04 Dec 2022 15:28:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a1-20020adffac1000000b0024194bba380sm12906244wrs.22.2022.12.04.15.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 15:28:23 -0800 (PST)
Message-ID: <9f628f84-5fd2-b226-215e-e20b4f459991@gmail.com>
Date:   Mon, 5 Dec 2022 00:28:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcsncpy.3
Content-Language: en-US
To:     Sam James <sam@cmpct.info>, Sam James <sam@gentoo.org>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        GNU C Library <libc-alpha@sourceware.org>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
 <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
 <B67BFC03-D966-497B-94FC-499531EBE141@cmpct.info>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <B67BFC03-D966-497B-94FC-499531EBE141@cmpct.info>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vRRjLFqujvgzjoKEFw3XR7p5"
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
--------------vRRjLFqujvgzjoKEFw3XR7p5
Content-Type: multipart/mixed; boundary="------------TsWKkkMVsx4nujwlnDel4tYE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@cmpct.info>, Sam James <sam@gentoo.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>,
 GNU C Library <libc-alpha@sourceware.org>, mario.blaettermann@gmail.com,
 linux-man@vger.kernel.org
Message-ID: <9f628f84-5fd2-b226-215e-e20b4f459991@gmail.com>
Subject: Re: Issue in man page wcsncpy.3
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
 <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
 <B67BFC03-D966-497B-94FC-499531EBE141@cmpct.info>
In-Reply-To: <B67BFC03-D966-497B-94FC-499531EBE141@cmpct.info>

--------------TsWKkkMVsx4nujwlnDel4tYE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxMi81LzIyIDAwOjA5LCBTYW0gSmFtZXMgd3JvdGU6DQo+IA0KPiAN
Cj4+IE9uIDQgRGVjIDIwMjIsIGF0IDIzOjA2LCBTYW0gSmFtZXMgdmlhIExpYmMtYWxwaGEg
PGxpYmMtYWxwaGFAc291cmNld2FyZS5vcmc+IHdyb3RlOg0KPj4NCj4+DQo+Pg0KPj4+IE9u
IDQgRGVjIDIwMjIsIGF0IDIwOjQyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgTGliYy1hbHBo
YSA8bGliYy1hbHBoYUBzb3VyY2V3YXJlLm9yZz4gd3JvdGU6DQo+Pj4NCj4+PiBIaSBIZWxn
ZSwgZ2xpYmMgZGV2ZWxvcGVycywNCj4+Pg0KPj4+IE9uIDEyLzQvMjIgMTA6MDcsIEhlbGdl
IEtyZXV0em1hbm4gd3JvdGU6DQo+Pj4+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xs
b3dpbmcgd2FzIGZvdW5kOg0KPj4+PiBJc3N1ZTogICAgSXMgdGhlICJMIiBpbiB0aGUgYnJh
Y2tldCAoZm9yIHRoZSBOVUxMIGNoYXJhY3RlcikgY29ycmVjdD8NCj4+Pj4gIlRoZSBCPHdj
c25jcHk+KCkgIGZ1bmN0aW9uIGlzIHRoZSB3aWRlLWNoYXJhY3RlciBlcXVpdmFsZW50IG9m
IHRoZSINCj4+Pj4gIkI8c3RybmNweT4oMykgIGZ1bmN0aW9uLiAgSXQgY29waWVzIGF0IG1v
c3QgSTxuPiB3aWRlIGNoYXJhY3RlcnMgZnJvbSB0aGUiDQo+Pj4+ICJ3aWRlLWNoYXJhY3Rl
ciBzdHJpbmcgcG9pbnRlZCB0byBieSBJPHNyYz4sIGluY2x1ZGluZyB0aGUgdGVybWluYXRp
bmcgbnVsbCINCj4+Pj4gIndpZGUgY2hhcmFjdGVyIChMXFwoYXFcXGUwXFwoYXEpLCB0byB0
aGUgYXJyYXkgcG9pbnRlZCB0byBieSBJPGRlc3Q+LiINCj4+Pj4gIkV4YWN0bHkgSTxuPiB3
aWRlIGNoYXJhY3RlcnMgYXJlIHdyaXR0ZW4gYXQgSTxkZXN0Pi4gIElmIHRoZSBsZW5ndGgi
DQo+Pj4+ICJJPHdjc2xlbihzcmMpPiBpcyBzbWFsbGVyIHRoYW4gSTxuPiwgdGhlIHJlbWFp
bmluZyB3aWRlIGNoYXJhY3RlcnMgaW4gdGhlIg0KPj4+PiAiYXJyYXkgcG9pbnRlZCB0byBi
eSBJPGRlc3Q+IGFyZSBmaWxsZWQgd2l0aCBudWxsIHdpZGUgY2hhcmFjdGVycy4gIElmIHRo
ZSINCj4+Pj4gImxlbmd0aCBJPHdjc2xlbihzcmMpPiBpcyBncmVhdGVyIHRoYW4gb3IgZXF1
YWwgdG8gSTxuPiwgdGhlIHN0cmluZyBwb2ludGVkIg0KPj4+PiAidG8gYnkgSTxkZXN0PiB3
aWxsIG5vdCBiZSB0ZXJtaW5hdGVkIGJ5IGEgbnVsbCB3aWRlIGNoYXJhY3Rlci4iDQo+Pj4N
Cj4+PiBBcyBhbiB1bnJlbGF0ZWQgbm90ZS4gIEkndmUgaGFkIHRoaXMgcnVubmluZyBpbiBt
eSBtaW5kIGZvciBzb21lIHRpbWUuLi4geW91ciB2YXJpb3VzIGJ1ZyByZXBvcnRzIGZvciBz
dHJuY3B5KDMpIGFuZCBzaW1pbGFyIHdpZGUgY2hhcmFjdGVyIGZ1bmN0aW9ucyBoYXZlIHRy
aWdnZXJlZCB0aG9zZSB0aG91Z3RzLg0KPj4+DQo+Pj4gSSdtIGdvaW5nIHRvIG1hcmsgc3Ry
bmNweSgzKSBhbmQgc2ltaWxhciBmdW5jdGlvbnMgYXMgZGVwcmVjYXRlZCwgZXZlbiBpZiBu
byBsaWJjIG9yIHN0YW5kYXJkIGhhcyBkb25lIHNvLiAgVGhlcmUncyB3aWRlIGFncmVlbWVu
dCAoYXQgbGVhc3QgaW4gc29tZSBjb21tdW5pdGllcykgdGhhdCBzdHJuY3B5KDMpIF9pcyBl
dmlsXy4gIFRoZXJlJ3Mgc2ltcGx5IG5vIHVzZSBmb3IgaXQuDQo+Pj4NCj4+DQo+PiBQbGVh
c2UgZG9uJ3QgZG8gdGhpcyB1bmlsYXRlcmFsbHkuIEFwcGxlIGRpZCB0aGlzIHVuaWxhdGVy
YWxseSBmb3Igc3ByaW50ZiB3aGljaCBoYXMgY2F1c2VkIHByb2JsZW1zLCBhcyB3ZWxsLg0K
PiANCj4gc25wcmludGYsIHRoYXQgaXMNCg0KTm8sIHRoZXkgZGVwcmVjYXRlZCBzcHJpbnRm
KDMpLCBBRkFJSy4NCjxodHRwczovL2xpc3RzLmdudS5vcmcvci9idWctZ251bGliLzIwMjIt
MTEvbXNnMDAwMTMuaHRtbD4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------TsWKkkMVsx4nujwlnDel4tYE--

--------------vRRjLFqujvgzjoKEFw3XR7p5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONLQsACgkQnowa+77/
2zLf7Q//UHnmJ4PwqwOsPVpenpyUXxOat8ZijBrrH2ce4bBs4JoZkbYQmwV2p7s6
CRzJs3kMnRaKtXOm30m8BEV6uA++2V1LyM8VJDOd6wfHQaqab+4mgQo2uMsYZMPS
1MQTYMaQd0Bx6/d9243qrk0RpKzNk3KNB/Dimnw52o1jDTW/wVjd+UJe8v1gEs+M
cPi8S/jHaAf3QvwLa9MuvBIYymoKaS6zmAo3die45IE4D/kvx7nyz2iWtvvUsUd6
7A3KY1g1N3QYRZW5EDITiBpQwnUoUnqoV8hW/nYIKa2y0gHM+sz4tCpyGsRgq2P7
2wHmA6eL3nQgbXO/FsVvmdjmCCPPkBgRyrcuuAijcbrAm8PfThMAoIdWxZMhboYr
29e8GtDnZMLsvbRyVz+UZCwKOUQdWuW8nAoO77UddVFIh8badP9UsjQUsYRezgO+
iq+Xczcyr3GlUBs2iMVyqUrQIUoxbeUHkIcQx2mRIA2CTejFh/BOV0QCYJgDzHPE
LDDLpvy9vbFHyTkjqLb7fzKUWVXpzrZ6jBA/x81DEsxENTR0Nuzoi1kTJ5lnRU4c
y0gKvY+GXcMNq1JGiJVxa9pSsmJs5dsK9wun8h08Z7/PYjUJLhBKvaARdS0UFIXS
u9foXJ32Ih8/J7jtRX053rgAIISbttPGFjdZuPel+2AYP0k3qC0=
=4lPS
-----END PGP SIGNATURE-----

--------------vRRjLFqujvgzjoKEFw3XR7p5--
