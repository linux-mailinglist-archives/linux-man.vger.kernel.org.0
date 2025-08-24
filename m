Return-Path: <linux-man+bounces-3570-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C7FB33091
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9FEE7A4F93
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 916BB2DEA74;
	Sun, 24 Aug 2025 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="M5KzCuba"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FA12DEA72
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046928; cv=none; b=E7VzJRA11kelThtoSJ6vkFGqLvrfZ4CBeDYT2KCwbHV2gIfDumsppHgthhMuouHwvgMOgsVIseG0AWlzi0Uz5XjPs49GR7iW2S4qVTZS4fnE3di0LR7+QPPBU2VvGiPVMERkY89MDUnL8EmGWIpYS8sU31pklnvppWnSz/9sgHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046928; c=relaxed/simple;
	bh=ZWvWKEq0MFlWeHtKn96SyI1J4fic8lhO0N0Cby2dAzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=EAQmbJl6hdwhsRZzj/gogIC0ulZPmOklb9tkyEnKwEUzPS86AqsxOrzC3JJdNJXvRJgpROz/7E5Q7EEg+nZ2Wm6+XCHmT4M9SNMhi+FpNDVadmHrwQdppsoOAy/OPVhE6R+cjmYJcJjYXXVis0+5bb+U+ZkmRu+jlC7mIP4HU80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=M5KzCuba; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046915;
	bh=2cDGN/9HkqDXxBUfLRdGGLt2zz1IPiS1zA7hH0L3wuE=;
	h=Date:From:To:Cc:Subject;
	b=M5KzCubasDWNs5Pc2oOiQ2sGuetO/TkE00LGaFT+p698Mo11cE+D1R+Qf1gQsU16x
	 qOYXmXtwJ4Eab23NREONasxVQ3CWaj/ll3Rk/9CELykFvwoNqS5uXMIigt4fFg6fb1
	 yzURFi+ltPwOAo7AUmeh+DzKDxIuIVUju6vuIEs1enldlHQvAytBjmS27EHwWwRary
	 PS8SB0yIH/oqUAXjQRoG1YxXuobw3tEBQapn9VHCAUd56KehUZVLKwPxHhTnrDL4iT
	 2T3Wv8HCUwNgFzI50fjPL4meN0tLwT/tv30LpPwgTA1XUQmdqamEPMAKLq/sHQo2Dq
	 VThP+z2WR4MfQ==
Original-Subject: Issue in man page utmp.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002164E.0000000068AB2643.00138DAF; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page utmp.5
Message-ID: <aKsmQ6bm3NpMYRGu@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:   (B<getsid>(2)B<),> → (B<getsid>(2)),

"/* Values for ut_type field, below */\n"
"\\&\n"
"#define EMPTY         0 /* Record does not contain valid info\n"
"                           (formerly known as UT_UNKNOWN on Linux) */\n"
"#define RUN_LVL       1 /* Change in system run-level (see\n"
"                           B<init>(1))\\ \n"
"*/\n"
"#define BOOT_TIME     2 /* Time of system boot (in \\f[I]ut_tv\\fR) */\n"
"#define NEW_TIME      3 /* Time after system clock change\n"
"                           (in \\f[I]ut_tv\\fR) */\n"
"#define OLD_TIME      4 /* Time before system clock change\n"
"                           (in \\f[I]ut_tv\\fR) */\n"
"#define INIT_PROCESS  5 /* Process spawned by B<init>(1)\\ \n"
"*/\n"
"#define LOGIN_PROCESS 6 /* Session leader process for user login */\n"
"#define USER_PROCESS  7 /* Normal process */\n"
"#define DEAD_PROCESS  8 /* Terminated process */\n"
"#define ACCOUNTING    9 /* Not implemented */\n"
"\\&\n"
"#define UT_LINESIZE      32\n"
"#define UT_NAMESIZE      32\n"
"#define UT_HOSTSIZE     256\n"
"\\&\n"
"struct exit_status {              /* Type for ut_exit, below */\n"
"    short e_termination;          /* Process termination status */\n"
"    short e_exit;                 /* Process exit status */\n"
"};\n"
"\\&\n"
"struct utmp {\n"
"    short   ut_type;              /* Type of record */\n"
"    pid_t   ut_pid;               /* PID of login process */\n"
"    char    ut_line[UT_LINESIZE]; /* Device name of tty - \"/dev/\" */\n"
"    char    ut_id[4];             /* Terminal name suffix,\n"
"                                     or inittab(5) ID */\n"
"    char    ut_user[UT_NAMESIZE]; /* Username */\n"
"    char    ut_host[UT_HOSTSIZE]; /* Hostname for remote login, or\n"
"                                     kernel version for run-level\n"
"                                     messages */\n"
"    struct  exit_status ut_exit;  /* Exit status of a process\n"
"                                     marked as DEAD_PROCESS; not\n"
"                                     used by Linux B<init>(1)\\ \n"
"*/\n"
"    /* The ut_session and ut_tv fields must be the same size when\n"
"       compiled 32- and 64-bit.  This allows data files and shared\n"
"       memory to be shared between 32- and 64-bit applications. */\n"
"#if __WORDSIZE == 64 && defined __WORDSIZE_COMPAT32\n"
"    int32_t ut_session;           /* Session ID (\n"
"B<getsid>(2)B<),>\n"
"                                     used for windowing */\n"
"    struct {\n"
"        int32_t tv_sec;           /* Seconds */\n"
"        int32_t tv_usec;          /* Microseconds */\n"
"    } ut_tv;                      /* Time entry was made */\n"
"#else\n"
"     long   ut_session;           /* Session ID */\n"
"     struct timeval ut_tv;        /* Time entry was made */\n"
"#endif\n"
"\\&\n"
"    int32_t ut_addr_v6[4];        /* Internet address of remote\n"
"                                     host; IPv4 address uses\n"
"                                     just ut_addr_v6[0] */\n"
"    char __unused[20];            /* Reserved for future use */\n"
"};\n"
"\\&\n"
"/* Backward compatibility hacks */\n"
"#define ut_name ut_user\n"
"#ifndef _NO_UT_TIME\n"
"#define ut_time ut_tv.tv_sec\n"
"#endif\n"
"#define ut_xtime ut_tv.tv_sec\n"
"#define ut_addr ut_addr_v6[0]\n"

