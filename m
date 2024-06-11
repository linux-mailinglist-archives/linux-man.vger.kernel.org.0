Return-Path: <linux-man+bounces-1103-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 793EF903FFD
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 779781C228DC
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C37536126;
	Tue, 11 Jun 2024 15:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="j4tNH7U+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB802F874
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119825; cv=none; b=QAsogAMbn4LzSEqAS5EGO4WUSC2nC278mPRiV+Z/I6sTDuRUVWR9dniHJI1vY9y+G9k7QalAMM9S9LS4CrnGolDZG+SmtxlM8sUGPzO4k3hply1r/m+qiGj7yHbkyNqAHlNf596KtX62C2R7DPV6Olbakf+lXBqikao6fLJeuDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119825; c=relaxed/simple;
	bh=LZ+Xd1sJ62z8pwKMDq61+zVOLLmek6BeOoI3xboSldI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FokkZuaPYBR8JskafcRHY61S0x/X5LkqxyQoOkKVpyy6KTlaN1Xlip1rT6wdzwPWZKTydsNXfP4Ong03jy8l7D9Dtpc6pzSCTIYkhYkOzGs1X0NV/jEWAIbUl3Kkq7mTa1apvAYjUXMVk4zUuU/WFFj0xlOuR4YXBrHDjKopLKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=j4tNH7U+; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 500543C00E404;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id tSylTLF1hiC6; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id E56FA3C0140A4;
	Tue, 11 Jun 2024 08:30:21 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu E56FA3C0140A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119821;
	bh=3AQY+7O3WfU5vJ8CfliBJSCoOZKN/cuLt65rQ1qGImo=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=j4tNH7U++vaDfG0/+csKx70acJ6CIp3VN+jj7HNTO6VDl7gPQtdrwnTv6SvuWmspr
	 PRY+VhDTzFfoiHLZT9sSYFinb1NNxHAczt3XkQ5bIdSGGZrVLqaYGAN88cqyJy0AH4
	 R61BdcsNh/F3Oz7Jk9Q8kZZTPBMZ3No9aNtiuVFm3erk2ycuc8nJVcOB0xz8icHlbp
	 cWzqqV2umnm5TYgRBO2MisEF0asFeTpLXyXKMSWDdLEldGo3U6QsxalZtIv1V4Xy2S
	 eH5OaQjLfxQZPz3KLvNNUtrR1aoxDAxWpq+EYD9ht+9NhGoxnQ4Qb0RzCmT1/NDDGy
	 MqvY97t+MbsRw==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id 6rU7v6eD_Uhp; Tue, 11 Jun 2024 08:30:21 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id C564C3C01409F;
	Tue, 11 Jun 2024 08:30:21 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 01/12] ctime: simplify coverage of tzname etc.
Date: Tue, 11 Jun 2024 08:29:04 -0700
Message-ID: <20240611153005.3066-1-eggert@cs.ucla.edu>
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

* man/man3/ctime.3: Simplify by referring to tzset(3) for details
about how it sets tzname etc.  This simplifies a later patch,
which changes tzset(3)'s description.
---
 man/man3/ctime.3 | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index b8543a1cf..e863f0572 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -101,10 +101,9 @@ The abbreviations for the months are "Jan",
 The return value points to a statically allocated string which
 might be overwritten by subsequent calls to any of the date and time
 functions.
-The function also sets the external
-variables \fItzname\fP, \fItimezone\fP, and \fIdaylight\fP (see
-.BR tzset (3))
-with information about the current timezone.
+The function also sets the external variables \fItzname\fP,
+\fItimezone\fP, and \fIdaylight\fP as if it called
+.BR tzset (3).
 The reentrant version
 .BR ctime_r ()
 does the same, but stores the
@@ -131,13 +130,9 @@ The
 function converts the calendar time \fItimep\fP to
 broken-down time representation,
 expressed relative to the user's specified timezone.
-The function acts as if it called
-.BR tzset (3)
-and sets the external variables \fItzname\fP with
-information about the current timezone, \fItimezone\fP with the differen=
ce
-between Coordinated Universal Time (UTC) and local standard time in
-seconds, and \fIdaylight\fP to a nonzero value if daylight savings
-time rules apply during some part of the year.
+The function also sets the external variables \fItzname\fP,
+\fItimezone\fP, and \fIdaylight\fP as if it called
+.BR tzset (3).
 The return value points to a statically allocated struct which might be
 overwritten by subsequent calls to any of the date and time functions.
 The
@@ -198,10 +193,9 @@ normalized (so that, for example, 40 October is chan=
ged into 9 November);
 is set (regardless of its initial value)
 to a positive value or to 0, respectively,
 to indicate whether DST is or is not in effect at the specified time.
-Calling
-.BR mktime ()
-also sets the external variable \fItzname\fP with
-information about the current timezone.
+The function also sets the external variables \fItzname\fP,
+\fItimezone\fP, and \fIdaylight\fP as if it called
+.BR tzset (3).
 .P
 If the specified broken-down
 time cannot be represented as calendar time (seconds since the Epoch),
--=20
2.45.2


