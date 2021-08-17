Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B14913EEDBE
	for <lists+linux-man@lfdr.de>; Tue, 17 Aug 2021 15:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237588AbhHQNvu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Aug 2021 09:51:50 -0400
Received: from luckmann.name ([213.239.213.133]:52477 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233288AbhHQNvu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Aug 2021 09:51:50 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD4001.00000000611BBED4.000032BB; Tue, 17 Aug 2021 15:51:16 +0200
Date:   Tue, 17 Aug 2021 15:51:16 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: shmop.2
Message-ID: <20210817135116.GD12220@Debian-50-lenny-64-minimal>
References: <20210725170914.GA16816@Debian-50-lenny-64-minimal>
 <CAKgNAkizm0xZ3vr=mGRDgMOBZwps2RSkQxfR3vP-6Z8x_6MEJw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-12987-1629208276-0001-2"
Content-Disposition: inline
In-Reply-To: <CAKgNAkizm0xZ3vr=mGRDgMOBZwps2RSkQxfR3vP-6Z8x_6MEJw@mail.gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-12987-1629208276-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Jul 26, 2021 at 01:02:10AM +0200, Michael Kerrisk (man-pages) wrote:
> > Man page: shmop.2
> > Issue: file =E2=86=92 files
> >
> > "The following header file is included by the \"reader\" and \"writer\"=
 "
> > "programs."
>=20
> The existing text looks correct to me. Please let me know further
> details if you still think there's a problem after reviewing.

Probably we do not understand the sentence correctly, so bear with me.
Currently, the man page reads as follows:

   Program source: svshm_string.h
       The following header file is included by the "reader" and "writer" p=
rograms.

           #include <sys/types.h>
           #include <sys/ipc.h>
           #include <sys/shm.h>
           #include <sys/sem.h>
           #include <stdio.h>
           #include <stdlib.h>
           #include <string.h>

           #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                                   } while (0)

The sentence in question seems to refer to the next paragraph, i.e.
the beginning of the program source. There 7 header files (from
types.h up to string.h) are mentioned. In the translation we also
replaced the full stop by a colon. Since there are 7 header files, we
assume that it needs to be plural.

Now explaining this and reading it again, I think I understand the
sentence now (better). The header file is "svshm_string.h" and thus
singular. So logically (but it does not work in the overall formatting
of the man page), the first two lines above would need to be read in a
different order.=20

       The following header file is included by the "reader" and "writer" p=
rograms.
   Program source: svshm_string.h

If this interpetation is correct, maybe the following change could be
made:

   Program source: svshm_string.h
       This header file is included by the "reader" and "writer" programs:
       ~~~~~~~~~~                                                       ~~

Once I've your confirmation, I'll align the translation.

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-12987-1629208276-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmEbvs4ACgkQQbqlJmgq
5nDlTBAAsUQlsutYQpXUWBXVRfeHXtHG8iC+TZMy+ENwj134Is+vWsnuO9Lr3e9G
XnioeGSTCo4p2GmP/yxUYw9+FEDVm3UIAQ2CGQDpalYOdcqKTi8FOAHSYwujNV2i
nypYvbOvZMqbBETPWwvsA/eVZDBSqW0VEOjY6XQHVnIpn7SlvGiktr9A80nQa4e5
lGvTpsSGqSoBMFZr1JnKJuv1BXCAd91s6yJ19zbnHaYHIW8E9qtEaYmqavRQR+zH
UAidIT1cGyjxeAGFD4qNNBcvZmVRoXkfs0n8NWjTTKkopGS2jOYX41O7aSosgBmJ
nC2XWmvy3SwRbx+Nvq3fOYyDp8c3HlB3cYkAG+S4dbr+HXHIFJQYQld9duQhuwOf
7vdSw7zd7DTSshMLOOLvRZ+0onAuhJkaT1vE7LyI5pi7vTO7FO9pplJ8MoZ8Yroc
38zlypreZdSFDJEr052msfnt4ss8ZDuWoX14sXgo4ojv9EM3bnJB6dkiyyn5m5C+
0edevxKXSbU+7JJsG28qNKZrBptgqyUGEYQ4DTYekfIEVTUxwWrx9SjvXF+sA7PF
JwnzQbU2MaP26bNFRoXO6caCukbkkqharmYeBS3PRZ48I3JcKjdBaIKXSARs5r5T
mjk0FrF5C2gtk1RkyEwsxPJ66PGhMBMyGqDWRfX44976l5rrp2w=
=+dnT
-----END PGP SIGNATURE-----

--=_luckmann.name-12987-1629208276-0001-2--
