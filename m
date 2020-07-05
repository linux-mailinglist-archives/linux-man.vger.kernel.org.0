Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D999214EFE
	for <lists+linux-man@lfdr.de>; Sun,  5 Jul 2020 21:50:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728020AbgGETu1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jul 2020 15:50:27 -0400
Received: from luckmann.name ([213.239.213.133]:49309 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728006AbgGETu1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jul 2020 15:50:27 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E58014.000000005F022F01.0000644E; Sun, 05 Jul 2020 21:50:25 +0200
Date:   Sun, 5 Jul 2020 21:50:25 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: initrd(4): Markup
Message-ID: <20200705195024.GC24600@Debian-50-lenny-64-minimal>
References: <20200419064805.GA30886@Debian-50-lenny-64-minimal>
 <e7c88c22-f8b4-80f1-a1bc-fa0179ea8290@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-25678-1593978625-0001-2"
Content-Disposition: inline
In-Reply-To: <e7c88c22-f8b4-80f1-a1bc-fa0179ea8290@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-25678-1593978625-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Apr 20, 2020 at 10:18:41AM +0200, Michael Kerrisk (man-pages) wrote:
> I need more explanation of all of the remaining:

Sorry, missed this one.

> > --
> > Markup "linuxrc"
> >=20
> > "It is also possible for the I</linuxrc> executable to change the norma=
l root "
> > "device.  For I</linuxrc> to change the normal root device, I</proc> mu=
st be "
> > "mounted.  After mounting I</proc>, I</linuxrc> changes the normal root=
 "
> > "device by writing into the proc files I</proc/sys/kernel/real-root-dev=
>, I</"
> > "proc/sys/kernel/nfs-root-name>, and I</proc/sys/kernel/nfs-root-addrs>=
=2E  For "
> > "a physical root device, the root device is changed by having I</linuxr=
c> "
> > "write the new root filesystem device number into I</proc/sys/kernel/re=
al-"
> > "root-dev>.  For an NFS root filesystem, the root device is changed by =
having "
> > "I</linuxrc> write the NFS setting into files I</proc/sys/kernel/nfs-ro=
ot-"
> > "name> and I</proc/sys/kernel/nfs-root-addrs> and then writing 0xff (e.=
g., "
> > "the pseudo-NFS-device number) into file I</proc/sys/kernel/real-root-d=
ev>.  "
> > "For example, the following shell command line would change the normal =
root "
> > "device to I</dev/hdb1>:"
> > --
> > Markup "linuxrc"
> >=20
> > "The main motivation for implementing B<initrd> was to allow for modula=
r "
> > "kernel configuration at system installation."
> > --
> > Markup "linuxrc"
> >=20
> > "The executable I</linuxrc> loads the necessary modules from the initia=
l root "
> > "filesystem."
> > --
> > Markup "initrd"
> >=20
> > "Last but not least, Linux distributions on CD-ROM may use B<initrd> fo=
r easy "
> > "installation from the CD-ROM.  The distribution can use B<LOADLIN> to "
> > "directly load I</dev/initrd> from CD-ROM without the need of any flopp=
ies.  "
> > "The distribution could also use a B<LILO> boot floppy and then bootstr=
ap a "
> > "bigger RAM disk via I</dev/initrd> from the CD-ROM."

I cannot reproduce what the translator wanted to point out here.
Sorry. Please close.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-25678-1593978625-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8CLv4ACgkQQbqlJmgq
5nBkahAAkOhwCO+E0YoklrXq7MahCvky8FITOT6JDOtHwn4vwFGEwYCjMkT4PTuG
iEum1SvkpKfC+YgI+Z3RIv6nk3jzdIi4wbe/QMOFg13OFnG4KmDadb1w97g9FGs0
lWFvJC7uR+eCnYXd/htzkc7ayQjh6sMyWQTbcpXRXHejaYIJxFF4ZRJgCAAjf3O3
/Bpp0tUBzAG3hvK+U0HsNq634Burapl/0AUYIpICp96KGdnkzHjcO/6mXPd4khBg
i6BLm5CWp6Bz/KdXIvJxLQzqgSWb9TjsSLfOUgjB/NzVCWya0VMxYw2l328DNa/m
qPAXzSt1915xJgWfDGJuAYnL7d8caAAZL+k1YeSHdechXa/yLf47MG2tVoBTuRLA
+76set8d2hRReAjqC/757HTroLFbZ34+iKcBafqd9djBJc8CFaLs5edWBykDmupz
Ux6/ZrZJLvZ9Z1RwdbKFZYh5M1U4hFK3wkuRgO6vZ89ygq6DJJgfYj9LqLIDmcjR
OzXZgE+je0N5nbdCxCujIi2el56S/fRfhC8qSKoY6y/cbZignHezf++6dWxFaGDB
Ru9aGdcDApyur6AeDeXzDfwf1nvwutt3VZ3q1w4QQR2O/+2uDAp8YIQ/KNczx1Ei
vd1o1uwWp0tq5ORtzcWxZB0AyZS1ox1o1mXAFno5tkmGif9TZJg=
=TOze
-----END PGP SIGNATURE-----

--=_luckmann.name-25678-1593978625-0001-2--
