Return-Path: <linux-man+bounces-1100-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65156903FFF
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1064B23A8C
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39DD1364DC;
	Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="Ziyi0jjd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBB33218B
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119824; cv=none; b=oG7NMk+vteRFJSDpTbQENYw/nAW3zDhq/YV1Fq4MyqkLcAt0mcsvLknVmoW5m5ih98ZUduMTqsYKrkuKajzrg44tEwhp+OM4pIR2BzsRtJSf2DVPhYgFgZZa3AOfEqxQk2jF/J0lRF58/+B4Gyog0x/YMlGI3N1hKLMjpU30wN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119824; c=relaxed/simple;
	bh=maxclcxd+1kpllAS/l1s5lRBGzGfa0j6MxiSuF3sVBU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NZM6kTG05xXWjjVhZCizAWFlvH4Amy7pgyggnfOJcYWAdITycUw1VU2tvKyH2RvLS3meKPlMe43xf8sQvQBRSh6v0Ixkdz0x76ISInjbDswms2BCetBrAU8LWiQTOtdblnWv0LNpT718I+Y9HKmOOjyEJ1r3YFA+ZodyQh/XTIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=Ziyi0jjd; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 542313C00E40B;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id r04PCu2ZWC9U; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 046ED3C00E402;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 046ED3C00E402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=maxclcxd+1kpllAS/l1s5lRBGzGfa0j6MxiSuF3sVBU=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=Ziyi0jjdqkYAmvJqHcqtO947nmuc2uXGpICj1ysx0ZRzV59+RPJ9+sjat/hA/REhk
	 j2B1V0o+7MWYyP9thQlW3TAKYwFfEZf36/c4lS1fiqPjBopdF9qQZAL7pPDBzukGt1
	 eELPIh7gxa3OIrdzRkUe0HXkRzBCnFTtFXLxhJnimc3bVMvGy8+ATX9ENllxz39Sn0
	 pbPMgKFIxOiuDYzQwkfPImb19HUAf2pO2PQK8ow+CGqVth8jINJj+6AvBci7+zmsl4
	 qBtQGG/pvbudw0dno39Otbgz+t/IyAArY/NDdoDicq8/0+3BbYGUCUb99Ul4+N3Ofj
	 uwmolHWf3SL5Q==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id ROaosF_D3d94; Tue, 11 Jun 2024 08:30:21 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id D74913C0140A0;
	Tue, 11 Jun 2024 08:30:21 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
Date: Tue, 11 Jun 2024 08:29:05 -0700
Message-ID: <20240611153005.3066-2-eggert@cs.ucla.edu>
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
 man/man3/tzset.3 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 8479b17b0..6e89dd530 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -63,6 +63,11 @@ In a System-V-like environment, it will also set the v=
ariables \fItimezone\fP
 have any daylight saving time rules, or to nonzero if there is a time,
 past, present, or future when daylight saving time applies).
 .P
+The
+.BR tzset ()
+function initializes these variables to unspecified values if this
+timezone is a geographical timezone like "America/New_York" (see below).
+.P
 If the
 .B TZ
 variable does not appear in the environment, the system timezone is used=
.
@@ -155,7 +160,8 @@ TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M10.1.0,M3.3.0"
 .EE
 .in
 .P
-The second format specifies that the timezone information should be read
+The second, or "geographical",
+format specifies that the timezone information should be read
 from a file:
 .P
 .in +4n
--=20
2.45.2


