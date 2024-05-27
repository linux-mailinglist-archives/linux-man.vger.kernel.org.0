Return-Path: <linux-man+bounces-1005-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC46E8CFF20
	for <lists+linux-man@lfdr.de>; Mon, 27 May 2024 13:38:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 797FF281541
	for <lists+linux-man@lfdr.de>; Mon, 27 May 2024 11:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1984F15D5C3;
	Mon, 27 May 2024 11:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="j7dc1gPK"
X-Original-To: linux-man@vger.kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEC0131E41
	for <linux-man@vger.kernel.org>; Mon, 27 May 2024 11:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716809885; cv=none; b=QT8nfjTjXOEZ2ojoNOuHw8Qh0A9LQ9i+4yZqaxcw+WrecS+p+YATRiDoMYfFThiMRtKgOm5vJq4BY7Sf3b2Kn9bflNCgWSqV1rbpOMRieJmNp69QPIF8HI2vplCJ0tdYJlUDkFhGAPt+vLd4PWhWn4yrCB5oVnlRtNpwl9Vuqig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716809885; c=relaxed/simple;
	bh=aJ4ovEbx2ea9flzz1fKBSg1XVkE1OIUIWpoSGy2kZV0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qsSLk4PSUagJ9oFxJDI9ppuVdZZ2n3K3x2hX2yIja0GEKEfd2cWfp5FVmzSqwUC6ulV2CebhIBfL39z7xpo2GkshQoIDSgVvZQD056f9VHT1F+17WgFC5rpCOFlo8oPSYg0j4HNG/TL9+R0a1tdlMOMqaVlds7+AoVp6C5WiGY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lst.de; spf=none smtp.mailfrom=bombadil.srs.infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=j7dc1gPK; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lst.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=EJrshVxetWA/XPT2cggmWOgLMJ/h0YaS1132FYYz9ic=; b=j7dc1gPKW26D92wPMItEBkclV+
	mONl16H8hWLtmGeJ9VBG1a2JxYSmco+nQOIkpcqbILOJEyI3DS9Is/wNiL07LdVVn6THaLMu5dqpB
	FsFUej/5IGaUrEutjG5fpJK5eSYiRIyVNhqeTONwqJEpVRYFt5RxyCWTEFmdvVm9J2DHdN9wO8Ld4
	j4Z3E5chvlYIdHiHts4hSeOj/5NlcStY0jDVtKeW8Z+ZOScfkPab6rPfKdZvGIMdYbYhMjMM39IcW
	nwM6vikqREP5neJ4ZPMB3iEP9bXydsxBV8Wf7HtbUmDAgPnAOhBSxTiSBhQcGpUF4EgQB01FqlhEM
	Iw6OY9nA==;
Received: from 2a02-8389-2341-5b80-3177-e4c1-2108-f294.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:3177:e4c1:2108:f294] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBYfz-0000000Eiuf-29Lp;
	Mon, 27 May 2024 11:38:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] open_by_handle_at.2: correct the name of the FreeBSD equivalent
Date: Mon, 27 May 2024 13:38:00 +0200
Message-ID: <20240527113800.1098633-1-hch@lst.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html

The open_by_handle_at equivalent in FreeBSD is called fhopen, not
openfh.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 man/man2/open_by_handle_at.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/open_by_handle_at.2 b/man/man2/open_by_handle_at.2
index 8fa1bf630..ee8a4f72b 100644
--- a/man/man2/open_by_handle_at.2
+++ b/man/man2/open_by_handle_at.2
@@ -402,7 +402,7 @@ flag and the filesystem does not support
 FreeBSD has a broadly similar pair of system calls in the form of
 .BR getfh ()
 and
-.BR openfh ().
+.BR fhopen ().
 .SH STANDARDS
 Linux.
 .SH HISTORY
-- 
2.43.0


