Return-Path: <linux-man+bounces-4557-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 418E3CDDD85
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 15:15:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 181F830142F5
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681C82580DE;
	Thu, 25 Dec 2025 14:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFlIQA7P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28C0F50F
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 14:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766672108; cv=none; b=GOcTMjc6yj5PtBYrprcjCPCZqHgHvSWfynd5G9jIh/dYLFJY0jp3GGJJDDMwCLBY+5q8jyK64AdZFd6LcQTBvYt0+4JL2eEfY0kfd6Ph5Nh2Etdxl+jdkbRNESoMmj4B7veZ1DXYceX8w+B5vL0JesK/BDW00Kf5AATEHhjsD+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766672108; c=relaxed/simple;
	bh=0gEPzNnFQgMaomqVAHN+PkiDESzvN7h4VsjvmzloTww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nANqUOz1PSgR/6aVzbM91vSYgFqOPkrUEKEFEV//HRPS5nqsdFIWvLBX2KD/HWQqRfHmI9Ifq22AnxyHnOpEPdTgQYdfqgIG2AMDqpZf6mZBvPxu/iDseSEpia1kVLmNUztNoxtYvGPHCo90uCZN32cvfl4IhYVOXP1fC1gKDUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFlIQA7P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11828C4CEF1;
	Thu, 25 Dec 2025 14:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766672107;
	bh=0gEPzNnFQgMaomqVAHN+PkiDESzvN7h4VsjvmzloTww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JFlIQA7PwlUHq6tfqow09h+vnI6vSCjZmiLfJrZf50cXWuxysm4a9oKAW1gSql/cr
	 CtQ3MmWyCXYK4SdBOHM8+Gyblhtx3b6C5CGhxzND8CMlfnwDalHNQssecYfA9u1/Xm
	 E0+NW25PHKD5h2azh/ctM/tW3FyPe8aNHZlgZVi/A1A80likdQ6LH663RZ4Eu8AS/3
	 QYOBJG4JJlGNyr8wMZWYU0A5OeC3uknCZ0ANPv9Gd3/RMVgfBitj2hL4q1O5lGIZ5w
	 z/LHxPAbJYyNVHVukaF7mMiFTpzJu5NnxAIQ+IJrm+ELVdmcyfa7dHUnYacdJywbaT
	 AVD8j/5FCGwVQ==
Date: Thu, 25 Dec 2025 15:15:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: debian-policy@lists.debian.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Cc: linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>, 
	"G. Branden Robinson" <branden@debian.org>, Colin Watson <cjwatson@debian.org>
Subject: Stop compressing manual pages (was: Bug#1123959: manpages: Please
 consider shipping uncompressed man pages)
Message-ID: <aU1D0aL00gy1V-NX@devuan>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o2bnvwlm3bjipexv"
Content-Disposition: inline
In-Reply-To: <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>


--o2bnvwlm3bjipexv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: debian-policy@lists.debian.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Cc: linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>, 
	"G. Branden Robinson" <branden@debian.org>, Colin Watson <cjwatson@debian.org>
Subject: Stop compressing manual pages (was: Bug#1123959: manpages: Please
 consider shipping uncompressed man pages)
Message-ID: <aU1D0aL00gy1V-NX@devuan>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
MIME-Version: 1.0
In-Reply-To: <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>

Hi,

On Thu, Dec 25, 2025 at 02:47:33PM +0100, Dr. Tobias Quathamer wrote:
> Am 25.12.25 um 12:20 schrieb Alejandro Colomar:
> > Hello Helge, Tobias,
> >=20
> > On Thu, Dec 25, 2025 at 06:07:57AM +0000, Helge Kreutzmann wrote:
> > > Hello Tobias,
> > > if you look at mansect(1), the example given does not work in Debian.
> > > I reported this upstream and got the following reply:
> > >=20
> > > > The issue is that Debian compresses manual pages.  Please consider
> > > > changing the policy to not compress manual pages.  The storage savi=
ngs
> > > > are irrelevant in this age.
> > >=20
> > > Could you consider this?
> >=20
> > Thanks!
> >=20
> > Indeed, compressed manual pages are a pain to work with.  You can't use
> > regular Unix tools to work with them.  With uncompressed manual pages,
> > You can go to /usr/share/man, and run a pipe of programs to do a complex
> > search.  With tools like zgrep(1) and zcat(1), you can do some stuff,
> > but not everything.
>=20
> Hi Helge and Alex,
>=20
> thanks for your bug report and the provided statistics. I haven't thought
> about this up until now, because it violates Debian Policy. Quoting from
> Section 12.1
> (https://www.debian.org/doc/debian-policy/ch-docs.html#manual-pages):
>=20
> "Manual pages should be installed compressed using gzip -9."
>=20
> And regarding the terminology using the word "should", this is defined in
> section 1.1 (https://www.debian.org/doc/debian-policy/ch-scope.html#scope=
):
>=20
> "The terms should and should not, and the adjective recommended, denote b=
est
> practices. Non-conformance with these guidelines will generally be
> considered a bug, but will not necessarily render a package unsuitable for
> distribution. These statements correspond to bug severities of important,
> normal, and minor. They are collectively called Policy recommendations."
>=20
> So by not compressing the man pages, the Debian package would introduce a
> bug. Moreover, I'd have to explicitely opt out of automatic compression in
> the build stage of the package.
>=20
> All of this is doable, of course. But I'm a bit hesitant with just making
> the switch, given that the manpages package is certainly the package with
> the most man pages in the Debian ecosystem -- by a large margin.
>=20
> So it might be better to discuss the pros and cons in a broader audience,
> trying to understand why the compression has been chosen initially. Maybe
> only due to disk space limitations back then, but maybe there are other
> reasons as well -- which might still be valid today.

Yup, I'd like that policy to change.  I've added debian-policy@ to this
mail (and also linux-man@).

For those reading only since this email, please have a look at
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1123959>, which
itself also references an discussion in the Linux man-pages project from
a couple of years ago:
<https://lore.kernel.org/linux-man/c8cf5be0-04e7-f0a1-179f-eada6182c33e@gma=
il.com/T/#m272e6ee8939d0836999dd8bb28f2e0e94f48dfc7>.

I'll paste again the numbers:

        $ sudo make install-man prefix=3D/opt/local/man/gz__1 -j LINK_PAGES=
=3Dsymlink Z=3D.gz  GZIPFLAGS=3D-1  | wc -l
        2571
        $ sudo make install-man prefix=3D/opt/local/man/gz__9 -j LINK_PAGES=
=3Dsymlink Z=3D.gz  GZIPFLAGS=3D-9  | wc -l
        2571
        $ sudo make install-man prefix=3D/opt/local/man/man__ -j LINK_PAGES=
=3Dsymlink Z=3D                   | wc -l
        2571

        $ du -sh /opt/local/man/*
        5.7M    /opt/local/man/gz__1
        5.5M    /opt/local/man/gz__9
        5.5M    /opt/local/man/gz___
        9.4M    /opt/local/man/man__

        $ export MANPATH=3D/opt/local/man/gz__1/share/man
        $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs p=
rintf '%s; '"
        17; 0.21
        $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do=
 gzip -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -=
l | xargs printf '%s; '"
        17; 1.16

        $ export MANPATH=3D/opt/local/man/gz__9/share/man
        $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs p=
rintf '%s; '"
        17; 0.20
        $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do=
 gzip -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -=
l | xargs printf '%s; '"
        17; 1.17

        $ export MANPATH=3D/opt/local/man/man__/share/man
        $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs p=
rintf '%s; '"
        17; 0.55
        $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 grep -=
l RLIMIT_NOFILE | wc -l | xargs printf '%s; '"
        17; 0.01

Using uncompressed manual pages is both faster and simpler, by orders of
magnitude, when doing complex searches with pipelines.  In the simple
cases where man(1) is enough, the speed is in the same order of
magnitude.

Also, the compression only cuts storage by half, so not even an order of
magnitude.  In this age, where storage is relatively cheap, systems that
have manual pages installed most likely have room enough for the
uncompressed pages.

Please change Debian policy 12.1 ("Manual pages") to recommend
uncompressed pages.


Have a lovely day!
Alex

>=20
> Regards,
> Tobias

--=20
<https://www.alejandro-colomar.es>

--o2bnvwlm3bjipexv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNRuIACgkQ64mZXMKQ
wqkgiA//dL3pEzrvv04ICCyg72Rp0udF5zc0OIdJ/9vXGWuqc4480iWl8pyrfvrH
W0Vm4eKGCoLaG+8AjPDoKkz0yyI5LgVVwz09BB6jrcmlITDbEGG5p/XBMxIAtKpz
i2AwaDZCIQ7eQlagtVeqzgde+jbPEWkYFVJ8uiFjvOFY2tyYWzPgcMpqhfvS6ivF
zJWb7sy4jQpJCXNePWq/iXe9f7h2gNObJoqQWWkHDgrEnyUAtzD1N15u5wxPsCkr
xla6PYOwVdLxclgyIFAq80GMMFF+y0jfCqbcUtnhQu4Q0FWD7nsVzACU3WBfQ+90
e8AwLSn3F5xxsASPNsTRWTNeAZz2GepndBbbMFdEI0UYgCKRbn8hHT/p5y83MEWd
rXgV2Y5GVKaoTG4iXJGgoNDqICy0wHRJwgocI5/bEd55kF1ArQSu5hezXlUas/yN
v5q6cbfWSIMITvmHBUyRvU3x2LKzlsts96o/p9yuTi29oJ/OgsL+S8LPYxzVu3qT
CZ0wQ/wOYgMdJENLWmCFEZiJzQNrYy3eueqVVYjbdfoJpbt+4uwNhI41Id+meG8D
JQbhcr8m6YBva2Fir+EEJsQuJCyLgNqV2C9+Gcgcc/lrlCEaSLpnzLMS68nrVETV
f+ToGItfF5ntxxbKRyJyjYbyKVGeE41ZQWvB7RcVbiKrBFL6UgE=
=+0u1
-----END PGP SIGNATURE-----

--o2bnvwlm3bjipexv--

