Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 263A12D580E
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 11:18:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725789AbgLJKQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 05:16:45 -0500
Received: from 14.mo6.mail-out.ovh.net ([46.105.56.113]:44540 "EHLO
        14.mo6.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726363AbgLJKQg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Dec 2020 05:16:36 -0500
X-Greylist: delayed 5344 seconds by postgrey-1.27 at vger.kernel.org; Thu, 10 Dec 2020 05:16:34 EST
Received: from player694.ha.ovh.net (unknown [10.108.20.237])
        by mo6.mail-out.ovh.net (Postfix) with ESMTP id D05DA234A54
        for <linux-man@vger.kernel.org>; Thu, 10 Dec 2020 09:21:50 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player694.ha.ovh.net (Postfix) with ESMTPSA id C324118F19F53;
        Thu, 10 Dec 2020 08:21:44 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-95G001721fa3ea-c851-41f5-a90b-307c09cb4b81,
                    A3332C1353315F6CAADE0FE6D61FE8FFE980082F) smtp.auth=steve@sk2.org
Date:   Thu, 10 Dec 2020 09:21:33 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] close_range.2: new page documenting close_range(2)
Message-ID: <20201210092047.4853db82@heffalump.sk2.org>
In-Reply-To: <e50183ce-3ccb-c41c-9d30-bfb622b3b1f5@gmail.com>
References: <20201209220023.17912-1-steve@sk2.org>
        <e50183ce-3ccb-c41c-9d30-bfb622b3b1f5@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/U3tQ2U=imWqD0vVI0=oShwC"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 15753028547537030614
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudejledguddujecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtvdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeekffdvhfejkeffudekhedvtddvhfeiheehvdehkeetkedufeejffeuueevvddvnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileegrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/U3tQ2U=imWqD0vVI0=oShwC
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,

On Thu, 10 Dec 2020 01:24:28 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> A few more comments below.

Thanks for all the detailed reviews! (Same goes to everyone reviewing this
yesterday, thanks for helping turn my not-so-great attempt into something
really useful.)

> Michael, please have a look at them too.
>=20
> Christian, do you have any program that you used to test the syscall
> that could be added as an example program to the page?

I have some example code that I could turn into an example program, but I
imagine Christian has better code than me ;-).

> > +.BI "int close_range(unsigned int " first ", unsigned int " last ",
> > unsigned int " flags ); =20
>=20
> This line overflows an 80-col terminal.  Fix:
>=20
> .BI "int close_range(unsigned int " first ", unsigned int " last ,
> .BI "                unsigned int " flags );

Noted, thanks.

> > +.fi =20
>=20
> Please, add a note here that there is no wrapper for this syscall,
> as in other syscalls without wrapper (see membarrier(2) as an example).
> That way it's easier to grep, if all pages have the same notice.

Ah, right, I used pidfd_open(2) as an example, where it's mentioned later.

> Please use semantic newlines.
> See man-pages(7)::STYLE GUIDE::Use semantic newlines

Noted, thanks.

> > +.SH NOTES
> > +Currently, there is no glibc wrapper for this system call; call it usi=
ng
> > +.BR syscall (2). =20
>=20
> I can see that this notice is also present on a few pages,
> but the one in membarrier(2) is more extended.
>=20
> Please, copy the notices from membarrier(2).
> There's one in SYNOPSIS, and one in NOTES.

Will do!

> > +.SH USE CASES =20
>=20
> This section is unconventional.  Please move that text to one of the
> traditional sections.  I think DESCRIPTION would be the best place for th=
is.
>=20
> For a list of the traditional sections,
> see man-pages(7)::DESCRIPTION::Sections within a manual page

Indeed; it grew out of pidfd_open's "Use cases" section but making all this
part of the description would be much better.

I'll wait and see if there are other comments, and send a v3 addressing all
the above.

Regards,

Stephen

--Sig_/U3tQ2U=imWqD0vVI0=oShwC
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAl/R2o0ACgkQgNMC9Yht
g5wIWBAAoBENJwZZP6kOLd95KZst1gOgAfv0T8JtANPGsplnlhzTte+iTZB8aG3d
sv0SWRKABDFY61fEhswSi76hnWmXjoY/TcE5JFbB4MAolBvY5pXdsPsuMSg4I4hJ
APBICXX/D++EsZUIAW+d3U3R9DUA8qzg+VhqekSssHLARRUamk4C3QOasdjuaYoa
KphUzKlRdg0plj/DLHimcEsfKwn4ucsaLcBAkS/+AjEVJ1uZHPKAwEmYPGiZZzNL
Y6HLdYu6fA54JW7iAqcMpM66w9fKMBQs6Ecz8alOVoeFuCiFCPVt5yq29ReH+w7c
pWBLxsCF+vHow3Q8976YGtu9HwIN6u/zYZ4vrfD1cJ1YdaIPpFXIrR4ABrzGlTuh
sJNv3mY17iVGf7aAQ8xxYqFnaqsBlJe78un10EshDbIlZ841iR+dINwT1q2MA6H3
CQ7d5bTtogdwqt0CfIG4xyaM2MVbLqGe2LhjR8wGH33c7dF4Djw9w4zIuU2sOQGD
wnY6kl1ljAR4NiU5rfBHR4tgm23t3RSFxgIQVZP7lYFUeFTsANHJ6VJJdgOJ2xUL
pCdmYgGNG8Rmhwo+eAjJWPeHMdecIorq8Bee72jDGP39PRnGsn61pQa+XPwozUEo
/ZhsT3x8g7s63LxJV32oVAvhb58FV+j5CBRlNKQ17TBX48Xt4tM=
=OnPz
-----END PGP SIGNATURE-----

--Sig_/U3tQ2U=imWqD0vVI0=oShwC--
