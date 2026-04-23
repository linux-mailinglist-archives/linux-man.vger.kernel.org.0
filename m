Return-Path: <linux-man+bounces-5384-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKAqHrUM6mn4sgIAu9opvQ
	(envelope-from <linux-man+bounces-5384-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:12:37 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8D0451CD8
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:12:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 410E73006085
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091383EBF3C;
	Thu, 23 Apr 2026 12:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKU6GPXs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB573E8684;
	Thu, 23 Apr 2026 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776946313; cv=none; b=m+jXZjmJkOTa5tTOnDAE1wKPcCkQ9/GCzX8WSMSzZv/x9CHC8yCzal0/xJ+etEKTCtPEMn3S5EqzEHSFZgmHq1dL8XW8Y/E1GhlfiiPDKzoYCnY2qy8V31IeSQ1Ygx1sIbJAp5OKfrhwVkpcrBsxtZskqrXq/kitVMRpskXDGoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776946313; c=relaxed/simple;
	bh=L1/m3UVZCyk+ScG0LE/2fvksKX24JsimT5q08LcpUos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nJqtAU9uxZNLx53DdPZP+TD9GAsj7ub2oL05sGsnuYWFeKct99Dtz70wYzyUZ2boyXF+GQug3Iwyc4uMYvsKY0ZFbDfMbM0Tx76Biuwqj15zs3kJfKRFJIbJt4garwDvQmEV8WFohvEz1azJcfytVBcKOylrEC0etn96+mmcrRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKU6GPXs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17264C2BCAF;
	Thu, 23 Apr 2026 12:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776946313;
	bh=L1/m3UVZCyk+ScG0LE/2fvksKX24JsimT5q08LcpUos=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XKU6GPXsVD8VNjlATQ/lKhPoqB20RQJ7rOETYqqFR/X1Fjgdc/cyCZk5q9QIg4nzb
	 /jsd3o5oxP+h9ITB3Wgdy5aKNpnws+jgKz8+PFjRfnAavnz/WYHEGGd9P5c4uoQ1th
	 /Yk5NtlPIyBhbTD9JFVdv5GWgN1ysARNB9Nd4B87CjQ0ESoINyk4XyOB6v4g0vA/7e
	 qKsyWJ0KDMauEQZPTX63PV8jKnccEnzYDrroq6CZYYWzp+hsi6vpWjQoBYpn8ifR1V
	 hD10Ii0NxDPL5ASMlVlviLgn//+mIOHQXW4doH284MdstVc1EP/zzG1eZnE0AJJmHO
	 I2+uEH6ufxoQA==
Date: Thu, 23 Apr 2026 14:11:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, 
	Thomas Gleixner <tglx@linutronix.de>, Mark Rutland <mark.rutland@arm.com>, 
	Mathias Stearn <mathias@mongodb.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Chris Kennelly <ckennelly@google.com>, 
	regressions@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, 
	Michael Jeanson <mjeanson@efficios.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
Message-ID: <aeoLLMcxtqShSOxs@devuan>
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com>
 <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
 <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p6cum5clt6xozmtc"
Content-Disposition: inline
In-Reply-To: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5384-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[huawei.com,vger.kernel.org,linutronix.de,arm.com,mongodb.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MAILSPIKE_FAIL(0.00)[2600:3c15:e001:75::12fc:5321:query timed out];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,huawei.com:email]
X-Rspamd-Queue-Id: 2D8D0451CD8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--p6cum5clt6xozmtc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, 
	Thomas Gleixner <tglx@linutronix.de>, Mark Rutland <mark.rutland@arm.com>, 
	Mathias Stearn <mathias@mongodb.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Chris Kennelly <ckennelly@google.com>, 
	regressions@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, 
	Michael Jeanson <mjeanson@efficios.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
Message-ID: <aeoLLMcxtqShSOxs@devuan>
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com>
 <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
 <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>

Hello Dmitry,

On 2026-04-23T07:53:55+0200, Dmitry Vyukov wrote:
> On Thu, 23 Apr 2026 at 03:48, Jinjie Ruan <ruanjinjie@huawei.com> wrote:
> >
> > On 4/23/2026 3:47 AM, Thomas Gleixner wrote:
> > > On Wed, Apr 22 2026 at 19:11, Mark Rutland wrote:
> > >> On Wed, Apr 22, 2026 at 07:49:30PM +0200, Thomas Gleixner wrote:
> > >> Conceptually we just need to use syscall_enter_from_user_mode() and
> > >> irqentry_enter_from_user_mode() appropriately.
> > >
> > > Right. I figured that out.
> > >
> > >> In practice, I can't use those as-is without introducing the excepti=
on
> > >> masking problems I just fixed up for irqentry_enter_from_kernel_mode=
(),
> > >> so I'll need to do some similar refactoring first.
> > >
> > > See below.
> > >
> > >> I haven't paged everything in yet, so just to cehck, is there anythi=
ng
> > >> that would behave incorrectly if current->rseq.event.user_irq were s=
et
> > >> for syscall entry? IIUC it means we'll effectively do the slow path,=
 and
> > >> I was wondering if that might be acceptable as a one-line bodge for
> > >> stable.
> > >
> > > It might work, but it's trivial enough to avoid that. See below. That=
 on
> > > top of 6.19.y makes the selftests pass too.
> >
> > This aligns with my thoughts when convert arm64 to generic syscall
> > entry. Currently, the arm64 entry code does not distinguish between IRQ
> > and syscall entries. It fails to call rseq_note_user_irq_entry() for IRQ
> > entries as the generic entry framework does, because arm64 uses
> > enter_from_user_mode() exclusively instead of
> > irqentry_enter_from_user_mode().
> >
> > https://lore.kernel.org/all/20260320102620.1336796-10-ruanjinjie@huawei=
=2Ecom/
> >
> > >
> > > Thanks,
> > >
> > >         tglx
> > > ---
> > >  arch/arm64/kernel/entry-common.c |   14 ++++++++++----
> > >  1 file changed, 10 insertions(+), 4 deletions(-)
> > >
> > > --- a/arch/arm64/kernel/entry-common.c
> > > +++ b/arch/arm64/kernel/entry-common.c
> > > @@ -58,6 +58,12 @@ static void noinstr exit_to_kernel_mode(
> > >       irqentry_exit(regs, state);
> > >  }
> > >
> > > +static __always_inline void arm64_enter_from_user_mode_syscall(struc=
t pt_regs *regs)
> > > +{
> > > +     enter_from_user_mode(regs);
> > > +     mte_disable_tco_entry(current);
> > > +}
> > > +
> > >  /*
> > >   * Handle IRQ/context state management when entering from user mode.
> > >   * Before this function is called it is not safe to call regular ker=
nel code,
> > > @@ -65,8 +71,8 @@ static void noinstr exit_to_kernel_mode(
> > >   */
> > >  static __always_inline void arm64_enter_from_user_mode(struct pt_reg=
s *regs)
> > >  {
> > > -     enter_from_user_mode(regs);
> > > -     mte_disable_tco_entry(current);
> > > +     arm64_enter_from_user_mode_syscall(regs);
> > > +     rseq_note_user_irq_entry();
> > >  }
> > >
> > >  /*
> > > @@ -717,7 +723,7 @@ static void noinstr el0_brk64(struct pt_
> > >
> > >  static void noinstr el0_svc(struct pt_regs *regs)
> > >  {
> > > -     arm64_enter_from_user_mode(regs);
> > > +     arm64_enter_from_user_mode_syscall(regs);
> > >       cortex_a76_erratum_1463225_svc_handler();
> > >       fpsimd_syscall_enter();
> > >       local_daif_restore(DAIF_PROCCTX);
> > > @@ -869,7 +875,7 @@ static void noinstr el0_cp15(struct pt_r
> > >
> > >  static void noinstr el0_svc_compat(struct pt_regs *regs)
> > >  {
> > > -     arm64_enter_from_user_mode(regs);
> > > +     arm64_enter_from_user_mode_syscall(regs);
> > >       cortex_a76_erratum_1463225_svc_handler();
> > >       local_daif_restore(DAIF_PROCCTX);
> > >       do_el0_svc_compat(regs);
>=20
>=20
> +linux-man
>=20
> This part of the rseq man page needs to be fixed as well I think. The
> kernel no longer reliably provides clearing of rseq_cs on preemption,
> right?
>=20
> https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/rseq=
=2E2#n241

+Michael Jeanson

That page seems to be maintained separately, as part of the librseq
project.


Have a lovely day!
Alex

>=20
> "and set to NULL by the kernel when it restarts an assembly
> instruction sequence block,
> as well as when the kernel detects that it is preempting or delivering
> a signal outside of the range targeted by the rseq_cs."
>=20

--=20
<https://www.alejandro-colomar.es>

--p6cum5clt6xozmtc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnqDIEACgkQ64mZXMKQ
wqkOhw/8Da6UA2wKZoxp9Y5pCSiWonaGR0g8b/70AFpL2NKqXjUZ0BFITNjSuFzE
ieZst+w7in6RCa8NV7iEwTXriqqlUoyvkI8zhu3QVq3Z6L0BB7Nt82h3smtFxDXA
U2Nm9emTrEbTBvrUbWOre0+e0moB+9fPzodmfgBesnk1h3vcq2MgpokO6bqqhSTY
Y1iaKiiPY2P3nhtyyd3L/kCsQ2JezOBbkapiiOW5FRt5QiGxLBmfMxLVE3lWNGD+
JxQoMw/g1BjXEv8AG0E85eEjc+gHMOCJ9HvCOBDs1Vvi1EqjWoZFTI+tADmp9IMa
RgSZrliKss1nw2mfJ7rqii3BKxCGOFWqn7xT8MUO//V2D5ne+8TSiU2UCsTnlKJw
cwnFOshth/uWpK7olfNwvmcBfruwAFumSjgD96R9rytgz3TFTL+uGEWaEJCV1KcJ
LDPvNG/T1QgDr0CApWj2B3/GyxlIrYGs/6L3rUMQmXe11WmXMj+cFzFb5etWo9/H
vXuqELiJVuIsWTON2xm73lDZl5ca1Sgx9xLgDSOvqGsUhGJLP4V0Q0oC7n0Lh4Hx
92zGthChnwqyRA8Pyq67cdLjSm+L8QAGaWz1E/AuKfoKIGAe1TAePtJGcpl00BVI
hOla9OLx9xKHnq+62YuE2+l65wO4s0+tSUOAX//7fMMIBWeEUcQ=
=H2Wo
-----END PGP SIGNATURE-----

--p6cum5clt6xozmtc--

