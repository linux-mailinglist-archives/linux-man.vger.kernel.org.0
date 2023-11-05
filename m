Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB3A7E17E4
	for <lists+linux-man@lfdr.de>; Mon,  6 Nov 2023 00:31:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbjKEXbn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Nov 2023 18:31:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbjKEXbm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Nov 2023 18:31:42 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2408BE
        for <linux-man@vger.kernel.org>; Sun,  5 Nov 2023 15:31:39 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E402C433C7;
        Sun,  5 Nov 2023 23:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699227099;
        bh=Cu34/C35PYd54hzh7QgJpGJu/iwFFQcWeWYCkCSIO+s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OeviOalBKAkZM1WjXAcjatJVeHtL6Lg0PnPZb0yEmlYYu0o+ZUIQuDKFv4a8RFDaV
         ps1oKVsqjSwThOZXyRWvVENfiJLXPg2fkAVV3cbGsG4Ld1ptyqueNcp6seyEmknEEh
         2u0dtVuc3K8DKKCCReb2eVx9WUKG1QPktWCMnzxZ0bbN8zGPRVt+S5jjQtMprMeNTZ
         I8x1+NYivJtghjgXuzpoZOV5OOholbT/o9SznTOqi8wm6HHSSyRut99YQL4Lqk0jpL
         tASxxYkFkOPiO0mEvDUcbjAGV3LC0gN6akFjK7zWFh/ujXZPW+T0OmkQRc9AorMm8E
         t0giHQAiH41SQ==
Date:   Mon, 6 Nov 2023 00:31:25 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUgl2HPJvUge7XYN@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="oIMH+lTm09Ysg0F+"
Content-Disposition: inline
In-Reply-To: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oIMH+lTm09Ysg0F+
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 6 Nov 2023 00:31:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Sun, Nov 05, 2023 at 09:16:25PM +0000, Jonny Grant wrote:
> Michael, what do you think about this documentation suggestion I have mad=
e. Interested to hear your opinion.
>=20
> Should the man page follow the C spec description of the strncpy function=
 and how when it copies the arrays, it may leave the resulting array of cha=
racters not terminated, and warn about this pitfall.
>=20
> C99 had this, and it is still there in latest C23 draft - worth clarifyin=
g on strncpy(3)?
>=20
> "7.21.2.4 The strncpy function"
>=20
> "269) Thus, if there is no null character in the first n characters of th=
e array pointed to by s2, the result will
> not be null-terminated."

What ISO C has said and continues to say about strncpy(3) is the actual
harmful stuff, which has led many programmers to believe strncpy(3) was
useful at all for producing strings.

The problem I see with what ISO C says about strncpy(3) is that it
treats it as a string-copying function.  If you treat strncpy(3) as a
string-copying function, then it is really broken and should be removed
=66rom libc.

However, its functionality is still useful for those cases where you
don't want a string, which is the only reason I didn't mark the function
as [[deprecated]].

>=20
> Note, I'm not using strncpy myself, it's a documentation clarification pr=
oposal.

I think it could be useful to add a note that one should first read the
CAVEATS section and string_copying(7) and only then read this page.


diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 239a2eb7e..c7bb79028 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -37,6 +37,12 @@ .SH SYNOPSIS
         _GNU_SOURCE
 .fi
 .SH DESCRIPTION
+.IR Note :
+These functions are probably not what you want.
+Read CAVEATS below,
+and
+.BR string_copying (7).
+.PP
 These functions copy the string pointed to by
 .I src
 into a null-padded character sequence at the fixed-width buffer pointed to=
 by


Is this scary enough?  Do you think this would tell readers to never use
this function unless they know what they're doing (and even when they
think they do, they probably don't)?

Cheers,
Alex

>=20
> Kind regards
> Jonny

--=20
<https://www.alejandro-colomar.es/>

--oIMH+lTm09Ysg0F+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVIJc0ACgkQnowa+77/
2zJPMA/6Az6PaPnx5jfMMGCsQ5kt/Mqq8TC+tReeXiLptiZHpgpB/LYSelj0t56D
y2xFijBwnV300aE12GZrd8crvt2iVVId58J9iLvP38Ytadrg7brd75PfO8xnf5ok
RrrXNZSxt7gonbIbVZL9//DCRARup9wCgOOD+iJlHKFBRKs7YQc/61st5z2dFFDI
Jg8tofRQGrpQk4CFfxR4B0n9hPRiOtji2AoSPvl2d06SBYyjcKaI2BAF5WeJut25
XCWLkfI95JQHFuFLtw/Pjmc1ubduIcJzgAgXvXxmjzeeg5zJGSqh07UTckCpHCj9
IMW6rlQ5AAKq801AmANH8XnyCy6E+O3bUXWuHzWuZd02dFtHHCgDgVL78RLOkP4a
GmCmj0ylzyR2BapetbhVlkadHKVgc8HYuLqnWDg0JDk++IkCCk5lsl993HuwM4+h
Zzi/KlargV3cXS0vUdyd+YHogp71NHYr3B2cDrn5EcY0KM7tSgy6HjcOB70oMRJR
NQ/LBSjAKbh0uUWvDS71aKNNfodvmF0Ez0nJu3aaSYmch5VVLrWm74krlmAXJY8y
A5gjS5JNu/5vzZnqFXYYfNs6kRBGkhdPfjGbYsINutmYdWA0n/tHzAzAY8KNVnZo
iAeh6N+SCAATlDFanUUj9l+71KRZfrvCy7s3VXVZEwS9LogDGn4=
=RBY8
-----END PGP SIGNATURE-----

--oIMH+lTm09Ysg0F+--
