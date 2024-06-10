Return-Path: <linux-man+bounces-1060-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943E90288F
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 20:24:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0896E1F21A13
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 18:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9037147C74;
	Mon, 10 Jun 2024 18:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2aW5G7R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A77915A8
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 18:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718043868; cv=none; b=YgmldGFbwEAXxkt1Q2yTiNfbDEYZeq/ncm5JbN+LyJEH01rlIKWXfBewBpsqmLAyTEPrSXjBUjCEdwjWNTy+M+zwTIPkKJ/744fLh8npE6CKZh8IThn6vqeWPwtuaclvD7oWm1G3KMDnV91E1tpfJHu/N3KUlwYHR4AUVoQkY4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718043868; c=relaxed/simple;
	bh=OExBawZSDvbbHQZvkafBwtDezZ/rYA9ilF9P4eR//AI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=azApwezOLL5rN1BHXRdKA4cums7vtnVcrwuiIyElsbKfJNvhtuDl9jg/dyw6JP1a8/JP0SeQat7G2x2xLmLcmr7gu3auw3QSlJ+y4MOBFDJ+KsTkkmPLo+EYYxvFLqiVf8WjqtLdIc8vMLFOnmDM5y9ee2FY0dFJRzuis0OrL9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2aW5G7R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F7A0C4AF1A;
	Mon, 10 Jun 2024 18:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718043867;
	bh=OExBawZSDvbbHQZvkafBwtDezZ/rYA9ilF9P4eR//AI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U2aW5G7R4xVeW3UkUNsFiyDUsnV2pWdKxp+ee9DpkWnnD71dEnpIsOZAIkRwCLdxd
	 wdjoQPyl6Qf8b8GlR8IlpVHf0RweePo9cnfyzaB34APabRmM1bJoA1eaRImpT9gELA
	 0C0NXCYVyPWbLZoRq2qi+AY1hX6o23uOrnVC8MowfALuIsZZd/SdCWxIwOJXih+0kM
	 UX5jfO1xxu7WG353Bb2mWwK9G3GqXXZnqZ3ciGvLGIf7Q84kjHkaehWJEIDwm0XFBR
	 wvxv9yFwnWk8uOJjEOrlY5EYP6LvE7IECIOwajS8qHNtGqWT9xk3TwXg+LYx7ixTgk
	 Q6MslRAP/OF8Q==
Date: Mon, 10 Jun 2024 20:24:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4u56w4asj5v6adpg"
Content-Disposition: inline
In-Reply-To: <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>


--4u56w4asj5v6adpg
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
MIME-Version: 1.0
In-Reply-To: <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>

Hi Joe,

On Mon, Jun 10, 2024 at 10:29:44AM GMT, Joe Damato wrote:
> On Sun, Jun 09, 2024 at 07:04:40PM +0200, Alejandro Colomar wrote:
> > On Fri, Jun 07, 2024 at 02:53:19PM GMT, Joe Damato wrote:
> > > On Thu, Jun 06, 2024 at 11:46:47PM +0200, Alejandro Colomar wrote:
> > > > $ make lint build check -j24
> > > > GROTTY		.tmp/man/man2/epoll_create.2.cat
> > > > GROTTY		.tmp/man/man2/epoll_ctl.2.cat
> > > > TROFF		.tmp/man/man2/ioctl_epoll.2.cat.set
> > > > an.tmac:.tmp/man/man2/ioctl_epoll.2:61: style: blank line in input
> > > > make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk=
/build/catman/troff.mk:63: .tmp/man/man2/ioctl_epoll.2.cat.set] Error 1
> > > > make: *** Deleting file '.tmp/man/man2/ioctl_epoll.2.cat.set'
> > >=20
> > > Hmm..
> > >=20
> > > When I run make I get an error:
> > >=20
> > > $ make
> > > TROFF		.tmp/man/man2/s390_sthyi.2.cat.set
> > > troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot ad=
just line
> >=20
> > Hmm, I can't reproduce it.  Can you run with `make --debug=3Dprint` (ne=
eds
> > a recent make(1))?
>=20
> I don't think I have a recent enough make:
>=20
> $ make --debug=3Dprint
> make: *** unknown debug level specification 'print'.  Stop.
> $ make --version
> GNU Make 4.3

You can do this:

	sed -i '/SILENT/s/^/$(V)/' GNUmakefile;

And after that, you can `make V=3D1` to see more verbosity.  This will
work with any make(1).  And I would appreciate if you can ping your
distro maintainer to package a newer version of make(1).  (Most likely,
you're on Debian (right?), where the maintainer of make(1) is AWOL, so
hopefully somebody else will pick it up if there are many pings.)  :-)

> > > I tried to run the lint build check target and got an error about
> > > checkpatch:
> > >=20
> > > $ make lint build check -j8
> > > CHECKPATCH	.tmp/man/man2/fork.2.d/fork.c.lint-c.checkpatch.touch
> > > bash: line 1: checkpatch: command not found
> > >=20
> > > I have mandoc, groff, and clang-tidy installed, but maybe I'm
> > > missing other dependency?
> >=20
> > That's a fork of the checkpatch.pl from the kernel.  I'm working on a
> > repository to make it public.  Don't worry about it.
> >=20
> > You can `make -t lint-c-checkpatch` to ignore all checkpatch lints.
>=20
> $ make -t lint-c-checkpatch
> $ echo $?
> 0
>=20
> Does that mean I'm good to go and ready to submit v2 ? ;)

Nope.  That means you're ready to `make`, and you won't see any errors
due to missing a checkpatch binary.  make -t is a trick that few know,
but quite useful:

$ MANWIDTH=3D72 man make | sed -n '/   -t/,/^$/p'
     -t, --touch
          Touch  files  (mark  them  up to date without really changing
          them) instead of running their commands.   This  is  used  to
          pretend  that the commands were done, in order to fool future
          invocations of make.

So what we did is trick make(1) to think that it has successfully run
the 'lint-c-checkpatch', by touch(1)ing all the files that would have
been created if that target had been successful.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--4u56w4asj5v6adpg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZnRMcACgkQnowa+77/
2zKRlQ/7BISlbjMKTs7uAtTWsrtdSkKh6EhQKpn/P0AdCEiNHoP94vs97vasc1p6
azOM6XGKvnsS5p3Ptx4yUd0x015eg5iTFr8JCovHSlc6pB3lDkRKhhCqzpHwBAM7
tnweM6mjFb3jLcehtfPc+nND0rFuTWdzlXwPusKzMwjWeKVqrLL+ovkN2gMze+cz
Ycv1kK1kunN6qRa1vkRe8/9HcGzs6Lvvk4z6AA1LezozDWruF2EQ+vnrQUwsOj+a
c2675KGECAq2RoUpKrN+r9hh97+vfJKFNFFtgBcinmIStwhWTH4e77Yvuse2xl5z
k1BQTS8dvpdmOzL9c0BxkQ2tD9xjVDiCBUWwVaJ6HHK0UqvGOFAhjj9QMBlGq/y4
M06oLyG/+s1HeUM30ZJYpcAerfvLMOTnvkgSRnUIOJq5FPFxzsbxtizsLEUPQ+u7
Mj1tWFcKEljw3bfWOClheS0GIJF7SQ6bH2WOtlDvCb+J4cTPMWD/a5F1Sa8KoXol
Cfe2pduh2Jk8Yn6S05JuJWr6uPabd4x6aJNd7sc5b8LrAWJ0KV52nRuW5i2OoItE
A/F18ImadNR/ZqK1bV+cC3tIhamcTWpn7UvWQRm8y3LmQFMiLeU9WQg4bC62aDag
hcW0erkA29xn4R1vPJit/4r2l2eTaS7vNkUWO8k77AN7YmHHwyU=
=onKZ
-----END PGP SIGNATURE-----

--4u56w4asj5v6adpg--

