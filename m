Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED0526BB1F4
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 13:31:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232611AbjCOMbq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 08:31:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232642AbjCOMbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 08:31:32 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 119EC88D8C
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:30:45 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id l12so8871298wrm.10
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678883443;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RzYQzWZFFyNQC/MN825q6ZCxGhA9rX1Otgv4WDILE/U=;
        b=RcBlLfpSm0mzHVtZ0Vf9FAWEmeJVTFS3Fw7RSNaHxquVc3YNlCGnZPpKOl6reaTXY2
         2dAygO4/L6GW9tnkQ0U4fy5gcYwSquc9TF6mYP/nB+2av4Dep+/JkEniW5FUnYDjxQ0g
         fgumCRXdoMqvpDaLx9LjLqdjFHSRF9GlVd6nes2LcxLkqcUrWdLhCcz0bKV0ObEe8nSd
         NnhR0S9WZlfcTGMIaeOPgaadjJkrl2m6aitHw0OQi//5+UnDNTZJqgocdAPgUkTB6UY/
         DxRUfYO5JuLcUEaeuIs7uSeIaXnke97zZYWro8SkENY0Vk8WpHJ1K+GsuV+zEEL20DKe
         d/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678883443;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RzYQzWZFFyNQC/MN825q6ZCxGhA9rX1Otgv4WDILE/U=;
        b=O87bOeFz/shZPLuHapX6YHs/PgwiHUNrMWkV3b55pCayb5zD/92jvBCv9IEgjJysHX
         +A0iXhEeK6qiYJtzxvA2+/MHXfneVaMTJ/yYb26EO1J+Px9bmQ/w2CHukyAgeUmCHNJv
         EoxtxksdbbcuG6ZboNesAd2dLR6EmN8Of/HfpCVwKLHPgg9wl5jDxsyMN5p10ZkHuVip
         FqktaMSKH3ew87/zd+2tEnScPDYdeT4WgsfBsBXfJId+CqjTENgekUzdFWu3n3aLh07g
         Gf2MLsSROSBUynxNysHDJrSE1i54K0H6XsswTONaD8zNKgivMJ1T8XoMl1YjvhlarPi8
         uTWw==
X-Gm-Message-State: AO0yUKWq72S3YvX/kGwxjoxFh03FpcXS01xRzTWCaWainYR4xjEmEZO0
        oIJGX4bCbHKgN4cGsDE2to9zcB8TjG4=
X-Google-Smtp-Source: AK7set9z9vQDnFLHLIaiUg/tbWXmBdaSU26bBqOTh/3Vgpq+K4Dj4aui7u26pxQLpYT4D54NZ7wMCA==
X-Received: by 2002:a5d:44c8:0:b0:2cf:e436:f722 with SMTP id z8-20020a5d44c8000000b002cfe436f722mr1719727wrr.64.1678883443488;
        Wed, 15 Mar 2023 05:30:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z4-20020a5d6544000000b002c56013c07fsm4566721wrv.109.2023.03.15.05.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 05:30:43 -0700 (PDT)
Message-ID: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
Date:   Wed, 15 Mar 2023 13:30:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     mnagy@port70.net, nsz@port70.net
Cc:     linux-man <linux-man@vger.kernel.org>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: .txt draft C standards
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UnbR5UkxKNvMsA2P8G1ahOcm"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UnbR5UkxKNvMsA2P8G1ahOcm
Content-Type: multipart/mixed; boundary="------------kK1R0fyocHdKrRFVbIe4xf3a";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: mnagy@port70.net, nsz@port70.net
Cc: linux-man <linux-man@vger.kernel.org>,
 Oskari Pirhonen <xxc3ncoredxx@gmail.com>, Brian Inglis
 <Brian.Inglis@Shaw.ca>, Matt Jolly <Matt.Jolly@footclan.ninja>
Message-ID: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
Subject: .txt draft C standards

--------------kK1R0fyocHdKrRFVbIe4xf3a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'm the maintainer of the Linux man-pages, and am interested in copying
the following files from your website to the repository.  I think that
alone would already be useful to our users, but the main motivation goes
beyond that.  I developed a small tool to search for declarations in the
standard:

stdc89()
{
    grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-draft.txt =
\
    | sort \
    | uniq;
}

That will help a lot in maintaining the manual pages, and I'd like to
have the draft in the same repository so I can have that script in the
repo working for anyone who clones it.  Or maybe we could even make it
part of the installation, and install the files into
<$prefix/share/doc/c/>, and some binary in <$prefix/bin>, so everybody
could then check the standard from the command line.

Oskari even had the idea of being able to diff between different
standards, which I think can be also quite useful.

My questions to you is:

-  Is there any license that applies to the drafts of the standard?
   Are they in the public domain or at least open-source?

-  Is there any license for your .txt variants?  Did you create them,
   or were they picked from another source?

-  I guess you don't mind if I mention you and your website as the
   source of the files when I copy them, but just in case I need to ask.

Thanks!

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------kK1R0fyocHdKrRFVbIe4xf3a--

--------------UnbR5UkxKNvMsA2P8G1ahOcm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQRunEACgkQnowa+77/
2zLx8Q/+OwlepJfdwn7snGLV61pQFWXZJBk3Ih1z6fmgd4CeYQtJpRpIBVHGNWyG
Q03Ct41A4qWocQZUXpdX4vXA/SVCgW7+by5uIPZYoBdAz676QSCzSXrq5Yva0aQP
irFXuiUDFoNeWtnu4ZQf9I59+lnhdXtHboqkuRZk7CfaN1QRBhyK5UmEi1SsMjWd
FU5MppTrwHlO8gQD2W8Rufoz0hkQNtJG7QpISeIdgoKq48zkWWTKxdm1Bru4oCot
yMguWsu+eMEARoI2q9o771jKTcep0r2moiam4c8lY3H5FzdDszpdKcfZbn1nl7Bc
el7L4kTVB5cphWez3Mj50Wu7LfVNOZYNsEeU14s1UZ5YHqZ2Zv6WKz4HiPTz7HiI
9VRuGLraiEMEAVNu7InGeaYowLCpWHoNUfsUXfuWj32dbeMTxSwqKo4664rMMzQc
WNymVz+ly+HJLSA94NwmJKfZ2AfyjdV6dXk5QK3c5TZorPHLl8LzPMqd88+tuXPt
8F5fw0e3eIvjDkIZ16sEHT/dh6Do+slfXEB2/4pBM8BDEByARxhTFyZ9ElT1WBph
ahp+IBkUZ06Y6IU56BWG+WbT3r54EQqoyehabdCMceI+gQn1iMkF8eXRZCK6jVQY
8nTY5oyWrTfycNCIaVNfNKowJ9IZ2KZiB+Q7kRfDjndgiimS6Yo=
=hilv
-----END PGP SIGNATURE-----

--------------UnbR5UkxKNvMsA2P8G1ahOcm--
