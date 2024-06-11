Return-Path: <linux-man+bounces-1110-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A31D6904005
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FB2C284E1F
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A70376EC;
	Tue, 11 Jun 2024 15:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="Ky+byHlp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8B41D540
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119826; cv=none; b=EVn53MXec8xtCd9SnBzAIzbionMKzKi8E42PwcP2DWcnDmqQMaK3Z86eVIVAKzo/ijBCMUD5qHNUQNS7lx23fLz0e3+Bhk/GAcLQOrrS+84Hpy7cQI8tRtl+BK3qGYecCuNfX+RfClE2qMwJyLKYeuOREm1MMs2NjUnRbtd+eZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119826; c=relaxed/simple;
	bh=0fvcKdghjWJeHMABJzitnuX1GEfC8gBlqBNHMhAz/00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LoC5YziQbMjk6rjXsSxrEBOkXVACW0M+mkqGCYNgcvYcG6K7w4002nrjz3/GQOpmZBQBwLNdvDRlX/A2wTNSaRyNhNEkiEsRS3O9vZayL+tTY/khXBAX8b+Bz/Ok//Iyy+lzzhi/QhYK2zAJfZXo+2HvgmLg7SQxMEH+pwPqzZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=Ky+byHlp; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id A4B1C3C00E40E;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 6VZ-25Y7Oh_D; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 5FF903C00E40D;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 5FF903C00E40D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=0fvcKdghjWJeHMABJzitnuX1GEfC8gBlqBNHMhAz/00=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=Ky+byHlpluBFxzALJkyiIfGQLrbWi1PIkXCzuwq9pduSBPO71bk1rljVN0exHXzbo
	 p4rzO68rqNsk2tJhLXk3UUkAu7YyqRO1gI4WXNkeoy5eZGey9w6kdS1+DzIxn8005r
	 5yzUULBxKveP1NXr1uOemSHRO6jb/q1Yrd5B1OhfDnblgc0jZC9bPRoXfCeK8HirA6
	 XTAf6NhTtyps7TzdkE7o6i/aW/VEvzhlB1wBvlk+o0B8/W5UEMtH6plyxlAno/W6eS
	 VRxxBs0ExmRKqdcNnAAsuFGdcaUUWYIJauECS41XeMMqubAsxEq6/3BH29maMe8pL0
	 DMH0chQYcI0xQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id nXN5e6R2OUbe; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 3FEBC3C00E407;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 09/12] tzset: update STANDARDS, HISTORY
Date: Tue, 11 Jun 2024 08:29:12 -0700
Message-ID: <20240611153005.3066-9-eggert@cs.ucla.edu>
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

The current standards are C23 and POSIX.1-2024.
This stuff was first standardized in C89 and POSIX.1-1988.
---
 man/man3type/tm.3type | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man3type/tm.3type b/man/man3type/tm.3type
index 5d5b28658..1628e0c1f 100644
--- a/man/man3type/tm.3type
+++ b/man/man3type/tm.3type
@@ -90,9 +90,9 @@ points to static storage and may be overridden on subse=
quent calls to
 .BR localtime (3)
 and similar functions (however, this never happens under glibc).
 .SH STANDARDS
-C11, POSIX.1-2008.
+C23, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89, POSIX.1-1988.
 .P
 .I tm_gmtoff
 and
--=20
2.45.2


