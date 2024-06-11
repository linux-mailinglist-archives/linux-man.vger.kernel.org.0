Return-Path: <linux-man+bounces-1101-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 945B3903FFB
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4777E1F2496A
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3C62E417;
	Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="PwWz3dlG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83BC2574F
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119824; cv=none; b=Ks2WSCNgBa3uqQ5brT8FX5rEdJuDoFcEv/8Arr4aikyD0wV+d2LF+vX0+QXz1rBwzjWVOkwe5OCyQ6JNrjbmAp4HR30Zu6CS49RZnDLeQUrvVWrOoRdO5YEXSEPrB0CTrG99JQY6pUc1JZeyfNHnkpU7OKLAILlu6o47Wcl56Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119824; c=relaxed/simple;
	bh=mFcwvFAoGi9LZGm78aiEalFxv/5ekM/XsW4xsdNdaFk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ydd1QMXtorVvw2U2ks2+TtHHGe4Pu+MPxmba5NiYMzhaNVmZewxxv7Tel+lwkFa2VlzracxJ1eSzOfE9OP9+YI0SE0eDqukdhx7N/Kl1IKK2suGs4ydaQ66RDQEFpkn6XdfRLnKAPgdI1GC8wrYF3XYlymQ6RVFG4KL4BQrpwGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=PwWz3dlG; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 5E8213C00E40C;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id ajYYQhnVz_Lq; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 103D43C00E403;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 103D43C00E403
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=mFcwvFAoGi9LZGm78aiEalFxv/5ekM/XsW4xsdNdaFk=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=PwWz3dlGfbbk8zUWKN7c2JqZsX+Bxusl7Sjs4EfuT28iaqe1VjDZjIHgsYZOeyDkQ
	 acPuw97eVmWAsx84kI8QaI+9ONVinWtCPYnNv/CiJsIUMgTTVCv7Ws/dU7FTR2oawG
	 eeZ9CSmNIM0DA/5MmK76Buk6/hWO8m78yvpvZsaGAY5UmvMzgy0mnigGicHMRn1KCu
	 e0HF6NA7xX5BoS7gRq9ov9QbYWkQ/5L5+Lo+62APsJ6apnRmOcBjZpfeM8spWsvxF/
	 PQnx4UbqlJK3Ly8+JFH6Q0mrs9ARUl/9IQ2XymAd9gyLtWnClh4NjQfSKN27EaQqFY
	 zZqbkVlrtJoTA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id uCrmB4XzM6aW; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id E671C3C00E8B0;
	Tue, 11 Jun 2024 08:30:21 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 03/12] tzset: recommend tm_gmtoff, tm_zone instead
Date: Tue, 11 Jun 2024 08:29:06 -0700
Message-ID: <20240611153005.3066-3-eggert@cs.ucla.edu>
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

New section CAVEATS for why time zone state is dicey.
---
 man/man3/tzset.3 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 6e89dd530..552401c58 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -241,6 +241,16 @@ name of the timezone corresponding to its first argu=
ment (minutes
 West of UTC).
 If the second argument was 0, the standard name was used,
 otherwise the daylight saving time version.
+.SH CAVEATS
+Because the values of \fItzname\fP, \fItimezone\fP, and \fIdaylight\fP
+are often unspecified, and accessing them can lead to undefined
+behavior in multithreaded applications,
+code should instead obtain time zone offset and abbreviations from the
+.I tm_gmtoff
+and
+.I tm_zone
+members of the broken-down time structure
+.BR tm (3type).
 .SH SEE ALSO
 .BR date (1),
 .BR gettimeofday (2),
--=20
2.45.2


