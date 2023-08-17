Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD89777FFB0
	for <lists+linux-man@lfdr.de>; Thu, 17 Aug 2023 23:20:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244197AbjHQVTb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 17:19:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355319AbjHQVTM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 17:19:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091ED136
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 14:19:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 903C164CEA
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 21:19:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 482EAC433C8;
        Thu, 17 Aug 2023 21:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692307144;
        bh=RvuYoO7fYOo8F7j1hsUU/R5qrViHwSdVLWNuayduThc=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=ZiyuV43B4ww0goT5HSSYqeCZZTCADoux5EcYmqYVDCuk1BLHtCriH7Bu1Ahr+TiV+
         OxFdRGEkUFMwmAc5IiXmnrYmNi0FPScluSFOjf/1SrXgKrO+pi8WMJLbNdXVXd5und
         MS4gvEYnSPyhvQrPhzVHTgBg+LNf4VBsbBdLqejmM8/Dezo2kZuB7gsx0aEzmt4Q9h
         IwqHLo2cX9enaNrIXj4oxhenKUAHRXww+FhHT1XVoaJN4BRQzZuAgCszb84WXYWCnF
         64YZNqfRfYOfKW2Mz6hgch7q+s8LyGdpx+DaXvyrZdb7rIfNcSQMmoEyIiO3HQ2x+d
         10DfYiycj9VVg==
Message-ID: <1190c9f7-48f1-4228-945c-a33d5ca6991e@kernel.org>
Date:   Thu, 17 Aug 2023 23:19:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: proc(5)'s sashimi
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <guenther@unix-ag.uni-kl.de>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
 <e3a5bc09-e835-9819-4aaa-12959495ac59@kernel.org>
Organization: Linux
In-Reply-To: <e3a5bc09-e835-9819-4aaa-12959495ac59@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3uae5ZO18czpiEfQgOAUJJGe"
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3uae5ZO18czpiEfQgOAUJJGe
Content-Type: multipart/mixed; boundary="------------Xw6vOZLvSUN4SaMQjvnj1ITx";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
 =?UTF-8?Q?G=c3=bcnther_Noack?= <guenther@unix-ag.uni-kl.de>,
 Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 Colin Watson <cjwatson@debian.org>, Ingo Schwarze <schwarze@usta.de>
Message-ID: <1190c9f7-48f1-4228-945c-a33d5ca6991e@kernel.org>
Subject: Re: proc(5)'s sashimi
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
 <e3a5bc09-e835-9819-4aaa-12959495ac59@kernel.org>
In-Reply-To: <e3a5bc09-e835-9819-4aaa-12959495ac59@kernel.org>

--------------Xw6vOZLvSUN4SaMQjvnj1ITx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-15 23:47, Alejandro Colomar wrote:
>=20
> ---
>=20
> $ git request-pull master \
>       git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.=
git \
>       proc-sashimi-v1;
> The following changes since commit 26ffcd4fa9a4f89ab60371e9c19fa39cae58=
634b:
>=20
>   scripts/sortman: Ignore only leading underscores or dashes (2023-08-1=
4 15:16:59 +0200)
>=20
> are available in the Git repository at:
>=20
>   git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git =
tags/proc-sashimi-v1
>=20
> for you to fetch changes up to 92cdcec79df039146e5ed42cac23cd4b7e3f9e25=
:
>=20
>   proc.5: Clean up after making sashimi of this page (2023-08-15 23:27:=
07 +0200)
>=20
> ----------------------------------------------------------------
> proc(5) sashimi; v1
>=20


I've merged the changes.


commit 0569afbbccd6de28d1bacd13471a679ad2674aa1 (HEAD -> main, korg/maste=
r, alx/main, master)
Merge: 29597f1e7 92cdcec79
Author: Alejandro Colomar <alx@kernel.org>
Date:   Thu Aug 17 22:47:16 2023 +0200

    proc*.5: Make sashimi
   =20
    [Merge tag 'proc-sashimi-v1' of <git://www.alejandro-colomar.es/src/a=
lx/linux/man-pages/man-pages.git>]
   =20
    proc(5) was a huge page, which was quite hard to maintain, extend, re=
ad,
    and refer to.  Split the page into small pages for the different
    directories and files within /proc.  Some pages are still too large
    (e.g., proc_sys(5)), and will some day be split even more.
   =20
    This split keeps the contents of the original page, without modifying=

    anything; not even the formatting.
   =20
    The only thing that has been modified in this patches, is that
    directories are consistently represented with a trailing slash.
   =20
    For the file name of the pages, we've used the name of the interface
    (e.g., /proc/pid/), removing the leading and trailing '/'s and then
    translating the remaining ones as `tr / _` (e.g., proc_pid.5).  The
    title of the pages (TH) is consistent with this.  The NAME of the pag=
es,
    however, is the actual path name of the interfaces.
   =20
    The man page references have not been updated, as that was a more
    complex and tedious work, so I expect that they'll be slowly updated =
as
    we and users find out.
   =20
    Link: <https://lore.kernel.org/linux-man/e3a5bc09-e835-9819-4aaa-1295=
9495ac59@kernel.org/T/>
    Acked-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
    Acked-by: G=C3=BCnther Noack <gnoack@google.com>
    Acked-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
    Cc: Brian Inglis <Brian.Inglis@Shaw.ca>
    Cc: Ingo Schwarze <schwarze@usta.de>
    Cc: Colin Watson <cjwatson@debian.org>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Xw6vOZLvSUN4SaMQjvnj1ITx--

--------------3uae5ZO18czpiEfQgOAUJJGe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTejsQACgkQnowa+77/
2zK0/BAAotft23Xph2xbpE0sjxUfE26A+dv8+9r1NpfYpRPzODcE4sOHazygCGS2
T0L47sQdi1eNalFDjTbnliOnHjPaQuQOi9RTn79Xwt+O8gG4nCFweMs7tA5o8S+L
ihyny4hADu/CfJRjUh9FP+TlZAyolTsh+N8ZbIZsQQ+4pdUHiUc87/KR9v0rTciL
3CHb2+7yu71ZAe+kKiTFipkX36OVSx0v2eBkT4AUxPvJeDK3IEyt6ofIyS7ZN+PU
KCBPOeswg57kVa0QXJiem3K4p7orp4oQrOXCPVinyg7LGMDtNnUI2hRqijiwbJuV
BwbML7UniAp3Ibbm2YEKlKOb2Q/K4+3D2u6tH365SH4w2ppKhBwKgqnZm/37I8aC
r9WatD/m3c7elbg8qo3LYwb4HSO05ksRKuK4Ta484pGHBYwkpdsTVnkQWzIN5lvJ
7KBWHULkol66LpCm1CjGRPbC7Oohp8DdH1b9rW3VWabItrYFhQ9hIK4H1ur33KeV
hnYVJLusidNV4TcP8rBDU8He6Z9hP1pdhWPjeLNGrDIf0dylIGJD4uXxIvkqjiQf
F+nMcyz1CTTZwDsqanJ/5B9B+B8EWk64N6JJkMTtMqU6sME0ril/uz7uUz93pt+w
Hqa74n225omNEg2Ll7E35xw7ETqsHxz7M8FkMw+2riu+vD0oNn4=
=kAcW
-----END PGP SIGNATURE-----

--------------3uae5ZO18czpiEfQgOAUJJGe--
