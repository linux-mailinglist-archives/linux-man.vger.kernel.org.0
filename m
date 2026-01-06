Return-Path: <linux-man+bounces-4664-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1500CF7E67
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:55:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3DA630FB4C2
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3E731AA8D;
	Tue,  6 Jan 2026 10:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J/dsRFhB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F56313551
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696534; cv=none; b=fCLOnkA4kYBmXcE0Z0mDnTRY+MRIH91Mplbh012KSDG1Mvx5+8MtKAGdtHYdDjpR+XJqqW/rLb0ZdTwJXrnynXOTJOvvw9/N1SRWs8iUYP5kF49rkjlcDF7zS7Qwzu+IWqNGGwpc2B7CFejF0PU+VdTc+MPv4U/5VcAwNfhRaCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696534; c=relaxed/simple;
	bh=jDSQB7DAysIBsvCduSGj5wkcf9hGsRsSk5lFZ/aM4Wo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N6LzDde/IynuOrJwJW1fAJIYCsdGUDUbyItXsI/DgBjDWLCtSFGhoY8+GJNfpum/UlP3yZXrg0hAkUAiKrW6S6rxnJes3Gox0ZcirG0pJ3MG7YUoI633QKxT44WLbQin17ELbjQIEHKJQpV86GmjRGC8UzV5GVifC7u5wzp9pcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J/dsRFhB; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42fb5810d39so454586f8f.2
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767696531; x=1768301331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iAq0iLxLeN3cJ/NebqO1wJBKETp+x1Y8IGo8qO22ckA=;
        b=J/dsRFhB9rJqg1vV6YAd57yybzG7ZDau04TFvgKpOYydp8T2Tg/aqLD01RhQs9JpI1
         R4hODLuOQNsdMxPZFrY9+GBsERxJsmCjtF5jO6BHNiXvDQDx+Fr4PGgqlJbJ7MgnODtE
         LopXrNmvuaPNvXk9poiGHe7D6aulqZfY4uCXtJ9/Bkf7hNCLpriCYxGB2JlBkTNm4dxW
         edC0KPukSQRogNa7PVcsciEIwQ/xA79yaz7XUUseOCOSHo1ldj/Y6FrdMnQfOor7q2Im
         JZQ5kz6z0sru60qedqEna6EG3FoRMBApSIbvGiAkjVo3ipklfj+jYShhRl/ytGyfVQyl
         QbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696531; x=1768301331;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iAq0iLxLeN3cJ/NebqO1wJBKETp+x1Y8IGo8qO22ckA=;
        b=NHAJSeHHU5CTGtqwwMMz6ZBn7DJvbTdt3oQP0qXobdGrdva/UapOnKNCu9Xhr3tODd
         UlnQcZp0zLIfEYFvERQ3Gx9L6XjWtEn6RPF87Z7TT2Hy4IgV9+q8LKrXVQ0lF2uYE5Pm
         2IJ5VLqUhPN9nESa5mBhvehtVurqY6wH0GgQOTFnjOBB6Zu2WKFdy2TxHWfzAkx2W9HU
         cLrVgc/hgft94Cad8j1YAuYXKPnTXl5nrDFlfd4VEQmjVwZfeVA7qcyH4ktvDBQuJlh/
         p/YdIcMkkjWFvwTji0Vh8rF3UFTumgqEkJk5DCCHfBR7Rjfj1CpETm1h5urj/+bG5JVU
         K5Eg==
X-Gm-Message-State: AOJu0YwwiugGqTJe9AXehjB4PnwxZPbGsxeloX8GlrT7gNgVHvkfFLF0
	HTDN+rF/Qi9w/+zZ7uFd+p007xJQvykq7QVBSv1DQREhmr4NKx4/4UTFbN5k6A1D
X-Gm-Gg: AY/fxX4hLmJPFN9/BmrpMIji3m5DDu35LijHwmt2+Wux7HtOp9+8cXdBcUCLbvDttxj
	cCfBILYmsH5VjWPgsfVG1UHUWo7Jzecuj6H9U/VvYbm4SxHUuvLhijgSLyuMQK8M8/kN9RobxbM
	Jh6d7F9vpH2KmlXgn5bKRWd5XwNilGZg9VvPudMd1/BS24Oisd00aJUXvFh/tOSlGRqptpo0Hcf
	WcsRZ1LKX/xO7HmERD5TUH0u/REIJut1xl4wymf7eOsuiqBLOlnSfaFK5baedvnpzd9lHSWQV9W
	0264BXCFGK0vuLUoPstmA83AmVwFLYhUJe97Gn0HX/3ZR5eSQYfgHwYSpSIZhwTW0dYt74lJk5G
	PNiNrCMWL2cPqIInSlm0QnxDNeo+NUFjLxuA7zVN5jQYtufLrHJPyCytbAk6PZ6I7tRjuV7ugTd
	5qkpfPAVqlJzIt5MBC1/40yNy8zbz2FF2iizvi
X-Google-Smtp-Source: AGHT+IF/NTNWcEklxKkB5zy+TTcyX9XcDM6DtyQvAv3WxM/cLO+DmebbcpkUbX9fUmoANmm4ZDG6TA==
X-Received: by 2002:a05:6000:1789:b0:431:67d:53b3 with SMTP id ffacd0b85a97d-432bca546a7mr3294986f8f.43.1767696531309;
        Tue, 06 Jan 2026 02:48:51 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm3875573f8f.24.2026.01.06.02.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:48:50 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	debian@helgeth.de,
	champbreed1@gmail.com
Subject: [PATCH] man3/getpt.3: Clarify getpt() is a GNU extension
Date: Tue,  6 Jan 2026 10:48:39 +0000
Message-ID: <20260106104839.46777-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the recommendation to use posix_openpt(3) to a new NOTES section
and clarify that getpt() is glibc-specific. Update VERSIONS to show
glibc availability.

Reported-by: Helge Kreutzmann <debian@helgeth.de>
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/getpt.3 | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/man/man3/getpt.3 b/man/man3/getpt.3
index 49e024856..de39f87fa 100644
--- a/man/man3/getpt.3
+++ b/man/man3/getpt.3
@@ -58,17 +58,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-Use
-.BR posix_openpt (3)
-instead.
+Available since glibc 2.1.
 .SH STANDARDS
 GNU.
-.SH HISTORY
-glibc 2.1.
-.SH SEE ALSO
-.BR grantpt (3),
-.BR posix_openpt (3),
-.BR ptsname (3),
-.BR unlockpt (3),
-.BR ptmx (4),
-.BR pty (7)
+.SH NOTES
+.BR getpt ()
+is a glibc-specific extension; use
+.BR posix_openpt (3)
+instead in new programs.
-- 
2.51.0


