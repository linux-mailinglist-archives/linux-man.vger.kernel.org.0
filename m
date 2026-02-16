Return-Path: <linux-man+bounces-5141-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDucBYUDk2nF0wEAu9opvQ
	(envelope-from <linux-man+bounces-5141-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 12:46:13 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7991431A2
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 12:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6B833009F23
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 11:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F22A1EEE6;
	Mon, 16 Feb 2026 11:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b="OudgQ4UV";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="e6x2S3BP"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-b8-smtp.messagingengine.com (flow-b8-smtp.messagingengine.com [202.12.124.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE0217736
	for <linux-man@vger.kernel.org>; Mon, 16 Feb 2026 11:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.143
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771242343; cv=none; b=hIEhJLiBYnURNNXWplsgUT+Ttay4wDcJE9XuzoBpV5rCfBvqNHsYWj7fKYWQFiz9NBb5EQTOzYGh2SushA3QjXe68NF0EhX78X+xdJWJebA77ybRoSN1X/j47RNRNTMj9I49ZHc4WpiWbsEP7IlmF3GHqg/h6TbRYDaNWDDc3+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771242343; c=relaxed/simple;
	bh=6+tOKv2EoGongSfKx3khSifck/pLrxiHFcztWpH6Sbo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WlwxfXe+UcdJzlaeDBQCtNrjcfEhW6+Ms8J+EwrvxjJopHiNWffu/7Tm8/JldcNLuNsi1ITrfk41FjqwlZlfyv5ECfdt/cWtP9TOggEwNu+JG0wrRmP6SqK5HZLhf2V8qMBpTbVpqrWWjwftINhp2dZiJEoSxVneEclC6FCkhm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au; spf=pass smtp.mailfrom=sethm.id.au; dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b=OudgQ4UV; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=e6x2S3BP; arc=none smtp.client-ip=202.12.124.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sethm.id.au
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailflow.stl.internal (Postfix) with ESMTP id CB15C1300B6E;
	Mon, 16 Feb 2026 06:45:41 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Mon, 16 Feb 2026 06:45:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sethm.id.au; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1771242341;
	 x=1771245941; bh=wlFykK9o87JQJe+vXUzUS4c/6qcF2BFuOVXdQsYPGF8=; b=
	OudgQ4UVvt3LxVGBKk5OPICKBbdqkuZMRAV6KdcO0dydGi7nVf/2TvIwcezzRmxi
	UNcklmS2CKtjkdPAkz4+DRKx3nqvBSNl0CIsJ0Bwb3lFNws6cXa8esxVKFkTF7yG
	FcGjkWWWXXViyoZOx7Lqog6kXq5mWcbjST8Qq2Al7Nb8WZxsqZn/dJLEUzP+zgLZ
	kDh7JXlsTYCXqY4ElOahGYtpnvea+9PxW1THvhnBeTy7+Ub+Hk4RBCWWwCj9yKOk
	toHnJfgV/jfJG3/FuLw+/jzY47cveV2xfrHYNnkMtASemQh3c9P2h5IT0SKc4N5D
	tvLLKmaEQV3c6XRbIe/Qug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1771242341; x=
	1771245941; bh=wlFykK9o87JQJe+vXUzUS4c/6qcF2BFuOVXdQsYPGF8=; b=e
	6x2S3BPHXMlD267FjCnY/dYfN8jswleqyJT67JkW8VgrT9y7i5GipsPELL2P83jb
	prAzAQmYFvia2X/IVXr9KuHMifmaM5WWldPQmJBQYgXL9K/9GOzRc0qmia2noqgY
	9GCeD1SAH+3dAoQFHQ/hUtCNre4SdNrtbPa4msWetpC42nTVwzoFdbaP5oEDGu6H
	rXoNZ9L8ZWrqxddL7L8Uz1hug8bMKOd+HfgAIY0ZvHj4YQPqtxsQ1BSD9flLIo+K
	Dh2NtJEw+Oq9liWZ3xCqfzUOC4eGa0Lt9g7y2EpEaKirZ8udVTZDkI6GS333Tuoq
	w5yFcXxOUJEy3wKgDQE0g==
X-ME-Sender: <xms:ZQOTacxDdzIWG3CX2QcT5wXS8uLBptx36SUiGZLwXcMHUwoRqhbnJg>
    <xme:ZQOTaYCpi_TlidPazu6BECSWvt9uTiEqWCOkrodccf5BzLTeUlQ6sLea0DRcVKOJk
    qGER1qU6xQT6h-0UHSvVJPjItOyRI7buOt3Tmjie01Rp_g5Sqn1YA>
X-ME-Received: <xmr:ZQOTaRanIUYMXNAQ7-b54je1BIyW_mniKUgBPPn9BWaVtuYczGvu2MT5bxNa1KwDybXEo7tEGSojbxYiTHgc38GvEXMd337T_as461O15GB2tSIX>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvudeijeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfgggtgfesthekre
    dtredtjeenucfhrhhomhepufgvthhhucfotgffohhnrghlugcuoeguvghvsehsvghthhhm
    rdhiugdrrghuqeenucggtffrrghtthgvrhhnpeeggeeuudeufeevudfhveffheeltdffte
    duhedvtdejjeeiueevtdehheehtddvkeenucffohhmrghinhepfhhrvggvsghsugdrohhr
    ghdpnhgvthgsshgurdhorhhgpdhophgvnhgsshgurdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvvhesshgvthhhmhdrihgurdgr
    uhdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprg
    hlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepuggvvhesshgvthhhmhdrihgurdgr
    uhdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:ZQOTaYhpSz90C6wfQC4otMCLSHT-ML715afr42wDePEBiidkavMD0g>
    <xmx:ZQOTab4oH1twoap4B7rwTb7-xJZcREl1Bdt9wOO26xFWmynlPN-tFA>
    <xmx:ZQOTaX7NNYFSKtLhYnfAlmTMdD_CdSW5lx4BkAY4FbznSk6VxioXLA>
    <xmx:ZQOTaXfAmXzCcSxQWRl8eVN4R8J5ZM6NPjqwdOMlSMzYj454halkhw>
    <xmx:ZQOTaZagOO7li3dFnOhoo7V_J0IQch7IU12VZ2gniUvaD8GGezs9_Iof>
Feedback-ID: i35064beb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 16 Feb 2026 06:45:40 -0500 (EST)
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 1/1] man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
Date: Mon, 16 Feb 2026 21:45:30 +1000
Message-ID: <b1b6f011a7d36cda53abe8c561da44bff08d381b.1771232583.git.dev@sethm.id.au>
X-Mailer: git-send-email 2.53.0.1
In-Reply-To: <cover.1771232583.git.dev@sethm.id.au>
References: <cover.1769429341.git.sethmcmail@pm.me> <cover.1771232583.git.dev@sethm.id.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sethm.id.au,reject];
	R_DKIM_ALLOW(-0.20)[sethm.id.au:s=fm1,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sethm.id.au:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-5141-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@sethm.id.au,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,netbsd.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,openbsd.org:url,sethm.id.au:mid,sethm.id.au:dkim,sethm.id.au:email]
X-Rspamd-Queue-Id: 6F7991431A2
X-Rspamd-Action: no action

mincore(2) was implemented in FreeBSD on 1995-10-21,[1] and was first
included in the FreeBSD 2.2 release on 1997-03.[2]

It was implemented in NetBSD on 1999-06-15,[3] and was first included in
the NetBSD 1.5 release on 2000-12-06,[4] (despite the commit message
stating its intended inclusion in NetBSD 1.4.1).

It was implemented in OpenBSD on 2001-03-09,[5] and was first included
in the OpenBSD 2.9 release on 2001-06-01.[6]

All other listed systems are taken at face value and rearranged in
chronological-ish order.

[1] Dyson, John (21 Oct 1995).  "Implement mincore system call."
FreeBSD source tree (Git repository).  Commit
02c04a2f6c83ee28ed637d120296d04da8f03372.
[2] The FreeBSD Project (29 Nov 2025).  "Prior Releases – EOL".
<https://www.freebsd.org/releases>
[3] Thorpe, Jason (15 Jun 1999).  "Several changes, developed and tested
concurrently:".  NetBSD src (CVS repository).
<https://cvsweb.netbsd.org/bsdweb.cgi/src/sys/uvm/uvm_mmap.c?rev=1.22>
[4] The NetBSD Foundation (2026).  "History of NetBSD releases".
<https://www.netbsd.org/releases/formal.html>
[5] art (9 Mar 2001).  "More syncing to NetBSD."  OpenBSD src (CVS
repository).
<https://cvsweb.openbsd.org/src/sys/uvm/uvm_mmap.c?rev=1.7&content-type=text/x-cvsweb-markup>
[6] de Raadt, Theo (1 Jun 2001).  "OpenBSD 2.9".
<https://www.openbsd.org/29.html>

Signed-off-by: Seth McDonald <dev@sethm.id.au>
---
 man/man2/mincore.2 | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/man/man2/mincore.2 b/man/man2/mincore.2
index 3fafdf0c8f76..c3ff474cf654 100644
--- a/man/man2/mincore.2
+++ b/man/man2/mincore.2
@@ -114,13 +114,16 @@ .SH ERRORS
 .SH STANDARDS
 None.
 .SH HISTORY
+SunOS 4.1,
+4.4BSD,
+FreeBSD 2.2,
+Solaris 8,
 Linux 2.3.99pre1,
-glibc 2.2.
+glibc 2.2,
+NetBSD 1.5,
+OpenBSD 2.9,
+AIX 5.1.
 .P
-First appeared in 4.4BSD.
-.P
-NetBSD, FreeBSD, OpenBSD, Solaris 8,
-AIX 5.1, SunOS 4.1.
 .SH BUGS
 Before Linux 2.6.21,
 .BR mincore ()
-- 
2.53.0.1


