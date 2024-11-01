Return-Path: <linux-man+bounces-1811-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 122E19B91FA
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 14:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 950D31F2114F
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 13:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA439479;
	Fri,  1 Nov 2024 13:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSMo8giY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5E9168DA
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 13:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730467628; cv=none; b=ud8vI/l1TY5d6LWrOMbcKqO9beTgwr8+4MsRxC8zxRN03DHAay1SI1oYW9HITclbuexsJVdk8bUVc0XcrFDHcPJPtNpsC69NyzXAmiRe7vNhnhsW1zzlNHpyo3MyvmccD/fMVtEx93Z+uFApn5g5kBPPadL0raZYnW+idqJO+gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730467628; c=relaxed/simple;
	bh=01NdUp9+ucgrPnNPGPxgJwsKLwtRHnHBZFLuahC6JN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hIZGvvwO0aM3YHD/K2zKnkQyW5FN/O1tY4oCMv0iN9eYUq8ZYThPfA6dhhnTI689srTM37eXtAgwlZ70djihHDl/wiKPAai1RuACo1Q8tN7ivaXrxibGIWumF40yeKcUliSpY8foG6wevZmZBKT4N2YFn+eM+ODszWnHq4PonUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSMo8giY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47545C4CECD;
	Fri,  1 Nov 2024 13:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730467628;
	bh=01NdUp9+ucgrPnNPGPxgJwsKLwtRHnHBZFLuahC6JN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cSMo8giYsUEuGtlj3ZNItQuFkK+26X3aSmy71jUMk4E5gYrbiMiyqD9uaYeChVmcd
	 JrALnIs99IFCQ8rvB2DhptzbgzhrXHSRMA/2FZKSp30Zi5Si0rRjM3mF1L+nI08rrn
	 AkiWjn7Eu0d91Okb0QSVnMHc2ACHks2iH3jwsxuaKP3Mn3U+wXEFGd4On/Q9eBM6ou
	 eJeSGJ5qCNkSScJGZWXjlCFc5IrRMJyE87x2s8rzH+pUvenV8ow5MxElYvESpHCbUI
	 dNCRI2MxS3JrZg6xM+DSemwmxMtpCL+78+ZGF9V4bGbgjOpXSmS5vNvTcHeQvTazXw
	 RtQPlyR0t0EBg==
Date: Fri, 1 Nov 2024 14:27:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Emanuele Torre <torreemanuele6@gmail.com>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
Message-ID: <20241101132703.4negmxkknlc5huty@devuan>
References: <ZkrZb91EgZoaOybZ@t420>
 <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
 <5j4gyoh75xrmuljl3dlobviroi3huhriufk6gzcwsyeibupov3@lpmy4moyjjhn>
 <2c45b22d-7800-4c53-b145-3ca1944c0c02@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xsb75f7pnb32j5he"
Content-Disposition: inline
In-Reply-To: <2c45b22d-7800-4c53-b145-3ca1944c0c02@linaro.org>


--xsb75f7pnb32j5he
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
MIME-Version: 1.0

Hi Emanuele,

Do you have any updates of this patch?  Thanks!

Have a lovely day!
Alex

On Mon, May 20, 2024 at 08:35:48AM -0300, Adhemerval Zanella Netto wrote:
>=20
>=20
> On 20/05/24 05:53, Alejandro Colomar wrote:
> > Oops, I mistyped the glibc list.  Below is included the original email.
> >=20
> > ---
> >=20
> > On Mon, May 20, 2024 at 07:02:39AM GMT, Emanuele Torre wrote:
> >> Hello.
> >=20
> > Hi Emanuele,
> >=20
> >> pidfd_open(2) only lists sys/syscall.h and unistd.h in its SYNOPSYS:
> >>
> >>   SYNOPSIS
> >>          #include <sys/syscall.h>      /* Definition of SYS_* constant=
s */
> >>          #include <unistd.h>
> >>
> >>          int syscall(SYS_pidfd_open, pid_t pid, unsigned int flags);
> >>
> >>          Note:  glibc provides no wrapper for pidfd_open(), necessitat=
ing
> >>          the use of syscall(2).
> >>
> >> Then it mentions PIDFD_NONBLOCK as one of its flags:
> >>
> >>   PIDFD_NONBLOCK (since Linux 5.10)
> >>          Return  a nonblocking file descriptor.  If the process referr=
ed
> >>          to by the file descriptor has not yet terminated, then  an  a=
t=E2=80=90
> >>          tempt to wait on the file descriptor using waitid(2) will imm=
e=E2=80=90
> >>          diately return the error EAGAIN rather than blocking.
> >>
> >> But PIDFD_NONBLOCK is not defined in any of the listed headers.
> >=20
> > Hmmm.  Thanks!  We need to add its header.
> >=20
> >> I have noticed that PIDFD_NONBLOCK is the same value as O_NONBLOCK,
> >> so perhaps this flag could be listed as
> >>
> >>   O_NONBLOCK or PIDFD_NONBLOCK (since Linux 5.10)
> >>
> >> like O_NDELAY and O_NONBLOCK in open.2.
> >>
> >> This way the user would know that O_NONBLOCK may be used instead of
> >> PIDFD_NONBLOCK if PIDFD_NONBLOCK is not available.
> >=20
> > No.  That's an implementation detail, which shouldn't be abused.
> >=20
> >> I have also noticed that GNU libc (in its linux-api-headers submodule)
> >> provides a linux/pidfd.h header that just defines PIDFD_NONBLOCK as
> >> O_NONBLOCK, perhaps another solution would be to list in linux/pidfd.h
> >> in the synopsis and say it is required to use PIDFD_NONBLOCK.
> >=20
> > Yep, that's the kernel uapi header.  I didn't know glibc redistributes
> > those.
> >=20
> > Anyway, we should indeed include <linux/pidfd.h> for this macro.
>=20
> The glibc provides the pidfd_open, pidfd_getfd, and pidfd_send_signal
> since 2.36 [1][2][3], and pidfd_getpid since 2.39 [4].  It also provides =
the
> pidfd_spawn and pidfd_spawp [5], which are similar to posix_spawn, but
> return return a pidfd.
>=20
> >=20
> >> Then, I also noticed that GNU libc now also provides the sys/pidfd.h
> >> header with the definition of PIDFD_NONBLOCK, and prototypes for
> >> pidfd_open, pidfd_send_signal, pidfd_getfd, and also a prototype for
> >> pidfd_getpid that is an helper function that parses the "Pid:" field
> >> from /proc/self/fdinfo/FD and currently does not have a man page.
> >=20
> > Hmmm, I've CCed glibc for a question:  When you provide a macro like
> > this one, without providing a syscall wrapper, should we include the
> > glibc header or the kernel one?  Do you provide all kernel uapi macros,
> > or just select ones?
>=20
> For pidfd function we decided to add the function on sys/pidfd.h which
> is a distinct header.  Maybe we should follow other kernel header=20
> integration and include it if existent and only define the required
> macros if not existent (like we do on mount.h).=20
>=20
> >=20
> > As far as I understand (I have never tried to use it in a program),
> >=20
> >   pid_t pid =3D pidfd_getfd(pidfd);
> >=20
> > Is equivalent to the following command in shell:
> >=20
> >   pid=3D$(grep -Pom1 '^Pid:\t\K.*' proc/self/fdinfo"$pidfd" || echo -1)
>=20
> Yes, and it sets errno depending parsing and 'Pid:' value (you can check
> on the pidfd_getfd documentation on glibc manual).
>=20
>=20
> [1] https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D97f5d19c4579=
9e3abedef771430b5562f1b8764f
> [2] https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D32dd8c251a43=
1c90451092653f0231a4ad2665e5
> [3] https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D56cf9e8eec3b=
dc0ce44efeda373de9d6b825ea1e
> [4] https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3De7190fc73dbc=
8a1f8f94f8ccacd9a190fa5e609c
> [5] https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D0d6f9f626521=
678f330f8bfee89e1cdb7e2b1062
>=20
> >=20
> >>
> >> So probably the best solution is to just make the pidfd_open(2),
> >> pidfd_send_signal(2), and pidfd_getfd(2) man pages tell users to inclu=
de
> >> sys/pidfd.h and call the GNU libc functions instead of including
> >> sys/syscall.h and unistd.h and calling syscall(2) directly; now that
> >> sys/pidfd.h exists.
> >=20
> > Ahh, interesting.  I'm using glibc 2.38 and still don't have that one.
> > It seems added in 2.39.  We can directly document that in
> > pidfd_getfd(2).
> >=20
> >> And maybe to also add a pidfd_getpid(3) man page for the new pidfd
> >> helper function.
> >=20
> > No, usually we document the glibc wrapper in man2, unless there's a big
> > difference between the kernel syscall and the glibc wrapper.
> >=20
> > Thanks for the detailed report!
> >=20
> > Have a lovely day!
> > Alex
> >=20
> >>
> >>
> >> o/
> >>  emanuele6
> >=20

--=20
<https://www.alejandro-colomar.es/>

--xsb75f7pnb32j5he
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmck1ycACgkQnowa+77/
2zJUsQ//QzkkjpWp5se5Y+bCSaGqeu9b0PZCAisXyrtzrpKDFpY16M2kH1HMlfq7
98TxbvpsSPyjWNPmgJ9WSBus7a4h2tdjRP2VslGkDmkhLIjYs5+ijg2moEkolL4f
XbOtPBj3vA58XXy8Mr17PrjeCGD585YiEDDQ8QTQkBGdh8C5kjCL9ZxokMReB6eE
+Un5/IfnhqoDzX3bFUwMc69b6SukzQ9pMHKuudC+MsjQXdPv6cKV5V5WAVBQwqGc
4/q2mgxr1Cs7KHQ5SeDELGiM0SgOYWwKSOWHs7v1xXqEYnMKGTWqGo6TrnoNeiy7
UZP9pKnLM4pH2MLY4YwtLvPwHA8s5x9Cfgk1CqPw4XqaVEVFQh6CbVBrAzs0bNKT
fxCxszuty4WA+GTojH8asQ9T082ctRGCQwA4g8iYb0PjqfrF//YOLSK0QEhaTnRa
Fpw8TjibGnUWL68uOhyVBPFFI58xQKG2z6d7V/vXaWNasu22+xOm+yzovVk8wBKg
dCLTq+/tk6V3xkAFS16yFCbhxbYJrqAjOUqiFDxEdOs77GRj0CR345nBTHqqD4Fh
FFxSiZ3ECsy0nJyENSka0JABCVkFfj6l2DSpkS7N2ecmDKdGM4OpZ5TQNhuFegVj
oVf9EvGyBgRoRJB56sbBibN1AOX0elumqgp7HWA2YPUTyaxURvo=
=U5sg
-----END PGP SIGNATURE-----

--xsb75f7pnb32j5he--

