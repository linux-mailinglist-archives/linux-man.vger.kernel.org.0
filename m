Return-Path: <linux-man+bounces-397-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 58926838CE8
	for <lists+linux-man@lfdr.de>; Tue, 23 Jan 2024 12:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBBEEB26AE3
	for <lists+linux-man@lfdr.de>; Tue, 23 Jan 2024 11:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED095EE6E;
	Tue, 23 Jan 2024 11:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="USgscW41";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="nAzM78jn";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="USgscW41";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="nAzM78jn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D2D5EE65
	for <linux-man@vger.kernel.org>; Tue, 23 Jan 2024 11:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706007882; cv=none; b=CznuTy/DlFSTyIG/ET1HtJGJ3dI2O3g8RJq56BwX+El8Zc2XijIHDm9fe/tSCmTZhHbquW/UaAu1KeQYOItZba+gsu+zDGfqy+65ccfWguBunqirMGSu3nUezV3EEGuKmZGf9UfVbZBRV7NEAn/YRWln78/VeCL87DxieomzBXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706007882; c=relaxed/simple;
	bh=T7kYMVDzr4AuqffYmDqdPZtkxi6gMq6gt9Uqxq1MP98=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QQ3sNpIW9DcvS1V97BxQMMJVZthArhv1J5wGE8qh4uP2NzS+edzxyyyA0x9uGEe1iWDd2TH6b7jGkvhyfJOWRxOZz0BgCtaVnvmOB2N/OTph1pK7n9Lz3SQmfT6pa4SURlaQd911MueaGgW3nTgZkFMSCcmj2xr+HQ1QwlqgCyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=USgscW41; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=nAzM78jn; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=USgscW41; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=nAzM78jn; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 485331FD4E;
	Tue, 23 Jan 2024 11:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1706007876; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pKcpVqG5FBq/jTG8UAFVfI7hmGZPD52EPFvou2iDPHE=;
	b=USgscW41CV1X/AVSdNa+I0Tmsf77Gi3QIK1UFVt6rseiGKdEfkbOv99yelID9JI1+hD8du
	F62+bd+D/7GQOOxKdLGTE6wPQWVyPccPSCxzonE279Kl58bM3I5Rc3VwffTKXuYfl9M0CN
	t6xKosJeqjskSU+tKL4zx3NUif4utKo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1706007876;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pKcpVqG5FBq/jTG8UAFVfI7hmGZPD52EPFvou2iDPHE=;
	b=nAzM78jnYx5zqNS+j3slvgi3QSTlnLpQifLNdC1HQHfoUbn65mRx9A0z7HMoQGTJrOvHen
	KP4d/ELW5OK/QLCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1706007876; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pKcpVqG5FBq/jTG8UAFVfI7hmGZPD52EPFvou2iDPHE=;
	b=USgscW41CV1X/AVSdNa+I0Tmsf77Gi3QIK1UFVt6rseiGKdEfkbOv99yelID9JI1+hD8du
	F62+bd+D/7GQOOxKdLGTE6wPQWVyPccPSCxzonE279Kl58bM3I5Rc3VwffTKXuYfl9M0CN
	t6xKosJeqjskSU+tKL4zx3NUif4utKo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1706007876;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pKcpVqG5FBq/jTG8UAFVfI7hmGZPD52EPFvou2iDPHE=;
	b=nAzM78jnYx5zqNS+j3slvgi3QSTlnLpQifLNdC1HQHfoUbn65mRx9A0z7HMoQGTJrOvHen
	KP4d/ELW5OK/QLCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 12061136A4;
	Tue, 23 Jan 2024 11:04:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id Wts9AUSdr2U9JQAAD6G6ig
	(envelope-from <pvorel@suse.cz>); Tue, 23 Jan 2024 11:04:36 +0000
From: Petr Vorel <pvorel@suse.cz>
To: linux-man@vger.kernel.org
Cc: Petr Vorel <pvorel@suse.cz>,
	Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 1/1] README: Use kernel.org URL
Date: Tue, 23 Jan 2024 12:04:24 +0100
Message-ID: <20240123110424.169915-1-pvorel@suse.cz>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Level: ***
X-Spamd-Bar: +++
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=USgscW41;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=nAzM78jn
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [3.49 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	 FROM_HAS_DN(0.00)[];
	 RCPT_COUNT_THREE(0.00)[3];
	 R_MISSING_CHARSET(2.50)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 MIME_GOOD(-0.10)[text/plain];
	 BROKEN_CONTENT_TYPE(1.50)[];
	 TO_DN_SOME(0.00)[];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	 DKIM_TRACE(0.00)[suse.cz:+];
	 MX_GOOD(-0.01)[];
	 MID_CONTAINS_FROM(1.00)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[]
X-Spam-Score: 3.49
X-Rspamd-Queue-Id: 485331FD4E
X-Spam-Flag: NO

https://kernel.org/pub/ is redirected to
https://mirrors.edge.kernel.org/pub/, but it's better not rely on that
and use the primary URL.

Signed-off-by: Petr Vorel <pvorel@suse.cz>
---
 README | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/README b/README
index 115e9f53a..974bd7564 100644
--- a/README
+++ b/README
@@ -60,7 +60,7 @@ Files
 
 Versions
    Distribution
-       <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/>
+       <https://kernel.org/pub/linux/docs/man-pages/>
        <https://www.alejandro-colomar.es/share/dist/man-pages/>
 
    Git
@@ -69,7 +69,7 @@ Versions
 
    Online man-pages
        PDF
-             <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/>
+             <https://kernel.org/pub/linux/docs/man-pages/book/>
              <https://www.alejandro-colomar.es/share/dist/man-pages/>
        HTML
              <https://man7.org/linux/man-pages/index.html>
-- 
2.43.0


