Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45D957B6CA9
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 17:10:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240170AbjJCPKJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 11:10:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230511AbjJCPKJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 11:10:09 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A2DEA1
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 08:10:04 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F789C433C7;
        Tue,  3 Oct 2023 15:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696345804;
        bh=c+tlT0TxLZnRSIZ3ydq5kvYbrMlevMTBX3jKUsYw72U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nDE83SG32UjVezo17QS1CNdHYRIZynG5pT9O1CT0IZX+mAL4UAkhfqU+bAn5+tEgf
         7xBeldihxrF4hH/dLVBetd6HQDilqoecRIH8GdztaT2Q0g6wpw7DSLUEth2mfcsQbf
         D/QXzzOWnoK2028sa6NC2HhrcuqQFIS3zf4+XZnXFF5jHT1A3HrC/zznW6mM1eMMiR
         8/rDdU2B/GBpLtLWR5ihwoxMOdGFAo+WMI1AoCpGl9MqFAS5yC5xdKDbdpQzMjOism
         +GXyV9ak7dkCP/8ZaxjB7PkHnpIQP7ohe7RIRdm+rO5ayB8rHuHsQWqJzEZGJoSYCC
         IFZlPvcZ2A0iw==
Date:   Tue, 3 Oct 2023 17:10:00 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Xavier Leroy <Xavier.Leroy@inria.fr>,
        Arnav Rawat <rawat.arnav@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        GNU Libc Maintainers <debian-glibc@lists.debian.org>,
        lnx-man <linux-man@vger.kernel.org>,
        glibc <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: Manual pages from glibc-doc
Message-ID: <ZRwuyJ47NnNHCspo@debian>
References: <703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gmail.com>
 <CAH=h3gFakgz3xcH63h-5nO0L9LuSy2Xr5b2riwpJ1o4L3DzuRg@mail.gmail.com>
 <93aba0c9-ad1d-d488-1471-be30b7a8bb0c@gmail.com>
 <CAH=h3gF3F-tOq6-zYKf63_JhR3tRZ9NFMiTpX2YEjhhjDGr7Hw@mail.gmail.com>
 <ZRv9b2Ht-sRok6BH@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="JKe2vBY5oGqks9LR"
Content-Disposition: inline
In-Reply-To: <ZRv9b2Ht-sRok6BH@debian>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--JKe2vBY5oGqks9LR
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 3 Oct 2023 17:10:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xavier Leroy <Xavier.Leroy@inria.fr>,
	Arnav Rawat <rawat.arnav@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	GNU Libc Maintainers <debian-glibc@lists.debian.org>,
	lnx-man <linux-man@vger.kernel.org>,
	glibc <libc-alpha@sourceware.org>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: Manual pages from glibc-doc

On Tue, Oct 03, 2023 at 01:39:21PM +0200, Alejandro Colomar wrote:
> Hi Arnav, Xavier,
>=20
> On Sun, May 21, 2023 at 07:29:19PM +0200, Xavier Leroy wrote:
> > On Sun, May 21, 2023 at 12:25=E2=80=AFPM Alejandro Colomar <alx.manpage=
s@gmail.com>
> > wrote:

[...]

> > > Thanks for the history.  I've investigated a bit after your email.
> > >
> >=20
> > Thanks for the historian's work !

I've imported the glibc git history into the Linux man-pages, to keep
that history as untouched as possible.  :)

Please find the import here:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?id=3D6571dea2f1b71f4bc2ca8c3b9850acccd7226659>

I wonder if there are more pages in other paths within glibc that we
should also import.

I'll push these changes to <kernel.org> to-morrow.

Cheers,
Alex

--JKe2vBY5oGqks9LR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUcLsgACgkQnowa+77/
2zJ+pQ/+JPlTrczIkBfpl8G6J98YZO+FpzddyvH4d2KcDcC5r9OH9e4fDgUS46z/
TB4NUzPBDBqe3jmC+l8MVsssWQYVd+Wd1g2ZxgeL1Hw0LTqBwd8UAAl+fjVbZlYo
a004UAyXIGPAXepTNNyNiaRyZNpwgnRIv9D+d6EMs7hX7enHS07CWvke1daK0fvP
wtEY3kU+nrBwELqhN3woEWWiouKvlHsiuFZwHy5i1H/H9D7TpitFcoYsEa9JZbhA
MvuPxE1tdwJS7ZiofknYh2FsYts9B1zZgaEJLyWzQ9ynLjor9b+IIy99x3aXqInY
SreWWPhMLxY8J2hJWTSkxA6WdezjuTRwl3MXeTrVEGsBuAlaeCPG4q2Ktr07ki4T
8pq/DM3B3/lIl8Kii/iErcV7dRrRXWKWtyywaGK7u8TdS24MNITXd5Qb6srYc4r7
ekb26ZX9GA5fgC3eGtJ6vpvwCRqX1oIc2R1uqMUGj1PkXQ3wba9LfgiXpKFrK6RV
bRcnDZpO3W9wyCW5UiWtZZpvXgC8yOejLXBvvh6dEkoUcm4ptKc68inogpU+kMzW
lyoSHtFu1FOK1p1DFzPLDsnmDmw9VY1PBfPCBIPT2J32wEXpjLf/cQ+TQ0y8d+de
GiKi9sBVtfjHjLaMsNTX7T/Xco+9Lv3RAlfBxFpGZW2r6mhwI68=
=aOio
-----END PGP SIGNATURE-----

--JKe2vBY5oGqks9LR--
