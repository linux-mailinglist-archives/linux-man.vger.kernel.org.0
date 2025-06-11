Return-Path: <linux-man+bounces-3137-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B18B0AD5A08
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 17:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD2F7176C53
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 15:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1385F1B4F1F;
	Wed, 11 Jun 2025 15:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b="j1E/AvW0";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Y/8YKYLb"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B6F1A5B92
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 15:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749654726; cv=none; b=hbE6BYaSWR4YzJLpc4njmXu6UOXZ7Hbww5PyejCEN6ZP2GEc+AkXEEWk9lp4bIxN2uXSg3sNqNMJFG0FVD1a2yhVeE+u+6TkHUwLVlP3fEd7zP2NZ4dJ5jZHM9wrWY0sSR1unox3xHY/5ylgNqVwZd8Tpd/sqs13xzfaRj6beJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749654726; c=relaxed/simple;
	bh=4EAzTiEB+17lR571bwN0b/orqs2LhAsfzfbWEtcv9l4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DRTIp3iHH+5cgShDilKz+ZKox32WKCX/zmrwUiO6BHyLQgGfG7yhjKuafdyqW6R8cQocmmO+UlHMJ0KPrsVlsh3R3S9pxysifmPVK6A2h/2IH1zCFsfjy6+sXKxUyaB1TUvpdsfEWIQcOTpdspU9iYxmDoQ7cmMOafk1IV+IWFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net; spf=pass smtp.mailfrom=locrian.net; dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b=j1E/AvW0; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Y/8YKYLb; arc=none smtp.client-ip=202.12.124.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=locrian.net
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 1AA1A254023A;
	Wed, 11 Jun 2025 11:12:04 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Wed, 11 Jun 2025 11:12:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=locrian.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1749654723; x=1749741123; bh=0FwHeH4i20IqkNp5mh37t
	TWVtO+jlRjVlMb0NvDeJYg=; b=j1E/AvW0cZgCD/T2mKd6xGMvP81okKyWiDi6U
	FCjiEnwEvP0vhLghwjU6vMsOBQlFd8xqwz9TKYsN7DM1/0avY3foV0OKvd5HdUOx
	NKXvnF4NAuLtNT3LJ3Bklb/abncotrmsE71BL1CMFY4ZAzgjn6ZMH5G98iDV0hJ0
	pLzQ8yN1LqiYM/DtafndE1Z/UZsOuQ2qc1FA8r0QIDelfyYhPVlj+lzPG4nuccuh
	6EhwSyBwdP8o8hYdMcC3K/B7LXa2/8mKIiJqfxLbXbuDhORjcoElXF/tVWQ8q3aZ
	VSoZRFhdcWiD3Ea2PszeOEfsktoKjiF9aBsbjElky9epXS8sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1749654723; x=1749741123; bh=0FwHeH4i20IqkNp5mh37tTWVtO+jlRjVlMb
	0NvDeJYg=; b=Y/8YKYLb3ockPXFyz2rZSH9l2e+h9tKlfUITmKmG5ZOsQ6MgJ40
	m2Hg9fxejWh7s7Jd3lbJGKSIjpH1OgzYDYvdU6K7QGWKtPNSQeq4JV8QnNAmdXBX
	plmjP/b9oLwSKRNTpnLd3KkMUGG69ptFGWbUznTcWbHr5L8GkJeTph6nLLFoFGR+
	L6FtHw3zu2HbkpNJ+dY6cPTHh+gIQofgccPI271F8Hyd59zMbaJFL+XvQrpqGemz
	vsd5zcoNVekw4YJVHL5lHELGPlHRSHnv1WxKcNDDnyZVO4gIqYL6oO4upR/nVWUa
	vj28xtOKQGvPCHv3sAFd1/ndQ6AqOTb84Ng==
X-ME-Sender: <xms:w5xJaDI8X8ekP3nMHtGFxGVTu1gXQ1n4c10XU7syDKwyQ01mJ36DFA>
    <xme:w5xJaHKpr5VeeqOdj5LAAsevh_Uu4iNcurzlBWKBxNmgGvjOaQGo9Ksav7odkehr6
    fuoYmFEz0W2qKAfBg>
X-ME-Received: <xmr:w5xJaLvpf5a9CBAw9reCy7yLZg8ZmJ_EOv1yK532ip83Qj49OUcGZRlEeIBarVfAM_Dwfz5vxkEP_Ex0Zmq4gHryl3nCcxG0pl4AICPw5VfZ3UpStbh2tq17qQ7Z>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdduvdehudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvve
    fufffkofgggfestdekredtredttdenucfhrhhomhepuegvnhhjrghmihhnucfrvghtvghr
    shhonhcuoegsvghnjhgrmhhinheslhhotghrihgrnhdrnhgvtheqnecuggftrfgrthhtvg
    hrnhepjefhudfhtdeltedvueefgfdvgeeiteehffevffetveegiedvgedtteejleegfeej
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsggvnh
    hjrghmihhnsehlohgtrhhirghnrdhnvghtpdhnsggprhgtphhtthhopeefpdhmohguvgep
    shhmthhpohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtth
    hopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohep
    sggvnhhjrghmihhnsehlohgtrhhirghnrdhnvght
X-ME-Proxy: <xmx:w5xJaMbyu-f4LbelizVbcTrq8PIHNG0l2Nef2I9FcB4zw3iTqF2ZBg>
    <xmx:w5xJaKYG8EUYo4QCNH19870sGtXJ0jRoBtgQEADCTlnCSm8mOXu9Hw>
    <xmx:w5xJaACVGgOzvtlCoC6_edj2Rqb1YVwDXBdDqn-qbNgeRR1KPbKLIA>
    <xmx:w5xJaIYCzQJFhlgY_86111t1JJVwxx3FnPDZmlj1jUMb3-oi9Cabsw>
    <xmx:w5xJaKb2ugbpIWOihahlmn5ld_EFqFwRbbMIQl2MP3XFO_L1Y-tO-jp1>
Feedback-ID: icec1443c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Jun 2025 11:12:03 -0400 (EDT)
From: Benjamin Peterson <benjamin@locrian.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Benjamin Peterson <benjamin@locrian.net>
Subject: [PATCH v2] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Date: Wed, 11 Jun 2025 08:11:58 -0700
Message-ID: <20250611151158.365610-1-benjamin@locrian.net>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag to fchmodat.  glibc added userspace emulation support in version 2.32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd (2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").

Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
---
 man/man2/chmod.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index 307589481..24b9b0dbd 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -197,7 +197,6 @@ If
 .I path
 is a symbolic link, do not dereference it:
 instead operate on the link itself.
-This flag is not currently implemented.
 .P
 See
 .BR openat (2)
@@ -329,6 +328,10 @@ POSIX.1-2008.
 POSIX.1-2008.
 Linux 2.6.16,
 glibc 2.4.
+.TP
+.BR AT_SYMLINK_NOFOLLOW
+glibc 2.32,
+Linux 6.5.
 .SH SEE ALSO
 .BR chmod (1),
 .BR chown (2),

Range-diff against v1:
1:  6a1171eb1 ! 1:  f234de5b8 man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
    @@ Metadata
      ## Commit message ##
         man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
     
    -    Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag to fchmodat.  glibc added userspace emulation support in version 2.32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd0700b25bac2c2d0bebe68d5cc05d ("io: Implement lchmod using fchmodat [BZ #14578]") and linux.git 09da082b07bbae1c11d9560c8502800039aebcea ("fs: Add fchmodat2()").
    +    Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag to fchmodat.  glibc added userspace emulation support in version 2.32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd (2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").
     
         Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
     
    @@ man/man2/chmod.2: POSIX.1-2008.
      POSIX.1-2008.
      Linux 2.6.16,
      glibc 2.4.
    ++.TP
     +.BR AT_SYMLINK_NOFOLLOW
     +glibc 2.32,
     +Linux 6.5.
-- 
2.48.1


