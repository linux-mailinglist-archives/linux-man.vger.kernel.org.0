Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1183257C9B8
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 13:28:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbiGUL2U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 07:28:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbiGUL2T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 07:28:19 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FECB24BDC
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 04:28:17 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id z13so1782289wro.13
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 04:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=qnx+O82HTvIYPZ8uINcERBaPG0ShiYZos10uqJSrYF0=;
        b=o7kcdDEZ3zKD00xwZ6UAEJ3YyRXfwU6TqGvZQa5ApxJ47dGg9Pi7wCTmwe9BTEXjlT
         tviMQmNqw7sf+DpfygN5kjeyC9UPw5wdORuvK391jx9teyQQhceGSBR642B8KuS+V1nm
         oOW6aDHw0Jr2otc5llhoveJr2IUTKA3LzPfa4/y0HzxvdAskoN+sNsgRQJbuRIzl5p41
         fHCnRxmxSW24LLYqiSBgnWH/OOoLzzK0I0gavroEtwmIeh4aaaUu+5tSVxooENmIe736
         fVCXfbgZ66FR7JDCpRilnnn03i/rS6Id/QwGm0HA8ZHCTNiGsMOenw6WO8FvOP9ry/3F
         uS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=qnx+O82HTvIYPZ8uINcERBaPG0ShiYZos10uqJSrYF0=;
        b=h//8pZPKgxJuYxHoOT2XohkXIeyyxMEfUMi2ScOtGr4IlC3+b78zMyGOaeRPPqw8Nd
         FzNV/h3hLQCjebho3AosEDvELkUDnQFfDkl6Mgz/7dUu9aY4naYu1tsEUsw1tq27hXmR
         EuAweR+W11iNblsqygi6yIIz00R+iIEQY2TOeAU31JFbyZDNDPgwr+bli4ev1FVNpP9u
         nz7MgqGDDJL06fuBVecgeNmehEbx2xIYJ1CV8vNmId3qC1zqdbjJAxmsh9p3+L17y+TF
         bCCNTsjnz7sUDcOXGG/twufWrixldqBUdUNrqjX1b1iFZvHsnJ5kSEgUOQuaaRHg/p7K
         a7Yg==
X-Gm-Message-State: AJIora+Iv6Ij2rGTYJy1A8502lYvQ5+nGviPzF87UQTeqFUPiE3kt8eZ
        mgRDKv9YfSfbuZK5rXvBtmLGRMjytx4=
X-Google-Smtp-Source: AGRyM1tErh0Wr2AR7ZpMHCWNkERcfC7MV86XFxS2gw8FQ+LS/QseFfgufRUDzWOMQjS31XGRCo53HQ==
X-Received: by 2002:a05:6000:2cc:b0:21d:76d8:1f2c with SMTP id o12-20020a05600002cc00b0021d76d81f2cmr34150460wry.471.1658402896210;
        Thu, 21 Jul 2022 04:28:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z4-20020adfd0c4000000b0021d7b41255esm1592375wrh.98.2022.07.21.04.28.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 04:28:15 -0700 (PDT)
Message-ID: <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
Date:   Thu, 21 Jul 2022 13:27:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Update bpf-helpers(7) man page
Content-Language: en-US
To:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Cc:     Quentin Monnet <quentin@isovalent.com>,
        linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
 <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Pg7WY4j9b57fgvbDJRGu0FQE"
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
--------------Pg7WY4j9b57fgvbDJRGu0FQE
Content-Type: multipart/mixed; boundary="------------0WxqfRrhifd00uXa9nPFbUlg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Cc: Quentin Monnet <quentin@isovalent.com>,
 linux-man <linux-man@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
Subject: Re: Update bpf-helpers(7) man page
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
 <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
In-Reply-To: <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>

--------------0WxqfRrhifd00uXa9nPFbUlg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUnVtZW4sDQoNCk9uIDcvMjEvMjIgMDA6NDQsIFJ1bWVuIFRlbGJpem92IHdyb3RlOg0K
PiBUaGFua3MgZm9yIGhhbmRsaW5nIHRoYXQgZm9sa3MuDQo+IEknbGwga2VlcCBhbiBleWUg
b24gdGhlIG1hbiBwYWdlIHVwZGF0aW5nLg0KPiANCj4gQWxlamFuZHJvLCBkbyB5b3UgaGF2
ZSBhbiBpZGVhIHdoZW4gaXQgbWlnaHQgYmUgdGhhdCB5b3Ugd291bGQNCj4gcnVuIHRoZSBz
Y3JpcHQgYW5kIHVwZGF0ZSB0aGUgcGFnZT8gSSBjYW4gdmVyaWZ5IGFmdGVyd2FyZHMuDQoN
CkRvbmUuICBDaGVjayB0aGUgbGFzdCB0d28gY29tbWl0cy4NCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------0WxqfRrhifd00uXa9nPFbUlg--

--------------Pg7WY4j9b57fgvbDJRGu0FQE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLZOD8ACgkQnowa+77/
2zL07xAAoejbS6UbCIiZWY9m5sHDNHXc7OxN33ANpIIgZMQzRMSfjL12cFZfT6bt
UPlEuFcxup8rtwQQJhaAfLYi/GfLDEg2OvkSZriK40htLCGfhYzTQUVo5CoHFBfC
2YaooKfVYURar1cfSGBVAH17Lr5VvZtWuhqD4dtLu+AKw6vqMeSPhkLmzco5JC+c
OLDuewW7IsJl1rDqqBU4+eA7KMLtPCsSeRkVKS6+T187G3rX/gIKfm6Zdw0N+P/S
mmiNMQB85FeTRMBpRwPoC9K4iVE8dKKfTsIpivntZDAMRl9hfpFvwOitR8gD0HHz
w/oykwZnzcYNWQuz+Yt06J2YPvorZ18EtXFH84cxUQsoVBKnE5SLnvfxnxCqi7AK
gTt9+CDn6R6LWGfxVzQysiv+hK/WyVtBDTJlR6sRH5bIObROJkAZgGlOEHoFzUzj
kDcXbAsACXt/XdLnioo+DRNe+FzEDtM2TtiR8o8v1wHgfKSVz4qoyrS3uCJGsstq
uG2L0+GzjWWe+XGuveeydkztfkt5GKLURFlZB9MbCxs08TwvvXK+e2Tq2piyBo1L
+1iQ3mfVtpfNY9n7C4pKZo78ZOzgkVUPWsDOScpa2nJb5JPgYmIakZTD3PvN8C2I
AaFOyD+lUT6Td4sjz8mMCQCyDOEU2KmOgdQwkxpTXgVsGn/6cuE=
=XOZP
-----END PGP SIGNATURE-----

--------------Pg7WY4j9b57fgvbDJRGu0FQE--
