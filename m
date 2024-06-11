Return-Path: <linux-man+bounces-1105-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C183904000
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 440A41F24631
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1065282FD;
	Tue, 11 Jun 2024 15:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="eEoCYO+4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6C83218B
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119825; cv=none; b=jOIpfc0hpugH6htD2DzdC0gtvxUVhMaunDLUTc0zj3fdnlyu6r5cCp+LNa38tmAX6FTD/iTryPY0i3+sTnbW11wFLxRUZowF+c2/HkbP6byvJnNITeX/bPcp5RArhZwQcyMTUtFcl+oiGSblZ5zd0FhqDwPL152cRiHI6NQ0MLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119825; c=relaxed/simple;
	bh=ra2+u6up2pg5AoqkecLWXdjYzLRnRrotkV40MR2nS4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ACWt91jHLHr3rMnNoXjN9gBzGr/yhastDJNg5svw1RIWhgLEaVGphljR/5OXVwG1KPEWCLaZnYQUOqzyaNzWC7OWov8ieBY0HXOqtrOan1wekgw2J9Vjsx2t/lpZT6YALR8yAvALniPw7q7YnoLhWxrRYVgjSmkpBX7XnFpWRqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=eEoCYO+4; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 8DE393C00E403;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id wM2SOAnGXteM; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 36AC23C00E400;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 36AC23C00E400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=ra2+u6up2pg5AoqkecLWXdjYzLRnRrotkV40MR2nS4U=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=eEoCYO+4r1oWQGYdWJY6sgAMMj01kx/4AkzCpOH/2KNDUFbmfpFtNCz590zksFaAT
	 bNf1xlP7/MdtizeuZJJHVSZEyb3yMUk5CerkeSmyLwrZSwyWdRxSUczTKbT0byPnWi
	 BOOzEBGZrEbiO0Q/+hebx/YXXKUUhYLgPg/gd3jRk/IdL0r0TNHJFlvVVA/ijx4iEw
	 wJ+Rb+xuvPKafVjr+HQoaAAFre6TZjX3S7KXBmJY4fXq/+xAPv5hYSNdLR4QwSryCA
	 4g94Y5AoKjvsYeEhT8FfIO9d+7pMrax6nEvtBVbN6bLrfJs8A4UyMD+iWsPVRemJ7v
	 jIOj6n/wTkHfQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id PjdaVSoz71d8; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 1D5323C00E404;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 06/12] tzset: use NZ's current rules in example
Date: Tue, 11 Jun 2024 08:29:09 -0700
Message-ID: <20240611153005.3066-6-eggert@cs.ucla.edu>
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
 man/man3/tzset.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 717b1fec9..0b813c568 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -153,12 +153,12 @@ If omitted, the default is 02:00:00.
 Here is an example for New Zealand,
 where the standard time (NZST) is 12 hours ahead of UTC,
 and daylight saving time (NZDT), 13 hours ahead of UTC,
-runs from the first Sunday in October to the third Sunday in March,
-and the changeovers happen at the default time of 02:00:00:
+runs from September's last Sunday, at the default time 02:00:00,
+to April's first Sunday at 03:00:00.
 .P
 .in +4n
 .EX
-TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M10.1.0,M3.3.0"
+TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M9.5.0,M4.1.0/3"
 .EE
 .in
 .P
--=20
2.45.2


