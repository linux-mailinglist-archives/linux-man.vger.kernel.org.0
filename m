Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27FDE6417F4
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 18:04:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbiLCREE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 12:04:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiLCREE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 12:04:04 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9E121897
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 09:04:03 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id u12so11527025wrr.11
        for <linux-man@vger.kernel.org>; Sat, 03 Dec 2022 09:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hLJUCM/pP94VP/J3o3DnhBBpNo2eJFbE10M5hXeEbP0=;
        b=DxQfhf8Xmxn6thM/OvzNLLGXr/enslxB1E/J8/7cReuiv/GWJIVjNk7BuGLKMv7VTf
         jI1s6S8uJfdzOB+ESYc9LCWahIt4hvjLWJIzrT09Wyy04ABlbNVw4ew5V1l9VBWysqR3
         dvlj6u3KPGlV/iShBkw3ffLQpsrEtiDiT17e+DQoAa44JvVEQ4K1AYLWXlA/2JH+aHs4
         OwPYLbmFcH0gxesC9VBjYmkaUu4D9HqMBlsa58U5cD2ZHtXgPWZngR6FoxhI9ABHrOtv
         jm/r1hvltVqqwx78YU8SzhjiTH35H+ioZCQ4aWjvE5byOKHPnMyNJ8VoXfHiQJ7CirgW
         xYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hLJUCM/pP94VP/J3o3DnhBBpNo2eJFbE10M5hXeEbP0=;
        b=UdIAuqr3gGYmfKvGQ39lu+TgI24MH9/7VLen1/O1BeGWPKuF4+xry0C3vYd+xBGZXP
         AkDQdffmr08qu7MoZISUsMszTCLhj9XhfSUrgVTZnKLPYGZwiSRxrI14lvuRKs47K8jk
         yxqyHKA04zvCmgvoZNZGPeL3Tjv2esyKJf0ji+EDQ+lSmBMikjYlWWorJSo+xTlvS6Eo
         KnXXCtGO3gEoE+hqcaWuvMQqDbEUUg55GbM0cu9Rxj+j9Swgu+0yi5IbboUEomt/nc3f
         Y2opOGm9fxHvVVrpnNsXMJOTJ0SCrNLvt0zYKjSk/WnP48zwknBKXsloJw4uvC8IPJRv
         0cKg==
X-Gm-Message-State: ANoB5plkRgxYHVS2mQQDKBP/gDrR0a2wvCY5CjLlPurZmVdW/UnkG7Dl
        V042UG1XIbD7ij7Avlo4s0U=
X-Google-Smtp-Source: AA0mqf59c9jbHoTkq/9HLzzE+fODRh9fMqItTPHSi0gsNKRcZr6//stvqQaHaMRojWLJ4nbIKzFdsg==
X-Received: by 2002:adf:e105:0:b0:236:73af:f9ad with SMTP id t5-20020adfe105000000b0023673aff9admr44974457wrz.225.1670087041653;
        Sat, 03 Dec 2022 09:04:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v7-20020adfe287000000b00241fea203b6sm9952344wri.87.2022.12.03.09.04.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Dec 2022 09:04:01 -0800 (PST)
Message-ID: <04e836cb-8756-28c8-b2b4-ff9435e1d359@gmail.com>
Date:   Sat, 3 Dec 2022 18:03:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Conflicting alias for some man pages
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>,
        Marcos Fouces <marcos@debian.org>, toddy@debian.org
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <20221203165130.GA22312@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221203165130.GA22312@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CJFFFjs5sEf2IJY90xVgbasQ"
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
--------------CJFFFjs5sEf2IJY90xVgbasQ
Content-Type: multipart/mixed; boundary="------------Dr9z8noP00pVMwRWhkOT4dRL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: linux-man@vger.kernel.org,
 =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>,
 Marcos Fouces <marcos@debian.org>, toddy@debian.org
Message-ID: <04e836cb-8756-28c8-b2b4-ff9435e1d359@gmail.com>
Subject: Re: Conflicting alias for some man pages
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <20221203165130.GA22312@Debian-50-lenny-64-minimal>
In-Reply-To: <20221203165130.GA22312@Debian-50-lenny-64-minimal>

--------------Dr9z8noP00pVMwRWhkOT4dRL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzMvMjIgMTc6NTEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gT24gU2F0LCBEZWMgMDMsIDIwMjIgYXQgMDU6MzY6
MjBQTSArMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi8zLzIyIDE1
OjAxLCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPiANCj4+PiBQbGVhc2UgcmVtb3ZlIGR1
cGxpY2F0ZXMgaW4gdGhlIGFsaWFzIChhbHRlcm5hdGl2ZSkgbmFtZXMgb2YgbWFuDQo+Pj4g
cGFnZXMuIChMaXN0IG9mIGtub3duIGV4YW1wbGVzIGF0IHRoZSBlbmQpLg0KPiDigKYNCj4g
DQo+PiBTbywgaWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgc3BlY2lmeWluZyB0aGUgc2Ft
ZSBuYW1lIGluIHRoZSAuU0ggTkFNRQ0KPj4gc2VjdGlvbiBpbiBtb3JlIHRoYW4gb25lIHBh
Z2UgaXMgcHJvYmxlbWF0aWMsIHJpZ2h0PyAgSXQgbWFrZXMgc2Vuc2UgdG8gbWUuDQo+PiBJ
J20gYSBiaXQgc3VycHJpc2VkIHRoYXQgdGhpcyBidWcgaGFzbid0IGJlZW4gcmVwb3J0ZWQg
dGhvdWdoLCBidXQgb3RoZXJ3aXNlDQo+PiBJJ20gZmluZSBmaXhpbmcgaXQuDQo+IA0KPiBB
cyB1c3VhbGx5IHdoYXRpcy9tYW4gaXMgaGlkaW5nIHRoaXMsIHByb2JhYmx5IG5vYm9keSBo
YXMgbm90aWNlZCAob3INCj4gYm90aGVyZWQgcmVwb3J0aW5nKS4NCg0KWWVhaCwgbWFrZXMg
c2Vuc2UuDQoNCj4gDQo+PiBJIENDZWQgYSBmZXcgcGVvcGxlIHRoYXQgaGF2ZSBhIGxvdCBt
b3JlIGV4cGVyaWVuY2UgdGhhbiBJIGRvLCBhbmQgd2lsbA0KPj4gcHJvYmFibHkgYmUgYWJs
ZSB0byB0ZWxsIGlmIEkgdW5kZXJzdG9vZCB0aGUgcHJvYmxlbSBjb3JyZWN0bHkuDQo+IA0K
PiBUaGFua3MuDQo+IA0KPj4gU28sIHNpbmNlIHdlJ3JlIHN0aWxsIG9uIHRpbWUgZm9yIHRo
ZSBEZWJpYW4gZnJlZXplLCBpZiB5b3UgY29uZmlybSB0aGF0DQo+PiB0aGlzIGlzIHRoZSBp
c3N1ZSBhbmQgdGhlIGZvbGxvd2luZyBmaXggaXMgY29ycmVjdCwgSSdsbCBpbXBsZW1lbnQg
aXQgYW5kDQo+PiByZWxlYXNlIG1hbi1wYWdlcy02LjAyIGxhdGVyIHRoaXMgbW9udGg7IHRo
ZSBzb2xzdGljZSBzZWVtcyBhIHByb3BlciBkYXkgZm9yDQo+PiBhIHJlbGVhc2UsIGNlbGVi
cmF0aW5nIHRoZSBuZXcgU3VuLiAgVGhhbmtzIGZvciB0aGUgcmVwb3J0IQ0KPiANCj4gVGhh
dHMgZ3JlYXQuIEkgcHV0IHRoZSBvdGhlciBEZWJpYW4gbWFpbnRhaW5lciBmb3IgbWFucGFn
ZXMgaW4gQ0Mgc28gdGhhdA0KPiBib3RoIGFyZSBhd2FyZSBhcyB3ZWxsLg0KDQpHb29kLg0K
DQo+IElmIHRoZXkgYXJlIGFibGUgdG8gcHJlcGFyZSBhIHJlbGVhc2Ugc29vbg0KPiBhZnRl
ciB5b3UgZGlkLCB0aGVuIHRoZSB0cmFuc2xhdG9ycyBjb3VsZCBzdGFydCBkZWFsaW5nIHdp
dGggWzFdIHdoaWNoDQo+IGxvb2tzIGxpa2UgYSBiaWcgY2hhbmdlPw0KDQpbMV0gd2FzIG9u
bHkgYWRkaW5nIHN5bnRhY3RpYyBzdWdhciB0byB0aGUgY29kZSBpbiB0aGUgU1lOT1BTSVMs
IHNvIHRyYW5zbGF0aW9ucyANCnNob3VsZG4ndCBiZSBhZmZlY3RlZC4NCg0KPiANCj4gUmVn
YXJkaW5nIHRpbWluZzoNCg0KQ291bGQgeW91IHBsZWFzZSByZW1pbmQgbWUgd2hhdCBhcmUg
dGhlIGZyZWV6ZSBkYXRlcyBhbmQgcmVzdHJpY3Rpb25zIHRoYXQgDQphZmZlY3QgdGhlIG1h
bi1wYWdlcz8NCg0KPiBUaGVyZSBhcmUgcXVpdGUgYSBmZXcgZml4ZXMgbm90ZWQgYnkgdGhl
IHRyYW5zbGF0b3JzIGluIHRoZSBvcmlnaW5hbA0KPiBtYW4gcGFnZXMuIFNvIGl0IG1pZ2h0
IG1ha2Ugc2Vuc2UgdG8gcmVwb3J0IHRoZW0gYXMgd2VsbCBzb29uPw0KPiANCj4gU2hvdWxk
IEkgcmVwb3J0IHRoZW0gb25lIGJ5IG9uZSBhcyBJIGRpZCBpbiB0aGUgcGFzdCB0byB0aGlz
IGxpc3QgYW5kDQo+IHlvdSBhbmQgTWljaGFlbCBLZXJyaXNrIGluIENDPw0KDQpZZXMsIHBs
ZWFzZSwgYW5kIGlmIHRoZXJlIGFyZSBhbnkgb2xkIGlzc3VlcyB0aGF0IHdlIGZvcmdvdCB0
byBhZGRyZXNzLCBmZWVsIA0KZnJlZSB0byBwaW5nIGFib3V0IHRoZW0uDQoNCllvdSBjYW4g
b21pdCBNaWNoYWVsIGZyb20gQ0MgaWYgeW91IHdhbnRbMl0uDQoNCj4gDQo+IChXZSBhcmUg
bm90IGRvbmUgd2l0aCBhbGwgdHJhbnNsYXRpb24gdXBkYXRlcywgYnV0IEkgd291bGQgc2lt
cGx5IHJlcG9ydA0KPiB0aGUgY3VycmVudCBpc3N1ZXMgZXZlbiBpZiBzbGlnaHRseSBpbmNv
bXBsZXRlKS4NCg0KU3VyZSwgSSdkIGxpa2UgdG8gaGVscCBnZXQgYXMgbWFueSBmaXhlcyBm
b3IgYm9va3dvcm0gYXMgd2UgY2FuLiAgSSdtIG5vdCBzdXJlIA0KaG93IG11Y2ggdGltZSBJ
J2xsIGJlIGFibGUgdG8gcHV0IGluIHRoaXMsIGJ1dCBJJ2xsIHRyeS4NCg0KPiANCj4+IFNv
LCBJJ2xsIHRyeSB0byBmaW5kIGEgY29tcGxldGUgbGlzdCBvZiBkdXBsaWNhdGUgTkFNRXMs
IGFuZCBrZWVwIG9ubHkgb25lIG9mIHRoZW0uDQo+IA0KPiBUaGFuayB5b3UhDQo+IA0KPj4g
WzFdOiA8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWFuLzIwMjIxMTEwMDk0MDMz
LnB0cGZzcXB2dngyeWQ1eHNAaWxsaXRoaWQvPg0KPiANCj4gR3JlZXRpbmdzDQo+IA0KPiAg
ICAgICAgICAgSGVsZ2UNCg0KVGhhbmsgeW91IQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAN
Cg0KWzJdOiANCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFn
ZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2lkPTA2ZTcyY2IxOWM3NGQzYjFkNjYxNjA5YzY5
OGVlMjZkN2I2ZTRkN2U+DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------Dr9z8noP00pVMwRWhkOT4dRL--

--------------CJFFFjs5sEf2IJY90xVgbasQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOLgXgACgkQnowa+77/
2zIP8RAAgq6URop123eTLtMXuOOOSDBiwi7uva4JcWkkws/tROBP6M29xdEol6JX
WkWJwzSs/tDO6+FhFfgMjDHafmuo9q9+MUxCKWckxKoIYVOjTvf+tdlnKpH5gL7d
lrdsr2WL2SX/xUSkckuyJuRRQPw0nYcrEM1KRRl9jOTOyVMPMTtL5OhD21KXff+t
Kv6sRk2zCB0/cqzvo4msFxiacObUsxj7iVuzxx+PnRYZdtIJtMSWZmhR0hNZito6
f9L58oksLaD7FeAkIFSLUHxGdDxdvamMLieGSKmQ+5KHFXMwFtncFvULIgPeSH4m
CEIdTOzIKHvKb2zrfx8JGRJ3zYNEfoBmubnIDEJB49EAzo5T5P627qBWVSTADIPn
elhAQdF7Z3hHxCJLoDCUx9rdKw22gNxf/3FZxEUvILgQg0Wz46FMuk0+mh6IAM7L
voPFWAfiIvCx6FhZF5Mv6S5KUPJtgrFqL27zM2s5ZnoKj0LtoYGs+XbVVQ5rraYT
W/FajPsPEgAPnjewf29mEA1o+oaneNmnt+2CIq1oWboQQB7ngpAC21pI1MbQYGEr
7ArSiFGyd772ksd2J9/3BX+4n1j1XLZrO4TeTCsrm+zIsQ47WjzIksIS3wZgOpe/
+U3o+H0y3nPYtMWolWTJmMAIpeNqmzFNR9N7rI4pY1rhNY/jMUY=
=48TL
-----END PGP SIGNATURE-----

--------------CJFFFjs5sEf2IJY90xVgbasQ--
