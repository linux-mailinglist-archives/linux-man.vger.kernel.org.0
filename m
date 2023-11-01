Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CEBA7DE411
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232094AbjKAPk7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:40:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232759AbjKAPk6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:40:58 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DD6BDA
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:40:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020152.0000000065427182.000FBD1D; Wed, 01 Nov 2023 15:40:50 +0000
Date:   Wed, 1 Nov 2023 15:40:50 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page getdents.2
Message-ID: <ZUJxggFs7EE6uWgv@meinfjell.helgefjelltest.de>
References: <ZUJaYgHOEqVzhGhP@meinfjell.helgefjelltest.de>
 <ZUJujd_4993OjKiO@debian>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1031453-1698853250-0001-2"
Content-Disposition: inline
In-Reply-To: <ZUJujd_4993OjKiO@debian>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1031453-1698853250-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Wed, Nov 01, 2023 at 04:28:12PM +0100 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Zero padding byte =E2=86=92  null padding byte?
> >=20
> > msgid ""
> > "struct linux_dirent {\n"
> > "    unsigned long  d_ino;     /* Inode number */\n"
> > "    unsigned long  d_off;     /* Offset to next I<linux_dirent> */\n"
> > "    unsigned short d_reclen;  /* Length of this I<linux_dirent> */\n"
> > "    char           d_name[];  /* Filename (null-terminated) */\n"
> > "                      /* length is actually (d_reclen - 2 -\n"
> > "                         offsetof(struct linux_dirent, d_name)) */\n"
> > "    /*\n"
> > "    char           pad;       // Zero padding byte\n"
>=20
> Both seem good to me.  Why not zero?

I'm not a programmer. But I thought the term was null? If this is not
the case, then disregard my proposal.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1031453-1698853250-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmVCcYIACgkQQbqlJmgq
5nAJ2RAAh3EH8Tgx0c/rFTOWTHA5yMO32jb3WA37uSmjLiNEzhjOgCPwetinMbUe
Ga4kf+UD6rWsq6GtQJVp4JVB6ByAn3AmATBpdPEAVC0QNc92QZBlLualZ+shu9+I
RcS1lWwF2/A84f5oOLfZaSJVlP/nfYZLe8Axq6v+ON3xElJrcXe4VzcwRZ4UZDk6
StUXXIAbH4egnj0A5YQWNliFWwE4IMujX2QNwdX39gwzywguQgvkOPdBZevMPa87
VnbyDiA0Ka1yIGHkOSlYBIWNTmSVq5yy2nmXTJZCedeYegIcZxZH/v29NCWZK15f
XQW9rur65pJzNG+DO9gfiG9uR6wptLdFerKiiHnrLES0UWCb6O+yL0Ci00k/IP2a
N50ALiPd7T2bOT8lEscZZzn2RgJqWru3IhEgufBiBP1DUAGupsbDv8KADnGZfCLk
5pEkYCHS3096nBM5dRiQssmSuwvS1xEHTE5u+yHwhfvKGXzgcIt4T+AsDe0RmmNg
1mcjCMqN9RoZSaaGvwY7uN0EQzohZ2Bc/ypt0IDB+TR1vqPLbkxjM7ouAGqQxb2h
7AoFfQMQTKWno6NWEBlSzhzl2RiSMpcp+/8GA0qoW0uJt7QxUhuwvP5h2aihSWgf
PvU6EhUgHvqcLarebUYIU8NLALHyAp+FNW1mDNZoe5W5Qd8OSqc=
=oZ3J
-----END PGP SIGNATURE-----

--=_meinfjell-1031453-1698853250-0001-2--
