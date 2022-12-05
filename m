Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E586642E5F
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 18:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbiLERJj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 12:09:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230036AbiLERJi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 12:09:38 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82713E095
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 09:09:37 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62079.00000000638E25CF.0000195C; Mon, 05 Dec 2022 18:09:35 +0100
Date:   Mon, 5 Dec 2022 18:09:35 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page wcsncpy.3
Message-ID: <20221205170935.GE5000@Debian-50-lenny-64-minimal>
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <e358f853-93e5-a30a-2d59-1115d64a61af@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-6492-1670260175-0001-2"
Content-Disposition: inline
In-Reply-To: <e358f853-93e5-a30a-2d59-1115d64a61af@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-6492-1670260175-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 09:44:47PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Is the "L" in the bracket (for the NULL character) correct?
>=20
> AFAIK, yes.  I never used it myself, but I believe L'\0' generates a "null
> wide character".

Just to get this clear for myself, the man page currently use quoting
characters (not plain ''), i.e.=20

L\\(aq\\e0\\(aq

And this should not be translated? Currently I translate the quotes,
i.e. in German this is marked as:

L=C2=BB\\e0=C2=AB

This is probably wrong?

Is there a way to note that this quotes are not to be translated even
though they are not printed literally but with the macro \\(aq?

I explicitly ask this because using macros (markup) is a clear sign
for me that it can be translated, and thus this breaks my heuristics.

Thanks for clarifications.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-6492-1670260175-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOOJc8ACgkQQbqlJmgq
5nC+6w/+N/m9VP7R2Npm7zBqK/Kj0JhVixkJleLEGPawMNsRPofJ+Q3Qyb3ijoYc
fBy0B7ez8amnKJZnYWdnzMnopjFLp63e4130tuUb+jFiZm8zPLt8n9yn1owA63B2
qhhwqDjrlefOVLBX5yAII5X88DoYbE37y8U+pA6ORJf+VjJOcPGsasFUZjthgyOo
bTwFEBsJYXrYxhhGdqjpmFUUxYrnLOeTZ7+U6v0b1opoND5A4i4sIOwsY1zERQIf
5sKhiEnFo/f5ibkskZzvc+BkigodS7W+DCaDzKC11nTifrZ+LP/SWJKZHS/6rygQ
CFfheijK7aT0W3C6FXcKJMOYcPYNwAwiRXwzgAOueWgPvrq8uEYdEYkK+duLkIE5
w3fvZ2PQUvECH9MQ/GbtxqE6Q+TUZTCIUekl1rlxbOApYoZNEQrGztR3Iu0LUF+H
ukcvPZhiFqfppZ4TccI9wWhR9/sZSpwqzE2TuAOIw+tHJCco+TWGliCG7TT2o650
fBPBUbkeX3v2L3d3bnx3Y+YXRXX/W+WCKswT6uk6NRKTTg6mh5n6KJTvrm7XjkN8
k6zsJH8G8b5z7Y7c0dzDnj9xBz1pO8lMNqTpyml4xJvhlv9IyTLK9l9fvTVSKheY
BrR97cSJusHe+DvbbFTrPTP5oDtTCqaaaaHHg+OEQpOqw4Khx6U=
=esJX
-----END PGP SIGNATURE-----

--=_luckmann.name-6492-1670260175-0001-2--
