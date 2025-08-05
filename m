Return-Path: <linux-man+bounces-3328-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEAEB1B877
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:27:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FE177A667B
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD08291C1F;
	Tue,  5 Aug 2025 16:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="DOoeVbaj"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865D872630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411219; cv=none; b=V2AE7T+N1PyJ71IGml4YcACGgs4frP8k5kDUUIVHnvxdFeYeF2lqLo0243gsh/QpFNfikUlIcsUM4KRfC0R5uBHERYg3+ae51iJiX9Z201CZ20GeoHYinJGeS0wONIz4+6p7dySfht423yb5E7TcVoIQwaUjlELySTU/EJeDXlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411219; c=relaxed/simple;
	bh=p+3f8bPzlfPQstFI5xAupiL0YcfO0mJtgoRJcg5NlV8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GSmAluDKcgS6RpojQXr0NKEgkeg6D930wbpuc0gmSv2UQvcdkMC4sDF+DFlkoZVY52Nq4z0qS9BsqUG5PWqIaTVnXFHWGBMxrxS2rNQ8dlbBNu3WOsMdVU6+Pndb3IkWyqtHEG2/u1o2mVEgvUsagE2Fd4qOYEL3f8sUCDlwv9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=DOoeVbaj; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4bxJjB0nLmz9tPP;
	Tue,  5 Aug 2025 18:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411214;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CyQ7ckJVFVFQ3Kag4oOo0Dsl/JGiFXCZO0Hivm9ZB48=;
	b=DOoeVbajSD+mdqY9WJ03YQUEWCYfHLvYpxVaPegAcpcWIAiSJT3LCyiCLlIGQjzj300k0b
	7RclQhgitGCaZasCnsUSOpaBdRPo+nT4heFOf/G6bvAvzfSx3lHkh/jAmdeciS82GGVAl2
	5J4xvS1x/C6C7gm5q5bma7Uo+Nr8qqH9Lp9+LCgXFACxhJPGORendJFKzyN4czbvUAK0yJ
	n+2UG6KtWErkSnA+xEvaXeFPsds1Ih0zr4BMp6bqPOldjHkYlUaF87jRHDZgCxaIqkvEBh
	7T3SlBmUuvNxHP0ria5ZvM+/b6vvanVadph63LpumNZxLJw5/m4aeZ9M1BKx7Q==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:54 +1000
Subject: [PATCH 09/10] mount_setattr.2: mirror opening sentence from
 fsopen(2)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-9-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=975; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=p+3f8bPzlfPQstFI5xAupiL0YcfO0mJtgoRJcg5NlV8=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMljkLihklbG06UDN+bnOcpP1gnb6X2D/ekBytprnC
 t/sIxr3O0pZGMS4GGTFFFm2+XmGbpq/+Eryp5VsMHNYmUCGMHBxCsBEzi1k+Ct85ENm6AaDeWmv
 /u+JuRKefVlbx3Hx7v0nOSuZAv3tP69j+F+S9bW79y6HZWhm+fZe5cUsT3ce/xnPrJw/tXbe20b
 5UB4A
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386
X-Rspamd-Queue-Id: 4bxJjB0nLmz9tPP

All of the other new mount API docs have this lead-in sentence in order
to make this set of APIs feel a little bit more cohesive. Despite being
a bit of a latecomer, mount_setattr(2) is definitely part of this family
of APIs and so deserves the same treatment.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/mount_setattr.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
index e863be64deb5..c77bd0ba53eb 100644
--- a/man/man2/mount_setattr.2
+++ b/man/man2/mount_setattr.2
@@ -21,7 +21,11 @@ Standard C library
 .SH DESCRIPTION
 The
 .BR mount_setattr ()
-system call changes the mount properties of a mount or an entire mount tree.
+system call is part of the suite of file descriptor based mount facilities in
+Linux.
+.P
+.BR mount_setattr ()
+changes the mount properties of a mount or an entire mount tree.
 If
 .I path
 is relative,

-- 
2.50.1


