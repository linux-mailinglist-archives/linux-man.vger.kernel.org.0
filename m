Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58E77641FB6
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 22:01:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230201AbiLDVBX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 16:01:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbiLDVBW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 16:01:22 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EC9012AA6
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 13:01:21 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h11so15867804wrw.13
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 13:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=txnIZkqRpsbBY/0rD4Hxvh5LQ0TQvyYkOZz91IF00pI=;
        b=IFwYV5jQeoXjJmJVS4nrX1bxdoIgTwxAk8in8tDuSCVqbqVqdFzgORTcCQ7IMHnjJz
         QvTyqov1Vm1qLLhhAkBFolLtLFOLyYTYNiahgacqRTmH71ooUMyuADn+pChahABH7cUy
         gqHNnfkvG4OmArowZB/DHUrx8U/CQ3/qzIFJ2A7YkWTpJt0ZoLCBIfxgzI/i0lZIk87Q
         qPpbsdY7Xop7A9efCtu6aLHRqSqP1gdrENW8jsXbX/1dMpVXscW9yjoNv6AfSPwKoga/
         2pTBl7/yAY2pAeBJJXgsa7RAccuFzlPWjIErozrCR/F9mduDmJELs9iKEHHrKZED+UMY
         7wrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=txnIZkqRpsbBY/0rD4Hxvh5LQ0TQvyYkOZz91IF00pI=;
        b=vRoV8p06TDeEIFzsTAYdT/Mm1HwrjGBJ9zzqacgaI9onQNo/KoBXin/F4YsckZvzBc
         yyElshTaIgRUQhDmoMz3JGNkhusIhLh75RaHDbZMvKUsSgXmGiSZZB99t/rzXaHWtfy0
         1r6Hv4srJR47KvypIUzJnZ5PRVXNecOzcMcU89sbAxnPAf6xFhCxZbOlErI9awnHakAd
         R6Va/JJvkn8OtT03aY5iI7cfk0zuxfddyYiUdWpBZSAsHxHfG+xiCVZodSed9LenkDEn
         iikacggpRQpPzsd7Q7wwL/Zk8feEMW8YrveCR5jeTOcpwhsh4/nRJXz4kW+OsNi8F/FJ
         J2mQ==
X-Gm-Message-State: ANoB5pn+qcKrtnzthZJ7/nEZem2NoZ7qFm8wcyxLEod+HAcjaloIKW59
        f+h3i+Q1n2CZDbFU2XA7H4g=
X-Google-Smtp-Source: AA0mqf7MeGeDmK7g4hIYj2mkNbTzpbjBPuU5qbUAFRNyiXppArjN6Xfm20P0aloiRszRRJ762YjiXg==
X-Received: by 2002:adf:f90d:0:b0:236:6efd:ed6a with SMTP id b13-20020adff90d000000b002366efded6amr51460116wrr.32.1670187679665;
        Sun, 04 Dec 2022 13:01:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z16-20020a5d4d10000000b00241c712916fsm15384931wrt.0.2022.12.04.13.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 13:01:19 -0800 (PST)
Message-ID: <51930343-57d6-7728-c95d-522cdb6dc59f@gmail.com>
Date:   Sun, 4 Dec 2022 22:01:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page dsp56k.4
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090708.GA32589@Debian-50-lenny-64-minimal>
 <f3a2924c-fd3f-7dc2-2409-09b4631b81da@gmail.com>
 <20221204135044.GA441@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204135044.GA441@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PDqeoi008PYv6HGac2Gdxmja"
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
--------------PDqeoi008PYv6HGac2Gdxmja
Content-Type: multipart/mixed; boundary="------------KZZlqh47Un7gIZ4FGAeP8VUb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <51930343-57d6-7728-c95d-522cdb6dc59f@gmail.com>
Subject: Re: Issue in man page dsp56k.4
References: <20221204090708.GA32589@Debian-50-lenny-64-minimal>
 <f3a2924c-fd3f-7dc2-2409-09b4631b81da@gmail.com>
 <20221204135044.GA441@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204135044.GA441@Debian-50-lenny-64-minimal>

--------------KZZlqh47Un7gIZ4FGAeP8VUb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTQ6NTAsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IEhlbGxv
IEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMTI6MjQ6NTdQTSArMDEw
MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBIaSBIZWxnZSwNCj4+DQo+PiBPbiAx
Mi80LzIyIDEwOjA3LCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVy
dGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAg
IEI8ZHNwNTZrPiDihpIgSTxkc3A1Nms+IChhcyBpbiBvdGhlciBwbGFjZXMgaW4gdGhpcyBm
aWxlKQ0KPj4+DQo+Pj4gIlRoZSBCPGRzcDU2az4gZGV2aWNlIGlzIGEgY2hhcmFjdGVyIGRl
dmljZSB3aXRoIG1ham9yIG51bWJlciA1NSBhbmQgbWlub3IiDQo+Pj4gIm51bWJlciAwLiIN
Cj4+DQo+PiBGaXhlZC4gIFRoYW5rcyBmb3IgdGhlIHJlcG9ydCEgIEknbSBwdXNoaW5nIHRo
ZXNlIGNoYW5nZXMgdG8gYSAndHJhbnNsYXRpb24nDQo+PiBicmFuY2ggaW4gdGhlIGdpdCBy
ZXBvc2l0b3J5LCBzbyB5b3UgY2FuIGhhdmUgYSBsb29rIGF0IHRoZSBjaGFuZ2VzIGJlZm9y
ZSBJDQo+PiBhcHBseSB0aGVtIHRvIHRoZSBtYXN0ZXIgYnJhbmNoLiAgSSdsbCBiZSBjb25m
aXJtaW5nIHdpdGggc2hvcnQgbWVzc2FnZXMNCj4+IGFib3V0IGVhY2ggaXNzdWUgdGhhdCBJ
IGZpeC4NCj4gDQo+IFRoYW5rcyBhIGxvdC4NCj4gDQo+IEJ1dCB5b3UgZG9uJ3QgbmVlZCB0
byBoYW5kbGUgdGhlbSBhbnkgc3BlY2lhbCwgdG8gYmUgaG9uZXN0IEkgcHJvYmFibHkNCj4g
d29uJ3QgaGF2ZSB0aGUgcmVzc291cmNlcyB0byByZXZpZXcgdGhlbSBhZ2FpbiAoYW5kIEkg
YmVsaXZlIE1hcmlvDQo+IHdvbid0IGVpdGhlcikuIEFuZCBhY3R1YWxseSwgSSBmdWxseSB0
cnVzdCB5b3UgdG8gaGFuZGxlIHRoZW0NCj4gYXBwcm9wcmlhdGVseS4NCg0KRG9uZSA6KQ0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gR3JlZXRpbmdzDQo+IA0KPiAgICAgICAgICBI
ZWxnZQ0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------KZZlqh47Un7gIZ4FGAeP8VUb--

--------------PDqeoi008PYv6HGac2Gdxmja
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCp4ACgkQnowa+77/
2zLrUA//YVo8Q+To0xBF8Vw3N+vgubLIoxXDO16NLdT1UD6b4m1R+wmHxCIFzjXD
G4j5hwiCD2Yfdke4qan3s2RMhDNFENF/6zaStq28HgNYA1z/aMj1z1FBdalxqjpH
TPtfvvcJmfuOo+YlVrel4c92/8rX+E9NZhHeOLitc+HXNFnxivPy4cqECVWrVu30
oRGG/8qfjaYYQOgACC83+H5zhEFBnuj3F3vL69xISuIReWzYYultkbuix0c7B89s
Yuvw4hUr6g7+1nMnIEGRiyZQNL5uHiJYspH/uLjShZsg4DnsWQAMxYAVMCpggmaM
gSiAnE6SrZGVDHLl3o5luxZQbfxPaXhMzZcYNMnEnHipNCJkXcc1vIIfMmAGnrDl
i3Vxd/5IcYcWq6y6iCOORRonEgL3DHwT+Zzoe15EZXVWUtYQv3+u6gJJPcnrmV/s
gtG5n6j8fQnqPOOu9VAOlG+sJeKy16sGED1S4CDwSpN067NojT6P9dyz6++Nh6WE
6NCtHRKJdYWAcDEkbPfBap7bCSTcUXzfUvLnbjojuhGaleBfx8GvdJPDFT+34TTC
GXe0PNOND8WkRfiQOyBaTygHWIytlrhPKFwvHd0e7D+hBk17q9ZBsTEF/4Ksu+3U
1jT6Id4vBMh8BAvMSaY673W4RLVwAHBBPh8o65PAl0W3tTPj4D0=
=C4fw
-----END PGP SIGNATURE-----

--------------PDqeoi008PYv6HGac2Gdxmja--
