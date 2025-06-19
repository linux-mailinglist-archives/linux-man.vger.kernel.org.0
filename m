Return-Path: <linux-man+bounces-3164-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47228ADFCC2
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 07:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA2AE189D426
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 05:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C32E24167D;
	Thu, 19 Jun 2025 05:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b="hjwl5WVe";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="RFg9DYRW"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24C7238C2C
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 05:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750310056; cv=none; b=sSo93YTLZtsQ6SPAHEle/udnzINw2UIS9H63trbWCwnoIKaHXXJte/JOB2djdAQXsycw+QerUba1xUq+158vmkhHEOsHYdXwUd7en49yBx/wZP7YpbolClao1J70ilxGCtfwuJhKIsEVRIbJAs4GAiHN9WfaVrAwbS+vo+4U+s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750310056; c=relaxed/simple;
	bh=5vC11BrV+xMB1Fcx+hDVd+Wh/3dDd5k9POKpb38DaRo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SpOeHasZepV1HUt7WMnVINq1LNVimV4Q+b9YHBS2Id4fb6OS2cgZsASYNkCGjoUwxct7AApi7IfbOQeIl6A0PdNaZ2c1Mlmkll0u2NvkaFdYG4/38klX2sXINf97TQhdHUiQPbbCcsV80X4zeuoGEwduL580l//EnvOcSNNYNNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net; spf=pass smtp.mailfrom=locrian.net; dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b=hjwl5WVe; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=RFg9DYRW; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=locrian.net
Received: from phl-compute-05.internal (phl-compute-05.phl.internal [10.202.2.45])
	by mailfout.phl.internal (Postfix) with ESMTP id E099B1380370;
	Thu, 19 Jun 2025 01:14:13 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Thu, 19 Jun 2025 01:14:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=locrian.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1750310053; x=1750396453; bh=EZagusjMIvcI5h+i1XjaT
	VOP9a5c7umYT9bFbMVx8rc=; b=hjwl5WVexRg3QPYokqGzvMbjhF+F8KSI3IA6i
	uGTVq+/pV2lG7X/XYv8CvI3P9PY7+lgSxwnZwaHuEWqc1kj7VlEnZiudQG1V3rfM
	xsrIdnGUoQK0Qz0oF2318QsZVMsTvLPa3XVybyMUx3ODtslH2xC5lPaTCJJG/63H
	kAN+AWYxVu6mSpL/Sa1vlvAi6XdkAgdERc1H/lRv9ra5+70RAJ0M2bSYpGqytmYc
	ZFihglNYWdebuPm4cFBFE+bLfD+pFFMvOYzk5LjuEDAESccC5WVoaON/+q5XX8qY
	sLWxBw5G4iwanlmdzJRz6RC30pQPigW+MEg4PfzMEWbFySuPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1750310053; x=1750396453; bh=EZagusjMIvcI5h+i1XjaTVOP9a5c7umYT9b
	FbMVx8rc=; b=RFg9DYRWW3L8JPoJYWPhMrWcfV8mqPdEHfRdddmz+2SpqvxLhUp
	L9NpXUCJJeR7QXk3wKiQ5fbYJm0XYDZzUtW22u89AbO2JW01lK96uc3ErvqjfWl9
	ViZUGc/2hFQ4HJclA/4RWk1r4p11I2fQbHbgXzSgrB9QV7uFs/Odu10N0gdCl71S
	W9b+mYiUOo3SnZ3seY11OfFNmjRRQJBZtDMQDPy6jaLn5UM5RL8qGwjvJUv5BHie
	mcskbGFYYg33LXDxmgr2N3UGAa6MIACi3MM4d5sCtAe5oY3idbBMza+IXyAtS/K9
	QIL1DMnyhB2Dh7s+vJnI7BDryaW3wE+lqNQ==
X-ME-Sender: <xms:pZxTaOJHK7mQ_pqeiRjDSnDDpZrbz2DajOllcPJXxHAWXhgjvB67Ag>
    <xme:pZxTaGLDUEKSIBlId23PD5tFCGW-Rztun_ubH-dWnkL4lPh_yuKGYDv2ak9JRvujw
    nPbgdE2XkLxVxMCPQ>
X-ME-Received: <xmr:pZxTaOuUpd0JGeNNVIvs9n5pzWJkZ1Tx94Vc6BdBdtJuoXK0AuWpisR4YosoA3dlAt6z9rSzGCO2GktUwnIsGOWOUWprkNF7R_U8KRHd6rjVhCSsVp_L_Dn2eOXm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdegieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertddtne
    cuhfhrohhmpeeuvghnjhgrmhhinhcurfgvthgvrhhsohhnuceosggvnhhjrghmihhnsehl
    ohgtrhhirghnrdhnvghtqeenucggtffrrghtthgvrhhnpeejhfduhfdtleetvdeufefgvd
    egieetheffveffteevgeeivdegtdetjeelgeefjeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegsvghnjhgrmhhinheslhhotghrihgrnhdrnh
    gvthdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
    rghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvg
    hrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegsvghnjhgrmhhinheslhhotghrihgr
    nhdrnhgvth
X-ME-Proxy: <xmx:pZxTaDb20nqsyF6LGAJT16phrWbqQJnKEquOK3UyqUiaU0GGCTinug>
    <xmx:pZxTaFYdE989ni3T4OdQk27kdghRC9rl55TsNyIpgGKXpAkmB7zcog>
    <xmx:pZxTaPBdrUfjgx2swi6W5niU__gZd5zdg6WeN_F9NPjK9KJF47NVXg>
    <xmx:pZxTaLYwFHOOWNjHvy59RPQcZkDYC5pbheit9iFuxXkP4o8p7KXOiw>
    <xmx:pZxTaBYuXu3HRzNlVW0NfTGpr69e4Xho5aEPKYbqQ0se7gT_IUG7ySFl>
Feedback-ID: icec1443c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 19 Jun 2025 01:14:13 -0400 (EDT)
From: Benjamin Peterson <benjamin@locrian.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Benjamin Peterson <benjamin@locrian.net>
Subject: [PATCH v3] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Date: Wed, 18 Jun 2025 22:13:42 -0700
Message-ID: <20250619051342.145412-2-benjamin@locrian.net>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag
to fchmodat.  glibc added userspace emulation support in version 2.32,
and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd
(2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and
linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").

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

Range-diff against v2:
1:  f234de5b8 ! 1:  ea0fbaf94 man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
    @@ Metadata
      ## Commit message ##
         man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
     
    -    Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag to fchmodat.  glibc added userspace emulation support in version 2.32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd (2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").
    +    Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag
    +    to fchmodat.  glibc added userspace emulation support in version 2.32,
    +    and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd
    +    (2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and
    +    linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").
     
         Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
     
-- 
2.48.1


