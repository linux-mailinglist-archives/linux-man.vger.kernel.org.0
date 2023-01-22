Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D265E67727A
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:56:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjAVU4I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:56:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjAVU4H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:56:07 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40D921C30C
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:56:04 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id t5so9147672wrq.1
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KMiba+VfRr4smJCAVtKxpPK9op22e309pX8o5NTNQvo=;
        b=hrLwZGWHxz51Y0yxRkiqp2p48xdffNdtydjoapZmJMLew8ZPD463g6Tc9xJ3FGZD05
         2W4CMsqafGhB4RKfvapkF/Zd8+qGrAHVC34tVp6NW8NEWdVSzYTAMfw5SxiYSFol6yYf
         vlgZbBPPLNwt/6kbjCdbk6i9cRGTNpyD8IurR/je+pW4Fgi0/LyewFB7xEQLDdnl4HGp
         XNzPSetILVIC431Gelqldw08AuUkFwBEIXD/O9OIaBKbvDF5vrELJP2opn5ugN7I92dy
         UsAVqGJOIo3EizR1D1SjwabD5EQ1+bfJc4a6C67tkdq8P3VZk0JK8dgHCH/lnirwow1r
         E/DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KMiba+VfRr4smJCAVtKxpPK9op22e309pX8o5NTNQvo=;
        b=Lf2ETTK7jH7In08vBcy5gOy5UlYL7a21HHU8sWwA2XCV0U65HLJ8OHqfEKpgXS9a8Z
         vvI/2uVibEm/U8P1VVp7j6RIC4LsNsU7bY0rtctjHgfBbvJ++QWkQm412jIA+YazEXy3
         1N9a6suhXuPJmvt2XCRPRGtpf7aJK70pFZUZoU1a2bUfaHS+ZpoEMrREGv2JbUqzO7Jg
         042/y+nC2bkin7s1LsyUmdEV9o8RXNEKCF1AXIGHsENycDOWFoN333iZoOIpgbX+o5wV
         7wZNoJKkeyND6mvk/bedkTE5Oe+5YXJav5oUjaBD4eo0jRsEsQVddL9TjUgZEjSYof3V
         tNeA==
X-Gm-Message-State: AFqh2krRdr44wTJW0cVd0un8y83xgbbc1B+Dgg4P8PbT4LGJ92qfBdGg
        /NE5+RyBXwh9+6equ+YyBtPW6ARr19s=
X-Google-Smtp-Source: AMrXdXs8p3KhhB3jY2bg6vgQBkFYAaa1un3Xg8erXKzdRTK7B4MkgYbz7fe2Znweg/IilyU7ugoZEQ==
X-Received: by 2002:a05:6000:781:b0:2be:3ccd:7f34 with SMTP id bu1-20020a056000078100b002be3ccd7f34mr11650147wrb.37.1674420962816;
        Sun, 22 Jan 2023 12:56:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k9-20020a5d6d49000000b002bc8130cca7sm32965892wri.23.2023.01.22.12.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:56:02 -0800 (PST)
Message-ID: <3efc3a16-9cda-07d4-5f77-a3566fef9cfd@gmail.com>
Date:   Sun, 22 Jan 2023 21:56:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page persistent-keyring.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193127.GA28921@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193127.GA28921@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------t4XBhoj8W0kr2pKAGO1w2wAL"
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
--------------t4XBhoj8W0kr2pKAGO1w2wAL
Content-Type: multipart/mixed; boundary="------------gIACAVrVqCOJOLPPGDAU0PZu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <3efc3a16-9cda-07d4-5f77-a3566fef9cfd@gmail.com>
Subject: Re: Issue in man page persistent-keyring.7
References: <20230122193127.GA28921@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193127.GA28921@Debian-50-lenny-64-minimal>

--------------gIACAVrVqCOJOLPPGDAU0PZu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIGtleSDihpIga2V5cmluZz8NCg0KSSBkb24ndCByZWFsbHkgaGF2ZSBl
eHBlcmllbmNlIHRvIHJldmlldyB0aGF0LiAgUGxlYXNlIENDIHNvbWVib2R5IHRoYXQgd29y
a3Mgb24gDQp0aGF0Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gIlNob3VsZCB0aGUg
dGltZW91dCBiZSByZWFjaGVkLCB0aGUgcGVyc2lzdGVudCBrZXlyaW5nIHdpbGwgYmUgcmVt
b3ZlZCBhbmQiDQo+ICJldmVyeXRoaW5nIGl0IHBpbnMgY2FuIHRoZW4gYmUgZ2FyYmFnZSBj
b2xsZWN0ZWQuICBUaGUga2V5IHdpbGwgdGhlbiBiZSByZS0iDQo+ICJjcmVhdGVkIG9uIGEg
c3Vic2VxdWVudCBjYWxsIHRvIEI8a2V5Y3RsX2dldF9wZXJzaXN0ZW50PigzKS4iDQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------gIACAVrVqCOJOLPPGDAU0PZu--

--------------t4XBhoj8W0kr2pKAGO1w2wAL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNouEACgkQnowa+77/
2zJ3BhAAgXhTX1j0XIXEWz5ibp3ef3HlJfLpSzBJpWnzOC8sZLqMGLdMjp6bUttC
5xMRhGlTUEdNa20jEnDWBt5PUGOvgidpzQYEhdxvThg9dleNF3/SPb8rjgs8XEhr
Fd96hb9gHYRgRJvHvLS0AFt97WqoyhN2dj3pvYAEO4ZALDqFPgUBnpYDJERMsvPN
plsTN4QNekS/a3H2X8r2b3XCkDP5NS6whS0wDE99JTrlFFsZk3zMhZ97UidwMPVe
oxBvOQCpF7l0vTSryk//aZiBtD1SBboEoOngA+/6j1k9F9mXZVSGvI99vWtXZH+R
bxx3pCdGlRir9KglHQket/kiBhLDBuPUeccexcwdIra3ju68rbVhlnnemxjwZclR
e16Tyi943qJJYHuSd2R0/EoJzr9tMxHK5ta+S0WYYf6a/PjSoUY0ti9JTyIg0OjF
Sh76bKoG002TX+jAWQMy0/uQA+P5D+vwFteq+jqBtJbWJr1pJg7bWtavIuhakWuw
9ZESCoDO7ahUirKjLNb19zG5Pz0Dxs1reCNfwCa7jd6jaDdyCfpUErUUcjs0m5it
bpzJ9DpXkjXa6Yz7bmcN3JtRznIWelHUf3y00AYNmGwhvV64Sj/3/CyFk4nYMpVj
BZi3jtOPM0ad2Gu7WSptYZgmK79pqk3nVgIrnW3EyOsZ98H+wc4=
=u39t
-----END PGP SIGNATURE-----

--------------t4XBhoj8W0kr2pKAGO1w2wAL--
