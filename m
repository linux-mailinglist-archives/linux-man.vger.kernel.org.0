Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 97FB581727
	for <lists+linux-man@lfdr.de>; Mon,  5 Aug 2019 12:36:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727739AbfHEKgJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Aug 2019 06:36:09 -0400
Received: from mx2.suse.de ([195.135.220.15]:41924 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727230AbfHEKgJ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 5 Aug 2019 06:36:09 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id CF319AB92;
        Mon,  5 Aug 2019 10:36:07 +0000 (UTC)
Date:   Mon, 5 Aug 2019 20:36:30 +1000
From:   Aleksa Sarai <asarai@suse.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Serge E. Hallyn" <serge@hallyn.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, Al Viro <viro@ftp.linux.org.uk>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
Message-ID: <20190805103630.tu4kytsbi5evfrhi@mikami>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6qypzrljzt2mkjjn"
Content-Disposition: inline
In-Reply-To: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6qypzrljzt2mkjjn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-08-01, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> I'd like to add some documentation about the pivot_root(".", ".")
> idea, but I have a doubt/question. In the lxc_pivot_root() code we
> have these steps
>=20
>         oldroot =3D open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>         newroot =3D open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>=20
>         fchdir(newroot);
>         pivot_root(".", ".");
>=20
>         fchdir(oldroot);      // ****

This one is "required" because (as the pivot_root(2) man page states),
it's technically not guaranteed by the kernel that the process's cwd
will be the same after pivot_root(2):

> pivot_root() may or may not change the current root and the current
> working directory of any processes or threads which use the old root
> directory.

Now, if it turns out that we can rely on the current behaviour (and the
man page you're improving is actually inaccurate on this point) then
you're right that this fchdir(2) isn't required.

>         mount("", ".", "", MS_SLAVE | MS_REC, NULL);
>         umount2(".", MNT_DETACH);

>         fchdir(newroot);      // ****

And this one is required because we are in @oldroot at this point, due
to the first fchdir(2). If we don't have the first one, then switching
=66rom "." to "/" in the mount/umount2 calls should fix the issue.

We do something very similar to this in runc as well[1] (though, as the
commit message says, I "borrowed" the idea from LXC).

[1]: https://github.com/opencontainers/runc/commit/f8e6b5af5e120ab7599885bd=
13a932d970ccc748

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--6qypzrljzt2mkjjn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEXzbGxhtUYBJKdfWmnhiqJn3bjbQFAl1IBqsACgkQnhiqJn3b
jbTjfw/+Pnh6zFLbDf4UKFZiPT2tLK91Q5TuWjlmjWxJxZMtGNxvDyQiyYXaNXn7
rskiOzCFTl2i3N5BJZCuT3LPfT9+jdHQ1lYowlGZh0AVSQrWksAUsEEumyMFxqpo
/ltTRWeQG51pqiqW+Nutd5VH3qsaHT2WfNYHnGSuzyHn+lykwgLymnE7MzjgGPZV
vm9IGDEQmpHMZuc6cAxKzC74Fa98QDmKS0K0R32GaLFc7Y28HNnDq/fnNbzAkVYO
OwGDY1p97vVk6Zc0MOQuyjAYng+lnaD+wp1uEYai8hpPud5AZ6WBxFke5l83TKjk
lJgYx+CT+/inlUcRZ7X8/8MofET/P8K65fteEL+SvoSpBakVmztMVKIvasll+eja
81rffEeIy+3X8pRhSSN8R3yFLk29uw+oQxj5FJlr6IGX0uiRnk1m93KuphlsBg4w
jedZ9O+LE2DbjHT43Xz7u0oeeUYVF+Hs2aZXOXbxRGeJl1HiQYlJqW1mdWGwQKKf
1r3zSxaTfXz8svNsHA0fRlZi7S5psoUMRdNEhsQGW/GKr3KTtojUvEqeGGKhW6H4
KgJR6OHlmfRwwgCtiaLx09736H3/m/zG5gPsGTKZGP51LnQWYjpUaUMm+55tSUg9
waJ52wsLxsmJiJ6zYGHzih7sK6LJZMT0ZvqWUXAO5DPK5P2UPqc=
=Ti2z
-----END PGP SIGNATURE-----

--6qypzrljzt2mkjjn--
