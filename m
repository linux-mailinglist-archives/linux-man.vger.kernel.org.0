Return-Path: <linux-man+bounces-3054-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73102AC88F2
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 09:30:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 726281BA3FDE
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 07:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C551710FD;
	Fri, 30 May 2025 07:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="HsRwr7K+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCA21EF363
	for <linux-man@vger.kernel.org>; Fri, 30 May 2025 07:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748590213; cv=none; b=F7q9ZUs9cyMOXFbbojyrE0mfz/HQ9hex8TqSabQCQWWORW5QkHfqMOROWw90aOjBi16QQC7j3+tXkgVQiKEzZ+ko12nouLR/el1LI9lX5KoGKwOdMUS6du0LkNtIBCvJLK24SooUT0E2xTCL+D5D7Z4DwUy4GTjkO4gf7b+wv3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748590213; c=relaxed/simple;
	bh=hKKCmhkztg86U2JP5kYCaiehWyZAKTxsmH1IQZLgvtw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VlKfiJCfvsqV4h8ewlFBEGgUM2PkregjicxYvZ3PJGle+fR0zYH48H/FtDpk33v9g9zHxKJMkZvsfdXriZmHC0r3l7L4cFYs5Mtc0KpponByoGx85j+coe/rPPW3rBjHcvA7yQRYsubazGUzeNdh5825vdFbrUARMO+GAuy7+VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=HsRwr7K+; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 947AA3C0149CB;
	Fri, 30 May 2025 00:20:37 -0700 (PDT)
Authentication-Results: mail.cs.ucla.edu (amavis); dkim=pass (2048-bit key)
 header.d=cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id Pf1my4lXMrYg; Fri, 30 May 2025 00:20:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 6DBAE3C0149CF;
	Fri, 30 May 2025 00:20:37 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 6DBAE3C0149CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1748589637;
	bh=hKKCmhkztg86U2JP5kYCaiehWyZAKTxsmH1IQZLgvtw=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=HsRwr7K+WNyiZkMHWrQJi/qj8f9FIwDth48FqXWc8FCmW1FHnsO9K6NLHlaF4gwYq
	 9ZTyjYiBdxfncWiLU6YUqrPCto+9M+/TuEeweepf0vB7Du+fK7HXpfrMTVfYIChL+T
	 oG5uMoYwGVTLCv7dPPiXpLRAAJuoslFTKCaNAVl/Gh5IyRdYFiBkt+xiGT7ddXCUf3
	 ZSTuc6NlNrDf49tOXj9SU0yWoGAErfrlHTmNtppyUjf5IM1WNLtT9RC++Tu730Dwbd
	 a1tvF3dP3WuNTwHxz5XPXzCbgd48ULZ8rRKaUmx7MpjTL4le8KljhCP1DLTcLKQIhw
	 82qlfLFKoTI/g==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id mhpZphjK_ZTs; Fri, 30 May 2025 00:20:37 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 4DB3A3C0149CB;
	Fri, 30 May 2025 00:20:37 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH] man/man2/open.2: Fix doc for O_CREAT | O_DIRECTORY
Date: Fri, 30 May 2025 00:20:19 -0700
Message-ID: <20250530072029.344532-1-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Although Linux kernels before 5.7 would create a regular file when
opening a nonexistent file with O_CREAT | O_DIRECTORY, this behavior
was changed to something deeply buggy in 5.7, and when the bug was
fixed in 6.4 this combination of open flags became invalid.

Adjust the documentation to match the 6.4+ behavior,
which makes more sense anyway.

Signed-off-by: Paul Eggert <eggert@cs.ucla.edu>
---
 man/man2/open.2 | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/man/man2/open.2 b/man/man2/open.2
index 948dcd62e..c47b2ad58 100644
--- a/man/man2/open.2
+++ b/man/man2/open.2
@@ -1068,6 +1068,16 @@ was specified.
 .TP
 .B EINVAL
 .B O_CREAT
+and
+.B O_DIRECTORY
+were both specified in
+.I flags ,
+and the Linux kernel version is 6.4 or later.
+(Earlier kernels were inconsistent in this area,
+and POSIX does not specify the behavior.)
+.TP
+.B EINVAL
+.B O_CREAT
 was specified in
 .I flags
 and the final component ("basename") of the new file's
@@ -1882,20 +1892,6 @@ and
 when trying to determine whether the kernel supports
 .B O_TMPFILE
 functionality.
-.P
-When both
-.B O_CREAT
-and
-.B O_DIRECTORY
-are specified in
-.I flags
-and the file specified by
-.I path
-does not exist,
-.BR open ()
-will create a regular file (i.e.,
-.B O_DIRECTORY
-is ignored).
 .SH SEE ALSO
 .BR chmod (2),
 .BR chown (2),
--=20
2.49.0


