Return-Path: <linux-man+bounces-1763-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25106967592
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 10:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1D791C20ECA
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 08:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336443CF7E;
	Sun,  1 Sep 2024 08:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM4Zo18F"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D099E1E87B
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 08:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725179727; cv=none; b=nWyBM8ZmWXqnZkbmSZ/5kCHxPJHehkHARq7nG/1duLfosdKIMxYi5e3xntgt6Z23t//InLILNRCKcNJnygoaM9WvH5xFaz9LEvEU6dEQa2zLr1jsIz9Cp0SUqyIUqZzQtZ6mKHgrP/P2Px+M4sWdMFop4cXvjqn2OPRzPJVISBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725179727; c=relaxed/simple;
	bh=CTolgaOQwW+jlJH68tYvNVoo4BUafxATcYBQjs0mCXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ixM8XcEWSHbCRlY8tsdGeHj6LQPzYx3gUdiDRo3J6RlI548FJxQI/gE6KVQs7MH4PpOQQ/1yKPgP0hMXgNqJBM6Dr852vXFTFQq8hWs7QX1dqTbIGlXJX58K7vHGFWh8u2M3d3I4kdE8iG/jnHnha+bNTlFKz3xDgHwv0GrC/js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM4Zo18F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64954C4CEC3;
	Sun,  1 Sep 2024 08:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725179727;
	bh=CTolgaOQwW+jlJH68tYvNVoo4BUafxATcYBQjs0mCXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eM4Zo18FaxLlN/YzBYPQeW64YMV5KpM4tLN1uI/DgqRexDW+eim/UAkMaPWazwgXI
	 SSaqehEgtWuz+ObWkAp6iP/4MtaSzy3MxRsKASojYEtfnFD1sfhT7hdrmjNpJgcGmQ
	 eWVraAhvkfZDVokvkazbLh7/hd5iH8gFt41ursKpn4qdfeDacQPwQwIrxB3C0uBgHC
	 WiTWQL4JC+7MCWBPcvGZbRzV1I/mFlGp8Uyd60346aaOJ/hk+b8ZJI0unneLrPy4p/
	 5Qz4AHwvgIY3jZ+ZVa7KNuDrrglsb1x+WFQHMlnTkbdd21UA0nlDKGGs4SHCSAbnyL
	 bxPWg6JezjJIQ==
Date: Sun, 1 Sep 2024 10:35:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 09/10] man/: srcfix (1/2)
Message-ID: <eogsohjuaxoouiod2ijvkmc2oiipcv3eefjgxj4xeajecu6rdl@wwjfk5i3hgtv>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
 <20240901032612.xeoozhsfnnrm6jwd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="febk5pjact3mewbv"
Content-Disposition: inline
In-Reply-To: <20240901032612.xeoozhsfnnrm6jwd@illithid>


--febk5pjact3mewbv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 09/10] man/: srcfix (1/2)
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
 <20240901032612.xeoozhsfnnrm6jwd@illithid>
MIME-Version: 1.0
In-Reply-To: <20240901032612.xeoozhsfnnrm6jwd@illithid>

Hi Branden,

On Sat, Aug 31, 2024 at 10:26:12PM GMT, G. Branden Robinson wrote:
> Prepare for `MR` macro migration.
>=20
> On tbl(1) rows, rewrite man page cross references that don't use text
> blocks to use text blocks for the cross references, and convert them to
> use man(7) macros instead of troff(1) font selection escape sequences
> (which cannot be done outside a text block).
>=20
> $ cat fix-man-page-refs-in-tbl-tables-3.sed
> 	# On tbl(1) rows, rewrite man page cross references that don't use text
> 	# blocks to use text blocks for the cross references, and convert them
> 	# to use man(7) macros instead of troff(1) font selection escape
> 	# sequences (which cannot be done outside a text block).
> 	/^\.\\"/b
> 	# Case:
> 	# \&	\fBmunpack\fP(1)
> 	/^\.TS/,/^\.TE/{
> 	s/	\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)$/	T{\
> 	.BR \1 \2\
> 	T}/
> 	# Case:
> 	# \&.am	\fBautomake\fP(1) input file
> 	s/	\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) \(.*\)$/	T{\
> 	.BR \1 \2\
> 	\3\
> 	T}/
> 	# Case:
> 	# \&.Z	file compressed using \fBcompress\fP(1)
> 	s/	\([^	]*\) \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)$/	T{\
> 	\1\
> 	.BR \2 \3\
> 	T}/
> 	# Case:
> 	# "tolower" \-	realizes the \fBtolower\fP(3) mapping
> 	s/	\([^	]*\) \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) \(.*\)$/	T{\
> 	\1\
> 	.BR \2 \3\
> 	\4\
> 	T}/
> 	# Case:
> 	# \fBosf_getdtablesize\fP(2)
> 	s/^\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)$/.BR \1 \2/
> 	# Case:
> 	# See notes on \fBsocketcall\fP(2)
> 	s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)$/\
> 	.BR \1 \2/
> 	# Case:
> 	# \fB_llseek\fP(2)	1.2
> 	s/\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)	/T{\
> 	.BR \1 \2\
> 	T}	/
> 	}

For this patch, I'd prefer to break it into smaller ones that each
handles a single sed operation.  At least, for the operations that have
multiple cases.  Then you can send a single patch with the remaining
operations that each have a single case, if you want.  Would you mind?

Cheers,
Alex

>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man/man2/syscalls.2      | 1714 ++++++++++++++++++++++++++++----------
>  man/man3/wctrans.3       |   12 +-
>  man/man3/wctype.3        |   72 +-
>  man/man7/namespaces.7    |   32 +-
>  man/man7/signal-safety.7 |  532 +++++++-----
>  man/man7/signal.7        |   66 +-
>  man/man7/suffixes.7      |  184 +++-
>  7 files changed, 1917 insertions(+), 695 deletions(-)
>=20
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index 89c4e7f10..76c3e1ae3 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -143,26 +143,53 @@ .SS System call list
>  Lw(26n)2 L  Lx.
>  System call	Kernel	Notes
>  _
> -\fB_llseek\fP(2)	1.2
> -\fB_newselect\fP(2)	2.0
> -\fB_sysctl\fP(2)	2.0	Removed in 5.5
> +T{
> +.BR _llseek (2)
> +T}	1.2
> +T{
> +.BR _newselect (2)
> +T}	2.0
> +T{
> +.BR _sysctl (2)
> +T}	2.0	Removed in 5.5
>  T{
>  .BR accept (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> -T}
> -\fBaccept4\fP(2)	2.6.28
> -\fBaccess\fP(2)	1.0
> -\fBacct\fP(2)	1.0
> -\fBadd_key\fP(2)	2.6.10
> -\fBadjtimex\fP(2)	1.0
> -\fBalarm\fP(2)	1.0
> -\fBalloc_hugepages\fP(2)	2.5.36	Removed in 2.5.44
> +See notes on
> +.BR socketcall (2)
> +T}
> +T{
> +.BR accept4 (2)
> +T}	2.6.28
> +T{
> +.BR access (2)
> +T}	1.0
> +T{
> +.BR acct (2)
> +T}	1.0
> +T{
> +.BR add_key (2)
> +T}	2.6.10
> +T{
> +.BR adjtimex (2)
> +T}	1.0
> +T{
> +.BR alarm (2)
> +T}	1.0
> +T{
> +.BR alloc_hugepages (2)
> +T}	2.5.36	Removed in 2.5.44
>  .\" 4adeefe161a74369e44cc8e663f240ece0470dc3
> -\fBarc_gettls\fP(2)	3.9	ARC only
> -\fBarc_settls\fP(2)	3.9	ARC only
> +T{
> +.BR arc_gettls (2)
> +T}	3.9	ARC only
> +T{
> +.BR arc_settls (2)
> +T}	3.9	ARC only
>  .\" 91e040a79df73d371f70792f30380d4e44805250
> -\fBarc_usr_cmpxchg\fP(2)	4.9	ARC only
> +T{
> +.BR arc_usr_cmpxchg (2)
> +T}	4.9	ARC only
>  .\" x86: 79170fda313ed5be2394f87aa2a00d597f8ed4a1
>  T{
>  .BR arch_prctl (2)
> @@ -170,8 +197,12 @@ .SS System call list
>  x86_64, x86 since 4.12
>  T}
>  .\" 9674cdc74d63f346870943ef966a034f8c71ee57
> -\fBatomic_barrier\fP(2)	2.6.34	m68k only
> -\fBatomic_cmpxchg_32\fP(2)	2.6.34	m68k only
> +T{
> +.BR atomic_barrier (2)
> +T}	2.6.34	m68k only
> +T{
> +.BR atomic_cmpxchg_32 (2)
> +T}	2.6.34	m68k only
>  T{
>  .BR bdflush (2)
>  T}	1.2	T{
> @@ -182,21 +213,36 @@ .SS System call list
>  T{
>  .BR bind (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBbpf\fP(2)	3.18
> -\fBbrk\fP(2)	1.0
> +T{
> +.BR bpf (2)
> +T}	3.18
> +T{
> +.BR brk (2)
> +T}	1.0
>  T{
>  .BR breakpoint (2)
>  T}	2.2	T{
>  ARM OABI only, defined with
>  \fB__ARM_NR\fP prefix
>  T}
> -\fBcacheflush\fP(2)	1.2	Not on x86
> -\fBcapget\fP(2)	2.2
> -\fBcapset\fP(2)	2.2
> -\fBchdir\fP(2)	1.0
> -\fBchmod\fP(2)	1.0
> +T{
> +.BR cacheflush (2)
> +T}	1.2	Not on x86
> +T{
> +.BR capget (2)
> +T}	2.2
> +T{
> +.BR capset (2)
> +T}	2.2
> +T{
> +.BR chdir (2)
> +T}	1.0
> +T{
> +.BR chmod (2)
> +T}	1.0
>  T{
>  .BR chown (2)
>  T}	2.2	T{
> @@ -205,18 +251,42 @@ .SS System call list
>  for
>  version details
>  T}
> -\fBchown32\fP(2)	2.4
> -\fBchroot\fP(2)	1.0
> -\fBclock_adjtime\fP(2)	2.6.39
> -\fBclock_getres\fP(2)	2.6
> -\fBclock_gettime\fP(2)	2.6
> -\fBclock_nanosleep\fP(2)	2.6
> -\fBclock_settime\fP(2)	2.6
> -\fBclone2\fP(2)	2.4	IA-64 only
> -\fBclone\fP(2)	1.0
> -\fBclone3\fP(2)	5.3
> -\fBclose\fP(2)	1.0
> -\fBclose_range\fP(2)	5.9
> +T{
> +.BR chown32 (2)
> +T}	2.4
> +T{
> +.BR chroot (2)
> +T}	1.0
> +T{
> +.BR clock_adjtime (2)
> +T}	2.6.39
> +T{
> +.BR clock_getres (2)
> +T}	2.6
> +T{
> +.BR clock_gettime (2)
> +T}	2.6
> +T{
> +.BR clock_nanosleep (2)
> +T}	2.6
> +T{
> +.BR clock_settime (2)
> +T}	2.6
> +T{
> +.BR clone2 (2)
> +T}	2.4	IA-64 only
> +T{
> +.BR clone (2)
> +T}	1.0
> +T{
> +.BR clone3 (2)
> +T}	5.3
> +T{
> +.BR close (2)
> +T}	1.0
> +T{
> +.BR close_range (2)
> +T}	5.9
>  .\" .\" dcef1f634657dabe7905af3ccda12cf7f0b6fcc1
>  .\" .\" cc20d42986d5807cbe4f5c7c8e3dab2e59ea0db3
>  .\" .\" db695c0509d6ec9046ee5e4c520a19fa17d9fce2
> @@ -231,80 +301,203 @@ .SS System call list
>  T{
>  .BR connect (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBcopy_file_range\fP(2)	4.5
> -\fBcreat\fP(2)	1.0
> -\fBcreate_module\fP(2)	1.0	Removed in 2.6
> -\fBdelete_module\fP(2)	1.0
> +T{
> +.BR copy_file_range (2)
> +T}	4.5
> +T{
> +.BR creat (2)
> +T}	1.0
> +T{
> +.BR create_module (2)
> +T}	1.0	Removed in 2.6
> +T{
> +.BR delete_module (2)
> +T}	1.0
>  .\" 1394f03221790a988afc3e4b3cb79f2e477246a9
>  .\" 4ba66a9760722ccbb691b8f7116cad2f791cca7b
> -\fBdup\fP(2)	1.0
> -\fBdup2\fP(2)	1.0
> -\fBdup3\fP(2)	2.6.27
> -\fBepoll_create\fP(2)	2.6
> -\fBepoll_create1\fP(2)	2.6.27
> -\fBepoll_ctl\fP(2)	2.6
> -\fBepoll_pwait\fP(2)	2.6.19
> -\fBepoll_pwait2\fP(2)	5.11
> -\fBepoll_wait\fP(2)	2.6
> -\fBeventfd\fP(2)	2.6.22
> -\fBeventfd2\fP(2)	2.6.27
> +T{
> +.BR dup (2)
> +T}	1.0
> +T{
> +.BR dup2 (2)
> +T}	1.0
> +T{
> +.BR dup3 (2)
> +T}	2.6.27
> +T{
> +.BR epoll_create (2)
> +T}	2.6
> +T{
> +.BR epoll_create1 (2)
> +T}	2.6.27
> +T{
> +.BR epoll_ctl (2)
> +T}	2.6
> +T{
> +.BR epoll_pwait (2)
> +T}	2.6.19
> +T{
> +.BR epoll_pwait2 (2)
> +T}	5.11
> +T{
> +.BR epoll_wait (2)
> +T}	2.6
> +T{
> +.BR eventfd (2)
> +T}	2.6.22
> +T{
> +.BR eventfd2 (2)
> +T}	2.6.27
>  T{
>  .BR execv (2)
>  T}	2.0	T{
>  SPARC/SPARC64 only, for
>  compatibility with SunOS
>  T}
> -\fBexecve\fP(2)	1.0
> -\fBexecveat\fP(2)	3.19
> -\fBexit\fP(2)	1.0
> -\fBexit_group\fP(2)	2.6
> -\fBfaccessat\fP(2)	2.6.16
> -\fBfaccessat2\fP(2)	5.8
> -\fBfadvise64\fP(2)	2.6
> +T{
> +.BR execve (2)
> +T}	1.0
> +T{
> +.BR execveat (2)
> +T}	3.19
> +T{
> +.BR exit (2)
> +T}	1.0
> +T{
> +.BR exit_group (2)
> +T}	2.6
> +T{
> +.BR faccessat (2)
> +T}	2.6.16
> +T{
> +.BR faccessat2 (2)
> +T}	5.8
> +T{
> +.BR fadvise64 (2)
> +T}	2.6
>  .\" Implements \fBposix_fadvise\fP(2)
> -\fBfadvise64_64\fP(2)	2.6
> -\fBfallocate\fP(2)	2.6.23
> -\fBfanotify_init\fP(2)	2.6.37
> -\fBfanotify_mark\fP(2)	2.6.37
> +T{
> +.BR fadvise64_64 (2)
> +T}	2.6
> +T{
> +.BR fallocate (2)
> +T}	2.6.23
> +T{
> +.BR fanotify_init (2)
> +T}	2.6.37
> +T{
> +.BR fanotify_mark (2)
> +T}	2.6.37
>  .\" The fanotify calls were added in Linux 2.6.36,
>  .\" but disabled while the API was finalized.
> -\fBfchdir\fP(2)	1.0
> -\fBfchmod\fP(2)	1.0
> -\fBfchmodat\fP(2)	2.6.16
> -\fBfchown\fP(2)	1.0
> -\fBfchown32\fP(2)	2.4
> -\fBfchownat\fP(2)	2.6.16
> -\fBfcntl\fP(2)	1.0
> -\fBfcntl64\fP(2)	2.4
> -\fBfdatasync\fP(2)	2.0
> -\fBfgetxattr\fP(2)	2.6; 2.4.18
> -\fBfinit_module\fP(2)	3.8
> -\fBflistxattr\fP(2)	2.6; 2.4.18
> -\fBflock\fP(2)	2.0
> -\fBfork\fP(2)	1.0
> -\fBfree_hugepages\fP(2)	2.5.36	Removed in 2.5.44
> -\fBfremovexattr\fP(2)	2.6; 2.4.18
> -\fBfsconfig\fP(2)	5.2
> -\fBfsetxattr\fP(2)	2.6; 2.4.18
> -\fBfsmount\fP(2)	5.2
> -\fBfsopen\fP(2)	5.2
> -\fBfspick\fP(2)	5.2
> -\fBfstat\fP(2)	1.0
> -\fBfstat64\fP(2)	2.4
> -\fBfstatat64\fP(2)	2.6.16
> -\fBfstatfs\fP(2)	1.0
> -\fBfstatfs64\fP(2)	2.6
> -\fBfsync\fP(2)	1.0
> -\fBftruncate\fP(2)	1.0
> -\fBftruncate64\fP(2)	2.4
> -\fBfutex\fP(2)	2.6
> -\fBfutimesat\fP(2)	2.6.16
> -\fBget_kernel_syms\fP(2)	1.0	Removed in 2.6
> -\fBget_mempolicy\fP(2)	2.6.6
> -\fBget_robust_list\fP(2)	2.6.17
> -\fBget_thread_area\fP(2)	2.6
> +T{
> +.BR fchdir (2)
> +T}	1.0
> +T{
> +.BR fchmod (2)
> +T}	1.0
> +T{
> +.BR fchmodat (2)
> +T}	2.6.16
> +T{
> +.BR fchown (2)
> +T}	1.0
> +T{
> +.BR fchown32 (2)
> +T}	2.4
> +T{
> +.BR fchownat (2)
> +T}	2.6.16
> +T{
> +.BR fcntl (2)
> +T}	1.0
> +T{
> +.BR fcntl64 (2)
> +T}	2.4
> +T{
> +.BR fdatasync (2)
> +T}	2.0
> +T{
> +.BR fgetxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR finit_module (2)
> +T}	3.8
> +T{
> +.BR flistxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR flock (2)
> +T}	2.0
> +T{
> +.BR fork (2)
> +T}	1.0
> +T{
> +.BR free_hugepages (2)
> +T}	2.5.36	Removed in 2.5.44
> +T{
> +.BR fremovexattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR fsconfig (2)
> +T}	5.2
> +T{
> +.BR fsetxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR fsmount (2)
> +T}	5.2
> +T{
> +.BR fsopen (2)
> +T}	5.2
> +T{
> +.BR fspick (2)
> +T}	5.2
> +T{
> +.BR fstat (2)
> +T}	1.0
> +T{
> +.BR fstat64 (2)
> +T}	2.4
> +T{
> +.BR fstatat64 (2)
> +T}	2.6.16
> +T{
> +.BR fstatfs (2)
> +T}	1.0
> +T{
> +.BR fstatfs64 (2)
> +T}	2.6
> +T{
> +.BR fsync (2)
> +T}	1.0
> +T{
> +.BR ftruncate (2)
> +T}	1.0
> +T{
> +.BR ftruncate64 (2)
> +T}	2.4
> +T{
> +.BR futex (2)
> +T}	2.6
> +T{
> +.BR futimesat (2)
> +T}	2.6.16
> +T{
> +.BR get_kernel_syms (2)
> +T}	1.0	Removed in 2.6
> +T{
> +.BR get_mempolicy (2)
> +T}	2.6.6
> +T{
> +.BR get_robust_list (2)
> +T}	2.6.17
> +T{
> +.BR get_thread_area (2)
> +T}	2.6
>  .\" 8fcd6c45f5a65621ec809b7866a3623e9a01d4ed
>  T{
>  .BR get_tls (2)
> @@ -312,16 +505,25 @@ .SS System call list
>  ARM OABI only, has
>  \fB__ARM_NR\fP prefix
>  T}
> -\fBgetcpu\fP(2)	2.6.19
> -\fBgetcwd\fP(2)	2.2
> -\fBgetdents\fP(2)	2.0
> -\fBgetdents64\fP(2)	2.4
> +T{
> +.BR getcpu (2)
> +T}	2.6.19
> +T{
> +.BR getcwd (2)
> +T}	2.2
> +T{
> +.BR getdents (2)
> +T}	2.0
> +T{
> +.BR getdents64 (2)
> +T}	2.4
>  .\" parisc: 863722e856e64dae0e252b6bb546737c6c5626ce
>  T{
>  .BR getdomainname (2)
>  T}	2.2	T{
>  SPARC, SPARC64; available
> -as \fBosf_getdomainname\fP(2)
> +as
> +.BR osf_getdomainname (2)
>  on Alpha since Linux 2.0
>  T}
>  .\" ec98c6b9b47df6df1c1fa6cf3d427414f8c2cf16
> @@ -330,16 +532,32 @@ .SS System call list
>  T}	2.0	T{
>  SPARC (removed in 2.6.26),
>  available on Alpha as
> -\fBosf_getdtablesize\fP(2)
> -T}
> -\fBgetegid\fP(2)	1.0
> -\fBgetegid32\fP(2)	2.4
> -\fBgeteuid\fP(2)	1.0
> -\fBgeteuid32\fP(2)	2.4
> -\fBgetgid\fP(2)	1.0
> -\fBgetgid32\fP(2)	2.4
> -\fBgetgroups\fP(2)	1.0
> -\fBgetgroups32\fP(2)	2.4
> +.BR osf_getdtablesize (2)
> +T}
> +T{
> +.BR getegid (2)
> +T}	1.0
> +T{
> +.BR getegid32 (2)
> +T}	2.4
> +T{
> +.BR geteuid (2)
> +T}	1.0
> +T{
> +.BR geteuid32 (2)
> +T}	2.4
> +T{
> +.BR getgid (2)
> +T}	1.0
> +T{
> +.BR getgid32 (2)
> +T}	2.4
> +T{
> +.BR getgroups (2)
> +T}	1.0
> +T{
> +.BR getgroups32 (2)
> +T}	2.4
>  .\" SPARC removal: ec98c6b9b47df6df1c1fa6cf3d427414f8c2cf16
>  T{
>  .BR gethostname (2)
> @@ -347,50 +565,91 @@ .SS System call list
>  Alpha, was available on
>  SPARC up to Linux 2.6.26
>  T}
> -\fBgetitimer\fP(2)	1.0
> +T{
> +.BR getitimer (2)
> +T}	1.0
>  T{
>  .BR getpeername (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
>  T{
>  .BR getpagesize (2)
>  T}	2.0	T{
>  Alpha, SPARC/SPARC64 only
>  T}
> -\fBgetpgid\fP(2)	1.0
> -\fBgetpgrp\fP(2)	1.0
> -\fBgetpid\fP(2)	1.0
> -\fBgetppid\fP(2)	1.0
> -\fBgetpriority\fP(2)	1.0
> -\fBgetrandom\fP(2)	3.17
> -\fBgetresgid\fP(2)	2.2
> -\fBgetresgid32\fP(2)	2.4
> -\fBgetresuid\fP(2)	2.2
> -\fBgetresuid32\fP(2)	2.4
> -\fBgetrlimit\fP(2)	1.0
> -\fBgetrusage\fP(2)	1.0
> -\fBgetsid\fP(2)	2.0
> +T{
> +.BR getpgid (2)
> +T}	1.0
> +T{
> +.BR getpgrp (2)
> +T}	1.0
> +T{
> +.BR getpid (2)
> +T}	1.0
> +T{
> +.BR getppid (2)
> +T}	1.0
> +T{
> +.BR getpriority (2)
> +T}	1.0
> +T{
> +.BR getrandom (2)
> +T}	3.17
> +T{
> +.BR getresgid (2)
> +T}	2.2
> +T{
> +.BR getresgid32 (2)
> +T}	2.4
> +T{
> +.BR getresuid (2)
> +T}	2.2
> +T{
> +.BR getresuid32 (2)
> +T}	2.4
> +T{
> +.BR getrlimit (2)
> +T}	1.0
> +T{
> +.BR getrusage (2)
> +T}	1.0
> +T{
> +.BR getsid (2)
> +T}	2.0
>  T{
>  .BR getsockname (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
>  T{
>  .BR getsockopt (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBgettid\fP(2)	2.4.11
> -\fBgettimeofday\fP(2)	1.0
> -\fBgetuid\fP(2)	1.0
> -\fBgetuid32\fP(2)	2.4
> +T{
> +.BR gettid (2)
> +T}	2.4.11
> +T{
> +.BR gettimeofday (2)
> +T}	1.0
> +T{
> +.BR getuid (2)
> +T}	1.0
> +T{
> +.BR getuid32 (2)
> +T}	2.4
>  T{
>  .BR getunwind (2)
>  T}	2.4.8	T{
>  IA-64 only; deprecated
>  T}
> -\fBgetxattr\fP(2)	2.6; 2.4.18
> +T{
> +.BR getxattr (2)
> +T}	2.6; 2.4.18
>  T{
>  .BR getxgid (2)
>  T}	2.0	T{
> @@ -406,40 +665,98 @@ .SS System call list
>  T}	2.0	T{
>  Alpha only; see NOTES
>  T}
> -\fBinit_module\fP(2)	1.0
> -\fBinotify_add_watch\fP(2)	2.6.13
> -\fBinotify_init\fP(2)	2.6.13
> -\fBinotify_init1\fP(2)	2.6.27
> -\fBinotify_rm_watch\fP(2)	2.6.13
> -\fBio_cancel\fP(2)	2.6
> -\fBio_destroy\fP(2)	2.6
> -\fBio_getevents\fP(2)	2.6
> -\fBio_pgetevents\fP(2)	4.18
> -\fBio_setup\fP(2)	2.6
> -\fBio_submit\fP(2)	2.6
> -\fBio_uring_enter\fP(2)	5.1
> -\fBio_uring_register\fP(2)	5.1
> -\fBio_uring_setup\fP(2)	5.1
> -\fBioctl\fP(2)	1.0
> -\fBioperm\fP(2)	1.0
> -\fBiopl\fP(2)	1.0
> -\fBioprio_get\fP(2)	2.6.13
> -\fBioprio_set\fP(2)	2.6.13
> -\fBipc\fP(2)	1.0
> +T{
> +.BR init_module (2)
> +T}	1.0
> +T{
> +.BR inotify_add_watch (2)
> +T}	2.6.13
> +T{
> +.BR inotify_init (2)
> +T}	2.6.13
> +T{
> +.BR inotify_init1 (2)
> +T}	2.6.27
> +T{
> +.BR inotify_rm_watch (2)
> +T}	2.6.13
> +T{
> +.BR io_cancel (2)
> +T}	2.6
> +T{
> +.BR io_destroy (2)
> +T}	2.6
> +T{
> +.BR io_getevents (2)
> +T}	2.6
> +T{
> +.BR io_pgetevents (2)
> +T}	4.18
> +T{
> +.BR io_setup (2)
> +T}	2.6
> +T{
> +.BR io_submit (2)
> +T}	2.6
> +T{
> +.BR io_uring_enter (2)
> +T}	5.1
> +T{
> +.BR io_uring_register (2)
> +T}	5.1
> +T{
> +.BR io_uring_setup (2)
> +T}	5.1
> +T{
> +.BR ioctl (2)
> +T}	1.0
> +T{
> +.BR ioperm (2)
> +T}	1.0
> +T{
> +.BR iopl (2)
> +T}	1.0
> +T{
> +.BR ioprio_get (2)
> +T}	2.6.13
> +T{
> +.BR ioprio_set (2)
> +T}	2.6.13
> +T{
> +.BR ipc (2)
> +T}	1.0
>  .\" Implements System V IPC calls
> -\fBkcmp\fP(2)	3.5
> -\fBkern_features\fP(2)	3.7	SPARC64 only
> +T{
> +.BR kcmp (2)
> +T}	3.5
> +T{
> +.BR kern_features (2)
> +T}	3.7	SPARC64 only
>  .\" FIXME . document kern_features():
>  .\" commit 517ffce4e1a03aea979fe3a18a3dd1761a24fafb
> -\fBkexec_file_load\fP(2)	3.17
> -\fBkexec_load\fP(2)	2.6.13
> +T{
> +.BR kexec_file_load (2)
> +T}	3.17
> +T{
> +.BR kexec_load (2)
> +T}	2.6.13
>  .\" The entry in the syscall table was reserved starting in 2.6.7
>  .\" Was named sys_kexec_load() from 2.6.7 to 2.6.16
> -\fBkeyctl\fP(2)	2.6.10
> -\fBkill\fP(2)	1.0
> -\fBlandlock_add_rule\fP(2)	5.13
> -\fBlandlock_create_ruleset\fP(2)	5.13
> -\fBlandlock_restrict_self\fP(2)	5.13
> +T{
> +.BR keyctl (2)
> +T}	2.6.10
> +T{
> +.BR kill (2)
> +T}	1.0
> +T{
> +.BR landlock_add_rule (2)
> +T}	5.13
> +T{
> +.BR landlock_create_ruleset (2)
> +T}	5.13
> +T{
> +.BR landlock_restrict_self (2)
> +T}	5.13
>  T{
>  .BR lchown (2)
>  T}	1.0	T{
> @@ -448,91 +765,195 @@ .SS System call list
>  for
>  version details
>  T}
> -\fBlchown32\fP(2)	2.4
> -\fBlgetxattr\fP(2)	2.6; 2.4.18
> -\fBlink\fP(2)	1.0
> -\fBlinkat\fP(2)	2.6.16
> +T{
> +.BR lchown32 (2)
> +T}	2.4
> +T{
> +.BR lgetxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR link (2)
> +T}	1.0
> +T{
> +.BR linkat (2)
> +T}	2.6.16
>  T{
>  .BR listen (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> -T}
> -\fBlistxattr\fP(2)	2.6; 2.4.18
> -\fBllistxattr\fP(2)	2.6; 2.4.18
> -\fBlookup_dcookie\fP(2)	2.6
> -\fBlremovexattr\fP(2)	2.6; 2.4.18
> -\fBlseek\fP(2)	1.0
> -\fBlsetxattr\fP(2)	2.6; 2.4.18
> -\fBlstat\fP(2)	1.0
> -\fBlstat64\fP(2)	2.4
> -\fBmadvise\fP(2)	2.4
> -\fBmbind\fP(2)	2.6.6
> -\fBmemory_ordering\fP(2)	2.2	SPARC64 only
> +See notes on
> +.BR socketcall (2)
> +T}
> +T{
> +.BR listxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR llistxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR lookup_dcookie (2)
> +T}	2.6
> +T{
> +.BR lremovexattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR lseek (2)
> +T}	1.0
> +T{
> +.BR lsetxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR lstat (2)
> +T}	1.0
> +T{
> +.BR lstat64 (2)
> +T}	2.4
> +T{
> +.BR madvise (2)
> +T}	2.4
> +T{
> +.BR mbind (2)
> +T}	2.6.6
> +T{
> +.BR memory_ordering (2)
> +T}	2.2	SPARC64 only
>  .\" 26025bbfbba33a9425be1b89eccb4664ea4c17b6
>  .\" bb6fb6dfcc17cddac11ac295861f7608194447a7
> -\fBmembarrier\fP(2)	3.17
> -\fBmemfd_create\fP(2)	3.17
> -\fBmemfd_secret\fP(2)	5.14
> -\fBmigrate_pages\fP(2)	2.6.16
> -\fBmincore\fP(2)	2.4
> -\fBmkdir\fP(2)	1.0
> -\fBmkdirat\fP(2)	2.6.16
> -\fBmknod\fP(2)	1.0
> -\fBmknodat\fP(2)	2.6.16
> -\fBmlock\fP(2)	2.0
> -\fBmlock2\fP(2)	4.4
> -\fBmlockall\fP(2)	2.0
> -\fBmmap\fP(2)	1.0
> -\fBmmap2\fP(2)	2.4
> -\fBmodify_ldt\fP(2)	1.0
> -\fBmount\fP(2)	1.0
> -\fBmove_mount\fP(2)	5.2
> -\fBmove_pages\fP(2)	2.6.18
> -\fBmprotect\fP(2)	1.0
> -\fBmq_getsetattr\fP(2)	2.6.6
> +T{
> +.BR membarrier (2)
> +T}	3.17
> +T{
> +.BR memfd_create (2)
> +T}	3.17
> +T{
> +.BR memfd_secret (2)
> +T}	5.14
> +T{
> +.BR migrate_pages (2)
> +T}	2.6.16
> +T{
> +.BR mincore (2)
> +T}	2.4
> +T{
> +.BR mkdir (2)
> +T}	1.0
> +T{
> +.BR mkdirat (2)
> +T}	2.6.16
> +T{
> +.BR mknod (2)
> +T}	1.0
> +T{
> +.BR mknodat (2)
> +T}	2.6.16
> +T{
> +.BR mlock (2)
> +T}	2.0
> +T{
> +.BR mlock2 (2)
> +T}	4.4
> +T{
> +.BR mlockall (2)
> +T}	2.0
> +T{
> +.BR mmap (2)
> +T}	1.0
> +T{
> +.BR mmap2 (2)
> +T}	2.4
> +T{
> +.BR modify_ldt (2)
> +T}	1.0
> +T{
> +.BR mount (2)
> +T}	1.0
> +T{
> +.BR move_mount (2)
> +T}	5.2
> +T{
> +.BR move_pages (2)
> +T}	2.6.18
> +T{
> +.BR mprotect (2)
> +T}	1.0
> +T{
> +.BR mq_getsetattr (2)
> +T}	2.6.6
>  .\" Implements \fBmq_getattr\fP(3) and \fBmq_setattr\fP(3)
> -\fBmq_notify\fP(2)	2.6.6
> -\fBmq_open\fP(2)	2.6.6
> -\fBmq_timedreceive\fP(2)	2.6.6
> -\fBmq_timedsend\fP(2)	2.6.6
> -\fBmq_unlink\fP(2)	2.6.6
> -\fBmremap\fP(2)	2.0
> +T{
> +.BR mq_notify (2)
> +T}	2.6.6
> +T{
> +.BR mq_open (2)
> +T}	2.6.6
> +T{
> +.BR mq_timedreceive (2)
> +T}	2.6.6
> +T{
> +.BR mq_timedsend (2)
> +T}	2.6.6
> +T{
> +.BR mq_unlink (2)
> +T}	2.6.6
> +T{
> +.BR mremap (2)
> +T}	2.0
>  T{
>  .BR msgctl (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR msgget (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR msgrcv (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR msgsnd (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
> -\fBmsync\fP(2)	2.0
> +T{
> +.BR msync (2)
> +T}	2.0
>  .\" \fBmultiplexer\fP(2)	??	__NR_multiplexer reserved on
>  .\"		PowerPC, but unimplemented?
> -\fBmunlock\fP(2)	2.0
> -\fBmunlockall\fP(2)	2.0
> -\fBmunmap\fP(2)	1.0
> -\fBname_to_handle_at\fP(2)	2.6.39
> -\fBnanosleep\fP(2)	2.0
> +T{
> +.BR munlock (2)
> +T}	2.0
> +T{
> +.BR munlockall (2)
> +T}	2.0
> +T{
> +.BR munmap (2)
> +T}	1.0
> +T{
> +.BR name_to_handle_at (2)
> +T}	2.6.39
> +T{
> +.BR nanosleep (2)
> +T}	2.0
>  .\" 5590ff0d5528b60153c0b4e7b771472b5a95e297
>  T{
>  .BR newfstatat (2)
>  T}	2.6.16	T{
> -See \fBstat\fP(2)
> +See
> +.BR stat (2)
>  T}
> -\fBnfsservctl\fP(2)	2.2	Removed in 3.1
> -\fBnice\fP(2)	1.0
> +T{
> +.BR nfsservctl (2)
> +T}	2.2	Removed in 3.1
> +T{
> +.BR nice (2)
> +T}	1.0
>  T{
>  .BR old_adjtimex (2)
>  T}	2.0	T{
> @@ -541,38 +962,68 @@ .SS System call list
>  T{
>  .BR old_getrlimit (2)
>  T}	2.4	T{
> -Old variant of \fBgetrlimit\fP(2)
> +Old variant of
> +.BR getrlimit (2)
>  that used a different value
>  for \fBRLIM_INFINITY\fP
>  T}
> -\fBoldfstat\fP(2)	1.0
> -\fBoldlstat\fP(2)	1.0
> -\fBoldolduname\fP(2)	1.0
> -\fBoldstat\fP(2)	1.0
> +T{
> +.BR oldfstat (2)
> +T}	1.0
> +T{
> +.BR oldlstat (2)
> +T}	1.0
> +T{
> +.BR oldolduname (2)
> +T}	1.0
> +T{
> +.BR oldstat (2)
> +T}	1.0
>  T{
>  .BR oldumount (2)
>  T}	2.4.116	T{
> -Name of the old \fBumount\fP(2)
> +Name of the old
> +.BR umount (2)
>  syscall on Alpha
>  T}
> -\fBolduname\fP(2)	1.0
> -\fBopen\fP(2)	1.0
> -\fBopen_by_handle_at\fP(2)	2.6.39
> -\fBopen_tree\fP(2)	5.2
> -\fBopenat\fP(2)	2.6.16
> -\fBopenat2\fP(2)	5.6
> +T{
> +.BR olduname (2)
> +T}	1.0
> +T{
> +.BR open (2)
> +T}	1.0
> +T{
> +.BR open_by_handle_at (2)
> +T}	2.6.39
> +T{
> +.BR open_tree (2)
> +T}	5.2
> +T{
> +.BR openat (2)
> +T}	2.6.16
> +T{
> +.BR openat2 (2)
> +T}	5.6
>  .\" 9d02a4283e9ce4e9ca11ff00615bdacdb0515a1a
>  T{
>  .BR or1k_atomic (2)
>  T}	3.1	T{
>  OpenRISC 1000 only
>  T}
> -\fBpause\fP(2)	1.0
> -\fBpciconfig_iobase\fP(2)	2.2.15; 2.4	Not on x86
> +T{
> +.BR pause (2)
> +T}	1.0
> +T{
> +.BR pciconfig_iobase (2)
> +T}	2.2.15; 2.4	Not on x86
>  .\" Alpha, PowerPC, ARM; not x86
> -\fBpciconfig_read\fP(2)	2.0.26; 2.2	Not on x86
> +T{
> +.BR pciconfig_read (2)
> +T}	2.0.26; 2.2	Not on x86
>  .\" , PowerPC, ARM; not x86
> -\fBpciconfig_write\fP(2)	2.0.26; 2.2	Not on x86
> +T{
> +.BR pciconfig_write (2)
> +T}	2.0.26; 2.2	Not on x86
>  .\" , PowerPC, ARM; not x86
>  T{
>  .BR perf_event_open (2)
> @@ -580,109 +1031,226 @@ .SS System call list
>  Was perf_counter_open() in
>  2.6.31; renamed in 2.6.32
>  T}
> -\fBpersonality\fP(2)	1.2
> +T{
> +.BR personality (2)
> +T}	1.2
>  T{
>  .BR perfctr (2)
>  T}	2.2	T{
>  SPARC only; removed in 2.6.34
>  T}
>  .\"	commit c7d5a0050773e98d1094eaa9f2a1a793fafac300 removed perfctr()
> -\fBperfmonctl\fP(2)	2.4	IA-64 only; removed in 5.10
> -\fBpidfd_getfd\fP(2)	5.6
> -\fBpidfd_send_signal\fP(2)	5.1
> -\fBpidfd_open\fP(2)	5.3
> -\fBpipe\fP(2)	1.0
> -\fBpipe2\fP(2)	2.6.27
> -\fBpivot_root\fP(2)	2.4
> -\fBpkey_alloc\fP(2)	4.8
> -\fBpkey_free\fP(2)	4.8
> -\fBpkey_mprotect\fP(2)	4.8
> -\fBpoll\fP(2)	2.0.36; 2.2
> -\fBppoll\fP(2)	2.6.16
> -\fBprctl\fP(2)	2.2
> +T{
> +.BR perfmonctl (2)
> +T}	2.4	IA-64 only; removed in 5.10
> +T{
> +.BR pidfd_getfd (2)
> +T}	5.6
> +T{
> +.BR pidfd_send_signal (2)
> +T}	5.1
> +T{
> +.BR pidfd_open (2)
> +T}	5.3
> +T{
> +.BR pipe (2)
> +T}	1.0
> +T{
> +.BR pipe2 (2)
> +T}	2.6.27
> +T{
> +.BR pivot_root (2)
> +T}	2.4
> +T{
> +.BR pkey_alloc (2)
> +T}	4.8
> +T{
> +.BR pkey_free (2)
> +T}	4.8
> +T{
> +.BR pkey_mprotect (2)
> +T}	4.8
> +T{
> +.BR poll (2)
> +T}	2.0.36; 2.2
> +T{
> +.BR ppoll (2)
> +T}	2.6.16
> +T{
> +.BR prctl (2)
> +T}	2.2
>  T{
>  .BR pread64 (2)
>  T}		T{
>  Added as "pread" in 2.2;
>  renamed "pread64" in 2.6
>  T}
> -\fBpreadv\fP(2)	2.6.30
> -\fBpreadv2\fP(2)	4.6
> -\fBprlimit64\fP(2)	2.6.36
> -\fBprocess_madvise\fP(2)	5.10
> -\fBprocess_vm_readv\fP(2)	3.2
> -\fBprocess_vm_writev\fP(2)	3.2
> -\fBpselect6\fP(2)	2.6.16
> +T{
> +.BR preadv (2)
> +T}	2.6.30
> +T{
> +.BR preadv2 (2)
> +T}	4.6
> +T{
> +.BR prlimit64 (2)
> +T}	2.6.36
> +T{
> +.BR process_madvise (2)
> +T}	5.10
> +T{
> +.BR process_vm_readv (2)
> +T}	3.2
> +T{
> +.BR process_vm_writev (2)
> +T}	3.2
> +T{
> +.BR pselect6 (2)
> +T}	2.6.16
>  .\" Implements \fBpselect\fP(2)
> -\fBptrace\fP(2)	1.0
> +T{
> +.BR ptrace (2)
> +T}	1.0
>  T{
>  .BR pwrite64 (2)
>  T}		T{
>  Added as "pwrite" in 2.2;
>  renamed "pwrite64" in 2.6
>  T}
> -\fBpwritev\fP(2)	2.6.30
> -\fBpwritev2\fP(2)	4.6
> -\fBquery_module\fP(2)	2.2	Removed in 2.6
> -\fBquotactl\fP(2)	1.0
> -\fBquotactl_fd\fP(2)	5.14
> -\fBread\fP(2)	1.0
> -\fBreadahead\fP(2)	2.4.13
> -\fBreaddir\fP(2)	1.0
> +T{
> +.BR pwritev (2)
> +T}	2.6.30
> +T{
> +.BR pwritev2 (2)
> +T}	4.6
> +T{
> +.BR query_module (2)
> +T}	2.2	Removed in 2.6
> +T{
> +.BR quotactl (2)
> +T}	1.0
> +T{
> +.BR quotactl_fd (2)
> +T}	5.14
> +T{
> +.BR read (2)
> +T}	1.0
> +T{
> +.BR readahead (2)
> +T}	2.4.13
> +T{
> +.BR readdir (2)
> +T}	1.0
>  .\" Supersedes \fBgetdents\fP(2)
> -\fBreadlink\fP(2)	1.0
> -\fBreadlinkat\fP(2)	2.6.16
> -\fBreadv\fP(2)	2.0
> -\fBreboot\fP(2)	1.0
> +T{
> +.BR readlink (2)
> +T}	1.0
> +T{
> +.BR readlinkat (2)
> +T}	2.6.16
> +T{
> +.BR readv (2)
> +T}	2.0
> +T{
> +.BR reboot (2)
> +T}	1.0
>  T{
>  .BR recv (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
>  T{
>  .BR recvfrom (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
>  T{
>  .BR recvmsg (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBrecvmmsg\fP(2)	2.6.33
> +T{
> +.BR recvmmsg (2)
> +T}	2.6.33
>  T{
>  .BR remap_file_pages (2)
>  T}	2.6	T{
>  Deprecated since 3.16
>  T}
> -\fBremovexattr\fP(2)	2.6; 2.4.18
> -\fBrename\fP(2)	1.0
> -\fBrenameat\fP(2)	2.6.16
> -\fBrenameat2\fP(2)	3.15
> -\fBrequest_key\fP(2)	2.6.10
> -\fBrestart_syscall\fP(2)	2.6
> +T{
> +.BR removexattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR rename (2)
> +T}	1.0
> +T{
> +.BR renameat (2)
> +T}	2.6.16
> +T{
> +.BR renameat2 (2)
> +T}	3.15
> +T{
> +.BR request_key (2)
> +T}	2.6.10
> +T{
> +.BR restart_syscall (2)
> +T}	2.6
>  .\" 921ebd8f2c081b3cf6c3b29ef4103eef3ff26054
> -\fBriscv_flush_icache\fP(2)	4.15	RISC-V only
> -\fBrmdir\fP(2)	1.0
> -\fBrseq\fP(2)	4.18
> -\fBrt_sigaction\fP(2)	2.2
> -\fBrt_sigpending\fP(2)	2.2
> -\fBrt_sigprocmask\fP(2)	2.2
> -\fBrt_sigqueueinfo\fP(2)	2.2
> -\fBrt_sigreturn\fP(2)	2.2
> -\fBrt_sigsuspend\fP(2)	2.2
> -\fBrt_sigtimedwait\fP(2)	2.2
> -\fBrt_tgsigqueueinfo\fP(2)	2.6.31
> +T{
> +.BR riscv_flush_icache (2)
> +T}	4.15	RISC-V only
> +T{
> +.BR rmdir (2)
> +T}	1.0
> +T{
> +.BR rseq (2)
> +T}	4.18
> +T{
> +.BR rt_sigaction (2)
> +T}	2.2
> +T{
> +.BR rt_sigpending (2)
> +T}	2.2
> +T{
> +.BR rt_sigprocmask (2)
> +T}	2.2
> +T{
> +.BR rt_sigqueueinfo (2)
> +T}	2.2
> +T{
> +.BR rt_sigreturn (2)
> +T}	2.2
> +T{
> +.BR rt_sigsuspend (2)
> +T}	2.2
> +T{
> +.BR rt_sigtimedwait (2)
> +T}	2.2
> +T{
> +.BR rt_tgsigqueueinfo (2)
> +T}	2.6.31
>  T{
>  .BR rtas (2)
>  T}	2.6.2	T{
>  PowerPC/PowerPC64 only
>  T}
> -\fBs390_runtime_instr\fP(2)	3.7	s390 only
> -\fBs390_pci_mmio_read\fP(2)	3.19	s390 only
> -\fBs390_pci_mmio_write\fP(2)	3.19	s390 only
> -\fBs390_sthyi\fP(2)	4.15	s390 only
> -\fBs390_guarded_storage\fP(2)	4.12	s390 only
> +T{
> +.BR s390_runtime_instr (2)
> +T}	3.7	s390 only
> +T{
> +.BR s390_pci_mmio_read (2)
> +T}	3.19	s390 only
> +T{
> +.BR s390_pci_mmio_write (2)
> +T}	3.19	s390 only
> +T{
> +.BR s390_sthyi (2)
> +T}	4.15	s390 only
> +T{
> +.BR s390_guarded_storage (2)
> +T}	4.12	s390 only
>  T{
>  .BR sched_get_affinity (2)
>  T}	2.6	T{
> @@ -690,13 +1258,27 @@ .SS System call list
>  .BR \%sched_getaffinity (2)
>  on SPARC and SPARC64
>  T}
> -\fBsched_get_priority_max\fP(2)	2.0
> -\fBsched_get_priority_min\fP(2)	2.0
> -\fBsched_getaffinity\fP(2)	2.6
> -\fBsched_getattr\fP(2)	3.14
> -\fBsched_getparam\fP(2)	2.0
> -\fBsched_getscheduler\fP(2)	2.0
> -\fBsched_rr_get_interval\fP(2)	2.0
> +T{
> +.BR sched_get_priority_max (2)
> +T}	2.0
> +T{
> +.BR sched_get_priority_min (2)
> +T}	2.0
> +T{
> +.BR sched_getaffinity (2)
> +T}	2.6
> +T{
> +.BR sched_getattr (2)
> +T}	3.14
> +T{
> +.BR sched_getparam (2)
> +T}	2.0
> +T{
> +.BR sched_getscheduler (2)
> +T}	2.0
> +T{
> +.BR sched_rr_get_interval (2)
> +T}	2.0
>  T{
>  .BR sched_set_affinity (2)
>  T}	2.6	T{
> @@ -704,51 +1286,87 @@ .SS System call list
>  .BR \%sched_setaffinity (2)
>  on SPARC and SPARC64
>  T}
> -\fBsched_setaffinity\fP(2)	2.6
> -\fBsched_setattr\fP(2)	3.14
> -\fBsched_setparam\fP(2)	2.0
> -\fBsched_setscheduler\fP(2)	2.0
> -\fBsched_yield\fP(2)	2.0
> -\fBseccomp\fP(2)	3.17
> -\fBselect\fP(2)	1.0
> +T{
> +.BR sched_setaffinity (2)
> +T}	2.6
> +T{
> +.BR sched_setattr (2)
> +T}	3.14
> +T{
> +.BR sched_setparam (2)
> +T}	2.0
> +T{
> +.BR sched_setscheduler (2)
> +T}	2.0
> +T{
> +.BR sched_yield (2)
> +T}	2.0
> +T{
> +.BR seccomp (2)
> +T}	3.17
> +T{
> +.BR select (2)
> +T}	1.0
>  T{
>  .BR semctl (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR semget (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR semop (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
> -\fBsemtimedop\fP(2)	2.6; 2.4.22
> +T{
> +.BR semtimedop (2)
> +T}	2.6; 2.4.22
>  T{
>  .BR send (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBsendfile\fP(2)	2.2
> -\fBsendfile64\fP(2)	2.6; 2.4.19
> -\fBsendmmsg\fP(2)	3.0
> +T{
> +.BR sendfile (2)
> +T}	2.2
> +T{
> +.BR sendfile64 (2)
> +T}	2.6; 2.4.19
> +T{
> +.BR sendmmsg (2)
> +T}	3.0
>  T{
>  .BR sendmsg (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
>  T{
>  .BR sendto (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBset_mempolicy\fP(2)	2.6.6
> -\fBset_robust_list\fP(2)	2.6.17
> -\fBset_thread_area\fP(2)	2.6
> -\fBset_tid_address\fP(2)	2.6
> +T{
> +.BR set_mempolicy (2)
> +T}	2.6.6
> +T{
> +.BR set_robust_list (2)
> +T}	2.6.17
> +T{
> +.BR set_thread_area (2)
> +T}	2.6
> +T{
> +.BR set_tid_address (2)
> +T}	2.6
>  T{
>  .BR set_tls (2)
>  T}	2.6.11	T{
> @@ -764,25 +1382,51 @@ .SS System call list
>  .\" T}
>  .\" See http://lkml.org/lkml/2005/8/1/83
>  .\" "[PATCH] remove sys_set_zone_reclaim()"
> -\fBsetdomainname\fP(2)	1.0
> -\fBsetfsgid\fP(2)	1.2
> -\fBsetfsgid32\fP(2)	2.4
> -\fBsetfsuid\fP(2)	1.2
> -\fBsetfsuid32\fP(2)	2.4
> -\fBsetgid\fP(2)	1.0
> -\fBsetgid32\fP(2)	2.4
> -\fBsetgroups\fP(2)	1.0
> -\fBsetgroups32\fP(2)	2.4
> +T{
> +.BR setdomainname (2)
> +T}	1.0
> +T{
> +.BR setfsgid (2)
> +T}	1.2
> +T{
> +.BR setfsgid32 (2)
> +T}	2.4
> +T{
> +.BR setfsuid (2)
> +T}	1.2
> +T{
> +.BR setfsuid32 (2)
> +T}	2.4
> +T{
> +.BR setgid (2)
> +T}	1.0
> +T{
> +.BR setgid32 (2)
> +T}	2.4
> +T{
> +.BR setgroups (2)
> +T}	1.0
> +T{
> +.BR setgroups32 (2)
> +T}	2.4
>  .\" arch/alpha/include/asm/core_lca.h
>  T{
>  .BR sethae (2)
>  T}	2.0	T{
>  Alpha only; see NOTES
>  T}
> -\fBsethostname\fP(2)	1.0
> -\fBsetitimer\fP(2)	1.0
> -\fBsetns\fP(2)	3.0
> -\fBsetpgid\fP(2)	1.0
> +T{
> +.BR sethostname (2)
> +T}	1.0
> +T{
> +.BR setitimer (2)
> +T}	1.0
> +T{
> +.BR setns (2)
> +T}	3.0
> +T{
> +.BR setpgid (2)
> +T}	1.0
>  T{
>  .BR setpgrp (2)
>  T}	2.0	T{
> @@ -790,77 +1434,143 @@ .SS System call list
>  .BR setpgid (2)
>  on Alpha
>  T}
> -\fBsetpriority\fP(2)	1.0
> -\fBsetregid\fP(2)	1.0
> -\fBsetregid32\fP(2)	2.4
> -\fBsetresgid\fP(2)	2.2
> -\fBsetresgid32\fP(2)	2.4
> -\fBsetresuid\fP(2)	2.2
> -\fBsetresuid32\fP(2)	2.4
> -\fBsetreuid\fP(2)	1.0
> -\fBsetreuid32\fP(2)	2.4
> -\fBsetrlimit\fP(2)	1.0
> -\fBsetsid\fP(2)	1.0
> +T{
> +.BR setpriority (2)
> +T}	1.0
> +T{
> +.BR setregid (2)
> +T}	1.0
> +T{
> +.BR setregid32 (2)
> +T}	2.4
> +T{
> +.BR setresgid (2)
> +T}	2.2
> +T{
> +.BR setresgid32 (2)
> +T}	2.4
> +T{
> +.BR setresuid (2)
> +T}	2.2
> +T{
> +.BR setresuid32 (2)
> +T}	2.4
> +T{
> +.BR setreuid (2)
> +T}	1.0
> +T{
> +.BR setreuid32 (2)
> +T}	2.4
> +T{
> +.BR setrlimit (2)
> +T}	1.0
> +T{
> +.BR setsid (2)
> +T}	1.0
>  T{
>  .BR setsockopt (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBsettimeofday\fP(2)	1.0
> -\fBsetuid\fP(2)	1.0
> -\fBsetuid32\fP(2)	2.4
> -\fBsetup\fP(2)	1.0	Removed in 2.2
> -\fBsetxattr\fP(2)	2.6; 2.4.18
> -\fBsgetmask\fP(2)	1.0
> +T{
> +.BR settimeofday (2)
> +T}	1.0
> +T{
> +.BR setuid (2)
> +T}	1.0
> +T{
> +.BR setuid32 (2)
> +T}	2.4
> +T{
> +.BR setup (2)
> +T}	1.0	Removed in 2.2
> +T{
> +.BR setxattr (2)
> +T}	2.6; 2.4.18
> +T{
> +.BR sgetmask (2)
> +T}	1.0
>  T{
>  .BR shmat (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR shmctl (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR shmdt (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR shmget (2)
>  T}	2.0	T{
> -See notes on \fBipc\fP(2)
> +See notes on
> +.BR ipc (2)
>  T}
>  T{
>  .BR shutdown (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> -T}
> -\fBsigaction\fP(2)	1.0
> -\fBsigaltstack\fP(2)	2.2
> -\fBsignal\fP(2)	1.0
> -\fBsignalfd\fP(2)	2.6.22
> -\fBsignalfd4\fP(2)	2.6.27
> -\fBsigpending\fP(2)	1.0
> -\fBsigprocmask\fP(2)	1.0
> -\fBsigreturn\fP(2)	1.0
> -\fBsigsuspend\fP(2)	1.0
> +See notes on
> +.BR socketcall (2)
> +T}
> +T{
> +.BR sigaction (2)
> +T}	1.0
> +T{
> +.BR sigaltstack (2)
> +T}	2.2
> +T{
> +.BR signal (2)
> +T}	1.0
> +T{
> +.BR signalfd (2)
> +T}	2.6.22
> +T{
> +.BR signalfd4 (2)
> +T}	2.6.27
> +T{
> +.BR sigpending (2)
> +T}	1.0
> +T{
> +.BR sigprocmask (2)
> +T}	1.0
> +T{
> +.BR sigreturn (2)
> +T}	1.0
> +T{
> +.BR sigsuspend (2)
> +T}	1.0
>  T{
>  .BR socket (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
> -\fBsocketcall\fP(2)	1.0
> +T{
> +.BR socketcall (2)
> +T}	1.0
>  .\" Implements BSD socket calls
>  T{
>  .BR socketpair (2)
>  T}	2.0	T{
> -See notes on \fBsocketcall\fP(2)
> +See notes on
> +.BR socketcall (2)
>  T}
>  .\" 5a0015d62668e64c8b6e02e360fbbea121bfd5e6
> -\fBspill\fP(2)	2.6.13	Xtensa only
> -\fBsplice\fP(2)	2.6.17
> +T{
> +.BR spill (2)
> +T}	2.6.13	Xtensa only
> +T{
> +.BR splice (2)
> +T}	2.6.17
>  T{
>  .BR spu_create (2)
>  T}	2.6.16	T{
> @@ -871,13 +1581,27 @@ .SS System call list
>  T}	2.6.16	T{
>  PowerPC/PowerPC64 only
>  T}
> -\fBssetmask\fP(2)	1.0
> -\fBstat\fP(2)	1.0
> -\fBstat64\fP(2)	2.4
> -\fBstatfs\fP(2)	1.0
> -\fBstatfs64\fP(2)	2.6
> -\fBstatx\fP(2)	4.11
> -\fBstime\fP(2)	1.0
> +T{
> +.BR ssetmask (2)
> +T}	1.0
> +T{
> +.BR stat (2)
> +T}	1.0
> +T{
> +.BR stat64 (2)
> +T}	2.4
> +T{
> +.BR statfs (2)
> +T}	1.0
> +T{
> +.BR statfs64 (2)
> +T}	2.6
> +T{
> +.BR statx (2)
> +T}	4.11
> +T{
> +.BR stime (2)
> +T}	1.0
>  T{
>  .BR subpage_prot (2)
>  T}	2.6.25	T{
> @@ -889,89 +1613,201 @@ .SS System call list
>  PowerPC/PowerPC64 only
>  T}
>  .\" 529d235a0e190ded1d21ccc80a73e625ebcad09b
> -\fBswitch_endian\fP(2)	4.1	PowerPC64 only
> -\fBswapoff\fP(2)	1.0
> -\fBswapon\fP(2)	1.0
> -\fBsymlink\fP(2)	1.0
> -\fBsymlinkat\fP(2)	2.6.16
> -\fBsync\fP(2)	1.0
> -\fBsync_file_range\fP(2)	2.6.17
> -\fBsync_file_range2\fP(2)	2.6.22
> +T{
> +.BR switch_endian (2)
> +T}	4.1	PowerPC64 only
> +T{
> +.BR swapoff (2)
> +T}	1.0
> +T{
> +.BR swapon (2)
> +T}	1.0
> +T{
> +.BR symlink (2)
> +T}	1.0
> +T{
> +.BR symlinkat (2)
> +T}	2.6.16
> +T{
> +.BR sync (2)
> +T}	1.0
> +T{
> +.BR sync_file_range (2)
> +T}	2.6.17
> +T{
> +.BR sync_file_range2 (2)
> +T}	2.6.22
>  .\" PowerPC, ARM, tile
>  .\" First appeared on ARM, as arm_sync_file_range(), but later renamed
>  .\" \fBsys_debug_setcontext\fP(2)	???	PowerPC if CONFIG_PPC32
> -\fBsyncfs\fP(2)	2.6.39
> -\fBsys_debug_setcontext\fP(2)	2.6.11	PowerPC only
> +T{
> +.BR syncfs (2)
> +T}	2.6.39
> +T{
> +.BR sys_debug_setcontext (2)
> +T}	2.6.11	PowerPC only
>  T{
>  .BR syscall (2)
>  T}	1.0	T{
>  Still available on ARM OABI
>  and MIPS O32 ABI
>  T}
> -\fBsysfs\fP(2)	1.2
> -\fBsysinfo\fP(2)	1.0
> -\fBsyslog\fP(2)	1.0
> +T{
> +.BR sysfs (2)
> +T}	1.2
> +T{
> +.BR sysinfo (2)
> +T}	1.0
> +T{
> +.BR syslog (2)
> +T}	1.0
>  .\" glibc interface is \fBklogctl\fP(3)
> -\fBsysmips\fP(2)	2.6.0	MIPS only
> -\fBtee\fP(2)	2.6.17
> -\fBtgkill\fP(2)	2.6
> -\fBtime\fP(2)	1.0
> -\fBtimer_create\fP(2)	2.6
> -\fBtimer_delete\fP(2)	2.6
> -\fBtimer_getoverrun\fP(2)	2.6
> -\fBtimer_gettime\fP(2)	2.6
> -\fBtimer_settime\fP(2)	2.6
> +T{
> +.BR sysmips (2)
> +T}	2.6.0	MIPS only
> +T{
> +.BR tee (2)
> +T}	2.6.17
> +T{
> +.BR tgkill (2)
> +T}	2.6
> +T{
> +.BR time (2)
> +T}	1.0
> +T{
> +.BR timer_create (2)
> +T}	2.6
> +T{
> +.BR timer_delete (2)
> +T}	2.6
> +T{
> +.BR timer_getoverrun (2)
> +T}	2.6
> +T{
> +.BR timer_gettime (2)
> +T}	2.6
> +T{
> +.BR timer_settime (2)
> +T}	2.6
>  .\" .\" b215e283992899650c4271e7385c79e26fb9a88e
>  .\" .\" 4d672e7ac79b5ec5cdc90e450823441e20464691
>  .\" \fBtimerfd\fP(2)	2.6.22	T{
>  .\" Old timerfd interface,
>  .\" removed in 2.6.25
>  .\" T}
> -\fBtimerfd_create\fP(2)	2.6.25
> -\fBtimerfd_gettime\fP(2)	2.6.25
> -\fBtimerfd_settime\fP(2)	2.6.25
> -\fBtimes\fP(2)	1.0
> -\fBtkill\fP(2)	2.6; 2.4.22
> -\fBtruncate\fP(2)	1.0
> -\fBtruncate64\fP(2)	2.4
> -\fBugetrlimit\fP(2)	2.4
> -\fBumask\fP(2)	1.0
> -\fBumount\fP(2)	1.0
> +T{
> +.BR timerfd_create (2)
> +T}	2.6.25
> +T{
> +.BR timerfd_gettime (2)
> +T}	2.6.25
> +T{
> +.BR timerfd_settime (2)
> +T}	2.6.25
> +T{
> +.BR times (2)
> +T}	1.0
> +T{
> +.BR tkill (2)
> +T}	2.6; 2.4.22
> +T{
> +.BR truncate (2)
> +T}	1.0
> +T{
> +.BR truncate64 (2)
> +T}	2.4
> +T{
> +.BR ugetrlimit (2)
> +T}	2.4
> +T{
> +.BR umask (2)
> +T}	1.0
> +T{
> +.BR umount (2)
> +T}	1.0
>  .\" sys_oldumount() -- __NR_umount
> -\fBumount2\fP(2)	2.2
> +T{
> +.BR umount2 (2)
> +T}	2.2
>  .\" sys_umount() -- __NR_umount2
> -\fBuname\fP(2)	1.0
> -\fBunlink\fP(2)	1.0
> -\fBunlinkat\fP(2)	2.6.16
> -\fBunshare\fP(2)	2.6.16
> -\fBuselib\fP(2)	1.0
> -\fBustat\fP(2)	1.0
> -\fBuserfaultfd\fP(2)	4.3
> -\fBusr26\fP(2)	2.4.8.1	ARM OABI only
> -\fBusr32\fP(2)	2.4.8.1	ARM OABI only
> -\fButime\fP(2)	1.0
> -\fButimensat\fP(2)	2.6.22
> -\fButimes\fP(2)	2.2
> -\fButrap_install\fP(2)	2.2	SPARC64 only
> +T{
> +.BR uname (2)
> +T}	1.0
> +T{
> +.BR unlink (2)
> +T}	1.0
> +T{
> +.BR unlinkat (2)
> +T}	2.6.16
> +T{
> +.BR unshare (2)
> +T}	2.6.16
> +T{
> +.BR uselib (2)
> +T}	1.0
> +T{
> +.BR ustat (2)
> +T}	1.0
> +T{
> +.BR userfaultfd (2)
> +T}	4.3
> +T{
> +.BR usr26 (2)
> +T}	2.4.8.1	ARM OABI only
> +T{
> +.BR usr32 (2)
> +T}	2.4.8.1	ARM OABI only
> +T{
> +.BR utime (2)
> +T}	1.0
> +T{
> +.BR utimensat (2)
> +T}	2.6.22
> +T{
> +.BR utimes (2)
> +T}	2.2
> +T{
> +.BR utrap_install (2)
> +T}	2.2	SPARC64 only
>  .\" FIXME . document utrap_install()
>  .\" There's a man page for Solaris 5.11
> -\fBvfork\fP(2)	2.2
> -\fBvhangup\fP(2)	1.0
> +T{
> +.BR vfork (2)
> +T}	2.2
> +T{
> +.BR vhangup (2)
> +T}	1.0
>  T{
>  .BR vm86old (2)
>  T}	1.0	T{
>  Was "vm86"; renamed in
>  2.0.28/2.2
>  T}
> -\fBvm86\fP(2)	2.0.28; 2.2
> -\fBvmsplice\fP(2)	2.6.17
> -\fBwait4\fP(2)	1.0
> -\fBwaitid\fP(2)	2.6.10
> -\fBwaitpid\fP(2)	1.0
> -\fBwrite\fP(2)	1.0
> -\fBwritev\fP(2)	2.0
> +T{
> +.BR vm86 (2)
> +T}	2.0.28; 2.2
> +T{
> +.BR vmsplice (2)
> +T}	2.6.17
> +T{
> +.BR wait4 (2)
> +T}	1.0
> +T{
> +.BR waitid (2)
> +T}	2.6.10
> +T{
> +.BR waitpid (2)
> +T}	1.0
> +T{
> +.BR write (2)
> +T}	1.0
> +T{
> +.BR writev (2)
> +T}	2.0
>  .\" 5a0015d62668e64c8b6e02e360fbbea121bfd5e6
> -\fBxtensa\fP(2)	2.6.13	Xtensa only
> +T{
> +.BR xtensa (2)
> +T}	2.6.13	Xtensa only
>  .TE
>  .P
>  On many platforms, including x86-32, socket calls are all multiplexed
> diff --git a/man/man3/wctrans.3 b/man/man3/wctrans.3
> index 63faaa998..2b28c7041 100644
> --- a/man/man3/wctrans.3
> +++ b/man/man3/wctrans.3
> @@ -49,8 +49,16 @@ .SH DESCRIPTION
>  .IP
>  .TS
>  L1 Lx.
> -"tolower" \-	realizes the \fBtolower\fP(3) mapping
> -"toupper" \-	realizes the \fBtoupper\fP(3) mapping
> +"tolower" \-	T{
> +realizes the
> +.BR tolower (3)
> +mapping
> +T}
> +"toupper" \-	T{
> +realizes the
> +.BR toupper (3)
> +mapping
> +T}
>  .TE
>  .SH RETURN VALUE
>  The
> diff --git a/man/man3/wctype.3 b/man/man3/wctype.3
> index 0e7a7b047..9811a00a8 100644
> --- a/man/man3/wctype.3
> +++ b/man/man3/wctype.3
> @@ -50,18 +50,66 @@ .SH DESCRIPTION
>  .IP
>  .TS
>  L1 Lx.
> -"alnum" \-	realizes the \fBisalnum\fP(3) classification function
> -"alpha" \-	realizes the \fBisalpha\fP(3) classification function
> -"blank" \-	realizes the \fBisblank\fP(3) classification function
> -"cntrl" \-	realizes the \fBiscntrl\fP(3) classification function
> -"digit" \-	realizes the \fBisdigit\fP(3) classification function
> -"graph" \-	realizes the \fBisgraph\fP(3) classification function
> -"lower" \-	realizes the \fBislower\fP(3) classification function
> -"print" \-	realizes the \fBisprint\fP(3) classification function
> -"punct" \-	realizes the \fBispunct\fP(3) classification function
> -"space" \-	realizes the \fBisspace\fP(3) classification function
> -"upper" \-	realizes the \fBisupper\fP(3) classification function
> -"xdigit" \-	realizes the \fBisxdigit\fP(3) classification function
> +"alnum" \-	T{
> +realizes the
> +.BR isalnum (3)
> +classification function
> +T}
> +"alpha" \-	T{
> +realizes the
> +.BR isalpha (3)
> +classification function
> +T}
> +"blank" \-	T{
> +realizes the
> +.BR isblank (3)
> +classification function
> +T}
> +"cntrl" \-	T{
> +realizes the
> +.BR iscntrl (3)
> +classification function
> +T}
> +"digit" \-	T{
> +realizes the
> +.BR isdigit (3)
> +classification function
> +T}
> +"graph" \-	T{
> +realizes the
> +.BR isgraph (3)
> +classification function
> +T}
> +"lower" \-	T{
> +realizes the
> +.BR islower (3)
> +classification function
> +T}
> +"print" \-	T{
> +realizes the
> +.BR isprint (3)
> +classification function
> +T}
> +"punct" \-	T{
> +realizes the
> +.BR ispunct (3)
> +classification function
> +T}
> +"space" \-	T{
> +realizes the
> +.BR isspace (3)
> +classification function
> +T}
> +"upper" \-	T{
> +realizes the
> +.BR isupper (3)
> +classification function
> +T}
> +"xdigit" \-	T{
> +realizes the
> +.BR isxdigit (3)
> +classification function
> +T}
>  .TE
>  .SH RETURN VALUE
>  The
> diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
> index 0e7f46661..25b76920e 100644
> --- a/man/man7/namespaces.7
> +++ b/man/man7/namespaces.7
> @@ -35,34 +35,50 @@ .SS Namespace types
>  l  lB lw(21n) lx.
>  Namespace	Flag	Page	Isolates
>  _
> -Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
> +Cgroup	CLONE_NEWCGROUP	T{
> +.BR cgroup_namespaces (7)
> +T}	T{
>  .na
>  .nh
>  Cgroup root directory
>  T}
> -IPC	CLONE_NEWIPC	\fBipc_namespaces\fP(7)	T{
> +IPC	CLONE_NEWIPC	T{
> +.BR ipc_namespaces (7)
> +T}	T{
>  .na
>  .nh
>  System V IPC,
>  POSIX message queues
>  T}
> -Network	CLONE_NEWNET	\fBnetwork_namespaces\fP(7)	T{
> +Network	CLONE_NEWNET	T{
> +.BR network_namespaces (7)
> +T}	T{
>  .na
>  .nh
>  Network devices,
>  stacks, ports, etc.
>  T}
> -Mount	CLONE_NEWNS	\fBmount_namespaces\fP(7)	Mount points
> -PID	CLONE_NEWPID	\fBpid_namespaces\fP(7)	Process IDs
> -Time	CLONE_NEWTIME	\fBtime_namespaces\fP(7)	T{
> +Mount	CLONE_NEWNS	T{
> +.BR mount_namespaces (7)
> +T}	Mount points
> +PID	CLONE_NEWPID	T{
> +.BR pid_namespaces (7)
> +T}	Process IDs
> +Time	CLONE_NEWTIME	T{
> +.BR time_namespaces (7)
> +T}	T{
>  .na
>  .nh
>  Boot and monotonic clocks
>  T}
> -User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{
> +User	CLONE_NEWUSER	T{
> +.BR user_namespaces (7)
> +T}	T{
>  User and group IDs
>  T}
> -UTS	CLONE_NEWUTS	\fButs_namespaces\fP(7)	T{
> +UTS	CLONE_NEWUTS	T{
> +.BR uts_namespaces (7)
> +T}	T{
>  .na
>  .nh
>  Hostname and NIS domain name
> diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
> index 36cbf8d6e..50d3fe645 100644
> --- a/man/man7/signal-safety.7
> +++ b/man/man7/signal-safety.7
> @@ -74,209 +74,365 @@ .SH DESCRIPTION
>  lb      lb
>  lw(24n) l.
>  Function	Notes
> -\fBabort\fP(3)	Added in POSIX.1-2001 TC1
> -\fBaccept\fP(2)
> -\fBaccess\fP(2)
> -\fBaio_error\fP(3)
> -\fBaio_return\fP(3)
> -\fBaio_suspend\fP(3)	See notes below
> -\fBalarm\fP(2)
> -\fBbind\fP(2)
> -\fBcfgetispeed\fP(3)
> -\fBcfgetospeed\fP(3)
> -\fBcfsetispeed\fP(3)
> -\fBcfsetospeed\fP(3)
> -\fBchdir\fP(2)
> -\fBchmod\fP(2)
> -\fBchown\fP(2)
> -\fBclock_gettime\fP(2)
> -\fBclose\fP(2)
> -\fBconnect\fP(2)
> -\fBcreat\fP(2)
> -\fBdup\fP(2)
> -\fBdup2\fP(2)
> +T{
> +.BR abort (3)
> +T}	Added in POSIX.1-2001 TC1
> +.BR accept (2)
> +.BR access (2)
> +.BR aio_error (3)
> +.BR aio_return (3)
> +T{
> +.BR aio_suspend (3)
> +T}	See notes below
> +.BR alarm (2)
> +.BR bind (2)
> +.BR cfgetispeed (3)
> +.BR cfgetospeed (3)
> +.BR cfsetispeed (3)
> +.BR cfsetospeed (3)
> +.BR chdir (2)
> +.BR chmod (2)
> +.BR chown (2)
> +.BR clock_gettime (2)
> +.BR close (2)
> +.BR connect (2)
> +.BR creat (2)
> +.BR dup (2)
> +.BR dup2 (2)
>  T{
>  .BR execl (3)
>  T}	T{
>  Added in POSIX.1-2008; see notes below
>  T}
> -\fBexecle\fP(3)	See notes below
> -\fBexecv\fP(3)	Added in POSIX.1-2008
> -\fBexecve\fP(2)
> -\fB_exit\fP(2)
> -\fB_Exit\fP(2)
> -\fBfaccessat\fP(2)	Added in POSIX.1-2008
> -\fBfchdir\fP(2)	Added in POSIX.1-2008 TC1
> -\fBfchmod\fP(2)
> -\fBfchmodat\fP(2)	Added in POSIX.1-2008
> -\fBfchown\fP(2)
> -\fBfchownat\fP(2)	Added in POSIX.1-2008
> -\fBfcntl\fP(2)
> -\fBfdatasync\fP(2)
> -\fBfexecve\fP(3)	Added in POSIX.1-2008
> -\fBffs\fP(3)	Added in POSIX.1-2008 TC2
> -\fBfork\fP(2)	See notes below
> -\fBfstat\fP(2)
> -\fBfstatat\fP(2)	Added in POSIX.1-2008
> -\fBfsync\fP(2)
> -\fBftruncate\fP(2)
> -\fBfutimens\fP(3)	Added in POSIX.1-2008
> -\fBgetegid\fP(2)
> -\fBgeteuid\fP(2)
> -\fBgetgid\fP(2)
> -\fBgetgroups\fP(2)
> -\fBgetpeername\fP(2)
> -\fBgetpgrp\fP(2)
> -\fBgetpid\fP(2)
> -\fBgetppid\fP(2)
> -\fBgetsockname\fP(2)
> -\fBgetsockopt\fP(2)
> -\fBgetuid\fP(2)
> -\fBhtonl\fP(3)	Added in POSIX.1-2008 TC2
> -\fBhtons\fP(3)	Added in POSIX.1-2008 TC2
> -\fBkill\fP(2)
> -\fBlink\fP(2)
> -\fBlinkat\fP(2)	Added in POSIX.1-2008
> -\fBlisten\fP(2)
> +T{
> +.BR execle (3)
> +T}	See notes below
> +T{
> +.BR execv (3)
> +T}	Added in POSIX.1-2008
> +.BR execve (2)
> +.BR _exit (2)
> +.BR _Exit (2)
> +T{
> +.BR faccessat (2)
> +T}	Added in POSIX.1-2008
> +T{
> +.BR fchdir (2)
> +T}	Added in POSIX.1-2008 TC1
> +.BR fchmod (2)
> +T{
> +.BR fchmodat (2)
> +T}	Added in POSIX.1-2008
> +.BR fchown (2)
> +T{
> +.BR fchownat (2)
> +T}	Added in POSIX.1-2008
> +.BR fcntl (2)
> +.BR fdatasync (2)
> +T{
> +.BR fexecve (3)
> +T}	Added in POSIX.1-2008
> +T{
> +.BR ffs (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR fork (2)
> +T}	See notes below
> +.BR fstat (2)
> +T{
> +.BR fstatat (2)
> +T}	Added in POSIX.1-2008
> +.BR fsync (2)
> +.BR ftruncate (2)
> +T{
> +.BR futimens (3)
> +T}	Added in POSIX.1-2008
> +.BR getegid (2)
> +.BR geteuid (2)
> +.BR getgid (2)
> +.BR getgroups (2)
> +.BR getpeername (2)
> +.BR getpgrp (2)
> +.BR getpid (2)
> +.BR getppid (2)
> +.BR getsockname (2)
> +.BR getsockopt (2)
> +.BR getuid (2)
> +T{
> +.BR htonl (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR htons (3)
> +T}	Added in POSIX.1-2008 TC2
> +.BR kill (2)
> +.BR link (2)
> +T{
> +.BR linkat (2)
> +T}	Added in POSIX.1-2008
> +.BR listen (2)
>  T{
>  .BR longjmp (3)
>  T}	T{
>  Added in POSIX.1-2008 TC2; see notes below
>  T}
> -\fBlseek\fP(2)
> -\fBlstat\fP(2)
> -\fBmemccpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBmemchr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBmemcmp\fP(3)	Added in POSIX.1-2008 TC2
> -\fBmemcpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBmemmove\fP(3)	Added in POSIX.1-2008 TC2
> -\fBmemset\fP(3)	Added in POSIX.1-2008 TC2
> -\fBmkdir\fP(2)
> -\fBmkdirat\fP(2)	Added in POSIX.1-2008
> -\fBmkfifo\fP(3)
> -\fBmkfifoat\fP(3)	Added in POSIX.1-2008
> -\fBmknod\fP(2)	Added in POSIX.1-2008
> -\fBmknodat\fP(2)	Added in POSIX.1-2008
> -\fBntohl\fP(3)	Added in POSIX.1-2008 TC2
> -\fBntohs\fP(3)	Added in POSIX.1-2008 TC2
> -\fBopen\fP(2)
> -\fBopenat\fP(2)	Added in POSIX.1-2008
> -\fBpause\fP(2)
> -\fBpipe\fP(2)
> -\fBpoll\fP(2)
> -\fBposix_trace_event\fP(3)
> -\fBpselect\fP(2)
> -\fBpthread_kill\fP(3)	Added in POSIX.1-2008 TC1
> -\fBpthread_self\fP(3)	Added in POSIX.1-2008 TC1
> -\fBpthread_sigmask\fP(3)	Added in POSIX.1-2008 TC1
> -\fBraise\fP(3)
> -\fBread\fP(2)
> -\fBreadlink\fP(2)
> -\fBreadlinkat\fP(2)	Added in POSIX.1-2008
> -\fBrecv\fP(2)
> -\fBrecvfrom\fP(2)
> -\fBrecvmsg\fP(2)
> -\fBrename\fP(2)
> -\fBrenameat\fP(2)	Added in POSIX.1-2008
> -\fBrmdir\fP(2)
> -\fBselect\fP(2)
> -\fBsem_post\fP(3)
> -\fBsend\fP(2)
> -\fBsendmsg\fP(2)
> -\fBsendto\fP(2)
> -\fBsetgid\fP(2)
> -\fBsetpgid\fP(2)
> -\fBsetsid\fP(2)
> -\fBsetsockopt\fP(2)
> -\fBsetuid\fP(2)
> -\fBshutdown\fP(2)
> -\fBsigaction\fP(2)
> -\fBsigaddset\fP(3)
> -\fBsigdelset\fP(3)
> -\fBsigemptyset\fP(3)
> -\fBsigfillset\fP(3)
> -\fBsigismember\fP(3)
> +.BR lseek (2)
> +.BR lstat (2)
> +T{
> +.BR memccpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR memchr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR memcmp (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR memcpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR memmove (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR memset (3)
> +T}	Added in POSIX.1-2008 TC2
> +.BR mkdir (2)
> +T{
> +.BR mkdirat (2)
> +T}	Added in POSIX.1-2008
> +.BR mkfifo (3)
> +T{
> +.BR mkfifoat (3)
> +T}	Added in POSIX.1-2008
> +T{
> +.BR mknod (2)
> +T}	Added in POSIX.1-2008
> +T{
> +.BR mknodat (2)
> +T}	Added in POSIX.1-2008
> +T{
> +.BR ntohl (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR ntohs (3)
> +T}	Added in POSIX.1-2008 TC2
> +.BR open (2)
> +T{
> +.BR openat (2)
> +T}	Added in POSIX.1-2008
> +.BR pause (2)
> +.BR pipe (2)
> +.BR poll (2)
> +.BR posix_trace_event (3)
> +.BR pselect (2)
> +T{
> +.BR pthread_kill (3)
> +T}	Added in POSIX.1-2008 TC1
> +T{
> +.BR pthread_self (3)
> +T}	Added in POSIX.1-2008 TC1
> +T{
> +.BR pthread_sigmask (3)
> +T}	Added in POSIX.1-2008 TC1
> +.BR raise (3)
> +.BR read (2)
> +.BR readlink (2)
> +T{
> +.BR readlinkat (2)
> +T}	Added in POSIX.1-2008
> +.BR recv (2)
> +.BR recvfrom (2)
> +.BR recvmsg (2)
> +.BR rename (2)
> +T{
> +.BR renameat (2)
> +T}	Added in POSIX.1-2008
> +.BR rmdir (2)
> +.BR select (2)
> +.BR sem_post (3)
> +.BR send (2)
> +.BR sendmsg (2)
> +.BR sendto (2)
> +.BR setgid (2)
> +.BR setpgid (2)
> +.BR setsid (2)
> +.BR setsockopt (2)
> +.BR setuid (2)
> +.BR shutdown (2)
> +.BR sigaction (2)
> +.BR sigaddset (3)
> +.BR sigdelset (3)
> +.BR sigemptyset (3)
> +.BR sigfillset (3)
> +.BR sigismember (3)
>  T{
>  .BR siglongjmp (3)
>  T}	T{
>  Added in POSIX.1-2008 TC2; see notes below
>  T}
> -\fBsignal\fP(2)
> -\fBsigpause\fP(3)
> -\fBsigpending\fP(2)
> -\fBsigprocmask\fP(2)
> -\fBsigqueue\fP(2)
> -\fBsigset\fP(3)
> -\fBsigsuspend\fP(2)
> -\fBsleep\fP(3)
> -\fBsockatmark\fP(3)	Added in POSIX.1-2001 TC2
> -\fBsocket\fP(2)
> -\fBsocketpair\fP(2)
> -\fBstat\fP(2)
> -\fBstpcpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstpncpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrcat\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrchr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrcmp\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrcpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrcspn\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrlen\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrncat\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrncmp\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrncpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrnlen\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrpbrk\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrrchr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrspn\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrstr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBstrtok_r\fP(3)	Added in POSIX.1-2008 TC2
> -\fBsymlink\fP(2)
> -\fBsymlinkat\fP(2)	Added in POSIX.1-2008
> -\fBtcdrain\fP(3)
> -\fBtcflow\fP(3)
> -\fBtcflush\fP(3)
> -\fBtcgetattr\fP(3)
> -\fBtcgetpgrp\fP(3)
> -\fBtcsendbreak\fP(3)
> -\fBtcsetattr\fP(3)
> -\fBtcsetpgrp\fP(3)
> -\fBtime\fP(2)
> -\fBtimer_getoverrun\fP(2)
> -\fBtimer_gettime\fP(2)
> -\fBtimer_settime\fP(2)
> -\fBtimes\fP(2)
> -\fBumask\fP(2)
> -\fBuname\fP(2)
> -\fBunlink\fP(2)
> -\fBunlinkat\fP(2)	Added in POSIX.1-2008
> -\fButime\fP(2)
> -\fButimensat\fP(2)	Added in POSIX.1-2008
> -\fButimes\fP(2)	Added in POSIX.1-2008
> -\fBwait\fP(2)
> -\fBwaitpid\fP(2)
> -\fBwcpcpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcpncpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcscat\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcschr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcscmp\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcscpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcscspn\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcslen\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcsncat\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcsncmp\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcsncpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcsnlen\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcspbrk\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcsrchr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcsspn\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcsstr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwcstok\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwmemchr\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwmemcmp\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwmemcpy\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwmemmove\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwmemset\fP(3)	Added in POSIX.1-2008 TC2
> -\fBwrite\fP(2)
> +.BR signal (2)
> +.BR sigpause (3)
> +.BR sigpending (2)
> +.BR sigprocmask (2)
> +.BR sigqueue (2)
> +.BR sigset (3)
> +.BR sigsuspend (2)
> +.BR sleep (3)
> +T{
> +.BR sockatmark (3)
> +T}	Added in POSIX.1-2001 TC2
> +.BR socket (2)
> +.BR socketpair (2)
> +.BR stat (2)
> +T{
> +.BR stpcpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR stpncpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strcat (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strchr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strcmp (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strcpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strcspn (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strlen (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strncat (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strncmp (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strncpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strnlen (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strpbrk (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strrchr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strspn (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strstr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR strtok_r (3)
> +T}	Added in POSIX.1-2008 TC2
> +.BR symlink (2)
> +T{
> +.BR symlinkat (2)
> +T}	Added in POSIX.1-2008
> +.BR tcdrain (3)
> +.BR tcflow (3)
> +.BR tcflush (3)
> +.BR tcgetattr (3)
> +.BR tcgetpgrp (3)
> +.BR tcsendbreak (3)
> +.BR tcsetattr (3)
> +.BR tcsetpgrp (3)
> +.BR time (2)
> +.BR timer_getoverrun (2)
> +.BR timer_gettime (2)
> +.BR timer_settime (2)
> +.BR times (2)
> +.BR umask (2)
> +.BR uname (2)
> +.BR unlink (2)
> +T{
> +.BR unlinkat (2)
> +T}	Added in POSIX.1-2008
> +.BR utime (2)
> +T{
> +.BR utimensat (2)
> +T}	Added in POSIX.1-2008
> +T{
> +.BR utimes (2)
> +T}	Added in POSIX.1-2008
> +.BR wait (2)
> +.BR waitpid (2)
> +T{
> +.BR wcpcpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcpncpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcscat (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcschr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcscmp (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcscpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcscspn (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcslen (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcsncat (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcsncmp (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcsncpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcsnlen (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcspbrk (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcsrchr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcsspn (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcsstr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wcstok (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wmemchr (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wmemcmp (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wmemcpy (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wmemmove (3)
> +T}	Added in POSIX.1-2008 TC2
> +T{
> +.BR wmemset (3)
> +T}	Added in POSIX.1-2008 TC2
> +.BR write (2)
>  .TE
>  .P
>  Notes:
> diff --git a/man/man7/signal.7 b/man/man7/signal.7
> index 7a9e91cc7..5f847935e 100644
> --- a/man/man7/signal.7
> +++ b/man/man7/signal.7
> @@ -366,8 +366,14 @@ .SS Standard signals
>  ____
>  lB c c l.
>  Signal	Standard	Action	Comment
> -SIGABRT	P1990	Core	Abort signal from \fBabort\fP(3)
> -SIGALRM	P1990	Term	Timer signal from \fBalarm\fP(2)
> +SIGABRT	P1990	Core	T{
> +Abort signal from
> +.BR abort (3)
> +T}
> +SIGALRM	P1990	Term	T{
> +Timer signal from
> +.BR alarm (2)
> +T}
>  SIGBUS	P2001	Core	Bus error (bad memory access)
>  SIGCHLD	P1990	Ign	Child stopped or terminated
>  SIGCLD	\-	Ign	A synonym for \fBSIGCHLD\fP
> @@ -384,7 +390,10 @@ .SS Standard signals
>  SIGKILL	P1990	Term	Kill signal
>  SIGLOST	\-	Term	File lock lost (unused)
>  SIGPIPE	P1990	Term	Broken pipe: write to pipe with no
> -			readers; see \fBpipe\fP(7)
> +			T{
> +readers; see
> +.BR pipe (7)
> +T}
>  SIGPOLL	P2001	Term	Pollable event (Sys V);
>  			synonym for \fBSIGIO\fP
>  SIGPROF	P2001	Term	Profiling timer expired
> @@ -395,7 +404,10 @@ .SS Standard signals
>  SIGSTOP	P1990	Stop	Stop process
>  SIGTSTP	P1990	Stop	Stop typed at terminal
>  SIGSYS	P2001	Core	Bad system call (SVr4);
> -			see also \fBseccomp\fP(2)
> +			T{
> +see also
> +.BR seccomp (2)
> +T}
>  SIGTERM	P1990	Term	Termination signal
>  SIGTRAP	P2001	Core	Trace/breakpoint trap
>  SIGTTIN	P1990	Stop	Terminal input for background process
> @@ -406,9 +418,15 @@ .SS Standard signals
>  SIGUSR2	P1990	Term	User-defined signal 2
>  SIGVTALRM	P2001	Term	Virtual alarm clock (4.2BSD)
>  SIGXCPU	P2001	Core	CPU time limit exceeded (4.2BSD);
> -			see \fBsetrlimit\fP(2)
> +			T{
> +see
> +.BR setrlimit (2)
> +T}
>  SIGXFSZ	P2001	Core	File size limit exceeded (4.2BSD);
> -			see \fBsetrlimit\fP(2)
> +			T{
> +see
> +.BR setrlimit (2)
> +T}
>  SIGWINCH	\-	Ign	Window resize signal (4.3BSD, Sun)
>  .TE
>  .P
> @@ -648,12 +666,36 @@ .SS Real-time signals
>  lb lb
>  l l.
>  Linux 2.0 and earlier	Linux 2.2 and later
> -\fBsigaction\fP(2)	\fBrt_sigaction\fP(2)
> -\fBsigpending\fP(2)	\fBrt_sigpending\fP(2)
> -\fBsigprocmask\fP(2)	\fBrt_sigprocmask\fP(2)
> -\fBsigreturn\fP(2)	\fBrt_sigreturn\fP(2)
> -\fBsigsuspend\fP(2)	\fBrt_sigsuspend\fP(2)
> -\fBsigtimedwait\fP(2)	\fBrt_sigtimedwait\fP(2)
> +T{
> +.BR sigaction (2)
> +T}	T{
> +.BR rt_sigaction (2)
> +T}
> +T{
> +.BR sigpending (2)
> +T}	T{
> +.BR rt_sigpending (2)
> +T}
> +T{
> +.BR sigprocmask (2)
> +T}	T{
> +.BR rt_sigprocmask (2)
> +T}
> +T{
> +.BR sigreturn (2)
> +T}	T{
> +.BR rt_sigreturn (2)
> +T}
> +T{
> +.BR sigsuspend (2)
> +T}	T{
> +.BR rt_sigsuspend (2)
> +T}
> +T{
> +.BR sigtimedwait (2)
> +T}	T{
> +.BR rt_sigtimedwait (2)
> +T}
>  .TE
>  .\"
>  .SS Interruption of system calls and library functions by signal handlers
> diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
> index 1341066bb..ab5c7caae 100644
> --- a/man/man7/suffixes.7
> +++ b/man/man7/suffixes.7
> @@ -37,11 +37,22 @@ .SH DESCRIPTION
>  \&,v	files for RCS (Revision Control System)
>  \&-	backup file
>  \&.C	C++ source code, equivalent to \fI.cc\fP
> -\&.F	Fortran source with \fBcpp\fP(1) directives
> +\&.F	T{
> +Fortran source with
> +.BR cpp (1)
> +directives
> +T}
>  \&	or file compressed using freeze
> -\&.S	assembler source with \fBcpp\fP(1) directives
> +\&.S	T{
> +assembler source with
> +.BR cpp (1)
> +directives
> +T}
>  \&.Y	file compressed using yabba
> -\&.Z	file compressed using \fBcompress\fP(1)
> +\&.Z	T{
> +file compressed using
> +.BR compress (1)
> +T}
>  \&.[0\-9]+gf	TeX generic font files
>  \&.[0\-9]+pk	TeX packed font files
>  \&.[1\-9]	manual page for the corresponding section
> @@ -53,9 +64,18 @@ .SH DESCRIPTION
>  \&.ads	Ada spec source
>  \&.afm	PostScript font metrics
>  \&.al	Perl autoload file
> -\&.am	\fBautomake\fP(1) input file
> -\&.arc	\fBarc\fP(1) archive
> -\&.arj	\fBarj\fP(1) archive
> +\&.am	T{
> +.BR automake (1)
> +input file
> +T}
> +\&.arc	T{
> +.BR arc (1)
> +archive
> +T}
> +\&.arj	T{
> +.BR arj (1)
> +archive
> +T}
>  \&.asc	PGP ASCII-armored data
>  \&.asm	(GNU) assembler source file
>  \&.au	Audio sound file
> @@ -64,7 +84,10 @@ .SH DESCRIPTION
>  \&.awk	AWK language program
>  \&.b	LILO boot loader image
>  \&.bak	backup file
> -\&.bash	\fBbash\fP(1) shell script
> +\&.bash	T{
> +.BR bash (1)
> +shell script
> +T}
>  \&.bb	basic block list data produced by
>  \&	gcc \-ftest\-coverage
>  \&.bbg	basic block graph data produced by
> @@ -74,7 +97,10 @@ .SH DESCRIPTION
>  \&.bib	TeX bibliographic database, BibTeX input
>  \&.bm	bitmap source
>  \&.bmp	bitmap
> -\&.bz2	file compressed using \fBbzip2\fP(1)
> +\&.bz2	T{
> +file compressed using
> +.BR bzip2 (1)
> +T}
>  \&.c	C source
>  \&.cat	message catalog files
>  \&.cc	C++ source
> @@ -86,14 +112,19 @@ .SH DESCRIPTION
>  \&.conf	configuration file
>  \&.config	configuration file
>  \&.cpp	equivalent to \fI.cc\fR
> -\&.csh	\fBcsh\fP(1) shell script
> +\&.csh	T{
> +.BR csh (1)
> +shell script
> +T}
>  \&.cxx	equivalent to \fI.cc\fR
>  \&.dat	data file
>  \&.deb	Debian software package
>  \&.def	Modula-2 source for definition modules
>  \&.def	other definition files
>  \&.desc	initial part of mail message unpacked with
> -\&	\fBmunpack\fP(1)
> +\&	T{
> +.BR munpack (1)
> +T}
>  \&.diff	T{
>  file differences (\c
>  .BR diff (1)
> @@ -121,7 +152,10 @@ .SH DESCRIPTION
>  \&.gif	Compuserve Graphics Image File format
>  \&.gmo	GNU format message catalog
>  \&.gsf	Ghostscript fonts
> -\&.gz	file compressed using \fBgzip\fP(1)
> +\&.gz	T{
> +file compressed using
> +.BR gzip (1)
> +T}
>  \&.h	C or C++ header files
>  \&.help	help file
>  \&.hf	equivalent to \fI.help\fP
> @@ -145,26 +179,46 @@ .SH DESCRIPTION
>  \&.jpg	poor man's \fI.jpeg\fP
>  \&.js	JavaScript source code
>  \&.jsx	JSX (JavaScript XML-like extension) source code
> -\&.kmap	\fBlyx\fP(1) keymap
> +\&.kmap	T{
> +.BR lyx (1)
> +keymap
> +T}
>  \&.l	equivalent to \fI.lex\fP or \fI.lisp\fP
> -\&.lex	\fBlex\fP(1) or \fBflex\fP(1) files
> +\&.lex	T{
> +T{
> +.BR lex (1)
> +or
> +.BR flex (1)
> +files
> +T}
> +T}
>  \&.lha	lharc archive
>  \&.lib	Common-Lisp library
>  \&.lisp	Lisp source
> -\&.ln	files for use with \fBlint\fP(1)
> +\&.ln	T{
> +files for use with
> +.BR lint (1)
> +T}
>  \&.log	log file, in particular produced by TeX
>  \&.lsm	Linux Software Map entry
>  \&.lsp	Common-Lisp source
>  \&.lzh	lharc archive
>  \&.m	Objective-C source code
> -\&.m4	\fBm4\fP(1) source
> +\&.m4	T{
> +.BR m4 (1)
> +source
> +T}
>  \&.mac	macro files for various programs
>  \&.man	manual page (usually source rather than formatted)
>  \&.map	map files for various programs
>  \&.me	Nroff source using the me macro package
>  \&.mf	Metafont (font generator for TeX) source
>  \&.mgp	MagicPoint file
> -\&.mm	sources for \fBgroff\fP(1) in mm - format
> +\&.mm	T{
> +sources for
> +.BR groff (1)
> +in mm - format
> +T}
>  \&.mo	Message catalog binary file
>  \&.mod	Modula-2 source for implementation modules
>  \&.mov	(quicktime) movie
> @@ -174,11 +228,17 @@ .SH DESCRIPTION
>  \&.mpeg	movie file
>  \&.o	object file
>  \&.old	old or backup file
> -\&.orig	backup (original) version of a file, from \fBpatch\fP(1)
> +\&.orig	T{
> +backup (original) version of a file, from
> +.BR patch (1)
> +T}
>  \&.out	output file, often executable program (a.out)
>  \&.p	Pascal source
>  \&.pag	dbm data base data file
> -\&.patch	file differences for \fBpatch\fP(1)
> +\&.patch	T{
> +file differences for
> +.BR patch (1)
> +T}
>  \&.pbm	portable bitmap format
>  \&.pcf	X11 font files
>  \&.pdf	Adobe Portable Data Format
> @@ -196,7 +256,10 @@ .SH DESCRIPTION
>  \&.pm	Perl module
>  \&.png	Portable Network Graphics file
>  \&.po	Message catalog source
> -\&.pod	\fBperldoc\fP(1) file
> +\&.pod	T{
> +.BR perldoc (1)
> +file
> +T}
>  \&.ppm	portable pixmap format
>  \&.pr	bitmap source
>  \&.ps	PostScript file
> @@ -204,36 +267,69 @@ .SH DESCRIPTION
>  \&.pyc	compiled python
>  \&.qt	quicktime movie
>  \&.r	RATFOR source (obsolete)
> -\&.rej	patches that \fBpatch\fP(1) couldn't apply
> +\&.rej	T{
> +patches that
> +.BR patch (1)
> +couldn't apply
> +T}
>  \&.rpm	RPM software package
>  \&.rtf	Rich Text Format file
>  \&.rules	rules for something
>  \&.s	assembler source
>  \&.sa	stub libraries for a.out shared libraries
> -\&.sc	\fBsc\fP(1) spreadsheet commands
> +\&.sc	T{
> +.BR sc (1)
> +spreadsheet commands
> +T}
>  \&.scm	Scheme source code
>  \&.sed	sed source file
>  \&.sgml	SGML source file
> -\&.sh	\fBsh\fP(1) scripts
> -\&.shar	archive created by the \fBshar\fP(1) utility
> +\&.sh	T{
> +.BR sh (1)
> +scripts
> +T}
> +\&.shar	T{
> +archive created by the
> +.BR shar (1)
> +utility
> +T}
>  \&.shtml	HTML using Server Side Includes
>  \&.so	Shared library or dynamically loadable object
>  \&.sql	SQL source
>  \&.sqml	SQML schema or query program
>  \&.sty	LaTeX style files
>  \&.sym	Modula-2 compiled definition modules
> -\&.tar	archive created by the \fBtar\fP(1) utility
> -\&.tar.Z	tar(1) archive compressed with \fBcompress\fP(1)
> -\&.tar.bz2	tar(1) archive compressed with \fBbzip2\fP(1)
> -\&.tar.gz	tar(1) archive compressed with \fBgzip\fP(1)
> -\&.taz	tar(1) archive compressed with \fBcompress\fP(1)
> +\&.tar	T{
> +archive created by the
> +.BR tar (1)
> +utility
> +T}
> +\&.tar.Z	T{
> +tar(1) archive compressed with
> +.BR compress (1)
> +T}
> +\&.tar.bz2	T{
> +tar(1) archive compressed with
> +.BR bzip2 (1)
> +T}
> +\&.tar.gz	T{
> +tar(1) archive compressed with
> +.BR gzip (1)
> +T}
> +\&.taz	T{
> +tar(1) archive compressed with
> +.BR compress (1)
> +T}
>  \&.tcl	tcl source code
>  \&.tex	TeX or LaTeX source
>  \&.texi	equivalent to \fI.texinfo\fP
>  \&.texinfo	Texinfo documentation source
>  \&.text	text file
>  \&.tfm	TeX font metric file
> -\&.tgz	tar archive compressed with \fBgzip\fP(1)
> +\&.tgz	T{
> +tar archive compressed with
> +.BR gzip (1)
> +T}
>  \&.tif	poor man's \fI.tiff\fP
>  \&.tiff	Tagged Image File Format
>  \&.tk	tcl/tk script
> @@ -243,7 +339,10 @@ .SH DESCRIPTION
>  \&.tsx	TypeScript with JSX source code (\fI.ts\fP + \fI.jsx\fP)
>  \&.txt	equivalent to \fI.text\fP
>  \&.uu	equivalent to \fI.uue\fP
> -\&.uue	binary file encoded with \fBuuencode\fP(1)
> +\&.uue	T{
> +binary file encoded with
> +.BR uuencode (1)
> +T}
>  \&.vf	TeX virtual font file
>  \&.vpl	TeX virtual property list file
>  \&.w	Silvio Levi's CWEB
> @@ -256,16 +355,33 @@ .SH DESCRIPTION
>  \&.xpm	X11 pixmap source
>  \&.xs	Perl xsub file produced by h2xs
>  \&.xsl	XSL stylesheet
> -\&.y	\fByacc\fP(1) or \fBbison\fP(1) (parser generator) files
> +\&.y	T{
> +T{
> +.BR yacc (1)
> +or
> +.BR bison (1)
> +(parser generator) files
> +T}
> +T}
>  \&.z	T{
>  File compressed using
>  .BR pack (1)
>  (or an old
>  .BR gzip (1))
>  T}
> -\&.zip	\fBzip\fP(1) archive
> -\&.zoo	\fBzoo\fP(1) archive
> -\&\[ti]	Emacs or \fBpatch\fP(1) backup file
> +\&.zip	T{
> +.BR zip (1)
> +archive
> +T}
> +\&.zoo	T{
> +.BR zoo (1)
> +archive
> +T}
> +\&\[ti]	T{
> +Emacs or
> +.BR patch (1)
> +backup file
> +T}
>  \&rc	startup (`run control') file, e.g., \fI.newsrc\fP
>  .TE
>  .SH STANDARDS
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--febk5pjact3mewbv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbUJ0wACgkQnowa+77/
2zKIURAAnPwO24V9fxNaRvVwx/DcQeum3tzS7gaXeKxXczeQyqN+aybWrezwVTXt
79Gvls25RvzwziYaWeootVMMazNNVBd+UwoSaWfcRprFka8t8uP9JOciHyMJhkbM
RRhjpHnYMdNdw+KodAY9VJossdmeb9vjy7nG5hEqxJlTFRHhLgEU8ZVvnnUo1fzM
PFqN5a/LFxGzIIG4eJU5g4rDTNnIATYmsoqI2lSxCbNPtdWxYT0urcAnYDdCzNR5
iodrhbBb0WaJ9j93APYrio1UfL+/7oXujs78f2+FFzLjTxTsskDCqcaRGXLwZMfS
/l3eBQUxEAm1aLWK1H+MFb4YmfGLp8HRSWG1I1ikBRsb9RAl8E+KvzfsJGKHcN8X
e6ZJ+v0JNX2TBl1qzLAYH2Mb2QXpE9ZCL0nVmJLKs2o5PEJ7QJmHrXTiQFqrf3By
RLsSJrM5tptup9ScQ/I6/V67xcRI4u3+KVOu2XIfRHhiVc6ZQ2pChKaGRp86Qjja
9LuR9I6wYP9EYUyTYbfT6+Kj/M8A+pzulrHIewPZYh8e49u9sqgHGL9mQg1sub5m
sI1J3kAfiwcz6IfNhwbV9il6KOOKzhoJp+jiWNQQsPXmOE7H4LMlDLkNFofCErp7
IXRMIHLe+qz353LWRrWve2GXpGUYRqWw1kax42K9al+NFDnR26k=
=ps/y
-----END PGP SIGNATURE-----

--febk5pjact3mewbv--

