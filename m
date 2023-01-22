Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E5DD67729B
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:16:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbjAVVQJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:16:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229980AbjAVVQI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:16:08 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 421F1E39E
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:16:06 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so7264333wmq.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bUAltTTQ5Rt/gzexxK3HMpkWs7lX770MUhtUQ7tdsMo=;
        b=mMEuq+naGjGkSd+WRImuxrsK/qNpYtEXlH9AvSQVyrcBihUQCf8oFtZiSU1Az21y50
         eyTuq+UXqUy50HeyoM9nWLfxzVd5ebQ91cKXriIbw+wQWbB5o3aYsW1qXmLiZTIIn0AR
         UgEGUhlD1OA55xF/ZmVzMApj4h6roovx9b8JlaABCtIkejrHhDW8WQDIIP5TyRRGq0DN
         X/9ppc2WXrmT62J+5HvTpk/cGyxBXwY7A99AGJn5hPt6RRRP+bUJqvby9trRFvcKGnsV
         mx6Mltk9DL+rb75kjOWNYJqRgBpR/pcBtN5eKXPNaje1su8XYxw6AQpnNJT3xE9qOvAN
         IrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bUAltTTQ5Rt/gzexxK3HMpkWs7lX770MUhtUQ7tdsMo=;
        b=m5khQR+rWPTA12Lmuw7IdW4e6XokNjsy66wz/wlwbPZZPpEcBPZiBURD8X7D/kZLzZ
         /bFLy5O1N3+XHBoIX9ny9sMU0FXuDWBaBGvz8TaDvSWpwGvhBqB/lflAHHpjar/r4Kjc
         RY1qM/I9aoATQOvOKWoc9Ivi2EGG+Waxk2EzBZ9CdxAqS3rfCXY5bmEYUTZSSZu7l4IY
         /NZZHHqWWGNBGklBjB5Xp+YCKCRLBQqf+wLhHMaLZ0njuyVbUoHqwpukCiSjSlYd7A0T
         wRZNOM9Nt3R1slw2N6LnyftS6bOTPSpMv6eGeVWI4cDJMdGK1Nyw52eSbED8Ph4wO6A5
         hfsw==
X-Gm-Message-State: AFqh2krroFqoRc2XQcZxX3HihzTs/qxcd6WsNlq3wmy0dcMPrHDcRK9V
        zaayRNvhml6E5LXxq9R+URM=
X-Google-Smtp-Source: AMrXdXsa3FPsxX+RyG9/S4wU/T8HXdwtlWkB1lpJaMJoxjKtOkFTkBpnPBu7krMlgm+76tEzz6zKsw==
X-Received: by 2002:a05:600c:4928:b0:3d3:4aa6:4fe6 with SMTP id f40-20020a05600c492800b003d34aa64fe6mr21829721wmp.3.1674422164751;
        Sun, 22 Jan 2023 13:16:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o6-20020a05600c378600b003d9fba3c7a4sm8859631wmr.16.2023.01.22.13.16.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:16:04 -0800 (PST)
Message-ID: <4b58c7f4-7b28-4d41-c022-9eebe7742cd9@gmail.com>
Date:   Sun, 22 Jan 2023 22:16:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page user_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193131.GA29187@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193131.GA29187@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WqRJ8UFG0NmtTUBpsRD0SD4w"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WqRJ8UFG0NmtTUBpsRD0SD4w
Content-Type: multipart/mixed; boundary="------------XUxzvcReij9gnURF3yA4qp0U";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <4b58c7f4-7b28-4d41-c022-9eebe7742cd9@gmail.com>
Subject: Re: Issue in man page user_namespaces.7
References: <20230122193131.GA29187@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193131.GA29187@Debian-50-lenny-64-minimal>

--------------XUxzvcReij9gnURF3yA4qp0U
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWUgMTogIEk8L3Byb2MvIHBpZCAvc2V0Z3JvdXBzPiDihpIgSTwvcHJvYy8+cGlk
STwvc2V0Z3JvdXBzPg0KPiBJc3N1ZSAyOiAgSTwvcHJvYy8gcGlkIC9naWRfbWFwPiDihpIg
STwvcHJvYy8+cGlkSTwvZ2lkX21hcD4NCj4gSXNzdWUgMzogIEk8L3Byb2MvIHBpZCAvZ2lk
X21hcD4g4oaSIEk8L3Byb2MvPnBpZEk8L2dpZF9tYXA+DQo+IA0KPiAiV3JpdGluZyBcIkk8
ZGVueT5cIiB0byB0aGUgSTwvcHJvYy8gcGlkIC9zZXRncm91cHM+IGZpbGUgYmVmb3JlIHdy
aXRpbmcgdG8iDQo+ICJJPC9wcm9jLyBwaWQgL2dpZF9tYXA+IHdpbGwgcGVybWFuZW50bHkg
ZGlzYWJsZSBCPHNldGdyb3Vwcz4oMikgIGluIGEgdXNlciINCj4gIm5hbWVzcGFjZSBhbmQg
YWxsb3cgd3JpdGluZyB0byBJPC9wcm9jLyBwaWQgL2dpZF9tYXA+IHdpdGhvdXQgaGF2aW5n
IHRoZSINCj4gIkI8Q0FQX1NFVEdJRD4gY2FwYWJpbGl0eSBpbiB0aGUgcGFyZW50IHVzZXIg
bmFtZXNwYWNlLiINCg0KRml4ZWQuDQoNClRoYW5rcywNCkFsZXgNCg0KDQpjb21taXQgZDc1
MmY4NjVjMDM1NTQzNTUxOWM0MTQ3MGFkNGNmMzNhZTg1NTdhZSAoSEVBRCAtPiBtYXN0ZXIp
DQpBdXRob3I6IEFsZWphbmRybyBDb2xvbWFyIDxhbHhAa2VybmVsLm9yZz4NCkRhdGU6ICAg
U3VuIEphbiAyMiAyMjoxNToxNyAyMDIzICswMTAwDQoNCiAgICAgdXNlcl9uYW1lc3BhY2Vz
Ljc6IGZmaXgNCg0KICAgICBSZXBvcnRlZC1ieTogSGVsZ2UgS3JldXR6bWFubiA8ZGViaWFu
QGhlbGdlZmplbGwuZGU+DQogICAgIENjOiBNYXJpbyBCbGFldHRlcm1hbm4gPG1hcmlvLmJs
YWV0dGVybWFubkBnbWFpbC5jb20+DQogICAgIFNpZ25lZC1vZmYtYnk6IEFsZWphbmRybyBD
b2xvbWFyIDxhbHhAa2VybmVsLm9yZz4NCg0KZGlmZiAtLWdpdCBhL21hbjcvdXNlcl9uYW1l
c3BhY2VzLjcgYi9tYW43L3VzZXJfbmFtZXNwYWNlcy43DQppbmRleCA4MzhjMDkyNzguLjcz
ZDhhNGViOCAxMDA2NDQNCi0tLSBhL21hbjcvdXNlcl9uYW1lc3BhY2VzLjcNCisrKyBiL21h
bjcvdXNlcl9uYW1lc3BhY2VzLjcNCkBAIC03MjIsOSArNzIyLDkgQEAgLlNTIEludGVyYWN0
aW9uIHdpdGggc3lzdGVtIGNhbGxzIHRoYXQgY2hhbmdlIHByb2Nlc3MgVUlEcyANCm9yIEdJ
RHMNCiAgV3JpdGluZw0KICAuUkkgXChkcSBkZW55IFwoZHENCiAgdG8gdGhlDQotLkkgL3By
b2MvIHBpZCAvc2V0Z3JvdXBzDQorLklSIC9wcm9jLyBwaWQgL3NldGdyb3Vwcw0KICBmaWxl
IGJlZm9yZSB3cml0aW5nIHRvDQotLkkgL3Byb2MvIHBpZCAvZ2lkX21hcA0KKy5JUiAvcHJv
Yy8gcGlkIC9naWRfbWFwDQogIC5cIiBUaGluZ3MgY2hhbmdlZCBpbiBMaW51eCAzLjE5DQog
IC5cIiBjb21taXQgOWNjNDY1MTZkZGY0OTdlYTE2ZThkN2NiOTg2YWUwM2EwZjZiOTJmOA0K
ICAuXCIgY29tbWl0IDY2ZDJmMzM4ZWU0YzQ0OTM5NmI2Zjk5ZjVlNzVjZDE4ZWI2ZGYyNzIN
CkBAIC03MzIsMTQgKzczMiwxNCBAQCAuU1MgSW50ZXJhY3Rpb24gd2l0aCBzeXN0ZW0gY2Fs
bHMgdGhhdCBjaGFuZ2UgcHJvY2VzcyBVSURzIA0Kb3IgR0lEcw0KICB3aWxsIHBlcm1hbmVu
dGx5IGRpc2FibGUNCiAgLkJSIHNldGdyb3VwcyAoMikNCiAgaW4gYSB1c2VyIG5hbWVzcGFj
ZSBhbmQgYWxsb3cgd3JpdGluZyB0bw0KLS5JIC9wcm9jLyBwaWQgL2dpZF9tYXANCisuSVIg
L3Byb2MvIHBpZCAvZ2lkX21hcA0KICB3aXRob3V0IGhhdmluZyB0aGUNCiAgLkIgQ0FQX1NF
VEdJRA0KICBjYXBhYmlsaXR5IGluIHRoZSBwYXJlbnQgdXNlciBuYW1lc3BhY2UuDQogIC5c
Ig0KICAuXCIgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09DQogIC5cIg0KLS5TUyBUaGUgL3Byb2MvIHBpZCAvc2V0Z3JvdXBz
IGZpbGUNCisuU1MgVGhlIC9wcm9jL1xmSXBpZFxmUC9zZXRncm91cHMgZmlsZQ0KICAuXCIN
CiAgLlwiIGNvbW1pdCA5Y2M0NjUxNmRkZjQ5N2VhMTZlOGQ3Y2I5ODZhZTAzYTBmNmI5MmY4
DQogIC5cIiBjb21taXQgNjZkMmYzMzhlZTRjNDQ5Mzk2YjZmOTlmNWU3NWNkMThlYjZkZjI3
Mg0KQEAgLTgzOSw3ICs4MzksNyBAQCAuU1MgVGhlIC9wcm9jLyBwaWQgL3NldGdyb3VwcyBm
aWxlDQogIHRoaXMgdXNlciBuYW1lc3BhY2UuDQogIC5QUA0KICBUaGUNCi0uSSAvcHJvYy8g
cGlkIC9zZXRncm91cHMNCisuSVIgL3Byb2MvIHBpZCAvc2V0Z3JvdXBzDQogIGZpbGUgd2Fz
IGFkZGVkIGluIExpbnV4IDMuMTksDQogIGJ1dCB3YXMgYmFja3BvcnRlZCB0byBtYW55IGVh
cmxpZXIgc3RhYmxlIGtlcm5lbCBzZXJpZXMsDQogIGJlY2F1c2UgaXQgYWRkcmVzc2VzIGEg
c2VjdXJpdHkgaXNzdWUuDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------XUxzvcReij9gnURF3yA4qp0U--

--------------WqRJ8UFG0NmtTUBpsRD0SD4w
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNp5MACgkQnowa+77/
2zJHVA//RNkKQRsoTcpHZIPpg8pPnH4z78b+R5QFqSzCH4GDCoOKojECtXK7Zlx8
IekmN2v3mmXNCW+JLI+sTj5+oKDCNzZO3G57Y3Ndvswu61Vhag9oYsNF38sagO89
xtEWdZdNvdHAmhggi/m+yLGiI2bxjlRGj5Y/5j0mMgnQOfwLnjQq61mtQ79osXuN
QX3VH0GxbemCEtOM5Wb7lIIh7XTnma3YWPEjzO26AwHzb0JO2Yz4ifmN3zE1wYdw
JrU7poKeOLQQ239Cjqr4NaDS7R1l2e8tzYIZj3NXdz+H+/UKRdIby0F2fQ0Ahk2A
X4egoRbh2UfdTPmC3DdERZFpdh48clZ6kfjndERJLYIC1xkMt+Zpzu0kPfquuJiz
6R+IMeqpbqN3LcgxAVDutygxP0mIMRsel0OLu/ndy1/nblAJ8Lb/am/2deJJVrDh
eB3NsEONMzYPK/TgrhC9YchYUpZ9Zy3PRYznZctOb8eEF+NRZC8U7ipD5iBJPt39
LLEz1jL3zHZ61bBqQF0JebH3RQIUqJASfU2O7QEx5CPVmoIUO/Bg+Fx24QGMKYqH
OSRBgj+fTq1t4dKT+wAUoiafzGj0OEgUobwzoHvwJLdgBlKK9wd5mvocHin8Ucxn
I9dm5aYDZrsrTxiuDfdN1QMKk+4fT5Wvs9tP9ziVaLWvWyZaUgk=
=VCRY
-----END PGP SIGNATURE-----

--------------WqRJ8UFG0NmtTUBpsRD0SD4w--
