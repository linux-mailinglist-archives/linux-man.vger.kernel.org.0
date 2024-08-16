Return-Path: <linux-man+bounces-1612-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C956954801
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 13:23:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF3C41F2163B
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 11:23:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04F4134CD8;
	Fri, 16 Aug 2024 11:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mbj32Avv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F19817
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 11:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723807416; cv=none; b=qfwvnGfMaGeJUkkh1CPwZDYfI27NUhIKnxyQtq+45ct0mEWseb6x4foMyKUyFER1i5gVRKjkqqu9fxf+kqyWjspJq5jZI593AdtGsdZX3s0p4oGk7Akimp7dxKdYEc82qM5tjuzJ8O9zQMv73j5O1S+yuMQ5vWbLGrUWUOtWzf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723807416; c=relaxed/simple;
	bh=uusr9ESUYqbNwZI6MJhfdWV60vjHfzk6v/Tbmwsr48c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cfZ4S8QBTzKzRk0ltiq7sM1IEpJuKGWnlbqHRSqLeFeHMuFcX60Q/qfJYFtbjo5QpCNse7X1UkHm9nH1pFy7XMY1ffvbZSmL07PSz8lDRooGEsLOz7+Oaw1zLmBuBLwzhX97tq85siLG2fRsm/Hp7jTpQbB2hmKgkDJe51rY3h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mbj32Avv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEE4AC32782;
	Fri, 16 Aug 2024 11:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723807416;
	bh=uusr9ESUYqbNwZI6MJhfdWV60vjHfzk6v/Tbmwsr48c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mbj32AvvwvKnw5VWgNba26cnpmbEOrxMfVtHhglu6wkGyrSLdQm6QPyyziTkY1eYw
	 kjXYI62c1LQXVaSU0RzoEX1HFkEnmviKg7p5YtgCpWCmj6HBbyWLizfvuCn3Axqz/i
	 0uwLS+dfoG27WByOpA/0nz+7INrKCRZ5lrWQuqx8bYLzgzMTkqmfmb70zzNmVpaSuc
	 V0/jyC8XVColgnoPR4CO2QoGzCEhZjDbBx5/o9JH9dN2Jo1P5yZ/kEpChp5wty/iAE
	 o4Kf6SDtcAJiZ50t6ZCGGAd0/7ltpNjlyViliB8t01PkVuZnAtX546kxwI8zsjmGvu
	 htoL5pqgjItww==
Date: Fri, 16 Aug 2024 13:23:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org, Zack Weinberg <zackw@panix.com>, 
	Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] sigaction.2: Improve wording and add an example in the
 BUGS section
Message-ID: <e3zgdpqlccwzik5yinclrbiacf2koxxnenoxqemm5vc47ydetv@smm2zxipqu2n>
References: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>
 <geae7xuxzy5pdrn2uwozhyums7kv6l5lubj2p57o52ex675uk2@22pnucysmvoz>
 <CAHGiy69OQ78x42+6iE7HqAiOaPCscn8fs=VNaxFMNSR7Q9R-mw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="esaue556jlvuvinv"
Content-Disposition: inline
In-Reply-To: <CAHGiy69OQ78x42+6iE7HqAiOaPCscn8fs=VNaxFMNSR7Q9R-mw@mail.gmail.com>


--esaue556jlvuvinv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org, Zack Weinberg <zackw@panix.com>, 
	Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] sigaction.2: Improve wording and add an example in the
 BUGS section
References: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>
 <geae7xuxzy5pdrn2uwozhyums7kv6l5lubj2p57o52ex675uk2@22pnucysmvoz>
 <CAHGiy69OQ78x42+6iE7HqAiOaPCscn8fs=VNaxFMNSR7Q9R-mw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHGiy69OQ78x42+6iE7HqAiOaPCscn8fs=VNaxFMNSR7Q9R-mw@mail.gmail.com>

Hi Miko=C5=82aj,

On Wed, Aug 07, 2024 at 03:58:32PM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> Hi Alejandro,
>=20
> On Wed, Aug 7, 2024 at 12:20=E2=80=AFAM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Miko=C5=82aj,
> >
> > On Wed, Aug 07, 2024 at 12:07:57AM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> > > This patch clears up the wording of the first part of the BUGS section
> > > of the sigaction.2 man page.
> > > Currently, it is very unclear when exactly the bug can occur, and
> > > there is no example, which I aim to fix.
> > >
> > > I also attach the source code of a C program that,
> >
> > Please include the example program in the commit message.
>=20
> I have updated the patch to include the code in the commit message. I
> have also reorganised the code a bit, to be simpler and for the output
> to be easier to understand. Here is the updated patch, I hope it will
> be to your satisfaction:

Yup; thanks!

>=20
> From 6f80374c12ad5e4917e8af8d0814201b4a916a49 Mon Sep 17 00:00:00 2001
> From: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> Date: Wed, 7 Aug 2024 13:14:21 +0200
> Subject: [PATCH] sigaction.2: Improve wording and add an example in the B=
UGS
>  section
> MIME-Version: 1.0
> Content-Type: text/plain; charset=3DUTF-8
> Content-Transfer-Encoding: 8bit
>=20
> This patch clears up the wording of the first part of the BUGS section
> of the sigaction.2 man page. Currently, it is very unclear when
> exactly the bug can occur, and there is no example, which I aim to
> fix. The text of the patch is partially based on the BUGS section of
> the signal.2 man page.
>=20
> I also attach a C program that, when run on an x86 Linux computer,
> shows that my example behaves like I say it does. The code runs the
> int instruction for each value from 0 to 255 with all registers set to
> 0 to show that all fields of the siginfo_t besides si_signo and
> si_code equal zero. The program is based on the attachment to bug
> 205831 on the kernel bugtracker which first dealt with this issue,
> which you can find here:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D205831. This is the code
> of the test program:
>=20
> #define CR "\n\t"
> #define _GNU_SOURCE 1
>=20
> #include <stdbool.h>
> #include <signal.h>
> #include <stdint.h>
> #include <stdio.h>
>=20
> static siginfo_t siginfo;
>=20
> void handler(int sig, siginfo_t *info, void *ucontext) {
>     ucontext_t *uc =3D (ucontext_t*) ucontext;
>     const uint8_t *pc =3D (const uint8_t*) uc->uc_mcontext.gregs[REG_RIP];
>     siginfo =3D *info;
>=20
>     //skip the faulting instruction
>     if(*pc =3D=3D 0xCC || *pc =3D=3D 0xF1)
>         uc->uc_mcontext.gregs[REG_RIP] +=3D 1;
>     else if(*pc =3D=3D 0xCD)
>         uc->uc_mcontext.gregs[REG_RIP] +=3D 2;
>     else
>         ; //assume the PC has already been advanced over the fault
> }
>=20
> static __attribute__((noinline)) void call_int(unsigned char argument) {
>     asm volatile(
>         "leaq 1f(%%rip), %%rcx"
>         CR "addq   %%rcx, %%rax"
>         CR "xor    %%rbx, %%rbx"
>         CR "xor    %%rcx, %%rcx"
>         CR "xor    %%rdx, %%rdx"
>         CR "xor    %%rsi, %%rsi"
>         CR "xor    %%rdi, %%rdi"
>         CR "xor    %%rbp, %%rbp"
>         CR "xor    %%r8, %%r8"
>         CR "xor    %%r9, %%r8"
>         CR "xor    %%r10, %%r10"
>         CR "xor    %%r11, %%r11"
>         CR "xor    %%r12, %%r12"
>         CR "xor    %%r13, %%r13"
>         CR "xor    %%r14, %%r14"
>         CR "xor    %%r15, %%r15"
>         CR "call   *%%rax"
>         CR "jmp    2f"
>         CR ".p2align 3"
>         "\n1:"
>         CR ".irp   i,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15"
>         CR ".irp   j,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15"
>         CR "xor    %%rax, %%rax"
>         CR ".byte  0xCD,(\\i*16 + \\j)"
>         CR "ret"
>         CR ".p2align 3"
>         CR ".endr"
>         CR ".endr"
>         "\n2:"
>=20
>         :
>         : "a" (argument * 8)
>         : "rbx", "rcx", "rdx", "rsi", "rdi",
>           "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15"
>     );
> }
>=20
> int main() {
>     struct sigaction sa =3D { 0 };
>     sa.sa_sigaction =3D &handler;
>     sa.sa_flags =3D SA_SIGINFO | SA_RESTART;
>     sigaction(SIGSEGV, &sa, 0);
>     sigaction(SIGTRAP, &sa, 0);
>=20
>     for(int i =3D 0; i < 256; i++) {
>         call_int(i);
>=20
>         bool others_zeroed =3D (
>             siginfo.si_errno =3D=3D 0 &&
>             siginfo.si_pid =3D=3D 0 &&
>             siginfo.si_uid =3D=3D 0 &&
>             siginfo.si_status =3D=3D 0 &&
>             siginfo.si_utime =3D=3D 0 &&
>             siginfo.si_stime =3D=3D 0 &&
>             siginfo.si_value.sival_ptr =3D=3D 0 &&
>             siginfo.si_value.sival_int =3D=3D 0 &&
>             siginfo.si_int =3D=3D 0 &&
>             siginfo.si_ptr =3D=3D 0 &&
>             siginfo.si_overrun =3D=3D 0 &&
>             siginfo.si_timerid =3D=3D 0 &&
>             siginfo.si_addr =3D=3D 0 &&
>             siginfo.si_band =3D=3D 0 &&
>             siginfo.si_fd =3D=3D 0 &&
>             siginfo.si_addr_lsb =3D=3D 0 &&
>             siginfo.si_lower =3D=3D 0 &&
>             siginfo.si_upper =3D=3D 0 &&
>             siginfo.si_pkey =3D=3D 0 &&
>             siginfo.si_call_addr =3D=3D 0 &&
>             siginfo.si_syscall =3D=3D 0 &&
>             siginfo.si_arch =3D=3D 0
>         );
>=20
>         printf("int $0x%02x: sig=3D%2d code=3D%04x others_zeroed=3D%i\n",
>             i,
>             siginfo.si_signo,
>             siginfo.si_code,
>             others_zeroed
>         );
>     }
>=20
>     return 0;
> }
>=20
> Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>

Patch applied.  Have a lovely day!
Alex

> ---
>  man/man2/sigaction.2 | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> index df8826e71..dcd450ce9 100644
> --- a/man/man2/sigaction.2
> +++ b/man/man2/sigaction.2
> @@ -1129,13 +1129,29 @@ .SS Undocumented
>  See the relevant Linux kernel sources for details.
>  This use is obsolete now.
>  .SH BUGS
> -When delivering a signal with a
> +When delivering a signal resulting from a hardware exception with a
>  .B SA_SIGINFO
>  handler,
>  the kernel does not always provide meaningful values
>  for all of the fields of the
>  .I siginfo_t
>  that are relevant for that signal.
> +For example, when the x86
> +.I int
> +instruction is called with a forbidden argument
> +(any number other than 3 or 128), a
> +.BR SIGSEGV
> +signal is delivered, but the
> +.I siginfo_t
> +passed to the signal handler has all its fields besides
> +.I si_signo
> +and
> +.I si_code
> +set to zero, even if other fields should be set (as an example,
> +.I si_addr
> +should be non-zero for all
> +.BR SIGSEGV
> +signals).
>  .P
>  Up to and including Linux 2.6.13, specifying
>  .B SA_NODEFER
> --=20
> 2.46.0
>=20
> >
> > > when run on an x86
> > > Linux computer, shows that my example behaves like I say it does. The
> > > code runs the int instruction for each value from 0 to 255 with all
> > > registers set to 0 to show what is contained in the siginfo_t returned
> > > to the signal handler afterwards.
> > >
> > > The program is based on the attachment to bug 205831 on the kernel
> > > Bugzilla, which first dealt with this issue, you can find that bug
> > > report here: https://bugzilla.kernel.org/show_bug.cgi?id=3D205831. The
> > > text of my contribution is also partially based on the BUGS section of
> > > the signal.2 man page.
> >
> > Please CC the people that contributed in that discussion.
> >
> > Have a lovely night!
> > Alex
> >
> >
> > >
> > > Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> > > ---
> > >  man/man2/sigaction.2 | 18 +++++++++++++++++-
> > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> > > index df8826e71..2b797355b 100644
> > > --- a/man/man2/sigaction.2
> > > +++ b/man/man2/sigaction.2
> > > @@ -1129,13 +1129,29 @@ .SS Undocumented
> > >  See the relevant Linux kernel sources for details.
> > >  This use is obsolete now.
> > >  .SH BUGS
> > > -When delivering a signal with a
> > > +When delivering a signal resulting from a hardware exception with a
> > >  .B SA_SIGINFO
> > >  handler,
> > >  the kernel does not always provide meaningful values
> > >  for all of the fields of the
> > >  .I siginfo_t
> > >  that are relevant for that signal.
> > > +For example, when the x86
> > > +.I int
> > > +instruction is called with a forbidden argument
> > > +(any number other than 3 or 128), a
> > > +.BR SIGSEGV
> > > +signal is delivered, but the
> > > +.I siginfo_t
> > > +passed to the signal handler has all its fields besides
> > > +.I si_signo
> > > +and
> > > +.I si_code
> > > +set to zero, even if other fields should be set (as an example,
> > > +.I si_addr
> > > +should be non-zero for all
> > > +.BR SIGSEGV
> > > +signals).
> > >  .P
> > >  Up to and including Linux 2.6.13, specifying
> > >  .B SA_NODEFER
> > > --
> > > 2.46.0
> >
> >
> >
> > --
> > <https://www.alejandro-colomar.es/>
>=20

--=20
<https://www.alejandro-colomar.es/>

--esaue556jlvuvinv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/NrQACgkQnowa+77/
2zLSMQ//cROzvL0vCRpJkPglfPI5EY5ugxM59kqlqHZMXEDuNWPP+z3EKoSp7yI2
YcQ0PTTDT3JtciCwRlH4llNatD9cKUIh9JXJ14zxljv56Mtv3vFsQpjlO15plxqa
Np2hUC2EUJ64Rzfg1BfbVVFOg4ATwZkGCBAKZ8lc1rZHMwool8Q0nsdZ1/mKwSZ3
N9xrrXXLuCelBn7GtvxAHQWawH6qqSBILDTtuhjWO9WXg+tdqH2WGvjTu2qfexxw
3phlHnZnLuG3pZ/96SJWQ4YpMCnuwtYzRreHdLEVBmxP+Zk5IuatpV3j1gQbq0gb
dSOr9wsJbgXAk7/x4KvZ7FsSXvOX6dxlongvQKZnwkNukzuAnqdZ8N00ohRCDckU
8Q2cQ2fk1iCrgPWFb0mwzb2AvxNb9Aj6kNe9vnxtaVBJ4qMZaS0Il6rhaLMnF/mJ
PIZ0jjp8N41HTbi55xycaFGzZq41jGXI90ibBUhk0e+wSodyUx6Osnter1SNP3jb
0RMkougPZ1AW7DTwxR4cyLNuj6LReYnGxuuv13KAtxUK4DSYvx5jDCUsyG+uUYhw
fLJ/JZOjwBwDScRRLKDn61i9tsmm5lCyEJrG1R56yufDFRDS0uYQmcFNgvozJY6T
XWzT6rTap6e5TyLlpatlOk+ZP10xzLSON5d8PjD5mYmpR3+WMuY=
=E0fA
-----END PGP SIGNATURE-----

--esaue556jlvuvinv--

