Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B829132683F
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 21:21:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbhBZUNP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 15:13:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230486AbhBZUM3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Feb 2021 15:12:29 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCF58C061574
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 12:12:10 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id u14so9751955wri.3
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 12:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TxjDwGflO5eYPmh6NEDlnmi9cc0qkE1UjcH8JyMHHYg=;
        b=bO5tdjLpWmKvbQ/KSM9dYA5M9HeJoGJehNcb5ih/FUptgLbU7YtQ5IXKV3IB+i+Syf
         sl4bFBdjGUXQcLp0rVyBJY9gFCTQ0dwveG5z7huJQISmJfO90p6bqFY8EQpRmNqZ15WZ
         EU0DfzytJD38wLIE+DX+LULNQnxjTJXZTZAt8CYv4t82hP4TAgsChELswQrdPwVXs+Ig
         msgJr3ez1X8qclWyd/GjfehosokTQbaLUHob654Nu/vt21erPv2K0vlnt1fTr22bpop7
         Iia6nXMbGLgWQRoApkmza9N94WB4reMYKWc+O1keyE6F7S+AudLkMUwxTlRlKKO6Bea/
         wqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TxjDwGflO5eYPmh6NEDlnmi9cc0qkE1UjcH8JyMHHYg=;
        b=cC4hGKBoXlQbH+mg73JiiWNBoXX4NHAnyp+G6odiiyfCjn/4GQSRh/WeEzUyKhh6OE
         0hnSktwbOOwjtRhfG3reWTWyXu5bACO8CIJCla9Ccw3lCkTr3xv3P9JOrw1hlkI5Rm/h
         eQ+LtTdOP5TqIGq49kv+dmeyRVLNO+/GWz/97iBj2yE9c3NdFgDALFHA6pFs+t14Jas7
         dmhk6mBzXPrnFQG8Ey/SYqtwZwjpGkik+2Edo/CuAa1F8efx1SjJrpOLeZN1UPNiOUGM
         tW5Xbz2e2vXkhSXKVJ2GsNC98vSXU2AHRP4RgDXViZ/oxNW152jeJKYmKY7oih0wOdGW
         w9eQ==
X-Gm-Message-State: AOAM531yV4qiPHhaEkC/zBl3MP4+zUZWtqrGOuTTgGmSFoDhC7aC+AF3
        5V4yBQ1XzcYAS4/R0Dbf8uI=
X-Google-Smtp-Source: ABdhPJwgiOffouvxnM5VwThGibDEnUVZjcSEt2VfLoZV49vXZy8eCMgxT2BSnvefdxh8sio3L6KJsA==
X-Received: by 2002:adf:ab52:: with SMTP id r18mr4874513wrc.65.1614370329658;
        Fri, 26 Feb 2021 12:12:09 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm13358314wme.22.2021.02.26.12.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 12:12:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Walter Harms <wharms@bfs.de>,
        Theodore Ts'o <tytso@mit.edu>,
        Adam Borowski <kilobyte@angband.pl>
Subject: [PATCH] open.2: Fix bug in linkat(2) call example
Date:   Fri, 26 Feb 2021 21:11:03 +0100
Message-Id: <20210226201103.9864-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

AT_EMPTY_PATH works with empty strings (""), but not with NULL
(or at least it's not obvious).

The relevant kernel code is the following:

linux$ sed -n 189,198p fs/namei.c
	result->refcnt = 1;
	/* The empty path is special. */
	if (unlikely(!len)) {
		if (empty)
			*empty = 1;
		if (!(flags & LOOKUP_EMPTY)) {
			putname(result);
			return ERR_PTR(-ENOENT);
		}
	}

Reported-by: Walter Harms <wharms@bfs.de>
Cc: Theodore Ts'o <tytso@mit.edu>
Cc: Adam Borowski <kilobyte@angband.pl>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/open.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index 03fff1b65..267e79656 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -823,7 +823,7 @@ fd = open("/path/to/dir", O_TMPFILE | O_RDWR,
 
 /* File I/O on \(aqfd\(aq... */
 
-linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
+linkat(fd, "", AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
 
 /* If the caller doesn\(aqt have the CAP_DAC_READ_SEARCH
    capability (needed to use AT_EMPTY_PATH with linkat(2)),
-- 
2.30.1.721.g45526154a5

