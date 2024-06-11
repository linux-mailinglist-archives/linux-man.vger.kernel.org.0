Return-Path: <linux-man+bounces-1108-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A7E904003
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C4661F246AF
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2318D376E9;
	Tue, 11 Jun 2024 15:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="H0R3u1VD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A624D374CB
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119825; cv=none; b=QpXL6fU1AIskKzPfRs2/cVAN7EwrVFrpJPuEYPT4NMuov4aqpsvALvwMRANEw9YGmtV1akHTjjuaePT1me0rPOoh5eAS6L0hM6prkCk6cd3RfWR+tuunwk/+DS+b4EXcVdxZw9aOWUTtU13aCWFpg9EeZwQFFleglwW/n2GrQxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119825; c=relaxed/simple;
	bh=Wd03t0uarkA7Zm/EHdmtFNgd1MZWbkFXAd3tXqWV0vM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MtQEyBCOgisXVGfRGZ6wlduLvmAI506BSCmcw1+PPpq0H/B+6PVNRf8/xhHCaND81nji7CaxY4w4/4jDeS5W18tHQdXZHpMEF3+2EwqMmP9oZ805D7hlv8W8yLPsOZV+v0/TgRWBSyvrK7b28+sLnWK0HatUhgmn8Q0XpGdpfv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=H0R3u1VD; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id A5E633C00E40F;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 5SQfYWaptS_J; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 471A23C00E408;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 471A23C00E408
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=Wd03t0uarkA7Zm/EHdmtFNgd1MZWbkFXAd3tXqWV0vM=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=H0R3u1VDOmgDfGIpn7IhGvsTofTvXQb1Mu/KjkTczYEOOL4sYmD/3WWw72YPz1EVK
	 D0XJLIV1cs+3m6lNjYZXT0kqGv7V0Ayh23NwaTiKYCRVGGuvvoJVAOYCMKlmPF9EYN
	 TUSOGHk5OdxDxAe902pWGtuf5YIHnS85e9ftQxXG5z98FD/42wJK3Z95nH51sgeO5Q
	 2ieMBtLaw90Jr9BxwaWKRKXN8DpWnUrcfoySPjMYuC1iUYApWL4YvJaYVP8OLhS5uW
	 OiaYl/h3Uwrv/ePBegH2b6UrBaetYCFDnftcITFeyglSLeUSJ+HmrO6ddVZuKgjvye
	 yPWYHmh766r5A==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id oMFLuPZbrg4y; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 2286B3C00E405;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 07/12] tzset: TZ=":EST5" works
Date: Tue, 11 Jun 2024 08:29:10 -0700
Message-ID: <20240611153005.3066-7-eggert@cs.ucla.edu>
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
 man/man3/tzset.3 | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 0b813c568..f3e6c8748 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -86,7 +86,8 @@ below, then Coordinated Universal Time (UTC) is used.
 .P
 A nonempty value of
 .B TZ
-can be one of two formats.
+can be one of two formats,
+either of which can be preceded by a colon which is ignored.
 The first format is a string of characters that directly represent the
 timezone to be used:
 .P
@@ -168,19 +169,21 @@ from a file:
 .P
 .in +4n
 .EX
-:[filespec]
+filespec
 .EE
 .in
 .P
-If the file specification \fIfilespec\fP is omitted, or its value cannot
-be interpreted, then Coordinated Universal Time (UTC) is used.
-If \fIfilespec\fP is given, it specifies another
+The \fIfilespec\fP specifies a
 .BR tzfile (5)-format
 file to read the timezone information from.
 If \fIfilespec\fP does not begin with a \[aq]/\[aq], the file specificat=
ion is
 relative to the system timezone directory.
-If the colon is omitted each
-of the above \fBTZ\fP formats will be tried.
+If the specified file cannot be read or interpreted,
+Coordinated Universal Time (UTC) is used;
+however, applications should not depend on random \fIfilespec\fP values
+standing for UTC, as
+.B TZ
+formats may be extended in the future.
 .P
 Here's an example, once more for New Zealand:
 .P
--=20
2.45.2


