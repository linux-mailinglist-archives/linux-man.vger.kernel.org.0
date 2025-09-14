Return-Path: <linux-man+bounces-3862-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE648B567EF
	for <lists+linux-man@lfdr.de>; Sun, 14 Sep 2025 13:31:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3856E1895C66
	for <lists+linux-man@lfdr.de>; Sun, 14 Sep 2025 11:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 587A52745C;
	Sun, 14 Sep 2025 11:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saZBI+Cf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D761F8728
	for <linux-man@vger.kernel.org>; Sun, 14 Sep 2025 11:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849491; cv=none; b=F5uLmXtbCXk7dzRD5Tbw+0d5gj3na9xMc61G7xj8jb8XARvrLaB0GUN/gDFJ9+g1+nFFxlbV44enZElWygtyWrqAKrWaIdWidk1RPf4IY5dGmBTxtEU4j9c4wYf0ACKmHc20CERip5ebSlWH7BiOXq1Pcb/ub882sGIB3HpB6rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849491; c=relaxed/simple;
	bh=0hbWpPspFdpw+pCqimwdF6DRWoGjBTSXkxTU4CTd9xU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qt9+p9MzwikwbT8vwYnN7smS6Zl7J3jGPF8IV0wXwTuIjawQ2JagX4p6R2zQCpmtZ8zIJxxA7+s9vlA3Vo8GWlr5YDtN1FfQDadi8LkalBcX82PK7lkh8o2v1eY7A89KD6Jso5ra4Yu7xMVVvkhSyNa3wQW6kBXOS98A3VI4qEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saZBI+Cf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D30F6C4CEF0;
	Sun, 14 Sep 2025 11:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757849490;
	bh=0hbWpPspFdpw+pCqimwdF6DRWoGjBTSXkxTU4CTd9xU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=saZBI+CfNk1Q9MBr9F/4oZaeXEfFlEYo5poGMQanfHfAONBVjOut6nymSbh+FH8pe
	 CQdoibCxyBi9p81liselqxHdedHc+S/lf5MKMYSnJ9NmDilvstvSkK8AgvJz9wV9HL
	 6K4aYEYeJJDpUzAq0wU12rJ0fDNu0XOFgQmrJm+rHU5cK0C9ClCM7o3FY7OpsGgWpy
	 qdS/7bOCadGIdLQG+X74W/yJscBlCgtHH+6BuxQcd/AidR25xGmj/uh6byJr4Umbwz
	 XsGLWQYqp/4hR/dPdfb2gP/j7f7XUaZIW/D3MSaSjP3kBsjQhRkCmzfx6vFS6dX5k1
	 3crJjM8QH/xbw==
Date: Sun, 14 Sep 2025 13:31:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Thiago Jung Bauermann <thiago.bauermann@linaro.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
Message-ID: <f6hoajtp2f7szmtbv6fsixrkr3qodc5m6savzkphjsmf5ucll7@l4bu3zqdz6rr>
References: <20250909191357.44951-1-thiago.bauermann@linaro.org>
 <0dc0e482-1d1d-4a15-aea8-2f24ec7187a4@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xldqloyty7phebf6"
Content-Disposition: inline
In-Reply-To: <0dc0e482-1d1d-4a15-aea8-2f24ec7187a4@redhat.com>


--xldqloyty7phebf6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Thiago Jung Bauermann <thiago.bauermann@linaro.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
References: <20250909191357.44951-1-thiago.bauermann@linaro.org>
 <0dc0e482-1d1d-4a15-aea8-2f24ec7187a4@redhat.com>
MIME-Version: 1.0
In-Reply-To: <0dc0e482-1d1d-4a15-aea8-2f24ec7187a4@redhat.com>

Hi Carlos, Thiago,

On Tue, Sep 09, 2025 at 03:44:06PM -0400, Carlos O'Donell wrote:
> On 9/9/25 3:13 PM, Thiago Jung Bauermann wrote:
> > Update with missing si_code values from Linux v6.16's
> > include/uapi/asm-generic/siginfo.h.
>=20
> LGTM.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>
>=20
> > Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>

Thanks!  I've applied the patch and the Reviewed-by tag.


Have a lovely day!
Alex

> > ---
> >=20
> > Changes in v2:
> > - Make all the entries added by this patch that have parenthesized notes
> >    use .BR. Some were erroneously using .B in v1.
> > - Add "... and glibc 2.43" note to TRAP_PERF, SYS_SECCOMP and
> >    SYS_USER_DISPATCH (suggested by Carlos and Alejandro).
> >=20
> >   man/man2/sigaction.2 | 51 ++++++++++++++++++++++++++++++++++++++++++--
> >   1 file changed, 49 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> > index 8d08a8c409d9..d6eced0761d7 100644
> > --- a/man/man2/sigaction.2
> > +++ b/man/man2/sigaction.2
> > @@ -652,6 +652,9 @@ or
> >   .\" SI_DETHREAD is defined in Linux 2.6.9 sources, but isn't implemen=
ted
> >   .\" It appears to have been an idea that was tried during 2.5.6
> >   .\" through to Linux 2.5.24 and then was backed out.
> > +.TP
> > +.B SI_ASYNCNL
> > +Async name lookup completion.
> >   .RE
> >   .P
> >   The following values can be placed in
> > @@ -716,6 +719,12 @@ Floating-point invalid operation.
> >   .TP
> >   .B FPE_FLTSUB
> >   Subscript out of range.
> > +.TP
> > +.BR FPE_FLTUNK " (since Linux 4.17)"
> > +Undiagnosed floating-point exception.
> > +.TP
> > +.BR FPE_CONDTRAP " (PARISC only)"
> > +Trap on condition.
> >   .RE
> >   .P
> >   The following values can be placed in
> > @@ -742,6 +751,24 @@ See
> >   .BR pkeys (7).
> >   The protection key which applied to this access is available via
> >   .IR si_pkey .
> > +.TP
> > +.BR SEGV_ACCADI " (since Linux 4.17, SPARC only)"
> > +Application Data Integrity not enabled for mapped object.
> > +.TP
> > +.BR SEGV_ADIDERR " (since Linux 4.17, SPARC only)"
> > +Disrupting Memory Corruption Detection error.
> > +.TP
> > +.BR SEGV_ADIPERR " (since Linux 4.17, SPARC only)"
> > +Precise Memory Corruption Detection exception.
> > +.TP
> > +.BR SEGV_MTEAERR " (since Linux 5.10, ARM only)"
> > +Asynchronous Memory Tagging Extension error.
> > +.TP
> > +.BR SEGV_MTESERR " (since Linux 5.10, ARM only)"
> > +Synchronous Memory Tagging Extension exception.
> > +.TP
> > +.BR SEGV_CPERR " (since Linux 6.10)"
> > +Control protection fault.
> >   .RE
> >   .P
> >   The following values can be placed in
> > @@ -785,6 +812,12 @@ Process taken branch trap.
> >   .TP
> >   .BR TRAP_HWBKPT " (since Linux 2.4, IA64 only)"
> >   Hardware breakpoint/watchpoint.
> > +.TP
> > +.BR TRAP_UNK " (since Linux 4.18)"
> > +Undiagnosed trap.
> > +.TP
> > +.BR TRAP_PERF " (since Linux 5.13 and glibc 2.43)"
> > +Perf event with sigtrap=3D1.
>=20
> OK.
>=20
> >   .RE
> >   .P
> >   The following values can be placed in
> > @@ -839,17 +872,31 @@ High priority input available.
> >   Device disconnected.
> >   .RE
> >   .P
> > -The following value can be placed in
> > +The following values can be placed in
> >   .I si_code
> >   for a
> >   .B SIGSYS
> >   signal:
> >   .RS 4
> >   .TP
> > -.BR SYS_SECCOMP " (since Linux 3.5)"
> > +.BR SYS_SECCOMP " (since Linux 3.5 and glibc 2.43)"
>=20
> OK.
>=20
> >   Triggered by a
> >   .BR seccomp (2)
> >   filter rule.
> > +.TP
> > +.BR SYS_USER_DISPATCH  " (since Linux 5.11 and glibc 2.43)"
> > +Syscall user dispatch triggered.
>=20
> OK.
>=20
> > +.RE
> > +.P
> > +The following value can be placed in
> > +.I si_code
> > +for a
> > +.B SIGEMT
> > +signal:
> > +.RS 4
> > +.TP
> > +.BR EMT_TAGOVF " (SPARC only)"
> > +Tag overflow.
> >   .RE
> >   .SS Dynamically probing for flag bit support
> >   The
> >=20
> > base-commit: e86f9fd0c279f593242969a2fbb5ef379272d89d
> >=20
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--xldqloyty7phebf6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjGp40ACgkQ64mZXMKQ
wqnZIA/9E2gkfYkeZYLSNTOGxLqCjtPOM1LZo2zDDNEGlrMoExzXZ8bZH6L+hn62
MjnNxWePVrtuIL7KsOzXTAv6PFYFYDtvIL51RrRvHSWvo2FDDqgcCwatjjihEcnU
qgx4B9beErl9JwSPwbFFcoxyd5fdviz7zaVbpnlJCRO9u7i9dBKhC3+2SGfmyK+z
agJUhHtLecdmrpUIGZGnAZtiwOhxWWeUFlfCOL7CBuF3hCU/eEO8ouwF6k1EcVVR
iNPDYCblYdnHhg+LHodcfa9u+tVME4bybUpM8mHQ0Y4QuP98NyjHQGbO/IO98RCH
vErC2qAsrCkTJKN3MxOg8pRnRCQy5XRHTK0mVXXYYNusJwq9Qnr/YRSA2DEc4Ky9
g6y2f5MiPV37UdMZ0L73uQiV/mhw+/Ii6SXW98UwsMrJXCyjmQ3ThrWJuA6vEOH1
09Ak1EnTCZXEtYDKOr+kDFeVIGjQErPU0VYuJ+7kdfwVA147e302UXT/mweffngD
Q2djIAns9DeIlcF8PYsnqHacbTwZeP9tqm3FhzfYzhonrgTkASTC7eP9R90G+lBO
JkYrbGEcEIqNm9bi83jqzuGtpJyMdCJ/fPO8ZNlesiDpXZXG2wGeNwr0qyCrVqww
X0DK8kFq+U3WmqfMmnO/BdpCtxGimX8fIH2XWsvtT5jM/a2GlCk=
=A98n
-----END PGP SIGNATURE-----

--xldqloyty7phebf6--

