Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2285A6D2ADF
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:04:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229998AbjCaWE5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:04:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233451AbjCaWE4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:04:56 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 10D7B1E719
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:04:56 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 195155020;
        Sat,  1 Apr 2023 00:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1680300294;
        bh=4va1Yw9vSJ7NSxJczQIBv6RGrkOzc82b1UsYhI/TSvw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=leOSvCeJl/UKuFQz/xqvL18dsBALDhuFnC8Dyzrr/8cSXvqV01vTDZHHStFOFVIb5
         G6L1Lfnwa9u/oekgee3Long0wOuu4eBQl8rJ7Eh6CfneK5uPV14O6jZyqM3dHvv1R4
         +Rgee7mFBTegy41sBEuB77QhHPSMfZ82+rVaQD4toFIaJN6Y1kLBXYKxAJtFxG3c2F
         2pVGrXQ8lrvCVxoi72NWoUOzxuZb8A1XS8g+bLPuMATSAK1fLbQGScOpfZLrBPuJYc
         ZZUxPA1LodC31W64VHOBC5/B1A+xt4U/xFlNdzcIU2sNar+CcwLJqLwsMMVcxR93Kx
         hjEDf9wnEIApA==
Date:   Sat, 1 Apr 2023 00:04:52 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH 1/2] proc.5: add "system information, and sysctl" to .SH
Message-ID: <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5v4ixbfzgmzwifa5"
Content-Disposition: inline
In-Reply-To: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5v4ixbfzgmzwifa5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

procfs hosts a whole host of information about the system,
as well as sysctls; proc(5) hosts a description of a lot of sysctls,
and at present there's no way to find that out.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/proc.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 39c7eb8ab..e2e3c3409 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -36,7 +36,7 @@
 .\"
 .TH proc 5 (date) "Linux man-pages (unreleased)"
 .SH NAME
-proc \- process information pseudo-filesystem
+proc \- process information, system information, and sysctl pseudo-filesys=
tem
 .SH DESCRIPTION
 The
 .B proc
--=20
2.30.2


--5v4ixbfzgmzwifa5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQnWQQACgkQvP0LAY0m
WPEWmQ/9F9Iix4rESNtm7Wr22DgSEuLCpkyoOBS4SIKP2HJmsE3swXkTSnOpJfOZ
vmSeJcRlOni5ZrYXS0g9+EUqsEieQ2DW5HnVU9aU/Nk5pz/GkaZR/RghWqAYutzn
y4MEmk+ga3p2ZATxECbGb3EQD0AMaAqbYwhwhmbuLFS4lAvbr3tmZT6CUhREKsR+
OFj4Wr7e3OU7vHs+GswRzYH9kImIl7JhMMfyCTtQoYw9j9Q+cO0R8HTKoJE6FAas
cwvi4OffyEI8C4zATP68047qIIdNcEtWxOssw/kXosa0WJU0vQFOGJLD0+SdG4gV
EXxj6Wf7Inv8IjYzsHmlGaoRjHOgE4HyLcaDFjUdsOiiBj+bfwc1S/SnYvgzxUp7
fzRDp/83lnAXDS3lTsJgwKoLNw1lwPrEd/9iReU622hThErj53BiJv1TmATJsSj7
CyjiDNUBAUgkcL1nt5QHMs1kGPYNU1gnFm8EpQzAF5v5blvX2d0fpUsUyqH9gDT1
MjklIBLxdbhJWaZMA2s6KS0a8eL4lMCc5LOzhZOWSiaGrhdXXHLOiqbYq6+2Tge6
TO+cDFBsDG64RkRm4u6Yab9n5j7WwEKUWD7eRywBg6Nj6MjuDd4FKtokmBJ8gZ0T
FijBxFitDWficEtEHdQJqISfWMXMkKCzxNVgpAY0dQxbVpUV9VA=
=/apG
-----END PGP SIGNATURE-----

--5v4ixbfzgmzwifa5--
