Return-Path: <linux-man+bounces-5048-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD9bOJOGh2lRZAQAu9opvQ
	(envelope-from <linux-man+bounces-5048-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 19:38:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CA5106E12
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 19:38:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AC6E3017C25
	for <lists+linux-man@lfdr.de>; Sat,  7 Feb 2026 18:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4BFD2E090B;
	Sat,  7 Feb 2026 18:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=eurecom.fr header.i=@eurecom.fr header.b="flfnaNvd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.eurecom.fr (smtp.eurecom.fr [193.55.113.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584A31482E8
	for <linux-man@vger.kernel.org>; Sat,  7 Feb 2026 18:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.55.113.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770489488; cv=none; b=KtjQw1IFTk/kOPzg+E+BmfqzH6UbZPjHmkJ58KyzKrbjnD98A1NILi6+lFyDidbtQzqGEGX06YTk8S6yCkhYYUdfH4fakOgUvYehdQTHRFU6Lp+C84lJTT1zQX0iu4NdMmx5vXoTDZFOgU+PCRwjB5PfxlFur6Z3hCyjI56cq4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770489488; c=relaxed/simple;
	bh=ofdOaeQvHtL4EEmue5+ogcXxxQUEceEdOVPRKmOm40g=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=kf3tnkCwWxvGSC9dJ66cys3WmGgvC+s6xo/lzfR7Z5kJCM5FMIVclpaVJUSZkroTRB71f9JEqvSR23psDS/QV2ptu0q/rF6yxGDx/GfRqfbeZwcy3QlaQK5a/TshTQZpoJzTIawS2tQDPL5anYQFpoG3xxK8pQZCe5ALoDzXGk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eurecom.fr; spf=pass smtp.mailfrom=eurecom.fr; dkim=pass (1024-bit key) header.d=eurecom.fr header.i=@eurecom.fr header.b=flfnaNvd; arc=none smtp.client-ip=193.55.113.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eurecom.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eurecom.fr
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=eurecom.fr; i=@eurecom.fr; q=dns/txt; s=default;
  t=1770489488; x=1802025488;
  h=from:in-reply-to:references:date:cc:to:mime-version:
   message-id:subject:content-transfer-encoding;
  bh=ofdOaeQvHtL4EEmue5+ogcXxxQUEceEdOVPRKmOm40g=;
  b=flfnaNvdmnmoxnXxnzI8QjMrWqMM7BzRj+RfDTLMPlKOOndkBek95r+O
   tGNu8przUtYCfy51xk8iHS032Y+x9yNVOQr95r/SuO8JeOr+YjDFHfubi
   UqDzqFAIRhFlZpgXlWeDQr1T1mUEDzQJd5K2U0CX6HSYLXiTwjjLBZieT
   g=;
X-CSE-ConnectionGUID: ick3AjwpRMOhixku7WD5Cg==
X-CSE-MsgGUID: fe5bKwbuSdqMehpagDGr9A==
X-IronPort-AV: E=Sophos;i="6.21,278,1763420400"; 
   d="scan'208";a="4464241"
Received: from quovadis.eurecom.fr ([10.3.2.233])
  by drago1i.eurecom.fr with ESMTP; 07 Feb 2026 19:38:05 +0100
From: "Marco Cavenati" <Marco.Cavenati@eurecom.fr>
In-Reply-To: <aYeC8kND9IdpVhjd@devuan>
Content-Type: text/plain; charset="utf-8"
X-Forward: 80.239.186.181
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <b7719-69872900-3a1-7eae0380@49059473> <aYeC8kND9IdpVhjd@devuan>
Date: Sat, 07 Feb 2026 19:38:05 +0100
Cc: linux-man@vger.kernel.org
To: "Alejandro Colomar" <alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <1289f8-69878680-d-5ad93100@55913802>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?man/man2/ptrace=2E2=3A?= Add 
 =?utf-8?q?PTRACE=5FSET=5FSYSCALL=5FINFO=2C?= update struct 
 =?utf-8?q?ptrace=5Fsyscall=5Finfo?=
User-Agent: SOGoMail 5.12.1
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[eurecom.fr,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[eurecom.fr:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5048-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Marco.Cavenati@eurecom.fr,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[eurecom.fr:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mebeim.net:email,eurecom.fr:email,eurecom.fr:dkim,gmx.de:email]
X-Rspamd-Queue-Id: E6CA5106E12
X-Rspamd-Action: no action

Well in that case, I wish you a great and recharging rest!
And sorry for the ping :)

Marco

On Saturday, February 07, 2026 19:24 CET, Alejandro Colomar <alx@kernel=
.org> wrote:

> Hi Marco,
>=20
> On 2026-02-07T12:59:39+0100, Marco Cavenati wrote:
> > Hi Alex,
> >=20
> > Gentle ping, just checking whether this patch got lost.
> > Happy to revise if needed.
>=20
> Thanks!  No, it didn't.  I was just too busy last week with a meeting=
 of
> the C Committee, plus the preparation before it, and also preparing a
> release of the man-pages for this or next week.  I need some sleep fo=
r
> a few days, and next week I'll be back at reviewing stuff.  :-)
>=20
>=20
> Have a lovely night!
> Alex
>=20
> >=20
> > Thanks
> > Marco
> >=20
> > On Wednesday, January 21, 2026 16:55 CET, Marco Cavenati <Marco.Cav=
enati@eurecom.fr> wrote:
> >=20
> > > Add documentation for the new ptrace request PTRACE=5FSET=5FSYSCA=
LL=5FINFO,
> > > introduced in Linux 6.16.
> > >=20
> > > Add 'reserved' and 'flags' fields of struct ptrace=5Fsyscall=5Fin=
fo.
> > >=20
> > > This description is based on kernel commit 26bb32768fe6552de044f7=
82a58b3272073fbfc0
> > > ("ptrace: introduce PTRACE=5FSET=5FSYSCALL=5FINFO request") by Dm=
itry V. Levin.
> > >=20
> > > Signed-off-by: Marco Cavenati <Marco.Cavenati@eurecom.fr>
> > > ---
> > >  AUTHORS           |  1 +
> > >  man/man2/ptrace.2 | 21 +++++++++++++++++++++
> > >  2 files changed, 22 insertions(+)
> > >=20
> > > diff --git a/AUTHORS b/AUTHORS
> > > index 9035d405a..f332932e1 100644
> > > --- a/AUTHORS
> > > +++ b/AUTHORS
> > > @@ -497,6 +497,7 @@ Marc-Andr=C3=A9 Lureau <marcandre.lureau@redh=
at.com>
> > >  Marcela Maslanova <mmaslano@redhat.com>
> > >  Marcin =C5=9Alusarz <marcin.slusarz@gmail.com>
> > >  Marco Bonelli <marco@mebeim.net>
> > > +Marco Cavenati <marco.cavenati@eurecom.fr>
> > >  Marcus Folkesson <marcus.folkesson@gmail.com>
> > >  Marcus Gelderie <redmnic@gmail.com>
> > >  Marcus Huewe <suse-tux@gmx.de>
> > > diff --git a/man/man2/ptrace.2 b/man/man2/ptrace.2
> > > index 2da43dcb9..45d4c4c84 100644
> > > --- a/man/man2/ptrace.2
> > > +++ b/man/man2/ptrace.2
> > > @@ -1042,6 +1042,8 @@ structure contains the following fields:
> > >  .EX
> > >  struct ptrace=5Fsyscall=5Finfo {
> > >      =5F=5Fu8 op;        /* Type of system call stop */
> > > +    =5F=5Fu8 reserved;  /* Reserved for future use, must be zero=
 */
> > > +    =5F=5Fu16 flags;    /* Reserved for future use, must be zero=
 */
> > >      =5F=5Fu32 arch;     /* AUDIT=5FARCH=5F* value; see seccomp(2=
) */
> > >      =5F=5Fu64 instruction=5Fpointer; /* CPU instruction pointer =
*/
> > >      =5F=5Fu64 stack=5Fpointer;    /* CPU stack pointer */
> > > @@ -1121,6 +1123,25 @@ is limited to type
> > >  unless
> > >  .B PTRACE=5FO=5FTRACESYSGOOD
> > >  option is set before the corresponding system call stop has occu=
rred.
> > > +.TP
> > > +.BR PTRACE=5FSET=5FSYSCALL=5FINFO " (since Linux 6.16)"
> > > +.\" commit 26bb32768fe6552de044f782a58b3272073fbfc0
> > > +Modify information about the system call that caused the stop.
> > > +The
> > > +.I data
> > > +argument is a pointer to
> > > +.I struct ptrace=5Fsyscall=5Finfo
> > > +that specifies the system call information to be set.
> > > +The
> > > +.I addr
> > > +argument should be set to
> > > +.IR "sizeof(struct ptrace=5Fsyscall=5Finfo)" .
> > > +Only the
> > > +.IR nr ,
> > > +.IR args ,
> > > +and
> > > +.I rval
> > > +fields can be modified.
> > >  .\"
> > >  .SS Death under ptrace
> > >  When a (possibly multithreaded) process receives a killing signa=
l
> > > --=20
> > > 2.51.0
> > >
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>


