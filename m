Return-Path: <linux-man+bounces-5047-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zvjsGnGDh2mwYwQAu9opvQ
	(envelope-from <linux-man+bounces-5047-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 19:24:49 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84126106D73
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 19:24:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA44230182BA
	for <lists+linux-man@lfdr.de>; Sat,  7 Feb 2026 18:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40C3E2F28E3;
	Sat,  7 Feb 2026 18:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWtuhhQf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CBA2E8B80
	for <linux-man@vger.kernel.org>; Sat,  7 Feb 2026 18:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770488685; cv=none; b=AVtgQFT/DfaC1ham93Gjb9vOgShbD/G5+SCnh4NeBlJ+W3QjdByKr89RVm5lC15bcboPfx/zL+6J4NURm2GLu47a46zUtaIszmPOVEB2J5x4UIO2S5kkUhY+Jl/HiINba3pyivL/2We9flEPaN2KdubKdYb04g+IDP+ANb/uFFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770488685; c=relaxed/simple;
	bh=2zQApHbGxtwEKKhoUEQv4tf+0iSVH/sg7u3JowOFjZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NwvThjKa0sH2pUkCJ0/7v/MjOgF+D/+mGXWiDDhUCQrOFC5gzCcm6qtN0w0F+36SA/Dj3BpdEeHCQmMl+SmQaeJzY6z+0RVI2LjPMzUlXrbUlS5pEF+1TH3mwp9SXfmMQiBNFUEF9+Vop7DrNoXCypSkQQOhhANBib9PJtVbSAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWtuhhQf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE128C116D0;
	Sat,  7 Feb 2026 18:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770488684;
	bh=2zQApHbGxtwEKKhoUEQv4tf+0iSVH/sg7u3JowOFjZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qWtuhhQfvYv1fcojJk+1FTSaBVbWJKuXmyNaxbGlSGSkWqniy6R2K0a5cQL29Se64
	 tIviWaj4LKMzvhqbmNGLAjk7xPwY+vPVFlkReQQBXMyAVMhbxoiq87UPp/pcJcaMOF
	 2cVS+LkrOxjFLQdPmpdZtNaIfmc9ASa0iye4jx03Av24aLoph+7IU+ZMa7eOiFsw/e
	 4cI3HH3oDk69lifrjNsNDC7OYwEez/GAS2W8jgGkw3UXWfqpBxnH1No5gutUZiwkTz
	 FHjdgu64X6jqImFOxYIvzcYu+tNXjE/jJ4NehpX/8DLQyg165iD7VjeSKCcbfvPgcV
	 X6GFiW2eLHTKw==
Date: Sat, 7 Feb 2026 19:24:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Marco Cavenati <Marco.Cavenati@eurecom.fr>
Cc: linux-man@vger.kernel.org, "Dmitry V . Levin" <ldv@strace.io>
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYeC8kND9IdpVhjd@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <b7719-69872900-3a1-7eae0380@49059473>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2rcghj3k77hnvws"
Content-Disposition: inline
In-Reply-To: <b7719-69872900-3a1-7eae0380@49059473>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5047-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gmx.de:email,mebeim.net:email,eurecom.fr:email]
X-Rspamd-Queue-Id: 84126106D73
X-Rspamd-Action: no action


--l2rcghj3k77hnvws
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Marco Cavenati <Marco.Cavenati@eurecom.fr>
Cc: linux-man@vger.kernel.org, "Dmitry V . Levin" <ldv@strace.io>
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYeC8kND9IdpVhjd@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <b7719-69872900-3a1-7eae0380@49059473>
MIME-Version: 1.0
In-Reply-To: <b7719-69872900-3a1-7eae0380@49059473>

Hi Marco,

On 2026-02-07T12:59:39+0100, Marco Cavenati wrote:
> Hi Alex,
>=20
> Gentle ping, just checking whether this patch got lost.
> Happy to revise if needed.

Thanks!  No, it didn't.  I was just too busy last week with a meeting of
the C Committee, plus the preparation before it, and also preparing a
release of the man-pages for this or next week.  I need some sleep for
a few days, and next week I'll be back at reviewing stuff.  :-)


Have a lovely night!
Alex

>=20
> Thanks
> Marco
>=20
> On Wednesday, January 21, 2026 16:55 CET, Marco Cavenati <Marco.Cavenati@=
eurecom.fr> wrote:
>=20
> > Add documentation for the new ptrace request PTRACE_SET_SYSCALL_INFO,
> > introduced in Linux 6.16.
> >=20
> > Add 'reserved' and 'flags' fields of struct ptrace_syscall_info.
> >=20
> > This description is based on kernel commit 26bb32768fe6552de044f782a58b=
3272073fbfc0
> > ("ptrace: introduce PTRACE_SET_SYSCALL_INFO request") by Dmitry V. Levi=
n.
> >=20
> > Signed-off-by: Marco Cavenati <Marco.Cavenati@eurecom.fr>
> > ---
> >  AUTHORS           |  1 +
> >  man/man2/ptrace.2 | 21 +++++++++++++++++++++
> >  2 files changed, 22 insertions(+)
> >=20
> > diff --git a/AUTHORS b/AUTHORS
> > index 9035d405a..f332932e1 100644
> > --- a/AUTHORS
> > +++ b/AUTHORS
> > @@ -497,6 +497,7 @@ Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> >  Marcela Maslanova <mmaslano@redhat.com>
> >  Marcin =C5=9Alusarz <marcin.slusarz@gmail.com>
> >  Marco Bonelli <marco@mebeim.net>
> > +Marco Cavenati <marco.cavenati@eurecom.fr>
> >  Marcus Folkesson <marcus.folkesson@gmail.com>
> >  Marcus Gelderie <redmnic@gmail.com>
> >  Marcus Huewe <suse-tux@gmx.de>
> > diff --git a/man/man2/ptrace.2 b/man/man2/ptrace.2
> > index 2da43dcb9..45d4c4c84 100644
> > --- a/man/man2/ptrace.2
> > +++ b/man/man2/ptrace.2
> > @@ -1042,6 +1042,8 @@ structure contains the following fields:
> >  .EX
> >  struct ptrace_syscall_info {
> >      __u8 op;        /* Type of system call stop */
> > +    __u8 reserved;  /* Reserved for future use, must be zero */
> > +    __u16 flags;    /* Reserved for future use, must be zero */
> >      __u32 arch;     /* AUDIT_ARCH_* value; see seccomp(2) */
> >      __u64 instruction_pointer; /* CPU instruction pointer */
> >      __u64 stack_pointer;    /* CPU stack pointer */
> > @@ -1121,6 +1123,25 @@ is limited to type
> >  unless
> >  .B PTRACE_O_TRACESYSGOOD
> >  option is set before the corresponding system call stop has occurred.
> > +.TP
> > +.BR PTRACE_SET_SYSCALL_INFO " (since Linux 6.16)"
> > +.\" commit 26bb32768fe6552de044f782a58b3272073fbfc0
> > +Modify information about the system call that caused the stop.
> > +The
> > +.I data
> > +argument is a pointer to
> > +.I struct ptrace_syscall_info
> > +that specifies the system call information to be set.
> > +The
> > +.I addr
> > +argument should be set to
> > +.IR "sizeof(struct ptrace_syscall_info)" .
> > +Only the
> > +.IR nr ,
> > +.IR args ,
> > +and
> > +.I rval
> > +fields can be modified.
> >  .\"
> >  .SS Death under ptrace
> >  When a (possibly multithreaded) process receives a killing signal
> > --=20
> > 2.51.0
> >
>=20

--=20
<https://www.alejandro-colomar.es>

--l2rcghj3k77hnvws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmHg2MACgkQ64mZXMKQ
wqk0nBAAo859IiIx9+xfn7Zb4hk5Aif0mv8owr2m3ctSSMbqoO42JfPXAMZoIwvm
xWSUy2C0M7YZY8S5WUNE8O+cRWJpwTDgIjxNevZ67Cf15rDJ1tp88LJiLD3nHqlj
Qx2F4I7iHIui4b1e87plb+R5mrGMvBbNBV8SDkd5salNCdMemjZ5+IT1RUAYydTX
eDEksW2SLtD7pFgh6MFP0+i937qGI65DT+5I8zzC19aCcyXhqoD5suxD29V0lbkx
6AGrseemjE15qqNhJkHYIn7r/UdtMlTwi77oH+p8FhoC2e6mg+ex/4AG7ZT7qK+i
rG/7XmWq0vppGeZBA0qdF3OiaJblsloOzQkxqhLxy99U01XCMmwYSF4yJ66J9p0F
cSaoYKjTdmKoRzf3rY7cuUPoMQq+o48y86tX6M0tlmJrWRTJHduEYzzlSyizvRkV
ziotK1YaPshPRaWlr6UD2Vlol75L9b0q2bJptBVBmPrZXrU04OMXBgEvOJ+zjgGD
hhP8djaT12Vo/lno10jQWLdoFWppOENzOKxyH6xh+IxHtjVVSAC8P2NyxWcz40TW
xGMUXS8XQlBG2pE+c9z6UIZmO3CAgdrc9MkQFM7dz9QtTC2E6PW04AzzD+GY1gJP
unWvhTLqFH7Y4JwIdT5hxpTp5Q7vK7RTrgD0+lofMTH7zbn0hHU=
=NRt8
-----END PGP SIGNATURE-----

--l2rcghj3k77hnvws--

