Return-Path: <linux-man+bounces-2333-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C41A2536F
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 08:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8AA51628A6
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 07:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D8A1F8EFE;
	Mon,  3 Feb 2025 07:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjv8/zya"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0413D1E7C34
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 07:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738569577; cv=none; b=ECgRxJAeeimCWcbtRpSONuCmUet2IG2Pey+beNWrW9tu/RbFCiRMYnJziXeeSzlGP7CXyIptXILY4vWE/D9H9+G28wUSl8krEaTpsR4k3/aax8QXwbY3LTSE4Hc4bFX/eR1sDiZ+rMBMEugG1iGO+PyjwBupljFUx3TeIocnV60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738569577; c=relaxed/simple;
	bh=4AqbD+F/+UXKxasKSENeu+gKiWSl60g2E8MluWBPw7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u7ujfyrr5sid1peRZX8zuppUJ1h3UCWqV9YGEFHD6f1WrjFt/4JPBhxKuvcPO0A3umX9ViMvzb2CzQuA15vlb62I0xK0l1peFztITvYkWHRuB3/pvrVDuvx1iOrcxjsD1RRglh0NfbmCszuYIDc53waU9xfPNMaxfgDOkjWSMrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjv8/zya; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53CB0C4CEE2;
	Mon,  3 Feb 2025 07:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738569576;
	bh=4AqbD+F/+UXKxasKSENeu+gKiWSl60g2E8MluWBPw7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hjv8/zyaIMGEH62aDmiA86DGX9fL5lY+NRSQdw6O7/bSo7wZLEJ/tDr1m0U4gciai
	 zvKuzjzs8ubzF4d1M+98t9O4CtvwwCyhmYhe64LMHnJM+gjtCss+3UQJwwoXNOhVh0
	 T5qP+A+iaTSVuNs+9wLiCCTP51V6RPytSVTJkqy355/Kr+oubemQG3MjyOe52OV5JR
	 GG0s2jzJY/1UjDzAQh5pF4SN6GcMhLZVmMtU5g/qImDEyOu0/rt5pGJeHGpSMic7dj
	 w8YzQBVrYDyOEEsVcGYopNW3+TcjLrW9OjX0qdmG5qxLzGt9kDRRFPBaUQRbW4LJd3
	 g5cfZKOMNw7Mw==
Date: Mon, 3 Feb 2025 08:59:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/clone.2: Use munmap() to free child stack
Message-ID: <zv2pv4azqpfpczm3tjybymjijpdhhsbkgbjo5ndmg7fotmp2qm@zdckgbnnphb7>
References: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
 <42ewgvp6rg2lnyrd2z3dsfenqp33gjfrbeofirkzdeoaivtbpt@fzue6wssksib>
 <CAC1kPDPUPu9F1tozO684T9P_xzy1_z1QBqD4Xc1Ok4W+OBGFwg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fqpfkzpkudcmzenv"
Content-Disposition: inline
In-Reply-To: <CAC1kPDPUPu9F1tozO684T9P_xzy1_z1QBqD4Xc1Ok4W+OBGFwg@mail.gmail.com>


--fqpfkzpkudcmzenv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/clone.2: Use munmap() to free child stack
References: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
 <42ewgvp6rg2lnyrd2z3dsfenqp33gjfrbeofirkzdeoaivtbpt@fzue6wssksib>
 <CAC1kPDPUPu9F1tozO684T9P_xzy1_z1QBqD4Xc1Ok4W+OBGFwg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAC1kPDPUPu9F1tozO684T9P_xzy1_z1QBqD4Xc1Ok4W+OBGFwg@mail.gmail.com>

[CC +=3D linux-man@]

Hi Chen,

On Mon, Feb 03, 2025 at 02:25:14PM +0800, Chen Linxuan wrote:
> Alejandro Colomar <alx@kernel.org> ???2025???2???3????????? 00:56?????????
> > On Tue, Jan 21, 2025 at 11:13:51AM +0800, Chen Linxuan wrote:
> > > While reading the help manual for clone.2, I notice that the parent
> > > process in the example code does not release the stack of the child
> > > process.
> > >
> > > This is not a problem for the example program, but it is somewhat
> > > misleading.
> > >
> > > Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
> > > ---
> > >  man/man2/clone.2 | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/man/man2/clone.2 b/man/man2/clone.2
> > > index 3ffe8e7b8..5e6b2ef1f 100644
> > > --- a/man/man2/clone.2
> > > +++ b/man/man2/clone.2
> > > @@ -1910,6 +1910,8 @@ main(int argc, char *argv[])
> > >         child commences execution in childFunc(). */
> > >  \&
> > >      pid =3D clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[=
1]);
> > > +    if (munmap(stack, STACK_SIZE))
> > > +        err(EXIT_FAILURE, "munmap");
> > >      if (pid =3D=3D \-1)
> >
> > Would you mind clarifying why this munmap(2) call goes before the error
> > handling of clone(2)?  I'm not very familiar with clone(2).
>=20
> The memory we mmap here is used as the stack of child process we are
> going to create.
> Once child process is created, I mean clone(2) return without error,
> it's OK to munmap(2) memory,
> as the child process has its own memory space, and that memory is not
> used in parent process at all.
> So, whether the clone(2) is success or not, we both need to call
> munmap(2) to release the memory.

In case of a clone(2) error, exit(3) (called within err(3)) will release
the memory, right?  Why do we need an explicit munmap(2) call?

>=20
> If we call munmap(2) after the error handling of clone(2), we will
> print a error message and then exit
> before we free those memory.

exit(3) releases all memory, doesn't it?  Why would we want to
explicitly munmap(2) it before printing the error message?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--fqpfkzpkudcmzenv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmegd1wACgkQnowa+77/
2zKkOw//a7Xudp1caKoHmpOU7aaIggeLfMIptWJh6MDjZbPsRpZLjmFssAC06VY2
yiJurdHJFi1i7a8nNDqwsEYHvb91MaRSpF3N8Pv86rWk0Sde+ioq7pq6//Zlw0L+
0fmwk2wtyk5VUjYjlYA0QBi/gynOykZNJW1fICZ+62lQdmq4mx4xxSVAVYxwG/fv
VzrfZXWxohzGFk69nQiv9soVR0EmEmZ5YptOTxuVPtbkvzj6Jk2umS4fxgLEOZxK
KKcGrEJyKqu20tXbnjLN2/clw0t5PciV9057qCJE4/mvgUS+8paKxilRFMOtsvAP
TWd+pJvQVDd0/1ji+cZ9uTEdpigA0u1LOBAEwd5St/GlTVXAP7bz4lh8hJfeKq1G
P9IzZc/JO13gqLT40/HFKRyNcyR2CpPFDWdQ8rkgsjWWjPa9GYcA5Dw2Q/q7bqRs
08ZJGoPcSYqTBvA5VoyG8dCkprEFyK1SZ5E2dsuPlHQvq5WpbW5o7/KUgnnyM/ma
GN5JeDK5rJtGsgzAOagJfSXXKOeTsujreTtFQFVl6zXlTnTWZWi0hdirBzxsGUk+
VFtG747NU3XUAbE/iHNHRIocO9I/l9P6HiJ71xVuX3XamFCf5wv93Ak1nqVABQar
QXNeSBprUuLW1rFZC5WBUSvmMOkzeBgvfNahrQB2+DT4hDV48zg=
=z2Tw
-----END PGP SIGNATURE-----

--fqpfkzpkudcmzenv--

