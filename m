Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FDF067729A
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:12:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230037AbjAVVM0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:12:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229980AbjAVVMZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:12:25 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E781A14E95
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:12:24 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id j17so7700338wms.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYXlQRCUl4byiKxJi2MKzPJYlRywpz1KxOi0d/rR1bk=;
        b=jvXdd3uf9InJgTKz5wDQKGvF670ff0CWzKSESgZgzYRNN+THGsX7qUrG/1nzqrhr3d
         vhMZqh0M8NeQrvOjZYGOcG2ZC2LNWf+DJsSS/IRm2JB87z9Mzsv0DGfQ4jLUZYXAyn3q
         q9a+NJiRWhlyMPg9HwfMivBmfngB8MdtOibELdIB9s8ffOPYgqq49DOO4xxK3y1e3pYJ
         1kvX0kgvTzNzx/EzQY/QCSotmfWe85tEqiGFZ5UCFmtMLlB+TUF2bTHeTRoHrxyYBB2Z
         ysO8oKs0d86LI1DiXGdcDm2dkJLgKmCUbSZMWZepYWEi6OtNj1wnss3z3wj+Mb4qg081
         Zw+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EYXlQRCUl4byiKxJi2MKzPJYlRywpz1KxOi0d/rR1bk=;
        b=c2egQwwxsWBBPC7nEdfi4DOBFllbds8v0j6+1LzdeLm97+EX+4LiuND079HgvrNp0T
         ShjPEPy1wyv5h5kn806Ikcwg+7HRkogDrmcU0TQ7eUWOxPt5KOhzk4v1GzslebfFcN9q
         kSQw95EHZvnHB9qa7oWRKTwyn4KM9t3eOaAu9jJmQd8Dj2FzXs1tXul1IsTA1SlESnqu
         77ye2P29mu2I0TcDszK71BODyXqUe58rjfGYQAlp69pG0s4NBVMDLyFEdsE98FmupKOz
         a3ezy0Re2KnMgKXtsAFwUIgISIceE9H8tne8m3zBqfJ/jVw/eAYxbN0Em5GRvB/bqlAl
         5afg==
X-Gm-Message-State: AFqh2kqvA1cf803P0F41nXlaScLwcErFnz5YTo3jARwvqJqN4IdcdErE
        enTeHxyaz92x0ClbjWdXXSY=
X-Google-Smtp-Source: AMrXdXvHVtsHwELx/ulAH7IqHSjLLVwgv4S2WshVvpHVjfA/il+a24u4mRITX6W35wkHA0S4tbclnw==
X-Received: by 2002:a05:600c:1c8b:b0:3d9:f492:f25f with SMTP id k11-20020a05600c1c8b00b003d9f492f25fmr21183482wms.16.1674421943488;
        Sun, 22 Jan 2023 13:12:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18-20020a7bcd12000000b003db0659c454sm10436805wmj.32.2023.01.22.13.12.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:12:22 -0800 (PST)
Message-ID: <6f614c95-75d8-f284-18b4-5a7b40a93cb1@gmail.com>
Date:   Sun, 22 Jan 2023 22:12:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page symlink.2
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193130.GA29136@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193130.GA29136@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------iooiVAh6YjbKdtY7zzXEzdpP"
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
--------------iooiVAh6YjbKdtY7zzXEzdpP
Content-Type: multipart/mixed; boundary="------------Syg5CMKD0wQuhMoz3OyoWcHS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <6f614c95-75d8-f284-18b4-5a7b40a93cb1@gmail.com>
Subject: Re: Issue in man page symlink.2
References: <20230122193130.GA29136@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193130.GA29136@Debian-50-lenny-64-minimal>

--------------Syg5CMKD0wQuhMoz3OyoWcHS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIGluIGVuYWJsZWQg4oaSIGlzIGVuYWJsZWQNCg0KVGhpcyBoYXMgYmVl
biBmaXhlZCBhbHJlYWR5Og0KDQpjb21taXQgOTBlODI4NDRjNTNlNWFjMDNkYTVjYTU4ODY1
ZGI2YjQwN2I1MGMwYQ0KQXV0aG9yOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5v
cmc+DQpEYXRlOiAgIFN1biBEZWMgNCAyMDo1Nzo1NCAyMDIyICswMTAwDQoNCiAgICAgc3lt
bGluay4yOiB0Zml4DQoNCiAgICAgUmVwb3J0ZWQtYnk6IEhlbGdlIEtyZXV0em1hbm4gPGRl
YmlhbkBoZWxnZWZqZWxsLmRlPg0KICAgICBDYzogTWFyaW8gQmzDpHR0ZXJtYW5uIDxtYXJp
by5ibGFldHRlcm1hbm5AZ21haWwuY29tPg0KICAgICBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5k
cm8gQ29sb21hciA8YWx4QGtlcm5lbC5vcmc+DQoNCj4gDQo+ICJUaGUgcGVybWlzc2lvbnMg
b2YgYSBzeW1ib2xpYyBsaW5rIGFyZSBpcnJlbGV2YW50OyB0aGUgb3duZXJzaGlwIGlzIGln
bm9yZWQiDQo+ICJ3aGVuIGZvbGxvd2luZyB0aGUgbGluayAoZXhjZXB0IHdoZW4gdGhlIEk8
cHJvdGVjdGVkX3N5bWxpbmtzPiBmZWF0dXJlIGlzIg0KPiAiZW5hYmxlZCwgYXMgZXhwbGFp
bmVkIGluIEI8cHJvYz4oNSkpLCBidXQgaXMgY2hlY2tlZCB3aGVuIHJlbW92YWwgb3IiDQo+
ICJyZW5hbWluZyBvZiB0aGUgbGluayBpcyByZXF1ZXN0ZWQgYW5kIHRoZSBsaW5rIGlzIGlu
IGEgZGlyZWN0b3J5IHdpdGggdGhlIg0KPiAic3RpY2t5IGJpdCAoQjxTX0lTVlRYPikgIHNl
dC4iDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------Syg5CMKD0wQuhMoz3OyoWcHS--

--------------iooiVAh6YjbKdtY7zzXEzdpP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNprUACgkQnowa+77/
2zJWqA/+O7Rmn19sqN7iStXlUByO8WWw0wsoXycdu55jJR3gXDO4Zi9ogBfa1+Df
GDltGKjQOJ58rbihaHogpgXvqNpyMjyz7mL2/KDch8TkGmJmhJDVaBfSblsUwn3y
2cRMKIV6bd6t4PEN1coD6B7Q8uLVNWYD5VKYTLJZtH+dMdW1hrFRNl3o0P9Hqo3j
OnuMMPcnUb4mYGW5bZNEPCFJjFVhbXOeRhnAncIufHAaXivjDFGbNpxmGpVH4UJi
GjPCCuDrx9UByg5UjLA5XfSQXcbdBmZQQYtwL/1YpGLBSQc1v6HVnOMT97ItoZF3
9zMjZkj3pe/fQiK++80dKvPaUfiKmdVhsUVx0MLNxIQ9KtbsHhkudKG0Nt0JVKBi
9cz1uu7kbW5VJj2JrEb/DQElEs2y2QGYuFp0Een5XoP2t0A+IIDetjjfN+Rlbv2R
3pZWJrc+wAmIF19SZWk3DBApvC/LXyYYz6OhtLGJANmVLfA6TGSClwSgXyQ/qOVB
7r+Pakg9tCg+CGFYF18eDdmdut9LvH+5Ffjb020crUVUMoZwGx4PhTZDtHXZzp+i
Ff4bnWWOy41SLpE86t9FirxqkRlO8ghyRlndLx8klHJ10XhVTNa9rtu53xMApHMA
Zsn50QdT/krrttUuxXblJGm7co9KPYSDKBFUiVyAkoaHKuJ01DM=
=ogrB
-----END PGP SIGNATURE-----

--------------iooiVAh6YjbKdtY7zzXEzdpP--
