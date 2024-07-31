Return-Path: <linux-man+bounces-1557-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AC201942C57
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 12:48:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18FCFB23424
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 10:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04AAF1AC445;
	Wed, 31 Jul 2024 10:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSRUkih4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A411AC43C
	for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 10:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722422863; cv=none; b=ZToT7LxPVEdczZtfWnjg8ScgYDeY9hrxxwhDjNjF7ZFitn2iUAy50YkP7PLghE8hFrrcZoouJxhinT6Zytvb9jbynExR5k4a+kLj0oA+JYoISufSH6soxg8DQDJnkelKdWIANTJwuxEYucOcqGGuFanMr+Md17+uzMY/m2paEtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722422863; c=relaxed/simple;
	bh=htRrBWV+OhYt0CcgDC40e5vXeBvahp6+Ct9GDHwvP/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pQrIBb9FHYJVGXilKCPk0yOVwpw2Vj/ZrrNK5+1NNV9IvLCrjr+rOyJHhJmHrahrs/ZdIn5wg24fWLz8G7pG7ZKKtodhNEWDStnMzmMBlvolpRRxj61vHKwwrBuVLkPzaub1sKoLwm4OvotVOePrd0xxiO12Rpw5V9aTQ+Op5cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSRUkih4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA30BC116B1;
	Wed, 31 Jul 2024 10:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722422863;
	bh=htRrBWV+OhYt0CcgDC40e5vXeBvahp6+Ct9GDHwvP/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aSRUkih4gHrMN3b7G3Vth6r8IMc5rCTRHEWYpalg9+fx50w3CCwGkhw5F9F3HE6FQ
	 4I8NCZ7QUjn6nDVj3RSekmunVQzYxuxwe2CWg9UM3x0LV5XsyBv0CPI6Sc9FyLRkXe
	 gT23ulvpjlEOuKicEFq3tcNkVAxuwSMERy35IHTiLsWSIj2slggRhWHz8++QBccuza
	 XA+YevxkENiN7O7kqJeP7IJaRc1EEst+WI6qfIA+Ap1I/gIgPYnYiXnAfF4NmtVZ6d
	 Lj9t92J/baLnIbUpGxX5IyVuKmZ+ugmSx4JolK2VcDMGJd7R02IGRyFaERqw2oT8Aa
	 Ffk6HsOWIEYfQ==
Date: Wed, 31 Jul 2024 12:47:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man2/syscalls.2: srcfix (2/3)
Message-ID: <gepnzk333mqp7kp4d7t7ptfsa27c2kyyxrey7ibote663moi57@cwucfafpb57c>
References: <20240727192752.hxxo4nl52qyskb2u@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tino5fui2feeueyc"
Content-Disposition: inline
In-Reply-To: <20240727192752.hxxo4nl52qyskb2u@illithid>


--tino5fui2feeueyc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man2/syscalls.2: srcfix (2/3)
References: <20240727192752.hxxo4nl52qyskb2u@illithid>
MIME-Version: 1.0
In-Reply-To: <20240727192752.hxxo4nl52qyskb2u@illithid>

Hi Branden,

On Sat, Jul 27, 2024 at 02:27:52PM GMT, G. Branden Robinson wrote:
> Migrate table entries from using font selection escape sequences to font
> alternation macros to set man page cross references.
>=20
> This change was automatically driven by the following sed(1) script.
>=20
> $ cat fix-syscall-table-2.sed
> \# Rewrite man page cross references on tbl(1) rows that precede text
> \# blocks to themselves use text blocks, and convert them to use man(7)
> \# macros instead of troff(1) font selection escape sequences (which
> \# cannot be done outside a text block).
> /^\.\\"/b
> /^\\fB[^\\]*\\fP([0-9][a-z]*).*T{/s/\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\(=
=2E*\)/T{\
> .BR \1 \2\
> T}\3/
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---

I've applied this patch.  Thanks!

Cheers,
Alex

>  man/man2/syscalls.2 | 260 +++++++++++++++++++++++++++++++++-----------
>  1 file changed, 195 insertions(+), 65 deletions(-)
>=20
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index c8afd537b..ed8a21b77 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -146,7 +146,9 @@ .SS System call list
>  \fB_llseek\fP(2)	1.2
>  \fB_newselect\fP(2)	2.0
>  \fB_sysctl\fP(2)	2.0	Removed in 5.5
> -\fBaccept\fP(2)	2.0	T{
> +T{
> +.BR accept (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBaccept4\fP(2)	2.6.28
> @@ -162,22 +164,30 @@ .SS System call list
>  .\" 91e040a79df73d371f70792f30380d4e44805250
>  \fBarc_usr_cmpxchg\fP(2)	4.9	ARC only
>  .\" x86: 79170fda313ed5be2394f87aa2a00d597f8ed4a1
> -\fBarch_prctl\fP(2)	2.6	T{
> +T{
> +.BR arch_prctl (2)
> +T}	2.6	T{
>  x86_64, x86 since 4.12
>  T}
>  .\" 9674cdc74d63f346870943ef966a034f8c71ee57
>  \fBatomic_barrier\fP(2)	2.6.34	m68k only
>  \fBatomic_cmpxchg_32\fP(2)	2.6.34	m68k only
> -\fBbdflush\fP(2)	1.2	T{
> +T{
> +.BR bdflush (2)
> +T}	1.2	T{
>  Deprecated (does nothing)
>  since 2.6
>  T}
> -\fBbind\fP(2)	2.0	T{
> +T{
> +.BR bind (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBbpf\fP(2)	3.18
>  \fBbrk\fP(2)	1.0
> -\fBbreakpoint\fP(2)	2.2	T{
> +T{
> +.BR breakpoint (2)
> +T}	2.2	T{
>  ARM OABI only, defined with
>  \fB__ARM_NR\fP prefix
>  T}
> @@ -186,7 +196,9 @@ .SS System call list
>  \fBcapset\fP(2)	2.2
>  \fBchdir\fP(2)	1.0
>  \fBchmod\fP(2)	1.0
> -\fBchown\fP(2)	2.2	T{
> +T{
> +.BR chown (2)
> +T}	2.2	T{
>  See
>  .BR chown (2)
>  for
> @@ -215,7 +227,9 @@ .SS System call list
>  .\" T}
>  .\" 867e359b97c970a60626d5d76bbe2a8fadbf38fb
>  .\" bb9d812643d8a121df7d614a2b9c60193a92deb0
> -\fBconnect\fP(2)	2.0	T{
> +T{
> +.BR connect (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBcopy_file_range\fP(2)	4.5
> @@ -235,7 +249,9 @@ .SS System call list
>  \fBepoll_wait\fP(2)	2.6
>  \fBeventfd\fP(2)	2.6.22
>  \fBeventfd2\fP(2)	2.6.27
> -\fBexecv\fP(2)	2.0	T{
> +T{
> +.BR execv (2)
> +T}	2.0	T{
>  SPARC/SPARC64 only, for
>  compatibility with SunOS
>  T}
> @@ -289,7 +305,9 @@ .SS System call list
>  \fBget_robust_list\fP(2)	2.6.17
>  \fBget_thread_area\fP(2)	2.6
>  .\" 8fcd6c45f5a65621ec809b7866a3623e9a01d4ed
> -\fBget_tls\fP(2)	4.15	T{
> +T{
> +.BR get_tls (2)
> +T}	4.15	T{
>  ARM OABI only, has
>  \fB__ARM_NR\fP prefix
>  T}
> @@ -298,13 +316,17 @@ .SS System call list
>  \fBgetdents\fP(2)	2.0
>  \fBgetdents64\fP(2)	2.4
>  .\" parisc: 863722e856e64dae0e252b6bb546737c6c5626ce
> -\fBgetdomainname\fP(2)	2.2	T{
> +T{
> +.BR getdomainname (2)
> +T}	2.2	T{
>  SPARC, SPARC64; available
>  as \fBosf_getdomainname\fP(2)
>  on Alpha since Linux 2.0
>  T}
>  .\" ec98c6b9b47df6df1c1fa6cf3d427414f8c2cf16
> -\fBgetdtablesize\fP(2)	2.0	T{
> +T{
> +.BR getdtablesize (2)
> +T}	2.0	T{
>  SPARC (removed in 2.6.26),
>  available on Alpha as
>  \fBosf_getdtablesize\fP(2)
> @@ -318,15 +340,21 @@ .SS System call list
>  \fBgetgroups\fP(2)	1.0
>  \fBgetgroups32\fP(2)	2.4
>  .\" SPARC removal: ec98c6b9b47df6df1c1fa6cf3d427414f8c2cf16
> -\fBgethostname\fP(2)	2.0	T{
> +T{
> +.BR gethostname (2)
> +T}	2.0	T{
>  Alpha, was available on
>  SPARC up to Linux 2.6.26
>  T}
>  \fBgetitimer\fP(2)	1.0
> -\fBgetpeername\fP(2)	2.0	T{
> +T{
> +.BR getpeername (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
> -\fBgetpagesize\fP(2)	2.0	T{
> +T{
> +.BR getpagesize (2)
> +T}	2.0	T{
>  Alpha, SPARC/SPARC64 only
>  T}
>  \fBgetpgid\fP(2)	1.0
> @@ -342,27 +370,39 @@ .SS System call list
>  \fBgetrlimit\fP(2)	1.0
>  \fBgetrusage\fP(2)	1.0
>  \fBgetsid\fP(2)	2.0
> -\fBgetsockname\fP(2)	2.0	T{
> +T{
> +.BR getsockname (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
> -\fBgetsockopt\fP(2)	2.0	T{
> +T{
> +.BR getsockopt (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBgettid\fP(2)	2.4.11
>  \fBgettimeofday\fP(2)	1.0
>  \fBgetuid\fP(2)	1.0
>  \fBgetuid32\fP(2)	2.4
> -\fBgetunwind\fP(2)	2.4.8	T{
> +T{
> +.BR getunwind (2)
> +T}	2.4.8	T{
>  IA-64 only; deprecated
>  T}
>  \fBgetxattr\fP(2)	2.6; 2.4.18
> -\fBgetxgid\fP(2)	2.0	T{
> +T{
> +.BR getxgid (2)
> +T}	2.0	T{
>  Alpha only; see NOTES
>  T}
> -\fBgetxpid\fP(2)	2.0	T{
> +T{
> +.BR getxpid (2)
> +T}	2.0	T{
>  Alpha only; see NOTES
>  T}
> -\fBgetxuid\fP(2)	2.0	T{
> +T{
> +.BR getxuid (2)
> +T}	2.0	T{
>  Alpha only; see NOTES
>  T}
>  \fBinit_module\fP(2)	1.0
> @@ -399,7 +439,9 @@ .SS System call list
>  \fBlandlock_add_rule\fP(2)	5.13
>  \fBlandlock_create_ruleset\fP(2)	5.13
>  \fBlandlock_restrict_self\fP(2)	5.13
> -\fBlchown\fP(2)	1.0	T{
> +T{
> +.BR lchown (2)
> +T}	1.0	T{
>  See
>  .BR chown (2)
>  for
> @@ -409,7 +451,9 @@ .SS System call list
>  \fBlgetxattr\fP(2)	2.6; 2.4.18
>  \fBlink\fP(2)	1.0
>  \fBlinkat\fP(2)	2.6.16
> -\fBlisten\fP(2)	2.0	T{
> +T{
> +.BR listen (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBlistxattr\fP(2)	2.6; 2.4.18
> @@ -452,16 +496,24 @@ .SS System call list
>  \fBmq_timedsend\fP(2)	2.6.6
>  \fBmq_unlink\fP(2)	2.6.6
>  \fBmremap\fP(2)	2.0
> -\fBmsgctl\fP(2)	2.0	T{
> +T{
> +.BR msgctl (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBmsgget\fP(2)	2.0	T{
> +T{
> +.BR msgget (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBmsgrcv\fP(2)	2.0	T{
> +T{
> +.BR msgrcv (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBmsgsnd\fP(2)	2.0	T{
> +T{
> +.BR msgsnd (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
>  \fBmsync\fP(2)	2.0
> @@ -473,15 +525,21 @@ .SS System call list
>  \fBname_to_handle_at\fP(2)	2.6.39
>  \fBnanosleep\fP(2)	2.0
>  .\" 5590ff0d5528b60153c0b4e7b771472b5a95e297
> -\fBnewfstatat\fP(2)	2.6.16	T{
> +T{
> +.BR newfstatat (2)
> +T}	2.6.16	T{
>  See \fBstat\fP(2)
>  T}
>  \fBnfsservctl\fP(2)	2.2	Removed in 3.1
>  \fBnice\fP(2)	1.0
> -\fBold_adjtimex\fP(2)	2.0	T{
> +T{
> +.BR old_adjtimex (2)
> +T}	2.0	T{
>  Alpha only; see NOTES
>  T}
> -\fBold_getrlimit\fP(2)	2.4	T{
> +T{
> +.BR old_getrlimit (2)
> +T}	2.4	T{
>  Old variant of \fBgetrlimit\fP(2)
>  that used a different value
>  for \fBRLIM_INFINITY\fP
> @@ -490,7 +548,9 @@ .SS System call list
>  \fBoldlstat\fP(2)	1.0
>  \fBoldolduname\fP(2)	1.0
>  \fBoldstat\fP(2)	1.0
> -\fBoldumount\fP(2)	2.4.116	T{
> +T{
> +.BR oldumount (2)
> +T}	2.4.116	T{
>  Name of the old \fBumount\fP(2)
>  syscall on Alpha
>  T}
> @@ -501,7 +561,9 @@ .SS System call list
>  \fBopenat\fP(2)	2.6.16
>  \fBopenat2\fP(2)	5.6
>  .\" 9d02a4283e9ce4e9ca11ff00615bdacdb0515a1a
> -\fBor1k_atomic\fP(2)	3.1	T{
> +T{
> +.BR or1k_atomic (2)
> +T}	3.1	T{
>  OpenRISC 1000 only
>  T}
>  \fBpause\fP(2)	1.0
> @@ -511,12 +573,16 @@ .SS System call list
>  .\" , PowerPC, ARM; not x86
>  \fBpciconfig_write\fP(2)	2.0.26; 2.2	Not on x86
>  .\" , PowerPC, ARM; not x86
> -\fBperf_event_open\fP(2)	2.6.31	T{
> +T{
> +.BR perf_event_open (2)
> +T}	2.6.31	T{
>  Was perf_counter_open() in
>  2.6.31; renamed in 2.6.32
>  T}
>  \fBpersonality\fP(2)	1.2
> -\fBperfctr\fP(2)	2.2	T{
> +T{
> +.BR perfctr (2)
> +T}	2.2	T{
>  SPARC only; removed in 2.6.34
>  T}
>  .\"	commit c7d5a0050773e98d1094eaa9f2a1a793fafac300 removed perfctr()
> @@ -533,7 +599,9 @@ .SS System call list
>  \fBpoll\fP(2)	2.0.36; 2.2
>  \fBppoll\fP(2)	2.6.16
>  \fBprctl\fP(2)	2.2
> -\fBpread64\fP(2)		T{
> +T{
> +.BR pread64 (2)
> +T}		T{
>  Added as "pread" in 2.2;
>  renamed "pread64" in 2.6
>  T}
> @@ -546,7 +614,9 @@ .SS System call list
>  \fBpselect6\fP(2)	2.6.16
>  .\" Implements \fBpselect\fP(2)
>  \fBptrace\fP(2)	1.0
> -\fBpwrite64\fP(2)		T{
> +T{
> +.BR pwrite64 (2)
> +T}		T{
>  Added as "pwrite" in 2.2;
>  renamed "pwrite64" in 2.6
>  T}
> @@ -563,17 +633,25 @@ .SS System call list
>  \fBreadlinkat\fP(2)	2.6.16
>  \fBreadv\fP(2)	2.0
>  \fBreboot\fP(2)	1.0
> -\fBrecv\fP(2)	2.0	T{
> +T{
> +.BR recv (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
> -\fBrecvfrom\fP(2)	2.0	T{
> +T{
> +.BR recvfrom (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
> -\fBrecvmsg\fP(2)	2.0	T{
> +T{
> +.BR recvmsg (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBrecvmmsg\fP(2)	2.6.33
> -\fBremap_file_pages\fP(2)	2.6	T{
> +T{
> +.BR remap_file_pages (2)
> +T}	2.6	T{
>  Deprecated since 3.16
>  T}
>  \fBremovexattr\fP(2)	2.6; 2.4.18
> @@ -594,7 +672,9 @@ .SS System call list
>  \fBrt_sigsuspend\fP(2)	2.2
>  \fBrt_sigtimedwait\fP(2)	2.2
>  \fBrt_tgsigqueueinfo\fP(2)	2.6.31
> -\fBrtas\fP(2)	2.6.2	T{
> +T{
> +.BR rtas (2)
> +T}	2.6.2	T{
>  PowerPC/PowerPC64 only
>  T}
>  \fBs390_runtime_instr\fP(2)	3.7	s390 only
> @@ -602,7 +682,9 @@ .SS System call list
>  \fBs390_pci_mmio_write\fP(2)	3.19	s390 only
>  \fBs390_sthyi\fP(2)	4.15	s390 only
>  \fBs390_guarded_storage\fP(2)	4.12	s390 only
> -\fBsched_get_affinity\fP(2)	2.6	T{
> +T{
> +.BR sched_get_affinity (2)
> +T}	2.6	T{
>  Name of
>  .BR \%sched_getaffinity (2)
>  on SPARC and SPARC64
> @@ -614,7 +696,9 @@ .SS System call list
>  \fBsched_getparam\fP(2)	2.0
>  \fBsched_getscheduler\fP(2)	2.0
>  \fBsched_rr_get_interval\fP(2)	2.0
> -\fBsched_set_affinity\fP(2)	2.6	T{
> +T{
> +.BR sched_set_affinity (2)
> +T}	2.6	T{
>  Name of
>  .BR \%sched_setaffinity (2)
>  on SPARC and SPARC64
> @@ -626,33 +710,47 @@ .SS System call list
>  \fBsched_yield\fP(2)	2.0
>  \fBseccomp\fP(2)	3.17
>  \fBselect\fP(2)	1.0
> -\fBsemctl\fP(2)	2.0	T{
> +T{
> +.BR semctl (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBsemget\fP(2)	2.0	T{
> +T{
> +.BR semget (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBsemop\fP(2)	2.0	T{
> +T{
> +.BR semop (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
>  \fBsemtimedop\fP(2)	2.6; 2.4.22
> -\fBsend\fP(2)	2.0	T{
> +T{
> +.BR send (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBsendfile\fP(2)	2.2
>  \fBsendfile64\fP(2)	2.6; 2.4.19
>  \fBsendmmsg\fP(2)	3.0
> -\fBsendmsg\fP(2)	2.0	T{
> +T{
> +.BR sendmsg (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
> -\fBsendto\fP(2)	2.0	T{
> +T{
> +.BR sendto (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBset_mempolicy\fP(2)	2.6.6
>  \fBset_robust_list\fP(2)	2.6.17
>  \fBset_thread_area\fP(2)	2.6
>  \fBset_tid_address\fP(2)	2.6
> -\fBset_tls\fP(2)	2.6.11	T{
> +T{
> +.BR set_tls (2)
> +T}	2.6.11	T{
>  ARM OABI/EABI only (constant
>  has \fB__ARM_NR\fP prefix)
>  T}
> @@ -675,14 +773,18 @@ .SS System call list
>  \fBsetgroups\fP(2)	1.0
>  \fBsetgroups32\fP(2)	2.4
>  .\" arch/alpha/include/asm/core_lca.h
> -\fBsethae\fP(2)	2.0	T{
> +T{
> +.BR sethae (2)
> +T}	2.0	T{
>  Alpha only; see NOTES
>  T}
>  \fBsethostname\fP(2)	1.0
>  \fBsetitimer\fP(2)	1.0
>  \fBsetns\fP(2)	3.0
>  \fBsetpgid\fP(2)	1.0
> -\fBsetpgrp\fP(2)	2.0	T{
> +T{
> +.BR setpgrp (2)
> +T}	2.0	T{
>  Alternative name for
>  .BR setpgid (2)
>  on Alpha
> @@ -698,7 +800,9 @@ .SS System call list
>  \fBsetreuid32\fP(2)	2.4
>  \fBsetrlimit\fP(2)	1.0
>  \fBsetsid\fP(2)	1.0
> -\fBsetsockopt\fP(2)	2.0	T{
> +T{
> +.BR setsockopt (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBsettimeofday\fP(2)	1.0
> @@ -707,19 +811,29 @@ .SS System call list
>  \fBsetup\fP(2)	1.0	Removed in 2.2
>  \fBsetxattr\fP(2)	2.6; 2.4.18
>  \fBsgetmask\fP(2)	1.0
> -\fBshmat\fP(2)	2.0	T{
> +T{
> +.BR shmat (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBshmctl\fP(2)	2.0	T{
> +T{
> +.BR shmctl (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBshmdt\fP(2)	2.0	T{
> +T{
> +.BR shmdt (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBshmget\fP(2)	2.0	T{
> +T{
> +.BR shmget (2)
> +T}	2.0	T{
>  See notes on \fBipc\fP(2)
>  T}
> -\fBshutdown\fP(2)	2.0	T{
> +T{
> +.BR shutdown (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBsigaction\fP(2)	1.0
> @@ -731,21 +845,29 @@ .SS System call list
>  \fBsigprocmask\fP(2)	1.0
>  \fBsigreturn\fP(2)	1.0
>  \fBsigsuspend\fP(2)	1.0
> -\fBsocket\fP(2)	2.0	T{
> +T{
> +.BR socket (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  \fBsocketcall\fP(2)	1.0
>  .\" Implements BSD socket calls
> -\fBsocketpair\fP(2)	2.0	T{
> +T{
> +.BR socketpair (2)
> +T}	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
>  .\" 5a0015d62668e64c8b6e02e360fbbea121bfd5e6
>  \fBspill\fP(2)	2.6.13	Xtensa only
>  \fBsplice\fP(2)	2.6.17
> -\fBspu_create\fP(2)	2.6.16	T{
> +T{
> +.BR spu_create (2)
> +T}	2.6.16	T{
>  PowerPC/PowerPC64 only
>  T}
> -\fBspu_run\fP(2)	2.6.16	T{
> +T{
> +.BR spu_run (2)
> +T}	2.6.16	T{
>  PowerPC/PowerPC64 only
>  T}
>  \fBssetmask\fP(2)	1.0
> @@ -755,10 +877,14 @@ .SS System call list
>  \fBstatfs64\fP(2)	2.6
>  \fBstatx\fP(2)	4.11
>  \fBstime\fP(2)	1.0
> -\fBsubpage_prot\fP(2)	2.6.25	T{
> +T{
> +.BR subpage_prot (2)
> +T}	2.6.25	T{
>  PowerPC/PowerPC64 only
>  T}
> -\fBswapcontext\fP(2)	2.6.3	T{
> +T{
> +.BR swapcontext (2)
> +T}	2.6.3	T{
>  PowerPC/PowerPC64 only
>  T}
>  .\" 529d235a0e190ded1d21ccc80a73e625ebcad09b
> @@ -775,7 +901,9 @@ .SS System call list
>  .\" \fBsys_debug_setcontext\fP(2)	???	PowerPC if CONFIG_PPC32
>  \fBsyncfs\fP(2)	2.6.39
>  \fBsys_debug_setcontext\fP(2)	2.6.11	PowerPC only
> -\fBsyscall\fP(2)	1.0	T{
> +T{
> +.BR syscall (2)
> +T}	1.0	T{
>  Still available on ARM OABI
>  and MIPS O32 ABI
>  T}
> @@ -828,7 +956,9 @@ .SS System call list
>  .\" There's a man page for Solaris 5.11
>  \fBvfork\fP(2)	2.2
>  \fBvhangup\fP(2)	1.0
> -\fBvm86old\fP(2)	1.0	T{
> +T{
> +.BR vm86old (2)
> +T}	1.0	T{
>  Was "vm86"; renamed in
>  2.0.28/2.2
>  T}
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--tino5fui2feeueyc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaqFkwACgkQnowa+77/
2zKtNA//XVDlBKe4yZb/ePLYEa/vx174RGZaXJ1M9EGSrsWY/SB/TgudgXvuuDqv
jL0oMOVWlYM6SaoIoYCt2zAh/7CXj1OIa/eJW5QgGyNg3XEjHLFjlXQ6PwLk1b8u
9JijLKHcyLwe0K2aDtAC4fVOMd9sX05x62SdjGKraaf1ZGnbm9IK3VnPgfqBR5Sm
jkXdpRC1EPe1dHLTsMzo6ycGV5+zH/DGY84WbPlHBuGYMOVaBH/6Llkc7IOSM1DG
iNWi4Ht/B6612aOHI5z/sM15Je3zE6mSW8ZEHhGlPjr7jvkJ0N4Wk7SH/CRWQrw8
uoqtaE/F2qtZVGkvMfmss4droy9Ew6vpOwszYgDHEmHvwBBCzqjrf+TlHC5hjYHK
mqCLGiSVzt71CMGROgpU98QWjZMg9CLHD05WHKQwwXLxsxBrZsRcNiebpI4xXlVh
u/jA0kphwHKlxnz8OVIBbrQbPzX/ty0t0HpafgCG9qE33EZb9yBQKkKh138xPmPT
Ws0B/xFGbnAw2IjYIxFuj0rfHLMtacCMXuGBHXlgaIgWD2eusVsp/yjuilkMZ266
RNgCr4De5+nex+8ETJo+xyX3mzcjicDxlNzVHZVk4tkAm4LNzWTs2eSCI4TCS84h
A8VhSqCL2GeYa39OdU8553oSNLoHMaXjy0DyyWJmIjAkqquJcfY=
=kGav
-----END PGP SIGNATURE-----

--tino5fui2feeueyc--

