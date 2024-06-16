Return-Path: <linux-man+bounces-1195-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FC1909B06
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AE921C20D6B
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3011552E4;
	Sun, 16 Jun 2024 01:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/+R7C6m"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6FC1527A9
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500776; cv=none; b=coTpQoLqW6kJK9yu16156D8nmfT7aBn0G+6Qe1LBqwk2hz8KkaKvwPqW8KscINbCb1Hp6LQPgv7iTn/pQa+SBj9cD9Og4JgZErgXouhmjRItUnxUp/2mmNtxh7iZp4gMchZLoHxrq/FY5IAL6flZTmll8QWVWPG+I9Cqy0cvdUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500776; c=relaxed/simple;
	bh=gGcBTdegnpt/tuqhobtaFSxCVv+T2u5JooOe8Lv+fdI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZxLMj1FnfymJETktBUZdPhgeWyPDVseqkG0KPUfP9e4PGyLr5e/NDq2Kbvq99d3KfvNhNJK+kn6lyC89nbqWndRMcSiput/WlcH1+8OH7hS6MN4n3bJmEp5VpBalTJdud9c4wraZtraH3jH0DEJV6WvZPLnXcxlG4cn98VfICRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c/+R7C6m; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6b08d661dbaso39630916d6.0
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500774; x=1719105574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IW///MJaYxYMUmH7vDGm3mYKPPiDBtPtkzAnxcnH/Kc=;
        b=c/+R7C6m1UGxEFhlQ6p70Bc5KpJUz4Ah2sxWfW+kBSdrLLil5RdPnNGyFn59nKZUaC
         YrJKbqEr8aZNOjY6sBM2b/QFCDk4YukT+/qZQQUnReY/XQDNX/R0PKdIhZpWKsMAOWnO
         i9TUPCW9fUH6tWZ1cbsXZ4QE84h0GxZR6vFqbgA3/LF/uTLYnvzxzOw0/wd6/vUCYHAS
         +10wC66YnBcOCrNME6YlNFbiewV7qn8ORM6TCW9rYV3D5mHzWhGGmeNJ9NEmbGBub+eR
         Pc2S75rhmwk1nUePA2FTSMS/7uy38+xOjv2SsQsMulAAmY0SK8DYzo73+gJ70A8U72vO
         x0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500774; x=1719105574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IW///MJaYxYMUmH7vDGm3mYKPPiDBtPtkzAnxcnH/Kc=;
        b=kPXcUtyZqUahuZ276IoY6t+TBmuE5EnabFs2+gzHy2Xj8U2aKCfdI8nL3wd+lnfWNU
         BbhkmPkayNcJi4Qcixd3cpekT3lGNCRkgZqVXHhw35MKrbAqxgpk+jy58OLqnmztIfd2
         nr8lprqK1eJUV6m99otT6j7Rg3T3Ahw2w3ii/RBGUG3RwYNyC/MJJ1BktzmYvxLIwpbg
         xxCSb0V2alu0DekipjkdWyzhwXxSDiBlFNN4Zvw+5Avip2zvBh4jR4EtKMvAqU6etUD+
         ltusEV983NothRK35iFaGlldgETwH+N12LpnOzXNqIHFokRswMNuBBVHoPTBwE5NOIhs
         P1iA==
X-Forwarded-Encrypted: i=1; AJvYcCV0K/VuF+UxMIbdzKZjhOpqAv3sST5rJ4dOLyXGMtw75in3/bU8+U4uhaseK1xFMo8qSXuisew35ArTy3TgjzptNvpyMNTUgaMP
X-Gm-Message-State: AOJu0YxI8bFQom/emgHxumvdZt8PlfME+0wBPImm3DPNkh0KxZhIjLEJ
	PoejTYJ3EByiNjnXgjHSbuZaTJFrOVTLKsic5AmVKmPOTDdqES8rZSuJjWeg
X-Google-Smtp-Source: AGHT+IGYkMigGf6RRV5v5+yk0AWMlm/0pMLvHGifB+Zt5t6NzV7AqDhyfFj3S75One372DxLqHIFJw==
X-Received: by 2002:a05:6214:c23:b0:6b0:7a63:1387 with SMTP id 6a1803df08f44-6b2a343cde8mr145364726d6.21.1718500773617;
        Sat, 15 Jun 2024 18:19:33 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:33 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 04/11] ceil.3,rint.3,round.3: rm NOTES section
Date: Sat, 15 Jun 2024 18:18:57 -0700
Message-ID: <20240616011920.1627949-5-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections") removed the NOTES section from floor(3), moving
the explanation of overflow errors to HISTORY.

The very same explanation is also there in ceil(3), rint(3), and
round(3). Let's move it to HISTORY as well, for uniformity.

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/ceil.3  | 4 ++--
 man/man3/rint.3  | 4 ++--
 man/man3/round.3 | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/man/man3/ceil.3 b/man/man3/ceil.3
index 197920616..22d9e351f 100644
--- a/man/man3/ceil.3
+++ b/man/man3/ceil.3
@@ -53,7 +53,7 @@ .SH RETURN VALUE
 itself is returned.
 .SH ERRORS
 No errors occur.
-POSIX.1-2001 documents a range error for overflows, but see NOTES.
+POSIX.1-2001 documents a range error for overflows, but see HISTORY.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -79,7 +79,7 @@ .SH HISTORY
 .I double
 also conforms to
 SVr4, 4.3BSD, C89.
-.SH NOTES
+.P
 SUSv2 and POSIX.1-2001 contain text about overflow (which might set
 .I errno
 to
diff --git a/man/man3/rint.3 b/man/man3/rint.3
index 262670571..8095e68ce 100644
--- a/man/man3/rint.3
+++ b/man/man3/rint.3
@@ -91,7 +91,7 @@ .SH RETURN VALUE
 itself is returned.
 .SH ERRORS
 No errors occur.
-POSIX.1-2001 documents a range error for overflows, but see NOTES.
+POSIX.1-2001 documents a range error for overflows, but see HISTORY.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -115,7 +115,7 @@ .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
 C99, POSIX.1-2001.
-.SH NOTES
+.P
 SUSv2 and POSIX.1-2001 contain text about overflow (which might set
 .I errno
 to
diff --git a/man/man3/round.3 b/man/man3/round.3
index 268ec083c..1dd086e3c 100644
--- a/man/man3/round.3
+++ b/man/man3/round.3
@@ -56,7 +56,7 @@ .SH RETURN VALUE
 itself is returned.
 .SH ERRORS
 No errors occur.
-POSIX.1-2001 documents a range error for overflows, but see NOTES.
+POSIX.1-2001 documents a range error for overflows, but see HISTORY.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -78,7 +78,7 @@ .SH STANDARDS
 .SH HISTORY
 glibc 2.1.
 C99, POSIX.1-2001.
-.SH NOTES
+.P
 POSIX.1-2001 contains text about overflow (which might set
 .I errno
 to
-- 
2.45.2


