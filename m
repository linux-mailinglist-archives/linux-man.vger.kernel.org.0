Return-Path: <linux-man+bounces-1913-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EA99C7FEE
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 02:22:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98638B21870
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 01:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9360A1E3792;
	Thu, 14 Nov 2024 01:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="eKRIHVh2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC51B225A8
	for <linux-man@vger.kernel.org>; Thu, 14 Nov 2024 01:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731547359; cv=none; b=SajS1L1THkYvEBPH0PENIyIKO3PXoBjSTYHcW+0MUALE91XnPhRxI6hBr/PFVHaZU0wiHArZa9ebhZPxpQch9sup5nTHwVH0McXPyducXsu2YiP48VuOdstFTbkswMjkh9W931vOviBay+4Xz/dEDUdmrV94MusbEYqaxHO1vNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731547359; c=relaxed/simple;
	bh=OSySgME8s35JP3zNc83cv0ZbMBBKND67lbvrzyqI3f8=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=ZTd+kWAdiUaMT5mUdT/yVk6xvLZU4cTiOM9S/WGYhTCIbB2goNz2+uWcJ6S2toj15Yi44XzxFlpUBboMbxhSrL8lOfEM6CxET0khgb6uaEXIdNMrwg8hSw02aEwoRNn3XvcuNp+Db0LOkFiHNXMl8tJaDWOe+8VA4KOMGFPGUyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--yuanchu.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=eKRIHVh2; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--yuanchu.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6eac7417627so2799747b3.2
        for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 17:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1731547357; x=1732152157; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+hgr7aD+5uEqQ5l4/sMkD8SgZOI7hIfKAVqbhzr3Kk4=;
        b=eKRIHVh2bE6ONmvA9+EBdSbK7LMezLXCCAb1nOzqwYVCQmpLMpwjIaC9IKwUBF0uhS
         5xW85YRFk8m8YX8/S+9uBspWa1XqNgcXwOw+xv2YZEBL4Z+PB/2yXMd2+lMGvYi/bjR9
         NIQ/witIeFqycyK1KF7h25OaFg6knUY+lwic7WTvoKxk27rrhDHRhBQBdmX7MLF1FfRJ
         5DPbVE+wpJ/Ro+IoSfkG57rbPwZPgyDfn8EACebfezJxuniV8Pxt1aGgbiK3VXPALQ3+
         3QUymo24Y8xZNH8gBXPzawpygUPKpCqIxybqeA1rEYA0OzE7X+AeO8R5+izSvgD8whkq
         miGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731547357; x=1732152157;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+hgr7aD+5uEqQ5l4/sMkD8SgZOI7hIfKAVqbhzr3Kk4=;
        b=HDroZQMt7PMYC0N0DaFaQ9KV/CsJbE22yQiODOAYgOUj7bjrzeHNS6Fc5GX2pV6xbX
         Kgb5jkCMFnG38NlVgjf66SdXOdRi8KDwBvPO3EMzE+aYhoGdH5GjEkmV3jsSlvIcl4D9
         E+6+rm62I1ttiWDOAhLFPIMuWYhG+BTkM4KkzOLeCGLuBlx+zxlNisUOEeHYtk96zvwE
         w8LFFbO3FGWml17zZjgy51/cfeGb8RLQDJQDc8Foz7OWYy2uEWdkwiy2157vD4m2JNKA
         wYQPANR1y4JZ2+5uefDIzirNQyloYNpE/b7QUjlzzbc9AIBSZaRdUxA+YrAFeiaMe0fg
         VENA==
X-Forwarded-Encrypted: i=1; AJvYcCXqUCzDW911oZqelZ2i0RSz48Sr2Bjgc1pZ/vBgmNuNYEa4eQrtsq1cTGi7YiDFuh8YjYxPJoDttn4=@vger.kernel.org
X-Gm-Message-State: AOJu0YxmUmI+4OVQ+lAul0odxEIDct+s9Y4InvH/1YUXsW98runv+Iky
	No+78XrZRzSbu+vX9cxma+J0+yGWZYchun92FWZOYeER62ACvfrS8hHMqQLpLCZavxCdkEK8tXy
	0HPfqhg==
X-Google-Smtp-Source: AGHT+IHja8OhBPlOyDeai+dt6tTgoU3zqMcomxiC0xDjQ3TCtWpbDcV923TetT/TjtrlqxnpQcKMdtRhiUJZ
X-Received: from yuanchu.svl.corp.google.com ([2620:15c:2c5:11:91a6:1893:3e47:17e7])
 (user=yuanchu job=sendgmr) by 2002:a05:690c:8288:b0:6db:7b3d:b414 with SMTP
 id 00721157ae682-6ee3c29689dmr255127b3.0.1731547356925; Wed, 13 Nov 2024
 17:22:36 -0800 (PST)
Date: Wed, 13 Nov 2024 17:22:33 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0
Message-ID: <20241114012233.4152152-1-yuanchu@google.com>
Subject: [PATCH v5] posix_fadvise.2: POSIX_FADV_NOREUSE now supported.
From: Yuanchu Xie <yuanchu@google.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>, 
	linux-man@vger.kernel.org, Yuanchu Xie <yuanchu@google.com>, 
	"T.J. Alumbaugh" <talumbau@google.com>
Content-Type: text/plain; charset="UTF-8"

POSIX_FADV_NOREUSE is now supported in Linux.
Update text regarding former no op behavior.  Indicate the readahead policy
and treatment of file pages read with this flag.

Link: <https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@google.com/>
Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
Signed-off-by: Yuanchu Xie <yuanchu@google.com>
---
Changelog
v4 -> v5
- Remove unnecessary changes
- Use two space inter-sentence spacing
- Fix lines exceeding 80-column

v3 -> v4
- Use semantic newlines
- Format with macros like .B instead of inline \f

v3: https://lore.kernel.org/linux-man/20230320222057.1976956-1-talumbau@google.com/
v4: https://lore.kernel.org/linux-man/20241113031654.3964740-1-yuanchu@google.com/

 man/man2/posix_fadvise.2 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
index ed40b0c0d..3c47efeb8 100644
--- a/man/man2/posix_fadvise.2
+++ b/man/man2/posix_fadvise.2
@@ -64,7 +64,13 @@ The specified data will be accessed only once.
 .IP
 Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
 same semantics as \fBPOSIX_FADV_WILLNEED\fP.
-This was probably a bug; since Linux 2.6.18, this flag is a no-op.
+This was probably a bug;
+from Linux 2.6.18 until Linux 6.2 this flag was a no-op.
+From Linux 6.3 and beyond,
+.B POSIX_FADV_NOREUSE
+signals that the LRU algorithm
+can ignore access to mapped page cache marked by this flag.
+This is useful, for example, while streaming large files.
 .TP
 .B POSIX_FADV_WILLNEED
 The specified data will be accessed in the near future.
@@ -130,6 +136,8 @@ in this case.)
 Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
 default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
 this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
+.B POSIX_FADV_NOREUSE
+does not modify the readahead window size.
 These changes affect the entire file, not just the specified region
 (but other open file handles to the same file are unaffected).
 .SS C library/kernel differences
-- 
2.46.0


