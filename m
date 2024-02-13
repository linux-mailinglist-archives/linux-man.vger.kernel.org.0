Return-Path: <linux-man+bounces-441-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D24CA853010
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 13:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D2981F253B5
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 12:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32854383B9;
	Tue, 13 Feb 2024 12:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTRXB2Zy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E859C3D968
	for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 12:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707825817; cv=none; b=q81BMygw7+ZqElPRpN5A5n9FV0VE7sYAwnmXk2GXlWt5FAqkMXMMtfTfwZbBkHUNGNl8cK7I5hKGVxjb0qYQ6u5YyzP6iLIg+/Gz3twp5pn6AAFH47nyVUwSDfe2FtBCAlcebtEagpx1xmBRYxKoF3HyUQZaDPBy4Eu5gs9R7qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707825817; c=relaxed/simple;
	bh=4ypV0nZIeX30nBXjYJrDS9yGXmG+U6iLUuNFqDTMWcA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F9Zwkho08ViYIkydYqDZvvPBWpgTCM/aZF4YtunVdxO0P5o7nneMhQhk5ZvcYLe6NnbH5SvNce9sS1lpZB1lDU2zk3siXe7YRPE6FbZdiJqh4uUaG1BaA+fDFaBEL6PAieaDyA/Djbw49n/FQTygu4/Zxneqw78ZN2uMm0HkF1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTRXB2Zy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6D1CC433F1;
	Tue, 13 Feb 2024 12:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707825816;
	bh=4ypV0nZIeX30nBXjYJrDS9yGXmG+U6iLUuNFqDTMWcA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eTRXB2Zyb8TKux6Z6tEo17MCfyrBKVwfFW9RhISsRm45TTEeVtztcszHMfoss4zt9
	 38rYeVku+IT/fsSlEgd6o05Gxq9vj5Yj4M5F1pLwTMyENaMd3/442/ql3kbKpokZvi
	 zlbSsUpeloYfFe6Rd5Q6JorolsTYx1jYvTQRrjr7WfPHGy8T0m4PSa0QPL+OrBMraa
	 Qbx9LckbZDqA8271MiVkRKvHdww/xhXUDnjhMPBmaaq/PLqIf9aahCP6Uf/nERARBS
	 jkKCzdYq6rcRMCDnKrZkLC/Q+lS3QuhxibaaJhCr+Z7SAViOZgQBDpexkuUH0Kl+fJ
	 3tANGS2BZHwRg==
Date: Tue, 13 Feb 2024 13:03:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <ZctalZxLI5cXZ4bC@debian>
References: <20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com>
 <ZckUNXHtp2xkqr02@debian>
 <ZcrHuEqxsD3lj2UC@ghost>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mobACUsUeP0HoNSR"
Content-Disposition: inline
In-Reply-To: <ZcrHuEqxsD3lj2UC@ghost>


--mobACUsUeP0HoNSR
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 Feb 2024 13:03:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX

Hi Charlie,

On Mon, Feb 12, 2024 at 08:36:56PM -0500, Charlie Jenkins wrote:
> On Sun, Feb 11, 2024 at 07:38:39PM +0100, Alejandro Colomar wrote:
> > Hi Charlie,
> >=20
> > On Wed, Jan 24, 2024 at 06:59:04PM -0800, Charlie Jenkins wrote:
> > > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
> > > for prctl(2) to LKML. It has been reviewed and is expected to land
> > > during the Linux version 6.9 merge window. This adds the relevant
> > > documentation from that patch.
> > >=20
> > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> >=20
> > This patch triggers a few warnings:
> >=20
> > 	$ make lint check -k
> > 	TROFF	.tmp/man/man2/prctl.2.cat.set
> > 	an.tmac:man2/prctl.2:1155: style: .IR expects at least 2 arguments, go=
t 1
> > 	an.tmac:man2/prctl.2:1157: style: .IR expects at least 2 arguments, go=
t 1
> > 	an.tmac:man2/prctl.2:1179: style: .IR expects at least 2 arguments, go=
t 1
> > 	an.tmac:man2/prctl.2:1196: style: .IR expects at least 2 arguments, go=
t 1
> > 	make: *** [share/mk/build/catman.mk:54: .tmp/man/man2/prctl.2.cat.set]=
 Error 1
> > 	make: *** Deleting file '.tmp/man/man2/prctl.2.cat.set'
> > 	make: Target 'check' not remade because of errors.
> >=20
> > See <CONTRIBUTING.d/lint> for that.
>=20
> These lint errors didn't show up when I ran it, I must have some bad
> configuration.

Hmm, maybe you have an old version of groff(1).  Don't worry.  :)
BTW, thanks for running them!

Have a lovely day!
Alex

>=20
> >=20
> > > ---
> > > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
> > > flag for prctl(2) to LKML. It has been reviewed and is expected to la=
nd
> > > during the Linux version 6.9 merge window.
> > > ---
> > >  man2/prctl.2 | 58 ++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++
> > >  1 file changed, 58 insertions(+)
> > >=20
> > > diff --git a/man2/prctl.2 b/man2/prctl.2
> > > index f1604a7cb..2889a7195 100644
> > > --- a/man2/prctl.2
> > > +++ b/man2/prctl.2
> > > @@ -1147,6 +1147,64 @@ For further information, see the kernel source=
 file
> > >  (or
> > >  .I Documentation/security/Yama.txt
> > >  before Linux 4.13).
> > > +.\" prctl PR_RISCV_SET_ICACHE_FLUSH_CTX
> > > +.TP
> > > +.BR PR_RISCV_SET_ICACHE_FLUSH_CTX " (since Linux 6.9, RISC-V only)"
> > > +Enable/disable icache flushing instructions in userspace. The ctx an=
d the
> >=20
> > 'ctx' isn't a common word.  The first time you mention it you should
> > probably say what it means.  For example:  "The context (ctx) and
> > the ..." and later just use ctx.
> >=20
> > > +scope can be provided using
> > > +.IR arg2
> >=20
> > This should be I, not IR.
> >=20
> > > +and
> > > +.IR arg3
> > > +respectively. When scope is set to
> >=20
> > Please use semantic newlines.  See man-pages(7):
> >=20
> >    Use semantic newlines
> >      In  the  source of a manual page, new sentences should be started
> >      on new lines, long sentences should be split into lines at clause
> >      breaks (commas, semicolons, colons, and so on), and long  clauses
> >      should be split at phrase boundaries.  This convention, sometimes
> >      known  as  "semantic newlines", makes it easier to see the effect
> >      of patches, which often operate at the level of  individual  sen=
=E2=80=90
> >      tences, clauses, or phrases.
> >=20
> > > +.B PR_RISCV_SCOPE_PER_PROCESS ,
> >=20
> > This should be BR, not B.  See groff_man(7).
> >=20
> > > +all threads in the process are permitted to emit icache flushing
> > > +instructions. Whenever any thread in the process is migrated, the
> > > +corresponding hart's icache will be guaranteed to be consistent with
> > > +instruction storage. Note this does not enforce any guarantees outsi=
de of
> >=20
> > 'Note' is superfluous.  You can just remove that word.  "This does not
> > enforce ...".
> >=20
> > > +migration. If a thread modifies an instruction that another thread m=
ay
> > > +attempt to execute, the other thread must still emit an icache flush=
ing
> > > +instruction before attempting to execute the potentially modified
> > > +instruction. This must be performed by the userspace program.
> >=20
> > We say "user space"; two words (see man-pages(7)).  In this case, since
> > it's an adjective, it would be "user-space", with a hyphen.
> >=20
> > > +.IP
> > > +In per-thread context (eg. scope is set to
> > > +.B PR_RISCV_SCOPE_PER_THREAD )
> >=20
> > The comma should go with the parenthesis.  Otherwise, you'll see a
> > spurious space in between.
> >=20
> > > +, only the thread calling this function is permitted to emit icache
> > > +flushing instructions. When the thread is migrated, the corresponding
> > > +hart's icache will be guaranteed to be consistent with instruction s=
torage.
> > > +.IP
> > > +On kernels configured without SMP, this function is a nop as migrati=
ons
> > > +across harts will not occur.
> > > +.IP
> > > +The following values for
> > > +.IR arg2
> > > +can be specified:
> > > +.RS
> > > +.TP
> > > +.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.9)"
> > > +Allow fence.i in userspace.
> >=20
> > "user space".
> >=20
> > > +.TP
> > > +.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.9)"
> > > +Disallow fence.i in userspace. All threads in a process will be affe=
cted
> >=20
> > .
> >=20
> > > +when scope is set to
> > > +.B PR_RISCV_SCOPE_PER_PROCESS .
> > > +Therefore, caution must be taken -- only use this flag when you can
> >=20
> > Use \[em] for an em dash.  Although in this case I think ':' or ';'
> > would be more appropriate.
> >=20
> > Also, I think 'only' would go better right before "when".
> >=20
> > > +guarantee that no thread in the process will emit fence.i from this =
point
> > > +onward.
> > > +.RE
> > > +.IP
> > > +The following values for
> > > +.IR arg3
> > > +can be specified:
> > > +.RS
> > > +.TP
> > > +.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.9)"
> > > +Ensure the icache of any thread in this process is coherent with
> > > +instruction storage upon migration.
> > > +.TP
> > > +.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.9)"
> > > +Ensure the icache of the current thread is coherent with instruction
> > > +storage upon migration.
> > > +.RE
> > >  .\" prctl PR_SET_SECCOMP
> > >  .TP
> > >  .BR PR_SET_SECCOMP " (since Linux 2.6.23)"
> > >=20
> > > ---
> > > base-commit: a81e893f2b9316869e6098c3a079c30a48158092
> > > change-id: 20240124-fencei_prctl-c24da2643379
> > >=20
> > > Best regards,
> > > --=20
> > > Charlie Jenkins <charlie@rivosinc.com>
> >=20
> > Thanks for the patch!
> >=20
> > Have a lovely day,
> > Alex
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>
> > Looking for a remote C programming job at the moment.
>=20
> Thank you for all of the suggestions! I will make the requested changes.
>=20
> - Charlie
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--mobACUsUeP0HoNSR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXLWpUACgkQnowa+77/
2zJ8jg//cN2Md3DNmjliLD3Z1o1DcR182V92ypA6lLRNRQBGcmjf7OBlpRWJ69UW
MH/S6b8xliNgArviy9pzxbVeNC4Q2SSHBAH6nGkEfXovv6qp+XYrqzpj4wFK2s7M
2AzijflZq14g90d4ibyse8OSjgaN+1UuvsNo5XFxJUuwe8ZMOG2TvSfzy2OHGYEG
79DMq7RKn127/brMwGtsNvIsEVw+U5MMqAla34FhK+j4OG66Z5J8XeU1UFG8pdf9
UP1NDeU5bizdHKtoQwD3UIrIrDFwlHMBpWlFWhT9TDvZpEXgzWako9KHKmrFZr+M
3rOVviTXQHHprjent/CSl+P52AQznqbDtFUjLte1O/245EWDEHjKDZrmsE0v3RbJ
zVhnY2It51dOFkqkhhzuIRVxQWXv8ylQ4OlySfBZOK0KOCJMKoEbDcBEP0lQAB8D
sOVrzN5eKN+6/q2wViXWW+qGOpQdvOtWqyj0fIM7Q8yzCHxG7P/vGXBG3MV7a5q6
0x0IrqBkC0QHpGjEdJcHOHstJPV7J73GNdfYXOdBDJSu3a4wdk1R9IcTCkMchcS7
wSFQrYl+K0cHaZqHHuqXvY8G85XyqkPq3Rc06UFdloT2DIlaJF2u05uSaaaeJ8Dj
fzSP66u3F3mV/AycKCIKl+fEy7JWuNi2iXK+8qxYARlJ7pSOV5Q=
=U22/
-----END PGP SIGNATURE-----

--mobACUsUeP0HoNSR--

