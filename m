Return-Path: <linux-man+bounces-2536-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C69A48870
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 20:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B7C33B43BF
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 19:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38F1F192D83;
	Thu, 27 Feb 2025 19:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB7YWA8+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE18E27005C
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 19:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740682821; cv=none; b=p+4uJQZmvS+eDNuOQFjMqvAYqOL6nbj3PFl5aHx/fzAETB4laqMIZ2HhQUKYAF96jKz+L0P9qh6nOopUK//FquBMknZMYhYsdcSN7NWibz6LGvr1zsVeS3AXmKQee08JQY6tYq6XPDId5n9cdxasvYS1MuqAh6lY9TPCTSBpHNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740682821; c=relaxed/simple;
	bh=+pkcLm6qFpVMWod0kgpT1Rk1+V6+rddBv9KUQHaT7UE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=djmW+3Cl/P3ImEK7JgJZ5xwHzWeDLVe4CIvLF2xp++yzVcWL5J4rxoNLCtM1XCP22Vgde3rLv5Z3ph9cO48d8JEeCNhnuPkstmhFa8fB40+P4okCPqq15gF9xkrJTfwKqN2PnWz9qKKQ0YIgYJlB5clwhhaxMsjXXpapzLFGG9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB7YWA8+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 766CCC4CEE4;
	Thu, 27 Feb 2025 19:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740682820;
	bh=+pkcLm6qFpVMWod0kgpT1Rk1+V6+rddBv9KUQHaT7UE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pB7YWA8+nUaTQYblS11YqJQZmgVFz1tMM/zyv9aldke3XZbgFP57OKzWD/RV1UnHA
	 e4p1fH1a6LCLrG6HbiDRndd35POO9arjuRTb3ySUwzOihKuya6Od3SW9sr7M49RUwG
	 hY8KrUqrNCNfJe+F62yN8yg1Pod9J/uX/Yv+/AU8+CBICeWFTNku7Nbtp5kZGTs8rT
	 SH/UHNb1k/8sTx94LLANO5hMZ1g19byJSPlYVZGCbukxHiInVJiiThqsFpfbmONS1S
	 IkdZ7fsGTma1TXeZhqWi5vfcmqY5htb36n9pfWgcrmlGZ6yv1czSTH04hpwtt9lg1x
	 KPWPHPeCHhJag==
Date: Thu, 27 Feb 2025 20:00:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Florian Weimer <fw@deneb.enyo.de>, 
	Sergei Trofimovich <slyich@gmail.com>, linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
Message-ID: <rzxq3unpppthl6kn7kflw3pint3cpj5emwv44unx7j5svtjj2p@ea6asnhgoejq>
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
 <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
 <878qpr78j2.fsf@mid.deneb.enyo.de>
 <5bjgrgu63l3uodofandxcqavwov4b5ub7ae5vnngu7as26d4o7@ylejzhnko7vm>
 <20250227162800.36exbwmqky6d7z4t@jwilk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p34tihyzffwhnbdv"
Content-Disposition: inline
In-Reply-To: <20250227162800.36exbwmqky6d7z4t@jwilk.net>


--p34tihyzffwhnbdv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Florian Weimer <fw@deneb.enyo.de>, 
	Sergei Trofimovich <slyich@gmail.com>, linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
 <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
 <878qpr78j2.fsf@mid.deneb.enyo.de>
 <5bjgrgu63l3uodofandxcqavwov4b5ub7ae5vnngu7as26d4o7@ylejzhnko7vm>
 <20250227162800.36exbwmqky6d7z4t@jwilk.net>
MIME-Version: 1.0
In-Reply-To: <20250227162800.36exbwmqky6d7z4t@jwilk.net>

Hi Jakub,

On Thu, Feb 27, 2025 at 05:28:00PM +0100, Jakub Wilk wrote:
> * Alejandro Colomar <alx@kernel.org>, 2025-02-27 16:20:
> > >   Now this latter will resolve to "\#".  If you want to write makefil=
es
> > >   portable to both versions, assign the number sign to a variable:
> > >     H :=3D \#
> > >     foo :=3D $(shell echo '$H')
>=20
> Alternatively, you could take advantage of the fact that in some shell
> contexts # and \# mean the same thing:
>=20
>   foo :=3D $(shell echo ''\#)

Hmmm, sounds reasonable, since a # not preceeded by a space is not a
comment.

	alx@debian:~$ echo ''\#
	#
	alx@debian:~$ echo ''#
	#

I'll take this workaround.  I'll put this on the commit:

	Reported-by: Sergei Trofimovich <slyich@gmail.com>
	Cc: Florian Weimer <fw@deneb.enyo.de>
	Cc: Boris Pigin <boris.pigin@gmail.com>
	Suggested-by: Jakub Wilk <jwilk@jwilk.net>

>=20
> > The thing is, on my system, grep(1) is just fine with that escaped hash:
> >=20
> > 	$ echo '#foo' | grep '\#foo'
> > 	#foo
>=20
> The warning comes from GNU grep (>=3D 3.8): "Regular expressions with str=
ay
> backslashes now cause warnings, as their unspecified behavior can lead to
> unexpected results."
>=20
> You're probably not seeing the warnings because Debian patched them out:
> https://bugs.debian.org/1019724

Ahhh, that makes sense.  Thanks!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--p34tihyzffwhnbdv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfAtjgACgkQ64mZXMKQ
wqkMZhAAp1YhnHCsDpjN8nRtra7I+s/w2bgUtM21ZkvFrOYAxGkO5UJ4b1T6Fqj7
AqftYLz74uCaodCXNTu/4lsVRKUHElFOZx9+r4iAs/aUA3kL6KCxtjbE054b964n
q8atM/Bgg+0VG1hfUIDhOeKydNVhyUJ4bRj79GaEufSEgxeCPvLK7zTa1sYykddv
WyoUunAGIfL3Bs/B02LMe0RdWu8kex+sbzfYYrmFI2GXiwJmdenjwwR5tU9gCN2S
paoanZqq4BeRWqUjcoQpK/W1HTDa0sZTuubbHXAZuhzv2nsv7Dcz87HROupYMBZf
FwzeP9KgMiHyrY57uZ+tCGfaSv+2Y3t86UeO4VtRYOqJPB1X4IZ0zeFsamQsvf7f
9/8hKPCkYbzzmhtdUgHXnb7bgV4y16PBbMZUA1BDLqfgmNX4TTY+tkEUNeACRES7
HyCEscy5QkMnmUXh1hndxZUUI8FUdiltNAvdVz/mqiU6rORRjVAJESBIhF+xR653
4dLx8QSeh/AHPEFMwUaab0k/eDpF8eNBoAqwhLo5jqVyJsUrNJPsdFv5T7HK+HDh
h1cZ9E99OUIjzlRoMmxYhNJgAKp3OLejC1BRAdSmyiwFwxRJpy3dOaYuk+AEPsZL
yUC2p89VOzZydJRGURit7o0ZfGrPz/DIStDVEDdC+BZvHUuIoWM=
=8EIb
-----END PGP SIGNATURE-----

--p34tihyzffwhnbdv--

