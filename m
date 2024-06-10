Return-Path: <linux-man+bounces-1066-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31239902B81
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 00:22:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 425E21C21FAA
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 22:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BB4C14E2DE;
	Mon, 10 Jun 2024 22:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMDptXcy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2809C18E2A
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 22:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718058122; cv=none; b=OQbtBEl+XdDohcH66iXFffMDo5N6BJtmkeWFtDC6fxrZ1VrH6DTq/fDeOhF+KT4G5Ui2J7Ne7F8X7BKMbbn+T0iBUmJIJmyzxzZnDkaCbysXKexv4eG5yxlRmPH4dA8XaJjTqMKz1+4Bo+1d8URLPe3d/8ES4o9+/MZLre64bXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718058122; c=relaxed/simple;
	bh=Hz0v0v8Jgzm4eBj46q+gT/dqa378ndmDGVVmRO/K/OE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dw/flMe33D2+OP0HqV/l+pG3blsVXTW4BFrZVcd/ZWqIbC5W5Td2/BY/1yQ4QUqug1EtO5J8HyLfdt/cdRvRtWCaSFJtmvN5rk038EBEaS+K2YBRW/vjmLrmcbeBOwFXI09q1+UsycHqrtD1X8abY1GzVqaGmeuwsVbJTRpD19s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMDptXcy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E56DC2BBFC;
	Mon, 10 Jun 2024 22:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718058121;
	bh=Hz0v0v8Jgzm4eBj46q+gT/dqa378ndmDGVVmRO/K/OE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QMDptXcyw894wv/e2WVZ+gf00jlR6ckTs09LV3i2wjsUopIoHibZco9SyMcTRfnmJ
	 q5kL+D1gxT3Yp84lOEXVjGcDs2jNtVfwhA62FiwSldV01q3lfTvDsYtSQZJSoCXmWE
	 w5w08RnXV5RkF5jEbdoFkoyIB9i3PTbw5NFVgXJi0YV9Sl6qsYGvYgIwCOwLyW76SB
	 h515ITkTWzHVcZ+sCEDmGrgBj6BP+zuzJ7slZlBYRsOEMEbB6Ji8TdjBrR06tsMOLO
	 +coUenPqjCXxxRy9jJd7qhmnuiRQbYlRzpWixSlGEyv7fSWHTaJ9Rm6wXC0ovvIeVB
	 2kQN0Ou3+Cwkg==
Date: Tue, 11 Jun 2024 00:21:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y24whid73pnohock"
Content-Disposition: inline
In-Reply-To: <ZmdfD-UUhVkyws1w@LQ3V64L9R2>


--y24whid73pnohock
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmdfD-UUhVkyws1w@LQ3V64L9R2>

Hi Joe,

On Mon, Jun 10, 2024 at 01:16:15PM GMT, Joe Damato wrote:
> I am using Ubuntu 22.04.

Yep, they get the upstream package, I guess.

> I did what you suggested got the same output about s390_sthyi,
> here's what I think is the relevant output:
>=20
> SED		.tmp/man/man2/s390_sthyi.2
> <man/man2/s390_sthyi.2 \
> sed "/^\.TH/s/(date)/$(git log --format=3D%cs -1 -- man/man2/s390_sthyi.2=
 2>/dev/null)/" \
> | sed '/^\.TH/s/(unreleased)/6.8-152-g97abd8f14-dirty/' >.tmp/man/man2/s3=
90_sthyi.2
> PRECONV		.tmp/man/man2/s390_sthyi.2.tbl
> preconv   .tmp/man/man2/s390_sthyi.2 >.tmp/man/man2/s390_sthyi.2.tbl
> TBL		.tmp/man/man2/s390_sthyi.2.eqn
> tbl <.tmp/man/man2/s390_sthyi.2.tbl >.tmp/man/man2/s390_sthyi.2.eqn
> EQN		.tmp/man/man2/s390_sthyi.2.cat.troff
> ! (eqn -Tutf8   <.tmp/man/man2/s390_sthyi.2.eqn 2>&1 >.tmp/man/man2/s390_=
sthyi.2.cat.troff) \
> | grep ^ >&2
> TROFF		.tmp/man/man2/s390_sthyi.2.cat.set
> ! (troff -man -wbreak -rS12  -Tutf8 -rLL=3D78n -rCHECKSTYLE=3D3 -ww  <.tm=
p/man/man2/s390_sthyi.2.cat.troff 2>&1 >.tmp/man/man2/s390_sthyi.2.cat.set \
>    | grep -v -f '/home/jdamato/code/man-pages/share/mk/build/catman/troff=
=2Eignore.grep' \
>    || true; \
> ) \
> | grep ^ >&2
> troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adjust=
 line
> make: *** [/home/jdamato/code/man-pages/share/mk/build/catman/troff.mk:63=
: .tmp/man/man2/s390_sthyi.2.cat.set] Error 1

Hmmm; can't reproduce it.  My only difference (AFAICS) is I have
groff-1.23.0, while you'll have groff-1.22.4.  1.22.4 has many many
bugs, so I guess this is one of them.  You can skip this specific error
with

	touch .tmp/man/man2/s390_sthyi.2.cat.set;

Thanks!

> > So what we did is trick make(1) to think that it has successfully run
> > the 'lint-c-checkpatch', by touch(1)ing all the files that would have
> > been created if that target had been successful.
>=20
> Ah, I see -- thanks for the pointer!

:-)

> I've re-run make and it is still failing as above but on an
> unrelated file.
>=20
> I see in the output that ioctl_epoll seemed to be processed OK:
>=20
> SED             .tmp/man/man2/ioctl_epoll.2
> <man/man2/ioctl_epoll.2 \
> sed "/^\.TH/s/(date)/$(git log --format=3D%cs -1 -- man/man2/ioctl_epoll.=
2 2>/dev/null)/" \
> | sed '/^\.TH/s/(unreleased)/6.8-152-g97abd8f14-dirty/' >.tmp/man/man2/io=
ctl_epoll.2
> PRECONV         .tmp/man/man2/ioctl_epoll.2.tbl
> preconv   .tmp/man/man2/ioctl_epoll.2 >.tmp/man/man2/ioctl_epoll.2.tbl
> TBL             .tmp/man/man2/ioctl_epoll.2.eqn
> tbl <.tmp/man/man2/ioctl_epoll.2.tbl >.tmp/man/man2/ioctl_epoll.2.eqn
> EQN             .tmp/man/man2/ioctl_epoll.2.cat.troff
> ! (eqn -Tutf8   <.tmp/man/man2/ioctl_epoll.2.eqn 2>&1 >.tmp/man/man2/ioct=
l_epoll.2.cat.troff) \
> | grep ^ >&2
> TROFF           .tmp/man/man2/ioctl_epoll.2.cat.set
> ! (troff -man -wbreak -rS12  -Tutf8 -rLL=3D78n -rCHECKSTYLE=3D3 -ww  <.tm=
p/man/man2/ioctl_epoll.2.cat.troff 2>&1 >.tmp/man/man2/ioctl_epoll.2.cat.se=
t \
>    | grep -v -f '/home/jdamato/code/man-pages/share/mk/build/catman/troff=
=2Eignore.grep' \
>    || true; \
> ) \
> | grep ^ >&2
> GROTTY          .tmp/man/man2/ioctl_epoll.2.cat
> grotty -c  <.tmp/man/man2/ioctl_epoll.2.cat.set >.tmp/man/man2/ioctl_epol=
l.2.cat
>=20
> Should I send a v2? The s390 thing seems unrelated?

Sure; this seems to be good.  I may notice some warnings that are new in
groff-1.23.0 and not present in 1.22.4, but I'll let you know if I see
them.

> What do you think?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--y24whid73pnohock
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZnfIAACgkQnowa+77/
2zKGvA/+M94pLA/nVP9wsTIcRj3uUxmQaSJoB5hHe/XktRXVgtZGGEawjAuktX47
ieNApIxXGnu5O4Tdt6MNnbND1TmL9yHiflGNjfydZNBENqQ02+In2FbNwZbJsbkK
vzycRMuB+HzjF3c2Zq5Fxn9jXy1hi6YDQTvQUFyGHq+yWyCr1ZJvlISqqsD1y1QF
5k+lqKCU7OPttlYRQQLnHgbZoLfszCLlWQxJwlHzH1ha7OLMTKKOS41mmfoqxqkB
fgQXuZTsS8IUCESirBWnTc635t/wjQOPkuYyZZmpCYzpGqaIOk9dOdfpNdVNXQ4q
ljIcPiSRQDc0BAOu0wfcVwSp+9iyBoIi1HBUAJU8gukNZ5DcDjKC2itvik3uFl+I
HARJE6xNiL6upulI7uJ9Xondo1b+zr3ON15aCg299bweNgyb8YUUiHzeQr6yq9jQ
lLVxu65xCQM8I3DDojTWyxgJnFVOZYMiOc4O+nYB4ZWX8RtrJmVpHho8vXlnRcop
tGCyV8v/oZrrd5CwabAbVkiUgVMakarO1ZSJU2ZSbckJ2MJQh/8yPbh+xr3q3JU2
E0/1nVe0q96NdIN9zF6nd+6qhQS3dxwLk2dr7Cn+JhH0NGa+nQZ6diP3Io0tRByg
ODuy7m+NO66OGRCgWa0xkWnhqlxkxxr6H0DwjObw6/i+UQ7VimQ=
=2EWx
-----END PGP SIGNATURE-----

--y24whid73pnohock--

