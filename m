Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D827621001F
	for <lists+linux-man@lfdr.de>; Wed,  1 Jul 2020 00:39:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726135AbgF3Wjh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Jun 2020 18:39:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725845AbgF3Wjg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Jun 2020 18:39:36 -0400
X-Greylist: delayed 333 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 30 Jun 2020 15:39:36 PDT
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EBA4C061755
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 15:39:36 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 49xK090bDMzKmh3;
        Wed,  1 Jul 2020 00:34:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de [80.241.56.117]) (amavisd-new, port 10030)
        with ESMTP id eNrtPyBd6OxL; Wed,  1 Jul 2020 00:33:57 +0200 (CEST)
Date:   Wed, 1 Jul 2020 08:33:48 +1000
From:   Aleksa Sarai <cyphar@cyphar.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     pgajdos <pgajdos@suse.cz>, eppers@posteo.de,
        linux-man <linux-man@vger.kernel.org>, libc-alpha@sourceware.org,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: openat2.h location (openat2.2)
Message-ID: <20200630223348.rrr23sfuh7p46top@yavin.dot.cyphar.com>
References: <20200630141703.GB12757@laura.suse.cz>
 <CAKgNAki+Zh-D_eYLsF_yryYF+BStLdUj=ROWKO2MRb+Yvp4PHA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="l5dfocib7veh5vt7"
Content-Disposition: inline
In-Reply-To: <CAKgNAki+Zh-D_eYLsF_yryYF+BStLdUj=ROWKO2MRb+Yvp4PHA@mail.gmail.com>
X-MBO-SPAM-Probability: 0
X-Rspamd-Score: -8.36 / 15.00 / 15.00
X-Rspamd-Queue-Id: 9A2911738
X-Rspamd-UID: d1d708
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--l5dfocib7veh5vt7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-06-30, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> [CC +=3D Aleksa, linux-man@]
>=20
> Hello Petr,
>=20
> I'm bringing Aleksa, the creator of the system call, into CC.
>=20
> Aleksa, the issue is that the header file (<openat2.h>) documented in
> the manual page that you sent does not (yet) exist (and the bug
> reporter therefore suggests that the manual page should say to include
> <linux/openat2.h>.
>=20
> I'm guessing that there is (or was) a plan to add a <openat2.h> header
> file to glibc. What is the status?

Yes, Florian asked me to put the openat2 definitions into a separate
header (openat2.h) so that it could be just copied by glibc rather than
having to do any more hacks around <fcntl.h>.

I guess those plans haven't come to fruition yet? I'm fine with telling
users to use <linux/openat2.h> in the meantime.

> With best regards,
>=20
> Michael
>=20
> On Tue, 30 Jun 2020 at 16:17, pgajdos <pgajdos@suse.cz> wrote:
> >
> > Hello Michael,
> >
> > https://bugzilla.suse.com/show_bug.cgi?id=3D1173382
> >
> > reporter proposes
> >
> > Index: man-pages-5.07/man2/openat2.2
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > --- man-pages-5.07.orig/man2/openat2.2  2020-06-09 14:45:54.000000000 +=
0200
> > +++ man-pages-5.07/man2/openat2.2       2020-06-30 16:07:09.655352702 +=
0200
> > @@ -29,7 +29,7 @@ openat2 \- open and possibly create a fi
> >  .B #include <sys/types.h>
> >  .B #include <sys/stat.h>
> >  .B #include <fcntl.h>
> > -.B #include <openat2.h>
> > +.B #include <linux/openat2.h>
> >  .PP
> >  .BI "int openat2(int " dirfd ", const char *" pathname ,
> >  .BI "            struct open_how *" how ", size_t " size ");
> >
> > Thanks,
> > Petr
> >
> > --
> > Have a lot of fun!

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--l5dfocib7veh5vt7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXvu9xgAKCRCdlLljIbnQ
EtdIAP9BmEb5JM1AGXt32MDGC89THsDA/L4M9Qtxt3IBIf1fNAEAnzWdiHMDHXNv
xd5vPn5Gaj1pHJhWmzy6RqBFwUJM4QY=
=m3eA
-----END PGP SIGNATURE-----

--l5dfocib7veh5vt7--
