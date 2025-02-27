Return-Path: <linux-man+bounces-2537-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF43BA48907
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 20:31:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 785BC188753E
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 19:31:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B5121883D;
	Thu, 27 Feb 2025 19:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD+HvoIS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3474F1A317C
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 19:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740684660; cv=none; b=JIdQP5S0WpvOok2Wpj7KvWQE7p3Ek9rG9Cb7tlvrNxTp/L/qLyyZf4XrNs7ntd6cuHIo2CBN4oS7BLrqGNXAtzNROBdZb6FuguAwhom6Rr7YMLOZpXXcouPSCZerAQkZbW6Obmrh63apr79P7e4IKck2gLzYTQTd7GhOzKJA1f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740684660; c=relaxed/simple;
	bh=wlKq5mrRA6wvLzpKAOPxOAoEl4ckuDDey5GISGsY9cY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g5rmWwjB7dZRgZ+lAx6l7gFOPKgSUNh9ZacnJxn+oZvgc2EW9V4Se1PEy8sNANvs2kv5cyGr3ncIriOnj1vm2NxF67XcIQHaCVP99FszyLwgWFTYmrwLwmW2sbb2LxhnzJv30zl+B9ZLhr6r6+IkF2kMSx0RCeQaKnfWs1ppvxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD+HvoIS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB0CEC4CEDD;
	Thu, 27 Feb 2025 19:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740684659;
	bh=wlKq5mrRA6wvLzpKAOPxOAoEl4ckuDDey5GISGsY9cY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FD+HvoISaELAKius2pfm8TB6JVPCbdi9Z147PA/L3neIYoZsAUwxM4SfslZp3kxQv
	 oVIvPmgtEJZpFrWvWyyGnaNZ+ERGj+sRNJT7UD9bIkQ0IXMJLW3GrhVA1IGFZMBDfd
	 i6nsHPhqVWr1QmUJZbN4PEi4Qh3p5hiqYeSNNbN9WiTfsK7XuwtLlNNF9pX70qDAQ2
	 qzlQF8P0nNPmHQ/Qpp8Pbs7e/yHDN+ABLtSFhVrg11dgKoP8fCfUbRfFb/nJ0JV5FT
	 t3R762Ms8wPaqfT81B9WHs2jifTpnKiYu8VGrJhux89liY8sJqFPgghcUfGdWnNzb3
	 iNN9MEw43UQ1A==
Date: Thu, 27 Feb 2025 20:30:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Florian Weimer <fw@deneb.enyo.de>, 
	Sergei Trofimovich <slyich@gmail.com>, linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
Message-ID: <7uuc6pnn4ugegmilqgiq6ccluo7cwqwwhr7whgaevvzei5umuu@6hamdlciuvqr>
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
 <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
 <878qpr78j2.fsf@mid.deneb.enyo.de>
 <5bjgrgu63l3uodofandxcqavwov4b5ub7ae5vnngu7as26d4o7@ylejzhnko7vm>
 <20250227162800.36exbwmqky6d7z4t@jwilk.net>
 <rzxq3unpppthl6kn7kflw3pint3cpj5emwv44unx7j5svtjj2p@ea6asnhgoejq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qnmpncgp3pr5o6dx"
Content-Disposition: inline
In-Reply-To: <rzxq3unpppthl6kn7kflw3pint3cpj5emwv44unx7j5svtjj2p@ea6asnhgoejq>


--qnmpncgp3pr5o6dx
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
 <rzxq3unpppthl6kn7kflw3pint3cpj5emwv44unx7j5svtjj2p@ea6asnhgoejq>
MIME-Version: 1.0
In-Reply-To: <rzxq3unpppthl6kn7kflw3pint3cpj5emwv44unx7j5svtjj2p@ea6asnhgoejq>

Hi all,

On Thu, Feb 27, 2025 at 08:00:20PM +0100, Alejandro Colomar wrote:
> > Alternatively, you could take advantage of the fact that in some shell
> > contexts # and \# mean the same thing:
> >=20
> >   foo :=3D $(shell echo ''\#)
>=20
> Hmmm, sounds reasonable, since a # not preceeded by a space is not a
> comment.
>=20
> 	alx@debian:~$ echo ''\#
> 	#
> 	alx@debian:~$ echo ''#
> 	#
>=20
> I'll take this workaround.  I'll put this on the commit:
>=20
> 	Reported-by: Sergei Trofimovich <slyich@gmail.com>
> 	Cc: Florian Weimer <fw@deneb.enyo.de>
> 	Cc: Boris Pigin <boris.pigin@gmail.com>
> 	Suggested-by: Jakub Wilk <jwilk@jwilk.net>

I've applied the suggestion by Jakub, which you can find here:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D46b7bcaae3cbd18b3022caa3ddd52e7be66bb21a>

Tomorrow I'll push that to the master branch, if there are no concerns.

Since this probably affects packagers, I'll issue a new release in a few
days.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--qnmpncgp3pr5o6dx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfAvWgACgkQ64mZXMKQ
wql8Jg//UC/1JzJ0YD8VxflEc2MHEKJZ848DnebzjnOWZqYp05nxn9mrArZ7aHdf
VV/khWMJfWes2VXx61/3qQ0FhO0RiYG40flWmkUmgP1RxQmvjt+0oZBzeGW74X1R
VapEl8jEcDOQGsK4p+yT4SRssG57cWx3z6QU3FffJLEp1mq13DhC1bsOrNjCXUov
dG7iGzFDZqepS5zvHQPo0ieUv+m1isQjYa/PPjNeVuxD2bvXQIU+smU+vZE4W0Gc
a2I+PklfAdqQ2mq7BEf3/vb6CV0S46m/P+Kpoe5bbXJxSvdYTwuOPbQpkeKWRm+d
RBe3+ZpwxRUfMSgQdxuYBDSMowFgj5AvFajrvOznUC3Tk5YqcTTm+w7TgjV5Fe2V
LRZblhXDltRW94n+aHtu7W/CDXufPLGXmyCJeRM9lBSifWW/vwgXpqVC2TBk6vlY
RNuiI/4ReyWmV5e1ma6VhMD0c3E50vbQY8qNiFOAx1cJmhN+hPu307BJe+CA3/gt
e12PWfWIo4Z1MQ7xiTr+MhSP7IBQx4QFjfGamAAdw3gOgiSdzZ9lJThJtFn6sqRL
5LXv82ZVSAIIW8uLc+EGYb4zZHcrPN8irjQQrG5AtCLOB4ztAdP2SBOMH1Hal2Oe
hbKzJY0ZkFXSSpRaUv7p2eIgITCYsULb16Fu0M/FxmJnqRqaI9s=
=w0gf
-----END PGP SIGNATURE-----

--qnmpncgp3pr5o6dx--

