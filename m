Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D961114A59
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 14:55:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726408AbfEFMzl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 08:55:41 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:33217 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725852AbfEFMzl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 08:55:41 -0400
Received: by mail-ua1-f67.google.com with SMTP id 49so1201397uas.0
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 05:55:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BGX0oGioBwJqR2hHFsHb43HozdPA5bQ3dkgFmQ8Sveo=;
        b=i+2d/KnnwGyJRDPoAkvZuFFAoldvLTD4Ny4E78Jv4xCpjzz11ZcjhVASIdeZHkQa2U
         7Gx+VyhiOu+XlbRFpRG1NqoiasC4esa6v1uRnOT+Iw5iift6rRkGgir5oDeikmSGxGfI
         k12+HX7pY6wPUmKluBrHfLo+awNxoy6UrPM4NSvsrAkEyNTDc1SJ7YTD67IddFTE162X
         UFbQtcXHyufsLTxbPvIOrJRFdrBRqB0D9/7ew9ZwpgGu2U6PUj2l3DOspXyL240A4GSU
         VVYzal3s3mLtCeZoggyDQYxtsSAeU5YVPnhUYJlbZq38h1Ac8D1+XRKL8WyCt3UjQiDz
         hT2g==
X-Gm-Message-State: APjAAAVsQSjiOuiAhWIBxgYvRkPvmPM0Wbf8BJR3jYc7U+s5fG4lVE/o
        vJ7RnhUTdS2IjcwxNlbZVtg/yXBTh5KGgg==
X-Google-Smtp-Source: APXvYqxAWpPDRuTs7nTMR5Yj/ljV0C9gEl0ZihXNi8qGPauP/kHAqpryZHeyJA7AyTm2vFvJ0L3UqA==
X-Received: by 2002:ab0:5a24:: with SMTP id l33mr7859120uad.13.1557147339505;
        Mon, 06 May 2019 05:55:39 -0700 (PDT)
Received: from localhost.localdomain ([2800:200:e480:37:4d90:9234:4ca6:5cae])
        by smtp.gmail.com with ESMTPSA id o126sm2603077vke.55.2019.05.06.05.55.38
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 06 May 2019 05:55:39 -0700 (PDT)
From:   Shawn Landden <shawn@git.icu>
To:     linux-man@vger.kernel.org
Cc:     Shawn Landden <shawn@git.icu>
Subject: [PATCH] read/write: documentation of limits v2
Date:   Mon,  6 May 2019 07:55:34 -0500
Message-Id: <20190506125534.26055-1-shawn@git.icu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190506054107.25321-1-shawn@git.icu>
References: <20190506054107.25321-1-shawn@git.icu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/read.2  | 8 ++++++++
 man2/write.2 | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/man2/read.2 b/man2/read.2
index 6e5123fa4..6be82c85b 100644
--- a/man2/read.2
+++ b/man2/read.2
@@ -151,10 +151,18 @@ and the wrong size buffer was given to
 .BR read ();
 see
 .BR timerfd_create (2)
 for further information.
 .TP
+.B EINVAL
+.\" MAX_RW_COUNT in include/linux/fs.h
+The read amount is greater than
+.B MAX_RW_COUNT,
+which is
+.B INT_MAX
+rounded down to the page size (INT_MAX & ~(PAGE_SIZE - 1)).
+.TP
 .B EIO
 I/O error.
 This will happen for example when the process is in a
 background process group, tries to read from its controlling terminal,
 and either it is ignoring or blocking
diff --git a/man2/write.2 b/man2/write.2
index 4df56cd48..ade3b22b8 100644
--- a/man2/write.2
+++ b/man2/write.2
@@ -190,10 +190,18 @@ flag, and either the address specified in
 .IR buf ,
 the value specified in
 .IR count ,
 or the file offset is not suitably aligned.
 .TP
+.B EINVAL
+.\" MAX_RW_COUNT in include/linux/fs.h
+The write amount is greater than
+.B MAX_RW_COUNT,
+which is
+.B INT_MAX
+rounded down to the page size (INT_MAX & ~(PAGE_SIZE - 1)).
+.TP
 .B EIO
 A low-level I/O error occurred while modifying the inode.
 This error may relate to the write-back of data written by an earlier
 .BR write (2),
 which may have been issued to a different file descriptor on
-- 
2.20.1

