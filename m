Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0384B677276
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:52:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbjAVUws (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:52:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjAVUwr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:52:47 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 348F210412
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:52:45 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id q10-20020a1cf30a000000b003db0edfdb74so3384420wmq.1
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KKu0I4vlYQN1n07eZECy4AKpIMSDkor/WVZG4WvjwkA=;
        b=dXSNCTlGx1i1hT4Pvsim/pqqtQomxnckXOxyKcLvd7h6Zw/rRD2yN8PXRAUA3pA1Vr
         cZYOug5bF2SykN8dpinQQvomPPzDcB7IGcH5tFZ0hhslbn1VJZ7pZHpgvGCx1ltN7mz9
         +PuEvc1VM9VTBvMU0b8EqjzYtnBONj9I5mYPWg56JxSHSnZ+q7R/yu8S6BGdkYEY5Ecx
         610Hzgi+NOi3yc27iM72nRaEMYUMBP8Dv3MhyP9uF7g1CPZz26kk/hBITbaBh7kzmuEX
         1P/SPBeSJOaidewsimgcRe5truq++nn6kOBQ+LCbnMxT7ajW72l1I5daW4Z+E3zoVJQY
         rHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KKu0I4vlYQN1n07eZECy4AKpIMSDkor/WVZG4WvjwkA=;
        b=AFONmoBNNk3hK/q/oLXGVpoNNPP1iLfEkWAcRJVSInv0mcR4dOs2Faew70liGt/7E8
         aY8l5PCcp4v4CfDka+m9NpVeZBCgHAdRBmaGiWO+gvU7bqu3YWmRXypXGIZq6+j4Q+Cr
         T03CmF4nYrpZ6eC7FrLLciUv03kFBS+qLP2rjgGHplWF8Nzxk6MSHoSc37vuRvoknINM
         +eLfqUkGqimVWGy7AnTGmL8Un3+pvRUSxx7u+AAw42iOaAHptjffYU1In1f/zXJz8AY6
         AAg/PgZaETe7XhS2H5xVa8w6D1Xzqfb3iHF0oPLv77c/61qUoM8AJhCWyNFzpMsNVMSj
         psuA==
X-Gm-Message-State: AFqh2ko/I0IlvwQMcmDqMSiWbzjnhYytMJnesPH5QcWW9+isO8IvoNf2
        IiNbqejbHRbccEOe3CmPuSI=
X-Google-Smtp-Source: AMrXdXtUs3Ymj1vFjw8GPzkW2ZVbUF3ZmdxzJuYSDd6irQzQd/PzcS9ub+30/rC2sgFigt99K8o+/Q==
X-Received: by 2002:a1c:7315:0:b0:3d3:5a4a:9101 with SMTP id d21-20020a1c7315000000b003d35a4a9101mr29686056wmb.23.1674420763792;
        Sun, 22 Jan 2023 12:52:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f23-20020a7bc8d7000000b003d1f3e9df3csm8917202wml.7.2023.01.22.12.52.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:52:43 -0800 (PST)
Message-ID: <1fdc5117-5858-9c8b-d64b-340a53fb8ea3@gmail.com>
Date:   Sun, 22 Jan 2023 21:52:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page session-keyring.7
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193129.GA29087@Debian-50-lenny-64-minimal>
 <20230122200844.au2yezkhalgk44n7@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122200844.au2yezkhalgk44n7@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zf1gKUTu1UNEyoWKDqtcReWK"
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
--------------zf1gKUTu1UNEyoWKDqtcReWK
Content-Type: multipart/mixed; boundary="------------M4xazCpKIbDJPwRe5tY4kscq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <1fdc5117-5858-9c8b-d64b-340a53fb8ea3@gmail.com>
Subject: Re: Issue in man page session-keyring.7
References: <20230122193129.GA29087@Debian-50-lenny-64-minimal>
 <20230122200844.au2yezkhalgk44n7@illithid>
In-Reply-To: <20230122200844.au2yezkhalgk44n7@illithid>

--------------M4xazCpKIbDJPwRe5tY4kscq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwgSGVsZ2U6DQoNCk9uIDEvMjIvMjMgMjE6MDgsIEcuIEJyYW5kZW4gUm9i
aW5zb24gd3JvdGU6DQo+IEhpIEhlbGdlLA0KPiANCj4gQXQgMjAyMy0wMS0yMlQyMDozMToz
MCswMTAwLCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4gV2l0aG91dCBmdXJ0aGVyIGFk
bywgdGhlIGZvbGxvd2luZyB3YXMgZm91bmQ6DQo+Pg0KPj4gSXNzdWU6ICAgIFdoYXQgZG9l
cyAidW5kZXIgb3RoZXJzIiBtZWFuPyBJcyB0aGlzIGEgc3BlY2lhbCBob29rPyBPciBkb2Vz
IHRoaXMgbWVhbiAiYW1vbmdzdCBvdGhlciBhY3Rpb25zIGRvbmUgYnkgdGhpcyBjb21tYW5k
Ij8NCj4+DQo+PiAiSWYgYSBwcm9jZXNzIGRvZXNuJ3QgaGF2ZSBhIHNlc3Npb24ga2V5cmlu
ZyB3aGVuIGl0IGlzIGFjY2Vzc2VkLCB0aGVuLCB1bmRlciINCj4+ICJjZXJ0YWluIGNpcmN1
bXN0YW5jZXMsIHRoZSBCPHVzZXItc2Vzc2lvbi1rZXlyaW5nPig3KSAgd2lsbCBiZSBhdHRh
Y2hlZCBhcyINCj4+ICJ0aGUgc2Vzc2lvbiBrZXlyaW5nIGFuZCB1bmRlciBvdGhlcnMgYSBu
ZXcgc2Vzc2lvbiBrZXlyaW5nIHdpbGwgYmUgY3JlYXRlZC4iDQo+PiAiKFNlZSBCPHVzZXIt
c2Vzc2lvbi1rZXlyaW5nPig3KSAgZm9yIGZ1cnRoZXIgZGV0YWlscy4pIg0KPiANCj4gSXQg
c2VlbXMgaWRpb21hdGljIHRvIG1lLg0KPiANCj4gVW5kZXIgY2VydGFpbiBjaXJjdW1zdGFu
Y2VzLCBJIHdha2UgdXAgaW4gdGhlIG1vcm5pbmcuDQo+IFVuZGVyIG90aGVycyBbb3RoZXIg
Y2lyY3Vtc3RhbmNlc10sIEkgYXdha2VuIGFmdGVyIG5vb24uDQoNCkkgYmVsaWV2ZSBhIHNl
bWljb2xvbiB3b3VsZCBiZSBhIGJldHRlciB3YXkgdG8gY29ubmVjdCBib3RoIHNlbnRlbmNl
cy4gICJhbmQiLCANCmNvbnNpZGVyaW5nIHRoZSBhbW91bnQgb2YgY29tbWFucyBpbiB0aGUg
Y29udGV4dCwgZG9lc24ndCBoZWxwIHZlcnkgbXVjaCBwYXJzaW5nIA0KdGhlIHNlbnRlbmNl
Lg0KDQpXaGF0IGRvIHlvdSB0aGluaz8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNClAuUy46IFRo
ZSBjb2xvbiBpbiB0aGUgc2FsdXRhdGlvbiBpcyB0aGUgc3RhbmRhcmQgd2F5IGluIFNwYW5p
c2ggOikNCg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KDQotLSANCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------M4xazCpKIbDJPwRe5tY4kscq--

--------------zf1gKUTu1UNEyoWKDqtcReWK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNohIACgkQnowa+77/
2zLhgg//SHaWiY6F8YokT53x3hkXvW7r3p9hprd8fLoVMdtpqnvz/bsnhU6EOBi9
VL5BYLreWY/D/8J4875eaxBwycHIfbvXfVGflJ+pZt70JukRZvWsye1ttLIQ52w3
z9Dsk4r+jYGakOnHsQF7o2Ye1Uvs72XHy7pfy7Y5kbNJXJHduOPcADeoZEk5ZI9v
72pnpwDOZtcodFZdd8FY0yq57Ku5U/zCp+G/1jHhNPHZStb8YnAqKa9iBDzN4mhf
JPNV7J0XS4vI4d3+5FzUKFma1PtO/8aSa/KGrjg85O4UErMOmIZZ3I/eBhmS4CCt
IZIvArFiFEzp98bPEGp4Wgj+qgZDe//JopFS2EaqAhToQX5JjvkO1FFd0xcQeFT/
I/bbqeE2jfJPof2HwzDg5QPtiIXSc/WS2QqM+/DE7ojc/0F5c+4NmvY9yBTjIbmA
SUH0A6Yrt9iUaC+VPqtZ8kswrttYRlk6/ZYAfAjX5Ue3BImTqKtgDWWwncqFavRk
uTTrzeE2GBRCeE0oRjiyPuzKfrXt+xuv5y2IX6LlAJ6KBDhMX53JBaUTfYSjpA8C
9gwlqg1TeMwHA/ctXoN+7wAprDjMK1E3dRQYsCJQc5kXFhTVbiezLmVurHOVz2we
btIxvJU+udwA306PBufZGkBggddNf4JZswLCMjMyF4oihnD5qAY=
=4DHm
-----END PGP SIGNATURE-----

--------------zf1gKUTu1UNEyoWKDqtcReWK--
