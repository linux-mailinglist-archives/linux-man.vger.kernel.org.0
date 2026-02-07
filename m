Return-Path: <linux-man+bounces-5045-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJq3EHcph2lRUgQAu9opvQ
	(envelope-from <linux-man+bounces-5045-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 13:00:55 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E98105CF7
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 13:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47FD9301AA5F
	for <lists+linux-man@lfdr.de>; Sat,  7 Feb 2026 12:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A21843019A6;
	Sat,  7 Feb 2026 12:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=eurecom.fr header.i=@eurecom.fr header.b="XSV7d2NX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.eurecom.fr (smtp.eurecom.fr [193.55.113.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440DF823DD
	for <linux-man@vger.kernel.org>; Sat,  7 Feb 2026 12:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.55.113.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770465652; cv=none; b=M656MUbSU9ZMqKzA2yoojziv06YmaollQniqK6TeowOWvkW1UVYYYnkwCGIaqn453TNlL4HEbZG9onLKnzPdn/JTuxhGkQa6BtOE3wZO66AioWd4nlSxjQmYVpR7rqyLNI3c0qj+A1+tttCGZ04zEAAWUYusCrgoHPbPghYM9Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770465652; c=relaxed/simple;
	bh=VpYHmuxdt67f86Ee4M/L3KjFy1PJbBzlyTBZgKtZvbE=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=IJxr0VKLQx7PpAgzifs8cryrK0fFCgtP6qWaUs1W4djjqBzJoM0VON4CExTWmaPJ2iEjAwUU1nMWlPtyHYsMqEpNua+ESQLOWWY4z5WUzNjOo7J54bRIN2ZL254JpDINFOCoaK1AgQfbZxYGFC2zD5Q8+cafvD86kWN0ohs3rhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eurecom.fr; spf=pass smtp.mailfrom=eurecom.fr; dkim=pass (1024-bit key) header.d=eurecom.fr header.i=@eurecom.fr header.b=XSV7d2NX; arc=none smtp.client-ip=193.55.113.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eurecom.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eurecom.fr
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=eurecom.fr; i=@eurecom.fr; q=dns/txt; s=default;
  t=1770465652; x=1802001652;
  h=from:in-reply-to:references:date:cc:to:mime-version:
   message-id:subject:content-transfer-encoding;
  bh=VpYHmuxdt67f86Ee4M/L3KjFy1PJbBzlyTBZgKtZvbE=;
  b=XSV7d2NXwjAjT0W8lDUQwIKGm41mYDvmPZRNBsgaL0IDlJoP2GG+/m0k
   YQ1lqRempq1+U8UzkDWyMsTosCDUUQOuavT4HomOUKC2JGrvOGSUW1ojr
   hYqGlL01YdGVEktjw/a1OF1rqF5GQ44U/xuWKgSmvj1M1RHPIDi9cRnDC
   w=;
X-CSE-ConnectionGUID: lTXD4hYbSjKhd8lzafsQYw==
X-CSE-MsgGUID: vbxewv1DQHixrT5MfZj4rg==
X-IronPort-AV: E=Sophos;i="6.21,278,1763420400"; 
   d="scan'208";a="4463471"
Received: from quovadis.eurecom.fr ([10.3.2.233])
  by drago1i.eurecom.fr with ESMTP; 07 Feb 2026 12:59:40 +0100
From: "Marco Cavenati" <Marco.Cavenati@eurecom.fr>
In-Reply-To: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
Content-Type: text/plain; charset="utf-8"
X-Forward: 80.239.186.180
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
Date: Sat, 07 Feb 2026 12:59:39 +0100
Cc: linux-man@vger.kernel.org, =?utf-8?q?Dmitry_V_=2E_Levin?= <ldv@strace.io>
To: "Alejandro Colomar" <alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <b7719-69872900-3a1-7eae0380@49059473>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?man/man2/ptrace=2E2=3A?= Add 
 =?utf-8?q?PTRACE=5FSET=5FSYSCALL=5FINFO=2C?= update struct 
 =?utf-8?q?ptrace=5Fsyscall=5Finfo?=
User-Agent: SOGoMail 5.12.1
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.74 / 15.00];
	SUBJ_EXCESS_QP(1.20)[];
	CC_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[eurecom.fr,none];
	R_DKIM_ALLOW(-0.20)[eurecom.fr:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5045-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Marco.Cavenati@eurecom.fr,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[eurecom.fr:+];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,eurecom.fr:email,eurecom.fr:dkim,mebeim.net:email]
X-Rspamd-Queue-Id: 99E98105CF7
X-Rspamd-Action: no action

Hi Alex,

Gentle ping, just checking whether this patch got lost.
Happy to revise if needed.

Thanks
Marco

On Wednesday, January 21, 2026 16:55 CET, Marco Cavenati <Marco.Cavenat=
i@eurecom.fr> wrote:

> Add documentation for the new ptrace request PTRACE=5FSET=5FSYSCALL=5F=
INFO,
> introduced in Linux 6.16.
>=20
> Add 'reserved' and 'flags' fields of struct ptrace=5Fsyscall=5Finfo.
>=20
> This description is based on kernel commit 26bb32768fe6552de044f782a5=
8b3272073fbfc0
> ("ptrace: introduce PTRACE=5FSET=5FSYSCALL=5FINFO request") by Dmitry=
 V. Levin.
>=20
> Signed-off-by: Marco Cavenati <Marco.Cavenati@eurecom.fr>
> ---
>  AUTHORS           |  1 +
>  man/man2/ptrace.2 | 21 +++++++++++++++++++++
>  2 files changed, 22 insertions(+)
>=20
> diff --git a/AUTHORS b/AUTHORS
> index 9035d405a..f332932e1 100644
> --- a/AUTHORS
> +++ b/AUTHORS
> @@ -497,6 +497,7 @@ Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.c=
om>
>  Marcela Maslanova <mmaslano@redhat.com>
>  Marcin =C5=9Alusarz <marcin.slusarz@gmail.com>
>  Marco Bonelli <marco@mebeim.net>
> +Marco Cavenati <marco.cavenati@eurecom.fr>
>  Marcus Folkesson <marcus.folkesson@gmail.com>
>  Marcus Gelderie <redmnic@gmail.com>
>  Marcus Huewe <suse-tux@gmx.de>
> diff --git a/man/man2/ptrace.2 b/man/man2/ptrace.2
> index 2da43dcb9..45d4c4c84 100644
> --- a/man/man2/ptrace.2
> +++ b/man/man2/ptrace.2
> @@ -1042,6 +1042,8 @@ structure contains the following fields:
>  .EX
>  struct ptrace=5Fsyscall=5Finfo {
>      =5F=5Fu8 op;        /* Type of system call stop */
> +    =5F=5Fu8 reserved;  /* Reserved for future use, must be zero */
> +    =5F=5Fu16 flags;    /* Reserved for future use, must be zero */
>      =5F=5Fu32 arch;     /* AUDIT=5FARCH=5F* value; see seccomp(2) */
>      =5F=5Fu64 instruction=5Fpointer; /* CPU instruction pointer */
>      =5F=5Fu64 stack=5Fpointer;    /* CPU stack pointer */
> @@ -1121,6 +1123,25 @@ is limited to type
>  unless
>  .B PTRACE=5FO=5FTRACESYSGOOD
>  option is set before the corresponding system call stop has occurred=
.
> +.TP
> +.BR PTRACE=5FSET=5FSYSCALL=5FINFO " (since Linux 6.16)"
> +.\" commit 26bb32768fe6552de044f782a58b3272073fbfc0
> +Modify information about the system call that caused the stop.
> +The
> +.I data
> +argument is a pointer to
> +.I struct ptrace=5Fsyscall=5Finfo
> +that specifies the system call information to be set.
> +The
> +.I addr
> +argument should be set to
> +.IR "sizeof(struct ptrace=5Fsyscall=5Finfo)" .
> +Only the
> +.IR nr ,
> +.IR args ,
> +and
> +.I rval
> +fields can be modified.
>  .\"
>  .SS Death under ptrace
>  When a (possibly multithreaded) process receives a killing signal
> --=20
> 2.51.0
>


