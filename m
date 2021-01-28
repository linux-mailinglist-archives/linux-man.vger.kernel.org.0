Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58FBD30831E
	for <lists+linux-man@lfdr.de>; Fri, 29 Jan 2021 02:17:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231608AbhA2BRP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 20:17:15 -0500
Received: from 7.mo68.mail-out.ovh.net ([46.105.63.230]:37457 "EHLO
        7.mo68.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231287AbhA2BRL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 20:17:11 -0500
X-Greylist: delayed 9597 seconds by postgrey-1.27 at vger.kernel.org; Thu, 28 Jan 2021 20:17:11 EST
Received: from player714.ha.ovh.net (unknown [10.108.35.223])
        by mo68.mail-out.ovh.net (Postfix) with ESMTP id A3566189EF2
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 23:10:54 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player714.ha.ovh.net (Postfix) with ESMTPSA id C81081A7379B6;
        Thu, 28 Jan 2021 22:10:47 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-100R003a02efd4b-9d07-4c0e-bd5a-efc0456abeec,
                    8C41145FDD04D9C53928627EF68C09805F6E2986) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Thu, 28 Jan 2021 23:10:40 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] close_range.2: new page documenting close_range(2)
Message-ID: <20210128231040.6c85915f@heffalump.sk2.org>
In-Reply-To: <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
References: <20210123161154.29332-1-steve@sk2.org>
        <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/ILFGuzCoLO/Vcnpsoz0txD5"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 3922072327938592125
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrfedtgdduheeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtsehgtderreertdejnecuhfhrohhmpefuthgvphhhvghnucfmihhtthcuoehsthgvvhgvsehskhdvrdhorhhgqeenucggtffrrghtthgvrhhnpeevledvueefvdeivefftdeugeekveethefftdffteelheejkeejjeduffeiudetkeenucfkpheptddrtddrtddrtddpkedvrdeihedrvdehrddvtddunecuufhprghmkfhppfgvthifohhrkhepkedvrdeihedrvdehrddvtddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedugedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/ILFGuzCoLO/Vcnpsoz0txD5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Michael,

On Thu, 28 Jan 2021 21:50:23 +0100, "Michael Kerrisk (man-pages)"
<mtk.manpages@gmail.com> wrote:
> Thanks for your patch revision. I've merged it, and have
> done some light editing, but I still have a question:
>=20
> On 1/23/21 5:11 PM, Stephen Kitt wrote:
>=20
> [...]
>=20
> > +.SH ERRORS =20
>=20
> > +.TP
> > +.B EMFILE
> > +The per-process limit on the number of open file descriptors has been
> > reached +(see the description of
> > +.B RLIMIT_NOFILE
> > +in
> > +.BR getrlimit (2)). =20
>=20
> I think there was already a question about this error, but
> I still have a doubt.
>=20
> A glance at the code tells me that indeed EMFILE can occur.
> But how can the reason be because the limit on the number
> of open file descriptors has been reached? I mean: no new
> FDs are being opened, so how can we go over the limit. I think
> the cause of this error is something else, but what is it?

Here=E2=80=99s how I understand the code that can lead to EMFILE:

* in __close_range(), if CLOSE_RANGE_UNSHARE is set, call unshare_fd() with
  CLONE_FILES to clone the fd table
* unshare_fd() calls dup_fd()
* dup_fd() allocates a new fdtable, and if the resulting fdtable ends up
  being too small to hold the number of fds calculated by
  sane_fdtable_size(), fails with EMFILE

I suspect that, given that we=E2=80=99re starting with a valid fdtable, the=
 only way
this can happen is if there=E2=80=99s a race with sysctl_nr_open being redu=
ced.

Incidentally, isn=E2=80=99t this comment in file.c somewhat misleading?

		/*
		 * If the requested range is greater than the current maximum,
		 * we're closing everything so only copy all file descriptors
		 * beneath the lowest file descriptor.
		 */

As I understand it, dup_fd() will always copy any open file descriptor
anyway, it won=E2=80=99t stop at max_unshare_fds if that=E2=80=99s lower th=
an the number of
open fds (thanks to save_fdtable_size())...

Regards,

Stephen

--Sig_/ILFGuzCoLO/Vcnpsoz0txD5
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmATNmAACgkQgNMC9Yht
g5ycdw/8D+BJbjsIiVnh1Qw7rEXtzXwo1RYAhY5JScjqqcevI5+YAtBc5TbcoSBP
s8F0bdAPp4m85xF9/lvh9QzcjNjI/TtyC0ohlXtxbX8F3pkip7va012ISEOwru/W
F/MMmOIHxjDfmt9SkE2Ekp9A5zxmM+/hxjeLs1wTySZCkZUOEr2+TVIQE86wmWvW
2Rq7evRSbMgxlQIvZIAPj9b5Ks2fhJY9Tdh8LwN+NgavDkIH/U6pj95NKrGXEOwr
az8o9+LD0hROOCaC9kJMgLThWTuBHbliaQF1mYasIttijYzVBgA3M8QS6NVD7Q6y
34S0Azy6VygGrkRnr5aIpT1w3EcJziJAn+YuBoSd2cCbEbE/O7dl6hWNCKeNZviM
rcUOfJbNe1799mD4e2XHvF1MPYDmbkmqUWjz58N7x0n0zPQe4+6M7vBk769EBB+z
zoJrYfwchUX0N0RTyPvliZh6x9ELlcYfPA1jceElu7Mhgsjzu3uhptiNrR0uwlsa
iz/r2GFsD2zWm4OUSnVP4kK1BI8QHep/pxwnlkWBsQfbyJz2xiWOFr51tyIlDrgA
zdh5DZUffnqztmHlaNK0+lToYULp17EfGXF3blJLLegrHCiWgCRHnOStEShSFdfK
NLvljJTKDP8JzJ4g2jMOxoxWjESw9acwImPZWR/VZPNRifYS6nE=
=tH9U
-----END PGP SIGNATURE-----

--Sig_/ILFGuzCoLO/Vcnpsoz0txD5--
