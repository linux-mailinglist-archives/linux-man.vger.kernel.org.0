Return-Path: <linux-man+bounces-1107-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DEF904002
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B32DC1C22CDF
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12EF8364AE;
	Tue, 11 Jun 2024 15:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="BW5UahUl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B28828399
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119825; cv=none; b=VNdw9bRatd7ZPTZb/igSedCcHCYluIaHGOZ7hX7H+bv9Z6ZHT9JUR6GbdtZFTuH7Z/xCF8nV1Sez6ydwHAtj1ppEIPWZ0eWG5q3WvSe9AtrK1CHOAmvUu9m48mOiaF8D7JZ0p2V+kitoIFaXZ69A9zv9+XRsM2OUbAaQPnJqgrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119825; c=relaxed/simple;
	bh=YeL1OsYtFZ0oIUFkNqrxDTYSp5uxqZNrT0+Ml3t4D+k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Acc3IW9FB6PwKyLGx1f/FcXpV7uAFoFyUCBVB7DVk5hEQ11MwB60/C1aAVzd5UGKoJa6eMx9JDWqgqI7bE9n6mGeiT9aDZIXP2fi39Q57earkLc2cLavYlbTdcnq7+4BfDt5yM9/vVXM7vKzTlt4vvJwoNkbEHUG1yv7sorTHB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=BW5UahUl; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id C77863C0140A4;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id yl1_ZeNj0_gn; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 817E13C00E8B0;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 817E13C00E8B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=uyIHztAyuGN/h+q2dTllp14scuPCMEAZbQIyqkMUW0Q=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=BW5UahUlEA9CG9XH3ck819CO0Wetc+aeFvAbFBQEK1PCAJP96qwrM9Y8JCyJAR2Dp
	 wmjkJZbz1TmIx0l0mKjcvf2T46AemyX5n9C2reI3JM+byJQz4SLv0ywiZW5c49fCpC
	 JnLlmCA14IHEqoQACncgwHATqYhBWZkJrrdw2/qUCz4P9pG4gP60ZHvGGwk3Ttvorr
	 KJ7Dg+UkwaeZL9JnX0RyI+BLQAOs4NzwYXrn7CqiSuj2Gien5ZBCd0Temhn9NBWVmO
	 2DcNUVwmpkeRJu8krWOexUOEKyYs11FJZr8zSelCb8udDRO1E9KFARuzL+SdGJ7Efz
	 qaNMy2Y2101Lw==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id 1SybCORpt1ah; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 60EEE3C00E40E;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 11/12] tzset: timezone & daylight in POSIX.1-2001
Date: Tue, 11 Jun 2024 08:29:14 -0700
Message-ID: <20240611153005.3066-11-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 man/man3/tzset.3 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 7d57dc9a1..3f88f3368 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -237,7 +237,16 @@ T}	Thread safety	MT-Safe env locale
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
+.TP
+.BR tzset ()
+.TQ
+.I tzname
 POSIX.1-1988, SVr4, 4.3BSD.
+.TP
+.I timezone
+.TQ
+.I daylight
+POSIX.1-2001 (XSI), SVr4, 4.3BSD.
 .P
 4.3BSD had a function
 .BI "char *timezone(" zone ", " dst )
--=20
2.45.2


