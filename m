Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB376C5531
	for <lists+linux-man@lfdr.de>; Wed, 22 Mar 2023 20:50:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbjCVTu5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Mar 2023 15:50:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjCVTu4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Mar 2023 15:50:56 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7B4E4FCF0
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 12:50:54 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id r11so1493043wrr.12
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 12:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679514653;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PmHbnL68Coht+A2aXJgVneT6a6uRaNO0pLuUrEfgawM=;
        b=N4kfF1PItQ3Ow9cQCY8uX6id9d/ApbrPBwJSOEQ+DOykYWi+1sXO+0pvaf47rZtRIe
         99it2a2YRAQmDDQoNqZuDH6pq/iuN2fvPQ3amv8psXG9cq385v+eAuDct0jW8hPLwMrG
         EfPdX3zsyn5uyFzv9FDX7jy+qKvmzLu0F2Z9xvxC2xTwne5efS6cEMg4ozlbft2KF6fi
         IdMY5qBo8nsN5LeMo/ROr+exr8Md3oSOybVZeeTevAc498Om1BoRXa8qeE59Wuzt9Fsg
         BCC+2zUCw1kH9r99RPvQcVzkxI8NW0B++xHJZWVenEa2K772iEQNDvkcv3Qj+asb5tuU
         4pvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679514653;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PmHbnL68Coht+A2aXJgVneT6a6uRaNO0pLuUrEfgawM=;
        b=aBZBz1TwYxr3xgl6v0PuVFc774HSouR7FJPzLuFy7Sy4x8WYoHU2XHK/wyCRc4Bp5i
         6E2CDrq+wD7aMtAAzPbd0pEXWSWOSiYJ7jjux8YnUSwTKLiCE0NHtA8zEBHGwNIBJ2z3
         ED+TV2aEFprffjlDh5PECB76Gz7hbtmo/K8Q3LqKrQDZu1N7ul0d8i0RUsRn2tj/3FeD
         Nl/YbicFq3DIj6LKJJJZVpoPj5RtsjVQhjCtEbl6qaed1q0ZDtuZpXQeaCGXTOpHdnOL
         UkaGHklkTW9C6vBvI4NHmcI6DpyEWm8gsmeXCH8Ch4aW/eCHKNRyNbyCFjeuseIzJldF
         hBzA==
X-Gm-Message-State: AAQBX9eCfCwpQF6q69iO4xWmg2gDSfm00pjl0hbUzMS43Y9Jp0nQ2KiR
        v5PG71P9bFBQ9WfgThAIjzK7sFyXyss=
X-Google-Smtp-Source: AKy350ZWT5VKp2vfjhaemfyWpk3mlQXVxV46Bm8YmnXqnOH+Yx9SCXYKKUN7axEf7cvhEgO3nESgHw==
X-Received: by 2002:adf:fac3:0:b0:2c7:efb:dded with SMTP id a3-20020adffac3000000b002c70efbddedmr710027wrs.24.1679514652979;
        Wed, 22 Mar 2023 12:50:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d5-20020adfef85000000b002cfed482e9asm14552092wro.61.2023.03.22.12.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 12:50:52 -0700 (PDT)
Message-ID: <ac2ba951-340f-d074-730b-ad8986338e8d@gmail.com>
Date:   Wed, 22 Mar 2023 20:50:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: stdc: search function prototypes in ISO C documents
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>,
        Marcos Fouces <marcos@debian.org>
References: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
In-Reply-To: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Dglvrp1kthJA2S0AoaURClaJ"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Dglvrp1kthJA2S0AoaURClaJ
Content-Type: multipart/mixed; boundary="------------dRBBpC6hz05SVcR0jNshLFvb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Cc: Matt Jolly <Matt.Jolly@footclan.ninja>,
 Brian Inglis <Brian.Inglis@Shaw.ca>, Guillem Jover <guillem@hadrons.org>,
 Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>,
 Marcos Fouces <marcos@debian.org>
Message-ID: <ac2ba951-340f-d074-730b-ad8986338e8d@gmail.com>
Subject: Re: stdc: search function prototypes in ISO C documents
References: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
In-Reply-To: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>

--------------dRBBpC6hz05SVcR0jNshLFvb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 3/22/23 20:49, Alejandro Colomar wrote:
> Gidday!
>=20
> I created a git repository for the stdc(1) script, and created a signed=

> tag v0.1 for it.
>=20
> It's yet undocumented, but I plan to add a man page for it.  Anyway,
> being a bash(1) script, I guess it's quite readable to anyone here.
>=20
> Please suggest any improvements that you can think of =3D).

Heh, of course I forgot to paste the link to the repo:

cgit:
<http://www.alejandro-colomar.es/src/alx/alx/doc/stdc.git/>
git:
<git://www.alejandro-colomar.es/src/alx/alx/doc/stdc.git>

>=20
> Cheers,
>=20
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------dRBBpC6hz05SVcR0jNshLFvb--

--------------Dglvrp1kthJA2S0AoaURClaJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQbXBsACgkQnowa+77/
2zLcDw/8C0BRo6j1oG5JWDKiBsjbMmiGpklJedo2DGe/GHjtSqN+uqyhIM3mb7Ga
xpXtPCzuCnaQrj9K2SSuGqYv0HKcPCoCKGYtrhxAY1vXmaBISAH1KqeseJ1uZ6S+
dDqv55f+Kv5EPAZdVX5M1V921RGc5kja+EsTlDMqNNdRrox1kHYEAoUaSavIkUVR
AhMuDzj+Ba//h5MoEKsD6ANsB70SYn2+ghtyKTYTAn46LForjNqSsp+wqhZ0DbJj
iUoPCsCOxY2mRQLbTxmp2laAAZtZHRwzYcCtjuGi8pmBvvCgW1s6zKJ4LMYk2D6g
w4opIhMXe4gjudwIUkLDBHor3muHefbOHKDpCQgDFVkYjnwx+7IgrKTJ16eqEJHE
mEtqcSSp6G6ngkj5jnYYtmM+vdvNiy3HK8WXZCY+x3RiS8LliA8+Tqh1TlUOMPqb
dGuUzDXjZF2kVALsyKnCMx9wcIJGhEBbh5Bprr9bT/YAdG0C8YjxrNbvL11JaAXi
X0XqNk4AY/oTGvW6kRblVdLMmC5R0NuAsJ45nPwHBiNRr5p6xfqrzgH5JUT2i+Wz
5Ds9H3UP/hfvdAtxZxvteRbKOAlUEZ8X5NYOkuIi6mFkOrYwvyO+0lWALgJMxMog
3EekvxKvWYD3ZBbjgBC4JWFEweA32vV50Omrf2LC/SPIOfqquTI=
=mDWK
-----END PGP SIGNATURE-----

--------------Dglvrp1kthJA2S0AoaURClaJ--
