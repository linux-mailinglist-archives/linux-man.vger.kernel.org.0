Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17ECA641D57
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 15:06:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbiLDOGw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 09:06:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbiLDOGv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 09:06:51 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09ADB15FE6
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 06:06:50 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id w15so14976851wrl.9
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 06:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sP0eGftb4EHHRytKIlMUt5aA5hKliLYdKagXCFQkmjE=;
        b=BQNwntnFWbF4sF4GKT7fh+dCpCqizSBXop+/LbGtfjEp+JGY9urEpHoMy+QBhl6JxW
         Wy7OCY3Tvs0VFKKgHugtXKC4xAoLJTFFwevYyaNoVYiIp4SnJXfsoXOWoPmPG+xpNk6Z
         vecmhFj7GpD0QEZZSUdcSELP6pLH0j2hkOBrJB5tQ6Li4j772d7b1heWVkcGY8CkDOh7
         P9O4opckmLuLbDVjTk6/PS2SuPKs3wsT+aphvMnKownhsQ4pFXj0igR62Uk7+35KbHQM
         X/2Qwg/frMAHdeMnCXLUeEnz+v7YXfYliSM7DcOoq8abqRfzsxifQcKTCcZJ/xelQCop
         He5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sP0eGftb4EHHRytKIlMUt5aA5hKliLYdKagXCFQkmjE=;
        b=gCpkus3RzB3a1N5Q4Ldwz5RAMSHSVpzu+7Hn7gq4dj3QWxEaFuA/FBs+Rq9dRGK0Te
         H5/WvLsIo2HKVyQG4nTp7XEUFCZwn18uhwHdatrIcUyznFOLwv8V5U7R+0WEkq7IaEbt
         0FPBw14NwxBm//Jxp+bp5NsvdL0uuPUbElDdofXg7gW1qcSUGBZO21N7nH0fQOOtcubi
         lfLyv2/bQ5vOB3qY52dVE5VvuRvYq6c3XPrZzxIyAgO+4J1qxP6az8HIRsEagGDKjYrE
         EVRO2Yn+dBFclXCt+yumI6ehHwWHX5iYU+TY/oLvd8e57hRZPiJpO+k/DNfaNYz5fnd2
         lwSA==
X-Gm-Message-State: ANoB5pnXZkUuGf2CwRKhFq8eEqDI5oPP6ccyxbX52qjANYKgB6CBVogu
        J77K6mkHm0ukynGSMTNOG1w=
X-Google-Smtp-Source: AA0mqf75GtdzeWoE4GC9qSYGaKBo7IKXHmu1/To25mgU/BhL872sVihIgS+4NqiAXxNPkjvKkzh4ig==
X-Received: by 2002:adf:eb90:0:b0:236:b8b9:b018 with SMTP id t16-20020adfeb90000000b00236b8b9b018mr569725wrn.596.1670162808349;
        Sun, 04 Dec 2022 06:06:48 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f16-20020a056000129000b002421ce6a275sm11739522wrx.114.2022.12.04.06.06.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 06:06:47 -0800 (PST)
Message-ID: <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
Date:   Sun, 4 Dec 2022 15:06:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204140009.GD441@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------28APsGIzuSrF60QSwLDDDhQ0"
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
--------------28APsGIzuSrF60QSwLDDDhQ0
Content-Type: multipart/mixed; boundary="------------O0TLSbFqOMDFSyAiniyXR6fR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204140009.GD441@Debian-50-lenny-64-minimal>

--------------O0TLSbFqOMDFSyAiniyXR6fR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTU6MDAsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMDE6MjU6
MDdQTSArMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDEw
OjA3LCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8s
IHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgIG1vdW50IHBv
aW50IEk8Qj4g4oaSIG1vdW50IEk8Qj4NCj4+Pg0KPj4+ICJIZXJlLCBJPEI+IGlzIHRoZSBk
ZXN0aW5hdGlvbiBtb3VudCwgYW5kIEk8Yj4gaXMgYSBzdWJkaXJlY3RvcnkgcGF0aCB1bmRl
ciINCj4+PiAidGhlIG1vdW50IHBvaW50IEk8Qj4uICBUaGUgcHJvcGFnYXRpb24gdHlwZSBv
ZiB0aGUgcmVzdWx0aW5nIG1vdW50LCBJPEIvYj4sIg0KPj4+ICJmb2xsb3dzIHRoZSBzYW1l
IHJ1bGVzIGFzIGZvciBhIGJpbmQgbW91bnQsIHdoZXJlIHRoZSBwcm9wYWdhdGlvbiB0eXBl
IG9mIg0KPj4+ICJ0aGUgc291cmNlIG1vdW50IGlzIGNvbnNpZGVyZWQgYWx3YXlzIHRvIGJl
IHByaXZhdGUuIg0KPj4NCj4+IEknbSBub3Qgc3VyZSBhYm91dCB0aGlzIG9uZS4gIElmIHdl
IGNoYW5nZSB0aGF0IHdvcmRpbmcsIEknZCBsaWtlIHRvIG1ha2UNCj4+IHN1cmUgd2UgZG9u
J3QgbG9zZSBhbnkgZGV0YWlscyBpbiB0aGUgaW5mb3JtYXRpb24uICBQbGVhc2UgQ0MgYW55
IHJlbGF0ZWQNCj4+IGtlcm5lbCBkZXZlbG9wZXJzLCBhbmQgc3VnZ2VzdCB0aGVtIHJldmll
dyB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgbW9yZQ0KPj4gY29uc2lzdGVudCBsYW5ndWFnZS4N
Cj4gDQo+IFVudGlsIHJlY2VudGx5LCB0aGVyZSB3YXMgIm1vdW50IHBvaW50IiB1c2VkIGFs
bCBvdmVyIHRoaXMgbWFuIHBhZ2VzLg0KPiBUaGlzIHdhcyBjaGFuZ2VkIHRvICJtb3VudCIg
aW4gb25lIG9mIHRoZSBwcmV2aW91cyByZWxlYXNlIG9mIG1hbg0KPiBwYWdlcy4NCg0KDQpJ
IGRpZG4ndCBrbm93IHRoYXQ7IHBsZWFzZSBwb2ludCB0byB0aGUgY29tbWl0IHRoYXQgZGlk
IHRoYXQuDQoNCj4gDQo+IFRodXMgSSBhc3N1bWVkIHRoYXQgdGhpcyBvbmUgbWlnaHQgaGF2
ZSBiZWVuIG92ZXJsb29rZWQuDQoNCk1heWJlLg0KDQo+IA0KPiBJIG1hcmsgaXQgV09OVEZJ
WCBmb3Igbm93LCBzbyBpdCBkb2Vzbid0IGdldCByZXBvcnRlZCBhZ2FpbiBhbmQgbWF5YmUN
Cj4geW91IGNhbiBjbGFyaWZ5IChpZiBuZWNlc3NhcnkpIHRoaXMgaW4gYSBsYXRlciByZWxl
YXNlLg0KDQpJZiB5b3UgcG9pbnQgbWUgdG8gdGhlIHBhdGNoLCBJIGNhbiBkaWcgaW50byBp
dC4gIFRoYW5rcyENCg0KPiANCj4gVGhhbmtzIQ0KPiANCj4gR3JlZXRpbmdzDQo+IA0KPiAg
ICAgICAgICBIZWxnZQ0KPiANCj4gDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------O0TLSbFqOMDFSyAiniyXR6fR--

--------------28APsGIzuSrF60QSwLDDDhQ0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMqXAACgkQnowa+77/
2zL3vA/+JOMwJWGDvvoNOQ52ivnQIokaBI+2bcNypPrxC+cgr2M6B1H8FXUzAH1/
eCEXb25YGd9nLzlQYxBZ55jF95xhQLbG9LMjJaMpJhzBNkZUR5clvhib0apB2jVA
QUlSjzTUA+WYdcJuhCGaX6VYPlnd30iX41bHoYUXm8qzECPoIL75tUZ/vHrm9fRq
3HYRjmrOSe0HwuceyLCNvZJm/mByZsX4X85leWpJVtiomjSpm27sFepfCeiEQmf6
v5LYpUfeJ6XZwLXyzz1uyT9hT44sKL+pYNnkCG0RKSx9xEP7UFLOInU6t2tsMYVR
f/Pe01knJYGir+ZnG04UA3yCdPog6eRYax1Ws4htn+3nT+d68hdRpi2y5qsIAuUj
jYMvN6GItYBPdBa6nK3DBvbL5g7YDny5rZXyJm9WFJjnTw4rIWcy8N0lLIU9/dwy
HBoKTyPJed2utQqa5PL0YZnXe7EOkye3a42dSJ/vsOHupingGvEbd6PnanOzyUnc
qF8C+nH7OnpJAjzqkh96M29qvvEzxW03x0LbFnzv99YcEayMlECsbasiGBCV10Bs
xIM7mmCWAXc+KqH5fTthq4XQY4vH9xwjNg8HFNBWRv8o+iccSslkbYOv0+2DT79N
KiECjwLI70nGf6tzCAOkErEuNFYg5mtCpYuL7keGmAE31QtDSJo=
=nChL
-----END PGP SIGNATURE-----

--------------28APsGIzuSrF60QSwLDDDhQ0--
