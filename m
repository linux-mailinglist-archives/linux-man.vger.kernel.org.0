Return-Path: <linux-man+bounces-824-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D9F8B417B
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 23:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C7D5B21526
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 21:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E7C37708;
	Fri, 26 Apr 2024 21:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zz7pfYDw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3849636B09
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 21:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167890; cv=none; b=pM5Km4hkU2KVnZSj2BiRT7EUuMstFJSImbffIcsGVKSTTQzclhoUYs25xIJm06WCqVVJ0XcZnn8RCv938Wx1ZeBg6KOaB3j40IUeUw11FPLvWVFIRie2u6HYAKs7dwaB21KjS6ione1hkBlDBm5rlMF+mutoqiHVcCWZfsuwwuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167890; c=relaxed/simple;
	bh=phyQ7l/XBcoR1ekeDdkbi2c5g3YfBA4z8FcyFT9H7E8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=tC8aYFD9Q55P1jIAVWr/iFJ39fDS2esoJ+tIy5+0CATXgay5wjs+R8sdtIMrs9JHMtToeLzSP2UNKaoiPxBoMRUfogNC76jQG7Ynv8F1K9DS3kBzWiAKGMScYary5fPABN3G5uRXkmLSejvn8+WFO7+JgODrYbAc89WD9/KqbNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zz7pfYDw; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-22edbb5dd40so1170362fac.1
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 14:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714167886; x=1714772686; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6sIYV/6r7+bVqCrS4gK7VSvxAGWYFwS+1i6nd9xmil8=;
        b=Zz7pfYDwqlgLEBROhMIhfL3MbejWZ0djQjojE+qyWdr9B6563Ujoba78bI+30L+TOE
         sGCMEPDivB2/ziPKY5BtjtEo6nddzkTIDRBDjsnCMfucwoPZEwzvkCtSxqhqkkJ45En6
         H6ZmEPpK4GcgmePFPA8wbDr5RYqUTK9OP5YQGNkraBWlTZ5kt01GT2tu2kyj6XrGwkeD
         lGjlxPBrvvRCBv4w6jF+88OAl+BxFE4LSExtMABW+LxZBMP9cae4SOiYB9ObPu/ktoOV
         VuDGXbsAbam+Kj5qemmGPzs+Kp1L0Of62ic4sFM0zimxhaIeLMVT3bFXEcnMgcZNg+tb
         5dEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714167886; x=1714772686;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6sIYV/6r7+bVqCrS4gK7VSvxAGWYFwS+1i6nd9xmil8=;
        b=j9fEWKZlV+LBKVW5+x+AVVvA3wsha66wtTslInb2eU73/jd0dFOY9aCWogPM/fFod/
         kvWuCdwOKTk4L3ep5ApzM1AmbZORZcf+na3npwmSzpcNEpq3ktlkaCM3bgk3D+53vRyL
         f5lLE75uGdnqB1OzRNHna3lRu/bdqoYFm2aAxwbZuUAQxfcPTm6HTyg6DFEIgD6qlKcg
         wZTPZFy/7jTFlK9VECFFp0x5ATWLxINr7QoDzAKvG2xnGeUbzUwWv1X/zmiOJuXq8d/i
         GqfY1gBuAeU8wBotYkpVU799NCCzX6q3ll2bfhF5eZ4oG5MOpwztqkhksGetV2r3ZxFT
         pC7Q==
X-Gm-Message-State: AOJu0Yz+NxNB1oEkINDDqu+wlNP/RAg2MXwZxQHioeqyP4Af129cyzZ3
	F2GLS7x2piYyJKtE6t/WozVYIcXwybSPAgzd8C3kYdVQVfDMhYswaC0+wg==
X-Google-Smtp-Source: AGHT+IGleKCS9WjnZropgHZQvv8p6Bk3bBxgYcTuTlOhp2bO3mMUoLShNGS+joYFMQUGpdbwjSSOwQ==
X-Received: by 2002:a05:6871:811:b0:22e:74a1:2ac5 with SMTP id q17-20020a056871081100b0022e74a12ac5mr670056oap.7.1714167885655;
        Fri, 26 Apr 2024 14:44:45 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t15-20020a05687044cf00b002354e1ecb49sm3867707oai.17.2024.04.26.14.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:44:44 -0700 (PDT)
Date: Fri, 26 Apr 2024 16:44:42 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 3/3] man2/syscalls.2: srcfix (3/3)
Message-ID: <20240426214442.hfpksrtw33bvbtuy@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jpdq6d3pvaatvlju"
Content-Disposition: inline


--jpdq6d3pvaatvlju
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Migrate table entries from using font selection escape sequences to font
alternation macros to set man page cross references.

This change was automatically driven by the following sed(1) script.

Hard tabs are present in some of the following commands.

$ cat pre-MR-migrate-cross-references-3.sed
/^\.\\"/b
/^\.TS/,/^\.TE/{
s/^\\fB\([^\]*\)\\fP(\([0-9]\))$/.BR \1 (\2)/
s/ \\fB\([^\]*\)\\fP(\([0-9]\))$/\
=2EBR \1 (\2)/
s/\\fB\([^\]*\)\\fP(\([0-9]\))  /T{\
=2EBR \1 (\2)\
T}      /
}

$ cat dump-page.sh
groff -t -dAD=3Dl -rHY=3D0 -m andoc -T utf8 -P -cbou "$@"

The following procedure was used.

$ sh dump-page man2/syscalls.2 >| before
$ sed -i -f pre-MR-migrate-cross-references-1.sed man2/syscalls.2
$ sh dump-page man2/syscalls.2 >| after1
$ sed -i -f pre-MR-migrate-cross-references-2.sed man2/syscalls.2
$ sh dump-page man2/syscalls.2 >| after2
$ sed -i -f pre-MR-migrate-cross-references-3.sed man2/syscalls.2
$ sh dump-page man2/syscalls.2 >| after3
$ ! cmp before after1 || echo SAME
before after1 differ: char 6933, line 126
$ ! cmp after1 after2 || echo SAME
after1 after2 differ: char 6933, line 126
$ ! cmp after2 after3 || echo SAME
SAME
$ ! cmp before after3 || echo SAME
SAME

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

---
 man2/syscalls.2 | 2012 +++++++++++++++++++++++++++++++++++------------
 1 file changed, 1489 insertions(+), 523 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index c8afd537b..bb6ce446a 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -143,67 +143,149 @@ .SS System call list
 L2 L  L.
 System call	Kernel	Notes
 _
-\fB_llseek\fP(2)	1.2
-\fB_newselect\fP(2)	2.0
-\fB_sysctl\fP(2)	2.0	Removed in 5.5
-\fBaccept\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBaccept4\fP(2)	2.6.28
-\fBaccess\fP(2)	1.0
-\fBacct\fP(2)	1.0
-\fBadd_key\fP(2)	2.6.10
-\fBadjtimex\fP(2)	1.0
-\fBalarm\fP(2)	1.0
-\fBalloc_hugepages\fP(2)	2.5.36	Removed in 2.5.44
+T{
+.BR _llseek (2)
+T}	1.2
+T{
+.BR _newselect (2)
+T}	2.0
+T{
+.BR _sysctl (2)
+T}	2.0	Removed in 5.5
+T{
+.BR accept (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR accept4 (2)
+T}	2.6.28
+T{
+.BR access (2)
+T}	1.0
+T{
+.BR acct (2)
+T}	1.0
+T{
+.BR add_key (2)
+T}	2.6.10
+T{
+.BR adjtimex (2)
+T}	1.0
+T{
+.BR alarm (2)
+T}	1.0
+T{
+.BR alloc_hugepages (2)
+T}	2.5.36	Removed in 2.5.44
 .\" 4adeefe161a74369e44cc8e663f240ece0470dc3
-\fBarc_gettls\fP(2)	3.9	ARC only
-\fBarc_settls\fP(2)	3.9	ARC only
+T{
+.BR arc_gettls (2)
+T}	3.9	ARC only
+T{
+.BR arc_settls (2)
+T}	3.9	ARC only
 .\" 91e040a79df73d371f70792f30380d4e44805250
-\fBarc_usr_cmpxchg\fP(2)	4.9	ARC only
+T{
+.BR arc_usr_cmpxchg (2)
+T}	4.9	ARC only
 .\" x86: 79170fda313ed5be2394f87aa2a00d597f8ed4a1
-\fBarch_prctl\fP(2)	2.6	T{
+T{
+.BR arch_prctl (2)
+T}	2.6	T{
 x86_64, x86 since 4.12
 T}
 .\" 9674cdc74d63f346870943ef966a034f8c71ee57
-\fBatomic_barrier\fP(2)	2.6.34	m68k only
-\fBatomic_cmpxchg_32\fP(2)	2.6.34	m68k only
-\fBbdflush\fP(2)	1.2	T{
+T{
+.BR atomic_barrier (2)
+T}	2.6.34	m68k only
+T{
+.BR atomic_cmpxchg_32 (2)
+T}	2.6.34	m68k only
+T{
+.BR bdflush (2)
+T}	1.2	T{
 Deprecated (does nothing)
 since 2.6
 T}
-\fBbind\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
+T{
+.BR bind (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
 T}
-\fBbpf\fP(2)	3.18
-\fBbrk\fP(2)	1.0
-\fBbreakpoint\fP(2)	2.2	T{
+T{
+.BR bpf (2)
+T}	3.18
+T{
+.BR brk (2)
+T}	1.0
+T{
+.BR breakpoint (2)
+T}	2.2	T{
 ARM OABI only, defined with
 \fB__ARM_NR\fP prefix
 T}
-\fBcacheflush\fP(2)	1.2	Not on x86
-\fBcapget\fP(2)	2.2
-\fBcapset\fP(2)	2.2
-\fBchdir\fP(2)	1.0
-\fBchmod\fP(2)	1.0
-\fBchown\fP(2)	2.2	T{
+T{
+.BR cacheflush (2)
+T}	1.2	Not on x86
+T{
+.BR capget (2)
+T}	2.2
+T{
+.BR capset (2)
+T}	2.2
+T{
+.BR chdir (2)
+T}	1.0
+T{
+.BR chmod (2)
+T}	1.0
+T{
+.BR chown (2)
+T}	2.2	T{
 See
 .BR chown (2)
 for
 version details
 T}
-\fBchown32\fP(2)	2.4
-\fBchroot\fP(2)	1.0
-\fBclock_adjtime\fP(2)	2.6.39
-\fBclock_getres\fP(2)	2.6
-\fBclock_gettime\fP(2)	2.6
-\fBclock_nanosleep\fP(2)	2.6
-\fBclock_settime\fP(2)	2.6
-\fBclone2\fP(2)	2.4	IA-64 only
-\fBclone\fP(2)	1.0
-\fBclone3\fP(2)	5.3
-\fBclose\fP(2)	1.0
-\fBclose_range\fP(2)	5.9
+T{
+.BR chown32 (2)
+T}	2.4
+T{
+.BR chroot (2)
+T}	1.0
+T{
+.BR clock_adjtime (2)
+T}	2.6.39
+T{
+.BR clock_getres (2)
+T}	2.6
+T{
+.BR clock_gettime (2)
+T}	2.6
+T{
+.BR clock_nanosleep (2)
+T}	2.6
+T{
+.BR clock_settime (2)
+T}	2.6
+T{
+.BR clone2 (2)
+T}	2.4	IA-64 only
+T{
+.BR clone (2)
+T}	1.0
+T{
+.BR clone3 (2)
+T}	5.3
+T{
+.BR close (2)
+T}	1.0
+T{
+.BR close_range (2)
+T}	5.9
 .\" .\" dcef1f634657dabe7905af3ccda12cf7f0b6fcc1
 .\" .\" cc20d42986d5807cbe4f5c7c8e3dab2e59ea0db3
 .\" .\" db695c0509d6ec9046ee5e4c520a19fa17d9fce2
@@ -215,444 +297,1078 @@ .SS System call list
 .\" T}
 .\" 867e359b97c970a60626d5d76bbe2a8fadbf38fb
 .\" bb9d812643d8a121df7d614a2b9c60193a92deb0
-\fBconnect\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
+T{
+.BR connect (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
 T}
-\fBcopy_file_range\fP(2)	4.5
-\fBcreat\fP(2)	1.0
-\fBcreate_module\fP(2)	1.0	Removed in 2.6
-\fBdelete_module\fP(2)	1.0
+T{
+.BR copy_file_range (2)
+T}	4.5
+T{
+.BR creat (2)
+T}	1.0
+T{
+.BR create_module (2)
+T}	1.0	Removed in 2.6
+T{
+.BR delete_module (2)
+T}	1.0
 .\" 1394f03221790a988afc3e4b3cb79f2e477246a9
 .\" 4ba66a9760722ccbb691b8f7116cad2f791cca7b
-\fBdup\fP(2)	1.0
-\fBdup2\fP(2)	1.0
-\fBdup3\fP(2)	2.6.27
-\fBepoll_create\fP(2)	2.6
-\fBepoll_create1\fP(2)	2.6.27
-\fBepoll_ctl\fP(2)	2.6
-\fBepoll_pwait\fP(2)	2.6.19
-\fBepoll_pwait2\fP(2)	5.11
-\fBepoll_wait\fP(2)	2.6
-\fBeventfd\fP(2)	2.6.22
-\fBeventfd2\fP(2)	2.6.27
-\fBexecv\fP(2)	2.0	T{
+T{
+.BR dup (2)
+T}	1.0
+T{
+.BR dup2 (2)
+T}	1.0
+T{
+.BR dup3 (2)
+T}	2.6.27
+T{
+.BR epoll_create (2)
+T}	2.6
+T{
+.BR epoll_create1 (2)
+T}	2.6.27
+T{
+.BR epoll_ctl (2)
+T}	2.6
+T{
+.BR epoll_pwait (2)
+T}	2.6.19
+T{
+.BR epoll_pwait2 (2)
+T}	5.11
+T{
+.BR epoll_wait (2)
+T}	2.6
+T{
+.BR eventfd (2)
+T}	2.6.22
+T{
+.BR eventfd2 (2)
+T}	2.6.27
+T{
+.BR execv (2)
+T}	2.0	T{
 SPARC/SPARC64 only, for
 compatibility with SunOS
 T}
-\fBexecve\fP(2)	1.0
-\fBexecveat\fP(2)	3.19
-\fBexit\fP(2)	1.0
-\fBexit_group\fP(2)	2.6
-\fBfaccessat\fP(2)	2.6.16
-\fBfaccessat2\fP(2)	5.8
-\fBfadvise64\fP(2)	2.6
+T{
+.BR execve (2)
+T}	1.0
+T{
+.BR execveat (2)
+T}	3.19
+T{
+.BR exit (2)
+T}	1.0
+T{
+.BR exit_group (2)
+T}	2.6
+T{
+.BR faccessat (2)
+T}	2.6.16
+T{
+.BR faccessat2 (2)
+T}	5.8
+T{
+.BR fadvise64 (2)
+T}	2.6
 .\" Implements \fBposix_fadvise\fP(2)
-\fBfadvise64_64\fP(2)	2.6
-\fBfallocate\fP(2)	2.6.23
-\fBfanotify_init\fP(2)	2.6.37
-\fBfanotify_mark\fP(2)	2.6.37
+T{
+.BR fadvise64_64 (2)
+T}	2.6
+T{
+.BR fallocate (2)
+T}	2.6.23
+T{
+.BR fanotify_init (2)
+T}	2.6.37
+T{
+.BR fanotify_mark (2)
+T}	2.6.37
 .\" The fanotify calls were added in Linux 2.6.36,
 .\" but disabled while the API was finalized.
-\fBfchdir\fP(2)	1.0
-\fBfchmod\fP(2)	1.0
-\fBfchmodat\fP(2)	2.6.16
-\fBfchown\fP(2)	1.0
-\fBfchown32\fP(2)	2.4
-\fBfchownat\fP(2)	2.6.16
-\fBfcntl\fP(2)	1.0
-\fBfcntl64\fP(2)	2.4
-\fBfdatasync\fP(2)	2.0
-\fBfgetxattr\fP(2)	2.6; 2.4.18
-\fBfinit_module\fP(2)	3.8
-\fBflistxattr\fP(2)	2.6; 2.4.18
-\fBflock\fP(2)	2.0
-\fBfork\fP(2)	1.0
-\fBfree_hugepages\fP(2)	2.5.36	Removed in 2.5.44
-\fBfremovexattr\fP(2)	2.6; 2.4.18
-\fBfsconfig\fP(2)	5.2
-\fBfsetxattr\fP(2)	2.6; 2.4.18
-\fBfsmount\fP(2)	5.2
-\fBfsopen\fP(2)	5.2
-\fBfspick\fP(2)	5.2
-\fBfstat\fP(2)	1.0
-\fBfstat64\fP(2)	2.4
-\fBfstatat64\fP(2)	2.6.16
-\fBfstatfs\fP(2)	1.0
-\fBfstatfs64\fP(2)	2.6
-\fBfsync\fP(2)	1.0
-\fBftruncate\fP(2)	1.0
-\fBftruncate64\fP(2)	2.4
-\fBfutex\fP(2)	2.6
-\fBfutimesat\fP(2)	2.6.16
-\fBget_kernel_syms\fP(2)	1.0	Removed in 2.6
-\fBget_mempolicy\fP(2)	2.6.6
-\fBget_robust_list\fP(2)	2.6.17
-\fBget_thread_area\fP(2)	2.6
+T{
+.BR fchdir (2)
+T}	1.0
+T{
+.BR fchmod (2)
+T}	1.0
+T{
+.BR fchmodat (2)
+T}	2.6.16
+T{
+.BR fchown (2)
+T}	1.0
+T{
+.BR fchown32 (2)
+T}	2.4
+T{
+.BR fchownat (2)
+T}	2.6.16
+T{
+.BR fcntl (2)
+T}	1.0
+T{
+.BR fcntl64 (2)
+T}	2.4
+T{
+.BR fdatasync (2)
+T}	2.0
+T{
+.BR fgetxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR finit_module (2)
+T}	3.8
+T{
+.BR flistxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR flock (2)
+T}	2.0
+T{
+.BR fork (2)
+T}	1.0
+T{
+.BR free_hugepages (2)
+T}	2.5.36	Removed in 2.5.44
+T{
+.BR fremovexattr (2)
+T}	2.6; 2.4.18
+T{
+.BR fsconfig (2)
+T}	5.2
+T{
+.BR fsetxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR fsmount (2)
+T}	5.2
+T{
+.BR fsopen (2)
+T}	5.2
+T{
+.BR fspick (2)
+T}	5.2
+T{
+.BR fstat (2)
+T}	1.0
+T{
+.BR fstat64 (2)
+T}	2.4
+T{
+.BR fstatat64 (2)
+T}	2.6.16
+T{
+.BR fstatfs (2)
+T}	1.0
+T{
+.BR fstatfs64 (2)
+T}	2.6
+T{
+.BR fsync (2)
+T}	1.0
+T{
+.BR ftruncate (2)
+T}	1.0
+T{
+.BR ftruncate64 (2)
+T}	2.4
+T{
+.BR futex (2)
+T}	2.6
+T{
+.BR futimesat (2)
+T}	2.6.16
+T{
+.BR get_kernel_syms (2)
+T}	1.0	Removed in 2.6
+T{
+.BR get_mempolicy (2)
+T}	2.6.6
+T{
+.BR get_robust_list (2)
+T}	2.6.17
+T{
+.BR get_thread_area (2)
+T}	2.6
 .\" 8fcd6c45f5a65621ec809b7866a3623e9a01d4ed
-\fBget_tls\fP(2)	4.15	T{
+T{
+.BR get_tls (2)
+T}	4.15	T{
 ARM OABI only, has
 \fB__ARM_NR\fP prefix
 T}
-\fBgetcpu\fP(2)	2.6.19
-\fBgetcwd\fP(2)	2.2
-\fBgetdents\fP(2)	2.0
-\fBgetdents64\fP(2)	2.4
+T{
+.BR getcpu (2)
+T}	2.6.19
+T{
+.BR getcwd (2)
+T}	2.2
+T{
+.BR getdents (2)
+T}	2.0
+T{
+.BR getdents64 (2)
+T}	2.4
 .\" parisc: 863722e856e64dae0e252b6bb546737c6c5626ce
-\fBgetdomainname\fP(2)	2.2	T{
+T{
+.BR getdomainname (2)
+T}	2.2	T{
 SPARC, SPARC64; available
-as \fBosf_getdomainname\fP(2)
+as
+.BR osf_getdomainname (2)
 on Alpha since Linux 2.0
 T}
 .\" ec98c6b9b47df6df1c1fa6cf3d427414f8c2cf16
-\fBgetdtablesize\fP(2)	2.0	T{
+T{
+.BR getdtablesize (2)
+T}	2.0	T{
 SPARC (removed in 2.6.26),
 available on Alpha as
-\fBosf_getdtablesize\fP(2)
-T}
-\fBgetegid\fP(2)	1.0
-\fBgetegid32\fP(2)	2.4
-\fBgeteuid\fP(2)	1.0
-\fBgeteuid32\fP(2)	2.4
-\fBgetgid\fP(2)	1.0
-\fBgetgid32\fP(2)	2.4
-\fBgetgroups\fP(2)	1.0
-\fBgetgroups32\fP(2)	2.4
+.BR osf_getdtablesize (2)
+T}
+T{
+.BR getegid (2)
+T}	1.0
+T{
+.BR getegid32 (2)
+T}	2.4
+T{
+.BR geteuid (2)
+T}	1.0
+T{
+.BR geteuid32 (2)
+T}	2.4
+T{
+.BR getgid (2)
+T}	1.0
+T{
+.BR getgid32 (2)
+T}	2.4
+T{
+.BR getgroups (2)
+T}	1.0
+T{
+.BR getgroups32 (2)
+T}	2.4
 .\" SPARC removal: ec98c6b9b47df6df1c1fa6cf3d427414f8c2cf16
-\fBgethostname\fP(2)	2.0	T{
+T{
+.BR gethostname (2)
+T}	2.0	T{
 Alpha, was available on
 SPARC up to Linux 2.6.26
 T}
-\fBgetitimer\fP(2)	1.0
-\fBgetpeername\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
+T{
+.BR getitimer (2)
+T}	1.0
+T{
+.BR getpeername (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
 T}
-\fBgetpagesize\fP(2)	2.0	T{
+T{
+.BR getpagesize (2)
+T}	2.0	T{
 Alpha, SPARC/SPARC64 only
 T}
-\fBgetpgid\fP(2)	1.0
-\fBgetpgrp\fP(2)	1.0
-\fBgetpid\fP(2)	1.0
-\fBgetppid\fP(2)	1.0
-\fBgetpriority\fP(2)	1.0
-\fBgetrandom\fP(2)	3.17
-\fBgetresgid\fP(2)	2.2
-\fBgetresgid32\fP(2)	2.4
-\fBgetresuid\fP(2)	2.2
-\fBgetresuid32\fP(2)	2.4
-\fBgetrlimit\fP(2)	1.0
-\fBgetrusage\fP(2)	1.0
-\fBgetsid\fP(2)	2.0
-\fBgetsockname\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBgetsockopt\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBgettid\fP(2)	2.4.11
-\fBgettimeofday\fP(2)	1.0
-\fBgetuid\fP(2)	1.0
-\fBgetuid32\fP(2)	2.4
-\fBgetunwind\fP(2)	2.4.8	T{
+T{
+.BR getpgid (2)
+T}	1.0
+T{
+.BR getpgrp (2)
+T}	1.0
+T{
+.BR getpid (2)
+T}	1.0
+T{
+.BR getppid (2)
+T}	1.0
+T{
+.BR getpriority (2)
+T}	1.0
+T{
+.BR getrandom (2)
+T}	3.17
+T{
+.BR getresgid (2)
+T}	2.2
+T{
+.BR getresgid32 (2)
+T}	2.4
+T{
+.BR getresuid (2)
+T}	2.2
+T{
+.BR getresuid32 (2)
+T}	2.4
+T{
+.BR getrlimit (2)
+T}	1.0
+T{
+.BR getrusage (2)
+T}	1.0
+T{
+.BR getsid (2)
+T}	2.0
+T{
+.BR getsockname (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR getsockopt (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR gettid (2)
+T}	2.4.11
+T{
+.BR gettimeofday (2)
+T}	1.0
+T{
+.BR getuid (2)
+T}	1.0
+T{
+.BR getuid32 (2)
+T}	2.4
+T{
+.BR getunwind (2)
+T}	2.4.8	T{
 IA-64 only; deprecated
 T}
-\fBgetxattr\fP(2)	2.6; 2.4.18
-\fBgetxgid\fP(2)	2.0	T{
+T{
+.BR getxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR getxgid (2)
+T}	2.0	T{
 Alpha only; see NOTES
 T}
-\fBgetxpid\fP(2)	2.0	T{
+T{
+.BR getxpid (2)
+T}	2.0	T{
 Alpha only; see NOTES
 T}
-\fBgetxuid\fP(2)	2.0	T{
+T{
+.BR getxuid (2)
+T}	2.0	T{
 Alpha only; see NOTES
 T}
-\fBinit_module\fP(2)	1.0
-\fBinotify_add_watch\fP(2)	2.6.13
-\fBinotify_init\fP(2)	2.6.13
-\fBinotify_init1\fP(2)	2.6.27
-\fBinotify_rm_watch\fP(2)	2.6.13
-\fBio_cancel\fP(2)	2.6
-\fBio_destroy\fP(2)	2.6
-\fBio_getevents\fP(2)	2.6
-\fBio_pgetevents\fP(2)	4.18
-\fBio_setup\fP(2)	2.6
-\fBio_submit\fP(2)	2.6
-\fBio_uring_enter\fP(2)	5.1
-\fBio_uring_register\fP(2)	5.1
-\fBio_uring_setup\fP(2)	5.1
-\fBioctl\fP(2)	1.0
-\fBioperm\fP(2)	1.0
-\fBiopl\fP(2)	1.0
-\fBioprio_get\fP(2)	2.6.13
-\fBioprio_set\fP(2)	2.6.13
-\fBipc\fP(2)	1.0
+T{
+.BR init_module (2)
+T}	1.0
+T{
+.BR inotify_add_watch (2)
+T}	2.6.13
+T{
+.BR inotify_init (2)
+T}	2.6.13
+T{
+.BR inotify_init1 (2)
+T}	2.6.27
+T{
+.BR inotify_rm_watch (2)
+T}	2.6.13
+T{
+.BR io_cancel (2)
+T}	2.6
+T{
+.BR io_destroy (2)
+T}	2.6
+T{
+.BR io_getevents (2)
+T}	2.6
+T{
+.BR io_pgetevents (2)
+T}	4.18
+T{
+.BR io_setup (2)
+T}	2.6
+T{
+.BR io_submit (2)
+T}	2.6
+T{
+.BR io_uring_enter (2)
+T}	5.1
+T{
+.BR io_uring_register (2)
+T}	5.1
+T{
+.BR io_uring_setup (2)
+T}	5.1
+T{
+.BR ioctl (2)
+T}	1.0
+T{
+.BR ioperm (2)
+T}	1.0
+T{
+.BR iopl (2)
+T}	1.0
+T{
+.BR ioprio_get (2)
+T}	2.6.13
+T{
+.BR ioprio_set (2)
+T}	2.6.13
+T{
+.BR ipc (2)
+T}	1.0
 .\" Implements System V IPC calls
-\fBkcmp\fP(2)	3.5
-\fBkern_features\fP(2)	3.7	SPARC64 only
+T{
+.BR kcmp (2)
+T}	3.5
+T{
+.BR kern_features (2)
+T}	3.7	SPARC64 only
 .\" FIXME . document kern_features():
 .\" commit 517ffce4e1a03aea979fe3a18a3dd1761a24fafb
-\fBkexec_file_load\fP(2)	3.17
-\fBkexec_load\fP(2)	2.6.13
+T{
+.BR kexec_file_load (2)
+T}	3.17
+T{
+.BR kexec_load (2)
+T}	2.6.13
 .\" The entry in the syscall table was reserved starting in 2.6.7
 .\" Was named sys_kexec_load() from 2.6.7 to 2.6.16
-\fBkeyctl\fP(2)	2.6.10
-\fBkill\fP(2)	1.0
-\fBlandlock_add_rule\fP(2)	5.13
-\fBlandlock_create_ruleset\fP(2)	5.13
-\fBlandlock_restrict_self\fP(2)	5.13
-\fBlchown\fP(2)	1.0	T{
+T{
+.BR keyctl (2)
+T}	2.6.10
+T{
+.BR kill (2)
+T}	1.0
+T{
+.BR landlock_add_rule (2)
+T}	5.13
+T{
+.BR landlock_create_ruleset (2)
+T}	5.13
+T{
+.BR landlock_restrict_self (2)
+T}	5.13
+T{
+.BR lchown (2)
+T}	1.0	T{
 See
 .BR chown (2)
 for
 version details
 T}
-\fBlchown32\fP(2)	2.4
-\fBlgetxattr\fP(2)	2.6; 2.4.18
-\fBlink\fP(2)	1.0
-\fBlinkat\fP(2)	2.6.16
-\fBlisten\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBlistxattr\fP(2)	2.6; 2.4.18
-\fBllistxattr\fP(2)	2.6; 2.4.18
-\fBlookup_dcookie\fP(2)	2.6
-\fBlremovexattr\fP(2)	2.6; 2.4.18
-\fBlseek\fP(2)	1.0
-\fBlsetxattr\fP(2)	2.6; 2.4.18
-\fBlstat\fP(2)	1.0
-\fBlstat64\fP(2)	2.4
-\fBmadvise\fP(2)	2.4
-\fBmbind\fP(2)	2.6.6
-\fBmemory_ordering\fP(2)	2.2	SPARC64 only
+T{
+.BR lchown32 (2)
+T}	2.4
+T{
+.BR lgetxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR link (2)
+T}	1.0
+T{
+.BR linkat (2)
+T}	2.6.16
+T{
+.BR listen (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR listxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR llistxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR lookup_dcookie (2)
+T}	2.6
+T{
+.BR lremovexattr (2)
+T}	2.6; 2.4.18
+T{
+.BR lseek (2)
+T}	1.0
+T{
+.BR lsetxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR lstat (2)
+T}	1.0
+T{
+.BR lstat64 (2)
+T}	2.4
+T{
+.BR madvise (2)
+T}	2.4
+T{
+.BR mbind (2)
+T}	2.6.6
+T{
+.BR memory_ordering (2)
+T}	2.2	SPARC64 only
 .\" 26025bbfbba33a9425be1b89eccb4664ea4c17b6
 .\" bb6fb6dfcc17cddac11ac295861f7608194447a7
-\fBmembarrier\fP(2)	3.17
-\fBmemfd_create\fP(2)	3.17
-\fBmemfd_secret\fP(2)	5.14
-\fBmigrate_pages\fP(2)	2.6.16
-\fBmincore\fP(2)	2.4
-\fBmkdir\fP(2)	1.0
-\fBmkdirat\fP(2)	2.6.16
-\fBmknod\fP(2)	1.0
-\fBmknodat\fP(2)	2.6.16
-\fBmlock\fP(2)	2.0
-\fBmlock2\fP(2)	4.4
-\fBmlockall\fP(2)	2.0
-\fBmmap\fP(2)	1.0
-\fBmmap2\fP(2)	2.4
-\fBmodify_ldt\fP(2)	1.0
-\fBmount\fP(2)	1.0
-\fBmove_mount\fP(2)	5.2
-\fBmove_pages\fP(2)	2.6.18
-\fBmprotect\fP(2)	1.0
-\fBmq_getsetattr\fP(2)	2.6.6
+T{
+.BR membarrier (2)
+T}	3.17
+T{
+.BR memfd_create (2)
+T}	3.17
+T{
+.BR memfd_secret (2)
+T}	5.14
+T{
+.BR migrate_pages (2)
+T}	2.6.16
+T{
+.BR mincore (2)
+T}	2.4
+T{
+.BR mkdir (2)
+T}	1.0
+T{
+.BR mkdirat (2)
+T}	2.6.16
+T{
+.BR mknod (2)
+T}	1.0
+T{
+.BR mknodat (2)
+T}	2.6.16
+T{
+.BR mlock (2)
+T}	2.0
+T{
+.BR mlock2 (2)
+T}	4.4
+T{
+.BR mlockall (2)
+T}	2.0
+T{
+.BR mmap (2)
+T}	1.0
+T{
+.BR mmap2 (2)
+T}	2.4
+T{
+.BR modify_ldt (2)
+T}	1.0
+T{
+.BR mount (2)
+T}	1.0
+T{
+.BR move_mount (2)
+T}	5.2
+T{
+.BR move_pages (2)
+T}	2.6.18
+T{
+.BR mprotect (2)
+T}	1.0
+T{
+.BR mq_getsetattr (2)
+T}	2.6.6
 .\" Implements \fBmq_getattr\fP(3) and \fBmq_setattr\fP(3)
-\fBmq_notify\fP(2)	2.6.6
-\fBmq_open\fP(2)	2.6.6
-\fBmq_timedreceive\fP(2)	2.6.6
-\fBmq_timedsend\fP(2)	2.6.6
-\fBmq_unlink\fP(2)	2.6.6
-\fBmremap\fP(2)	2.0
-\fBmsgctl\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBmsgget\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBmsgrcv\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBmsgsnd\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBmsync\fP(2)	2.0
+T{
+.BR mq_notify (2)
+T}	2.6.6
+T{
+.BR mq_open (2)
+T}	2.6.6
+T{
+.BR mq_timedreceive (2)
+T}	2.6.6
+T{
+.BR mq_timedsend (2)
+T}	2.6.6
+T{
+.BR mq_unlink (2)
+T}	2.6.6
+T{
+.BR mremap (2)
+T}	2.0
+T{
+.BR msgctl (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR msgget (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR msgrcv (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR msgsnd (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR msync (2)
+T}	2.0
 .\" \fBmultiplexer\fP(2)	??	__NR_multiplexer reserved on
 .\"		PowerPC, but unimplemented?
-\fBmunlock\fP(2)	2.0
-\fBmunlockall\fP(2)	2.0
-\fBmunmap\fP(2)	1.0
-\fBname_to_handle_at\fP(2)	2.6.39
-\fBnanosleep\fP(2)	2.0
+T{
+.BR munlock (2)
+T}	2.0
+T{
+.BR munlockall (2)
+T}	2.0
+T{
+.BR munmap (2)
+T}	1.0
+T{
+.BR name_to_handle_at (2)
+T}	2.6.39
+T{
+.BR nanosleep (2)
+T}	2.0
 .\" 5590ff0d5528b60153c0b4e7b771472b5a95e297
-\fBnewfstatat\fP(2)	2.6.16	T{
-See \fBstat\fP(2)
-T}
-\fBnfsservctl\fP(2)	2.2	Removed in 3.1
-\fBnice\fP(2)	1.0
-\fBold_adjtimex\fP(2)	2.0	T{
+T{
+.BR newfstatat (2)
+T}	2.6.16	T{
+See
+.BR stat (2)
+T}
+T{
+.BR nfsservctl (2)
+T}	2.2	Removed in 3.1
+T{
+.BR nice (2)
+T}	1.0
+T{
+.BR old_adjtimex (2)
+T}	2.0	T{
 Alpha only; see NOTES
 T}
-\fBold_getrlimit\fP(2)	2.4	T{
-Old variant of \fBgetrlimit\fP(2)
+T{
+.BR old_getrlimit (2)
+T}	2.4	T{
+Old variant of
+.BR getrlimit (2)
 that used a different value
 for \fBRLIM_INFINITY\fP
 T}
-\fBoldfstat\fP(2)	1.0
-\fBoldlstat\fP(2)	1.0
-\fBoldolduname\fP(2)	1.0
-\fBoldstat\fP(2)	1.0
-\fBoldumount\fP(2)	2.4.116	T{
-Name of the old \fBumount\fP(2)
+T{
+.BR oldfstat (2)
+T}	1.0
+T{
+.BR oldlstat (2)
+T}	1.0
+T{
+.BR oldolduname (2)
+T}	1.0
+T{
+.BR oldstat (2)
+T}	1.0
+T{
+.BR oldumount (2)
+T}	2.4.116	T{
+Name of the old
+.BR umount (2)
 syscall on Alpha
 T}
-\fBolduname\fP(2)	1.0
-\fBopen\fP(2)	1.0
-\fBopen_by_handle_at\fP(2)	2.6.39
-\fBopen_tree\fP(2)	5.2
-\fBopenat\fP(2)	2.6.16
-\fBopenat2\fP(2)	5.6
+T{
+.BR olduname (2)
+T}	1.0
+T{
+.BR open (2)
+T}	1.0
+T{
+.BR open_by_handle_at (2)
+T}	2.6.39
+T{
+.BR open_tree (2)
+T}	5.2
+T{
+.BR openat (2)
+T}	2.6.16
+T{
+.BR openat2 (2)
+T}	5.6
 .\" 9d02a4283e9ce4e9ca11ff00615bdacdb0515a1a
-\fBor1k_atomic\fP(2)	3.1	T{
+T{
+.BR or1k_atomic (2)
+T}	3.1	T{
 OpenRISC 1000 only
 T}
-\fBpause\fP(2)	1.0
-\fBpciconfig_iobase\fP(2)	2.2.15; 2.4	Not on x86
+T{
+.BR pause (2)
+T}	1.0
+T{
+.BR pciconfig_iobase (2)
+T}	2.2.15; 2.4	Not on x86
 .\" Alpha, PowerPC, ARM; not x86
-\fBpciconfig_read\fP(2)	2.0.26; 2.2	Not on x86
+T{
+.BR pciconfig_read (2)
+T}	2.0.26; 2.2	Not on x86
 .\" , PowerPC, ARM; not x86
-\fBpciconfig_write\fP(2)	2.0.26; 2.2	Not on x86
+T{
+.BR pciconfig_write (2)
+T}	2.0.26; 2.2	Not on x86
 .\" , PowerPC, ARM; not x86
-\fBperf_event_open\fP(2)	2.6.31	T{
+T{
+.BR perf_event_open (2)
+T}	2.6.31	T{
 Was perf_counter_open() in
 2.6.31; renamed in 2.6.32
 T}
-\fBpersonality\fP(2)	1.2
-\fBperfctr\fP(2)	2.2	T{
+T{
+.BR personality (2)
+T}	1.2
+T{
+.BR perfctr (2)
+T}	2.2	T{
 SPARC only; removed in 2.6.34
 T}
 .\"	commit c7d5a0050773e98d1094eaa9f2a1a793fafac300 removed perfctr()
-\fBperfmonctl\fP(2)	2.4	IA-64 only; removed in 5.10
-\fBpidfd_getfd\fP(2)	5.6
-\fBpidfd_send_signal\fP(2)	5.1
-\fBpidfd_open\fP(2)	5.3
-\fBpipe\fP(2)	1.0
-\fBpipe2\fP(2)	2.6.27
-\fBpivot_root\fP(2)	2.4
-\fBpkey_alloc\fP(2)	4.8
-\fBpkey_free\fP(2)	4.8
-\fBpkey_mprotect\fP(2)	4.8
-\fBpoll\fP(2)	2.0.36; 2.2
-\fBppoll\fP(2)	2.6.16
-\fBprctl\fP(2)	2.2
-\fBpread64\fP(2)		T{
+T{
+.BR perfmonctl (2)
+T}	2.4	IA-64 only; removed in 5.10
+T{
+.BR pidfd_getfd (2)
+T}	5.6
+T{
+.BR pidfd_send_signal (2)
+T}	5.1
+T{
+.BR pidfd_open (2)
+T}	5.3
+T{
+.BR pipe (2)
+T}	1.0
+T{
+.BR pipe2 (2)
+T}	2.6.27
+T{
+.BR pivot_root (2)
+T}	2.4
+T{
+.BR pkey_alloc (2)
+T}	4.8
+T{
+.BR pkey_free (2)
+T}	4.8
+T{
+.BR pkey_mprotect (2)
+T}	4.8
+T{
+.BR poll (2)
+T}	2.0.36; 2.2
+T{
+.BR ppoll (2)
+T}	2.6.16
+T{
+.BR prctl (2)
+T}	2.2
+T{
+.BR pread64 (2)
+T}		T{
 Added as "pread" in 2.2;
 renamed "pread64" in 2.6
 T}
-\fBpreadv\fP(2)	2.6.30
-\fBpreadv2\fP(2)	4.6
-\fBprlimit64\fP(2)	2.6.36
-\fBprocess_madvise\fP(2)	5.10
-\fBprocess_vm_readv\fP(2)	3.2
-\fBprocess_vm_writev\fP(2)	3.2
-\fBpselect6\fP(2)	2.6.16
+T{
+.BR preadv (2)
+T}	2.6.30
+T{
+.BR preadv2 (2)
+T}	4.6
+T{
+.BR prlimit64 (2)
+T}	2.6.36
+T{
+.BR process_madvise (2)
+T}	5.10
+T{
+.BR process_vm_readv (2)
+T}	3.2
+T{
+.BR process_vm_writev (2)
+T}	3.2
+T{
+.BR pselect6 (2)
+T}	2.6.16
 .\" Implements \fBpselect\fP(2)
-\fBptrace\fP(2)	1.0
-\fBpwrite64\fP(2)		T{
+T{
+.BR ptrace (2)
+T}	1.0
+T{
+.BR pwrite64 (2)
+T}		T{
 Added as "pwrite" in 2.2;
 renamed "pwrite64" in 2.6
 T}
-\fBpwritev\fP(2)	2.6.30
-\fBpwritev2\fP(2)	4.6
-\fBquery_module\fP(2)	2.2	Removed in 2.6
-\fBquotactl\fP(2)	1.0
-\fBquotactl_fd\fP(2)	5.14
-\fBread\fP(2)	1.0
-\fBreadahead\fP(2)	2.4.13
-\fBreaddir\fP(2)	1.0
+T{
+.BR pwritev (2)
+T}	2.6.30
+T{
+.BR pwritev2 (2)
+T}	4.6
+T{
+.BR query_module (2)
+T}	2.2	Removed in 2.6
+T{
+.BR quotactl (2)
+T}	1.0
+T{
+.BR quotactl_fd (2)
+T}	5.14
+T{
+.BR read (2)
+T}	1.0
+T{
+.BR readahead (2)
+T}	2.4.13
+T{
+.BR readdir (2)
+T}	1.0
 .\" Supersedes \fBgetdents\fP(2)
-\fBreadlink\fP(2)	1.0
-\fBreadlinkat\fP(2)	2.6.16
-\fBreadv\fP(2)	2.0
-\fBreboot\fP(2)	1.0
-\fBrecv\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
+T{
+.BR readlink (2)
+T}	1.0
+T{
+.BR readlinkat (2)
+T}	2.6.16
+T{
+.BR readv (2)
+T}	2.0
+T{
+.BR reboot (2)
+T}	1.0
+T{
+.BR recv (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
 T}
-\fBrecvfrom\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
+T{
+.BR recvfrom (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
 T}
-\fBrecvmsg\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
+T{
+.BR recvmsg (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
 T}
-\fBrecvmmsg\fP(2)	2.6.33
-\fBremap_file_pages\fP(2)	2.6	T{
+T{
+.BR recvmmsg (2)
+T}	2.6.33
+T{
+.BR remap_file_pages (2)
+T}	2.6	T{
 Deprecated since 3.16
 T}
-\fBremovexattr\fP(2)	2.6; 2.4.18
-\fBrename\fP(2)	1.0
-\fBrenameat\fP(2)	2.6.16
-\fBrenameat2\fP(2)	3.15
-\fBrequest_key\fP(2)	2.6.10
-\fBrestart_syscall\fP(2)	2.6
+T{
+.BR removexattr (2)
+T}	2.6; 2.4.18
+T{
+.BR rename (2)
+T}	1.0
+T{
+.BR renameat (2)
+T}	2.6.16
+T{
+.BR renameat2 (2)
+T}	3.15
+T{
+.BR request_key (2)
+T}	2.6.10
+T{
+.BR restart_syscall (2)
+T}	2.6
 .\" 921ebd8f2c081b3cf6c3b29ef4103eef3ff26054
-\fBriscv_flush_icache\fP(2)	4.15	RISC-V only
-\fBrmdir\fP(2)	1.0
-\fBrseq\fP(2)	4.18
-\fBrt_sigaction\fP(2)	2.2
-\fBrt_sigpending\fP(2)	2.2
-\fBrt_sigprocmask\fP(2)	2.2
-\fBrt_sigqueueinfo\fP(2)	2.2
-\fBrt_sigreturn\fP(2)	2.2
-\fBrt_sigsuspend\fP(2)	2.2
-\fBrt_sigtimedwait\fP(2)	2.2
-\fBrt_tgsigqueueinfo\fP(2)	2.6.31
-\fBrtas\fP(2)	2.6.2	T{
+T{
+.BR riscv_flush_icache (2)
+T}	4.15	RISC-V only
+T{
+.BR rmdir (2)
+T}	1.0
+T{
+.BR rseq (2)
+T}	4.18
+T{
+.BR rt_sigaction (2)
+T}	2.2
+T{
+.BR rt_sigpending (2)
+T}	2.2
+T{
+.BR rt_sigprocmask (2)
+T}	2.2
+T{
+.BR rt_sigqueueinfo (2)
+T}	2.2
+T{
+.BR rt_sigreturn (2)
+T}	2.2
+T{
+.BR rt_sigsuspend (2)
+T}	2.2
+T{
+.BR rt_sigtimedwait (2)
+T}	2.2
+T{
+.BR rt_tgsigqueueinfo (2)
+T}	2.6.31
+T{
+.BR rtas (2)
+T}	2.6.2	T{
 PowerPC/PowerPC64 only
 T}
-\fBs390_runtime_instr\fP(2)	3.7	s390 only
-\fBs390_pci_mmio_read\fP(2)	3.19	s390 only
-\fBs390_pci_mmio_write\fP(2)	3.19	s390 only
-\fBs390_sthyi\fP(2)	4.15	s390 only
-\fBs390_guarded_storage\fP(2)	4.12	s390 only
-\fBsched_get_affinity\fP(2)	2.6	T{
+T{
+.BR s390_runtime_instr (2)
+T}	3.7	s390 only
+T{
+.BR s390_pci_mmio_read (2)
+T}	3.19	s390 only
+T{
+.BR s390_pci_mmio_write (2)
+T}	3.19	s390 only
+T{
+.BR s390_sthyi (2)
+T}	4.15	s390 only
+T{
+.BR s390_guarded_storage (2)
+T}	4.12	s390 only
+T{
+.BR sched_get_affinity (2)
+T}	2.6	T{
 Name of
 .BR \%sched_getaffinity (2)
 on SPARC and SPARC64
 T}
-\fBsched_get_priority_max\fP(2)	2.0
-\fBsched_get_priority_min\fP(2)	2.0
-\fBsched_getaffinity\fP(2)	2.6
-\fBsched_getattr\fP(2)	3.14
-\fBsched_getparam\fP(2)	2.0
-\fBsched_getscheduler\fP(2)	2.0
-\fBsched_rr_get_interval\fP(2)	2.0
-\fBsched_set_affinity\fP(2)	2.6	T{
+T{
+.BR sched_get_priority_max (2)
+T}	2.0
+T{
+.BR sched_get_priority_min (2)
+T}	2.0
+T{
+.BR sched_getaffinity (2)
+T}	2.6
+T{
+.BR sched_getattr (2)
+T}	3.14
+T{
+.BR sched_getparam (2)
+T}	2.0
+T{
+.BR sched_getscheduler (2)
+T}	2.0
+T{
+.BR sched_rr_get_interval (2)
+T}	2.0
+T{
+.BR sched_set_affinity (2)
+T}	2.6	T{
 Name of
 .BR \%sched_setaffinity (2)
 on SPARC and SPARC64
 T}
-\fBsched_setaffinity\fP(2)	2.6
-\fBsched_setattr\fP(2)	3.14
-\fBsched_setparam\fP(2)	2.0
-\fBsched_setscheduler\fP(2)	2.0
-\fBsched_yield\fP(2)	2.0
-\fBseccomp\fP(2)	3.17
-\fBselect\fP(2)	1.0
-\fBsemctl\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBsemget\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBsemop\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBsemtimedop\fP(2)	2.6; 2.4.22
-\fBsend\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBsendfile\fP(2)	2.2
-\fBsendfile64\fP(2)	2.6; 2.4.19
-\fBsendmmsg\fP(2)	3.0
-\fBsendmsg\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBsendto\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBset_mempolicy\fP(2)	2.6.6
-\fBset_robust_list\fP(2)	2.6.17
-\fBset_thread_area\fP(2)	2.6
-\fBset_tid_address\fP(2)	2.6
-\fBset_tls\fP(2)	2.6.11	T{
+T{
+.BR sched_setaffinity (2)
+T}	2.6
+T{
+.BR sched_setattr (2)
+T}	3.14
+T{
+.BR sched_setparam (2)
+T}	2.0
+T{
+.BR sched_setscheduler (2)
+T}	2.0
+T{
+.BR sched_yield (2)
+T}	2.0
+T{
+.BR seccomp (2)
+T}	3.17
+T{
+.BR select (2)
+T}	1.0
+T{
+.BR semctl (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR semget (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR semop (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR semtimedop (2)
+T}	2.6; 2.4.22
+T{
+.BR send (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR sendfile (2)
+T}	2.2
+T{
+.BR sendfile64 (2)
+T}	2.6; 2.4.19
+T{
+.BR sendmmsg (2)
+T}	3.0
+T{
+.BR sendmsg (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR sendto (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR set_mempolicy (2)
+T}	2.6.6
+T{
+.BR set_robust_list (2)
+T}	2.6.17
+T{
+.BR set_thread_area (2)
+T}	2.6
+T{
+.BR set_tid_address (2)
+T}	2.6
+T{
+.BR set_tls (2)
+T}	2.6.11	T{
 ARM OABI/EABI only (constant
 has \fB__ARM_NR\fP prefix)
 T}
@@ -665,182 +1381,432 @@ .SS System call list
 .\" T}
 .\" See http://lkml.org/lkml/2005/8/1/83
 .\" "[PATCH] remove sys_set_zone_reclaim()"
-\fBsetdomainname\fP(2)	1.0
-\fBsetfsgid\fP(2)	1.2
-\fBsetfsgid32\fP(2)	2.4
-\fBsetfsuid\fP(2)	1.2
-\fBsetfsuid32\fP(2)	2.4
-\fBsetgid\fP(2)	1.0
-\fBsetgid32\fP(2)	2.4
-\fBsetgroups\fP(2)	1.0
-\fBsetgroups32\fP(2)	2.4
+T{
+.BR setdomainname (2)
+T}	1.0
+T{
+.BR setfsgid (2)
+T}	1.2
+T{
+.BR setfsgid32 (2)
+T}	2.4
+T{
+.BR setfsuid (2)
+T}	1.2
+T{
+.BR setfsuid32 (2)
+T}	2.4
+T{
+.BR setgid (2)
+T}	1.0
+T{
+.BR setgid32 (2)
+T}	2.4
+T{
+.BR setgroups (2)
+T}	1.0
+T{
+.BR setgroups32 (2)
+T}	2.4
 .\" arch/alpha/include/asm/core_lca.h
-\fBsethae\fP(2)	2.0	T{
+T{
+.BR sethae (2)
+T}	2.0	T{
 Alpha only; see NOTES
 T}
-\fBsethostname\fP(2)	1.0
-\fBsetitimer\fP(2)	1.0
-\fBsetns\fP(2)	3.0
-\fBsetpgid\fP(2)	1.0
-\fBsetpgrp\fP(2)	2.0	T{
+T{
+.BR sethostname (2)
+T}	1.0
+T{
+.BR setitimer (2)
+T}	1.0
+T{
+.BR setns (2)
+T}	3.0
+T{
+.BR setpgid (2)
+T}	1.0
+T{
+.BR setpgrp (2)
+T}	2.0	T{
 Alternative name for
 .BR setpgid (2)
 on Alpha
 T}
-\fBsetpriority\fP(2)	1.0
-\fBsetregid\fP(2)	1.0
-\fBsetregid32\fP(2)	2.4
-\fBsetresgid\fP(2)	2.2
-\fBsetresgid32\fP(2)	2.4
-\fBsetresuid\fP(2)	2.2
-\fBsetresuid32\fP(2)	2.4
-\fBsetreuid\fP(2)	1.0
-\fBsetreuid32\fP(2)	2.4
-\fBsetrlimit\fP(2)	1.0
-\fBsetsid\fP(2)	1.0
-\fBsetsockopt\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBsettimeofday\fP(2)	1.0
-\fBsetuid\fP(2)	1.0
-\fBsetuid32\fP(2)	2.4
-\fBsetup\fP(2)	1.0	Removed in 2.2
-\fBsetxattr\fP(2)	2.6; 2.4.18
-\fBsgetmask\fP(2)	1.0
-\fBshmat\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBshmctl\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBshmdt\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBshmget\fP(2)	2.0	T{
-See notes on \fBipc\fP(2)
-T}
-\fBshutdown\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBsigaction\fP(2)	1.0
-\fBsigaltstack\fP(2)	2.2
-\fBsignal\fP(2)	1.0
-\fBsignalfd\fP(2)	2.6.22
-\fBsignalfd4\fP(2)	2.6.27
-\fBsigpending\fP(2)	1.0
-\fBsigprocmask\fP(2)	1.0
-\fBsigreturn\fP(2)	1.0
-\fBsigsuspend\fP(2)	1.0
-\fBsocket\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
-T}
-\fBsocketcall\fP(2)	1.0
+T{
+.BR setpriority (2)
+T}	1.0
+T{
+.BR setregid (2)
+T}	1.0
+T{
+.BR setregid32 (2)
+T}	2.4
+T{
+.BR setresgid (2)
+T}	2.2
+T{
+.BR setresgid32 (2)
+T}	2.4
+T{
+.BR setresuid (2)
+T}	2.2
+T{
+.BR setresuid32 (2)
+T}	2.4
+T{
+.BR setreuid (2)
+T}	1.0
+T{
+.BR setreuid32 (2)
+T}	2.4
+T{
+.BR setrlimit (2)
+T}	1.0
+T{
+.BR setsid (2)
+T}	1.0
+T{
+.BR setsockopt (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR settimeofday (2)
+T}	1.0
+T{
+.BR setuid (2)
+T}	1.0
+T{
+.BR setuid32 (2)
+T}	2.4
+T{
+.BR setup (2)
+T}	1.0	Removed in 2.2
+T{
+.BR setxattr (2)
+T}	2.6; 2.4.18
+T{
+.BR sgetmask (2)
+T}	1.0
+T{
+.BR shmat (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR shmctl (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR shmdt (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR shmget (2)
+T}	2.0	T{
+See notes on
+.BR ipc (2)
+T}
+T{
+.BR shutdown (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR sigaction (2)
+T}	1.0
+T{
+.BR sigaltstack (2)
+T}	2.2
+T{
+.BR signal (2)
+T}	1.0
+T{
+.BR signalfd (2)
+T}	2.6.22
+T{
+.BR signalfd4 (2)
+T}	2.6.27
+T{
+.BR sigpending (2)
+T}	1.0
+T{
+.BR sigprocmask (2)
+T}	1.0
+T{
+.BR sigreturn (2)
+T}	1.0
+T{
+.BR sigsuspend (2)
+T}	1.0
+T{
+.BR socket (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
+T}
+T{
+.BR socketcall (2)
+T}	1.0
 .\" Implements BSD socket calls
-\fBsocketpair\fP(2)	2.0	T{
-See notes on \fBsocketcall\fP(2)
+T{
+.BR socketpair (2)
+T}	2.0	T{
+See notes on
+.BR socketcall (2)
 T}
 .\" 5a0015d62668e64c8b6e02e360fbbea121bfd5e6
-\fBspill\fP(2)	2.6.13	Xtensa only
-\fBsplice\fP(2)	2.6.17
-\fBspu_create\fP(2)	2.6.16	T{
+T{
+.BR spill (2)
+T}	2.6.13	Xtensa only
+T{
+.BR splice (2)
+T}	2.6.17
+T{
+.BR spu_create (2)
+T}	2.6.16	T{
 PowerPC/PowerPC64 only
 T}
-\fBspu_run\fP(2)	2.6.16	T{
+T{
+.BR spu_run (2)
+T}	2.6.16	T{
 PowerPC/PowerPC64 only
 T}
-\fBssetmask\fP(2)	1.0
-\fBstat\fP(2)	1.0
-\fBstat64\fP(2)	2.4
-\fBstatfs\fP(2)	1.0
-\fBstatfs64\fP(2)	2.6
-\fBstatx\fP(2)	4.11
-\fBstime\fP(2)	1.0
-\fBsubpage_prot\fP(2)	2.6.25	T{
+T{
+.BR ssetmask (2)
+T}	1.0
+T{
+.BR stat (2)
+T}	1.0
+T{
+.BR stat64 (2)
+T}	2.4
+T{
+.BR statfs (2)
+T}	1.0
+T{
+.BR statfs64 (2)
+T}	2.6
+T{
+.BR statx (2)
+T}	4.11
+T{
+.BR stime (2)
+T}	1.0
+T{
+.BR subpage_prot (2)
+T}	2.6.25	T{
 PowerPC/PowerPC64 only
 T}
-\fBswapcontext\fP(2)	2.6.3	T{
+T{
+.BR swapcontext (2)
+T}	2.6.3	T{
 PowerPC/PowerPC64 only
 T}
 .\" 529d235a0e190ded1d21ccc80a73e625ebcad09b
-\fBswitch_endian\fP(2)	4.1	PowerPC64 only
-\fBswapoff\fP(2)	1.0
-\fBswapon\fP(2)	1.0
-\fBsymlink\fP(2)	1.0
-\fBsymlinkat\fP(2)	2.6.16
-\fBsync\fP(2)	1.0
-\fBsync_file_range\fP(2)	2.6.17
-\fBsync_file_range2\fP(2)	2.6.22
+T{
+.BR switch_endian (2)
+T}	4.1	PowerPC64 only
+T{
+.BR swapoff (2)
+T}	1.0
+T{
+.BR swapon (2)
+T}	1.0
+T{
+.BR symlink (2)
+T}	1.0
+T{
+.BR symlinkat (2)
+T}	2.6.16
+T{
+.BR sync (2)
+T}	1.0
+T{
+.BR sync_file_range (2)
+T}	2.6.17
+T{
+.BR sync_file_range2 (2)
+T}	2.6.22
 .\" PowerPC, ARM, tile
 .\" First appeared on ARM, as arm_sync_file_range(), but later renamed
 .\" \fBsys_debug_setcontext\fP(2)	???	PowerPC if CONFIG_PPC32
-\fBsyncfs\fP(2)	2.6.39
-\fBsys_debug_setcontext\fP(2)	2.6.11	PowerPC only
-\fBsyscall\fP(2)	1.0	T{
+T{
+.BR syncfs (2)
+T}	2.6.39
+T{
+.BR sys_debug_setcontext (2)
+T}	2.6.11	PowerPC only
+T{
+.BR syscall (2)
+T}	1.0	T{
 Still available on ARM OABI
 and MIPS O32 ABI
 T}
-\fBsysfs\fP(2)	1.2
-\fBsysinfo\fP(2)	1.0
-\fBsyslog\fP(2)	1.0
+T{
+.BR sysfs (2)
+T}	1.2
+T{
+.BR sysinfo (2)
+T}	1.0
+T{
+.BR syslog (2)
+T}	1.0
 .\" glibc interface is \fBklogctl\fP(3)
-\fBsysmips\fP(2)	2.6.0	MIPS only
-\fBtee\fP(2)	2.6.17
-\fBtgkill\fP(2)	2.6
-\fBtime\fP(2)	1.0
-\fBtimer_create\fP(2)	2.6
-\fBtimer_delete\fP(2)	2.6
-\fBtimer_getoverrun\fP(2)	2.6
-\fBtimer_gettime\fP(2)	2.6
-\fBtimer_settime\fP(2)	2.6
+T{
+.BR sysmips (2)
+T}	2.6.0	MIPS only
+T{
+.BR tee (2)
+T}	2.6.17
+T{
+.BR tgkill (2)
+T}	2.6
+T{
+.BR time (2)
+T}	1.0
+T{
+.BR timer_create (2)
+T}	2.6
+T{
+.BR timer_delete (2)
+T}	2.6
+T{
+.BR timer_getoverrun (2)
+T}	2.6
+T{
+.BR timer_gettime (2)
+T}	2.6
+T{
+.BR timer_settime (2)
+T}	2.6
 .\" .\" b215e283992899650c4271e7385c79e26fb9a88e
 .\" .\" 4d672e7ac79b5ec5cdc90e450823441e20464691
 .\" \fBtimerfd\fP(2)	2.6.22	T{
 .\" Old timerfd interface,
 .\" removed in 2.6.25
 .\" T}
-\fBtimerfd_create\fP(2)	2.6.25
-\fBtimerfd_gettime\fP(2)	2.6.25
-\fBtimerfd_settime\fP(2)	2.6.25
-\fBtimes\fP(2)	1.0
-\fBtkill\fP(2)	2.6; 2.4.22
-\fBtruncate\fP(2)	1.0
-\fBtruncate64\fP(2)	2.4
-\fBugetrlimit\fP(2)	2.4
-\fBumask\fP(2)	1.0
-\fBumount\fP(2)	1.0
+T{
+.BR timerfd_create (2)
+T}	2.6.25
+T{
+.BR timerfd_gettime (2)
+T}	2.6.25
+T{
+.BR timerfd_settime (2)
+T}	2.6.25
+T{
+.BR times (2)
+T}	1.0
+T{
+.BR tkill (2)
+T}	2.6; 2.4.22
+T{
+.BR truncate (2)
+T}	1.0
+T{
+.BR truncate64 (2)
+T}	2.4
+T{
+.BR ugetrlimit (2)
+T}	2.4
+T{
+.BR umask (2)
+T}	1.0
+T{
+.BR umount (2)
+T}	1.0
 .\" sys_oldumount() -- __NR_umount
-\fBumount2\fP(2)	2.2
+T{
+.BR umount2 (2)
+T}	2.2
 .\" sys_umount() -- __NR_umount2
-\fBuname\fP(2)	1.0
-\fBunlink\fP(2)	1.0
-\fBunlinkat\fP(2)	2.6.16
-\fBunshare\fP(2)	2.6.16
-\fBuselib\fP(2)	1.0
-\fBustat\fP(2)	1.0
-\fBuserfaultfd\fP(2)	4.3
-\fBusr26\fP(2)	2.4.8.1	ARM OABI only
-\fBusr32\fP(2)	2.4.8.1	ARM OABI only
-\fButime\fP(2)	1.0
-\fButimensat\fP(2)	2.6.22
-\fButimes\fP(2)	2.2
-\fButrap_install\fP(2)	2.2	SPARC64 only
+T{
+.BR uname (2)
+T}	1.0
+T{
+.BR unlink (2)
+T}	1.0
+T{
+.BR unlinkat (2)
+T}	2.6.16
+T{
+.BR unshare (2)
+T}	2.6.16
+T{
+.BR uselib (2)
+T}	1.0
+T{
+.BR ustat (2)
+T}	1.0
+T{
+.BR userfaultfd (2)
+T}	4.3
+T{
+.BR usr26 (2)
+T}	2.4.8.1	ARM OABI only
+T{
+.BR usr32 (2)
+T}	2.4.8.1	ARM OABI only
+T{
+.BR utime (2)
+T}	1.0
+T{
+.BR utimensat (2)
+T}	2.6.22
+T{
+.BR utimes (2)
+T}	2.2
+T{
+.BR utrap_install (2)
+T}	2.2	SPARC64 only
 .\" FIXME . document utrap_install()
 .\" There's a man page for Solaris 5.11
-\fBvfork\fP(2)	2.2
-\fBvhangup\fP(2)	1.0
-\fBvm86old\fP(2)	1.0	T{
+T{
+.BR vfork (2)
+T}	2.2
+T{
+.BR vhangup (2)
+T}	1.0
+T{
+.BR vm86old (2)
+T}	1.0	T{
 Was "vm86"; renamed in
 2.0.28/2.2
 T}
-\fBvm86\fP(2)	2.0.28; 2.2
-\fBvmsplice\fP(2)	2.6.17
-\fBwait4\fP(2)	1.0
-\fBwaitid\fP(2)	2.6.10
-\fBwaitpid\fP(2)	1.0
-\fBwrite\fP(2)	1.0
-\fBwritev\fP(2)	2.0
+T{
+.BR vm86 (2)
+T}	2.0.28; 2.2
+T{
+.BR vmsplice (2)
+T}	2.6.17
+T{
+.BR wait4 (2)
+T}	1.0
+T{
+.BR waitid (2)
+T}	2.6.10
+T{
+.BR waitpid (2)
+T}	1.0
+T{
+.BR write (2)
+T}	1.0
+T{
+.BR writev (2)
+T}	2.0
 .\" 5a0015d62668e64c8b6e02e360fbbea121bfd5e6
-\fBxtensa\fP(2)	2.6.13	Xtensa only
+T{
+.BR xtensa (2)
+T}	2.6.13	Xtensa only
 .TE
 .P
 On many platforms, including x86-32, socket calls are all multiplexed
--=20
2.30.2

--jpdq6d3pvaatvlju
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYsIEoACgkQ0Z6cfXEm
bc71HQ//eER5y2W6zyBjWUCzmyn+9CpTSGkRmwqi6SIARXvvs/x9imfzYHzHQ32w
wqOsFVGnzQ1B9ccGNQt7SNj9/zY55h9tR7wcostmAXb+2Y9BbPoDCkuJ7BA813Ip
S++ZHVeqTUHIaxNZ1WfCknkm7p0Xbo4lCPGjcLIwx2O1gx6YIXKhFLmsOiKz6FsC
4+3gYKb4o+bnP+c++n1W2OB4/i7GWS2ql5aB1JimldyTWfYBtYaeZAmlVnESLQW8
9X13hsAXxrlbuxC5r5bZlmmf0XcLWs0963cRorWWLK5TR4bRCS11CVI1V+L9rrcU
PLHJAj315p+FVTSZSJ575NHbotP7pTMsuqUbqpUsVrDoFYmqAjNATOGVaJW7NYY2
/XwQ4VsWLBYJiPkZuoFwgpmdjCRe8LSgZYNs8u2C+wxsnSJkBxF8ocaj9cNlbYFL
efz1/8e9Lc0rf1g27tgCo0Hmt7WsofcukHdjg/FCDQ1YGxpZdxytwu3PBbYHIZK7
2a6eSOE/TU6yeVvsgHOk6ilmX5Zvb4tgXo5rLTOix1AKI/CGOG1957XdPYfwkFIJ
Nj6JrNfPhIclRLyIAo6GwmjGjCZouXFm1H9JwpuF4JgQPubNqvARVXnbl6Bb0c7G
ZKP8FeZ0jR+dENH6bS1pOMxTWMin/EM05yDms5DN/g4IIvVaYwc=
=TWte
-----END PGP SIGNATURE-----

--jpdq6d3pvaatvlju--

