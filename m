Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A50B91B2FC4
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 21:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725963AbgDUTFj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 15:05:39 -0400
Received: from luckmann.name ([213.239.213.133]:47879 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725930AbgDUTFj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 15:05:39 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56011.000000005E9F4402.00001532; Tue, 21 Apr 2020 21:05:38 +0200
Date:   Tue, 21 Apr 2020 21:05:37 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Consistency
Message-ID: <20200421190537.GB4951@Debian-50-lenny-64-minimal>
References: <20200419064814.GA31371@Debian-50-lenny-64-minimal>
 <6938c0ab-aa65-56ec-fd0c-574b9a604a32@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-5426-1587495938-0001-2"
Content-Disposition: inline
In-Reply-To: <6938c0ab-aa65-56ec-fd0c-574b9a604a32@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-5426-1587495938-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Sun, Apr 19, 2020 at 10:25:13PM +0200, Michael Kerrisk (man-pages) wrote:
> > **
> >=20
> > Inconsistent spelling of multithreaded vs. multi-threaded
> >=20
> > a)
> > "Prior to Linux 2.6.28, SELinux did not allow threads within a multi-th=
readed "
> > "process to set their security context via this node as it would yield =
an "
> > "inconsistency among the security contexts of the threads sharing the s=
ame "
> > "memory space.  Since Linux 2.6.28, SELinux lifted this restriction and=
 began "
> > "supporting \"set\" operations for threads within a multithreaded proce=
ss if "
> > "the new security context is bounded by the old security context, where=
 the "
> > "bounded relation is defined in policy and guarantees that the new secu=
rity "
>=20
> Thanks. Fixed.
>=20
>=20
> > b)
> > "In SELinux, this file is used to get the security context of a process=
=2E  "
> > "Prior to Linux 2.6.11, this file could not be used to set the security=
 "
> > "context (a write was always denied), since SELinux limited process sec=
urity "
> > "transitions to B<execve>(2)  (see the description of I</proc/[pid]/att=
r/"
> > "exec>, below).  Since Linux 2.6.11, SELinux lifted this restriction an=
d "
> > "began supporting \"set\" operations via writes to this node if authori=
zed by "
> > "policy, although use of this operation is only suitable for applicatio=
ns "
> >=20
>=20
> What is "b)" about?

Error on my side. Sorry. Please ignore.

Greetings

            Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-5426-1587495938-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6fRAEACgkQQbqlJmgq
5nB7Ug/+LrufUPcnBMfYOzAshj+xrcTknZXaNPiqQ68FaNPY8ZgyMKUoUZIvPKs9
C+op+hVDpFsKpT2+fgflY/5PtfgZ0zlkmendJsUcGpGlIhkWJnHLAD2QZEoKxZMd
FJNpAjQIklsnN+shLUJTfAWGxrAHUX6P7rhw2qlYleOFjcRspdo8n91q7JdjkfQm
CqZtuXUW4g1QlO47MSwKBkfyqogk+u3jisz1aUJNbryeAwi/lJGrebjL9YZGEAKa
Dgx9V8IhnOIJbETaaYR+74OXpwFuNvV3CY08P9FFr8yZ/Tuizkd6wBCHODiTZtKw
30f6I82XMjUd2aEeZURncMgZblc+WTkORf6sqP95si5ipRc2hIQLcmNFWVJyhb5e
lDd7GbWZW0j8wBtn4a45+qZYdb5POVZ4jx1T4OYbPX4P+C9/eNuXGmcTmiiPiqUX
PWE27nyZJoJjanZwjeO/nFyQGxQF0oLhIvee0CvXZL6n43pQ3aAoBBw+mcCarvVv
mAiDsgdna3L+Tv5byNkCVh6LFKlJlHq1K1CIFZVnADc3swWqFNaWVpQsgRXLp9Mf
5euBLctB/QTTkZecMB6QozepiPCnqKqXFuqgByIcsx2/v4kE0hu9s7qx6mHQWkC6
8DOhZS2cClrnARLxjYdOZeFDm3F5+9/6HDnCV/nnrYJwop33vMA=
=ump0
-----END PGP SIGNATURE-----

--=_luckmann.name-5426-1587495938-0001-2--
