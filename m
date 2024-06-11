Return-Path: <linux-man+bounces-1102-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC86E903FFC
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84D8A1F2464A
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD2B1E531;
	Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="W18tUEVL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D847F36126
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119824; cv=none; b=i2FU7rEmULKKYJiimAmtuug1xF98Wt3KgnpKAuca6W20zvc1CDFkhKPvJ8/DdVl4Ge9PqLV2pWJb3M7mVLd8BetyOIb9Z04KxiBL5iEJwxtj7IuJRigww209YJnla7NqiNNxVCoImYeKNtNsgVNdG7dMkmpNutkzK66lLPimdZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119824; c=relaxed/simple;
	bh=fwea9QgtelBwqlyEbZ2TkdA5uzacP5H53iC/HAHGRVw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CKD9ScOGZuLFdcqJXoib9sLIaPpk1ClUd7B7udetmPwKCARDD0o3NJ6wtCoE9Yi7IwI+5cC5o5iIPFRLN11pwnx/rZukPt4VMTjlEB8LixtbvsrSxSJv3ISn3aDO5+HeGTt+6TGqs6KLH1xTk+E/XuUXFqvb18CvQ2unYz2eS3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=W18tUEVL; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 76DCD3C00E40A;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 9MH1mGekD0FL; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 2EB183C00E8B0;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 2EB183C00E8B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=fwea9QgtelBwqlyEbZ2TkdA5uzacP5H53iC/HAHGRVw=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=W18tUEVL7QQuhfX8WwJnkN/hy+tvoWCDOkSjuJlUxIkKGtERm7+otvW1YSXw2FzFd
	 SHFOedoovhRshEjiEogQ1LQUhz3t0MlHLuiLEqUVRn1SSfD+ZzQ9t5jDlBaomKtFQg
	 y6M9Cpe/cFYqF6lEJoRvxjiusgXR8Z9tA1GC3WhOtzeZPCchCtG9jOvc0j6hb85f2A
	 3du3KqEOoam4B5gUVvEIPOF1YE9zX5vXw7IuAywEP1TY70/uCabWm18u0uY8TYh7vD
	 bF7DzxF61Y6IyAgOcvzKvmQzX3eARJQzrmNYDRNq32arOwh3hWqqyywbsrPEY9YK10
	 lqT/FFuNfGs8Q==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id Kvi2hksVCDSL; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 0F4153C01409F;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 05/12] tzset: time hh range is now -167..167
Date: Tue, 11 Jun 2024 08:29:08 -0700
Message-ID: <20240611153005.3066-5-eggert@cs.ucla.edu>
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
 man/man3/tzset.3 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 7ddea52b7..717b1fec9 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -146,6 +146,8 @@ Day 0 is a Sunday.
 .P
 The \fItime\fP fields specify when, in the local time currently in effec=
t,
 the change to the other time occurs.
+They use the same format as \fIoffset\fP except that the hour can range
+from \-167 to 167 to represent times before and after the named day.
 If omitted, the default is 02:00:00.
 .P
 Here is an example for New Zealand,
--=20
2.45.2


