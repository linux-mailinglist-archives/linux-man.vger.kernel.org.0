Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCDDC3C750A
	for <lists+linux-man@lfdr.de>; Tue, 13 Jul 2021 18:38:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233964AbhGMQj6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Jul 2021 12:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231651AbhGMQj4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Jul 2021 12:39:56 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEC23C06178A
        for <linux-man@vger.kernel.org>; Tue, 13 Jul 2021 09:37:04 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id t5so17478251wrw.12
        for <linux-man@vger.kernel.org>; Tue, 13 Jul 2021 09:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GkBnQz3k5bLmXELexJ5h5XMAi3/Z9UxkbG5CoQEVieo=;
        b=BV7L4EMs2+ewb+a8X4YFcgfntHjBffTKvQ8eudRW0C06Prti6PT82dM0JORuEAj5LI
         To2UMcwbGAcleCqB02pLXmNXAcR8wpg95UGnUw1WZx7+48IrWHRPpM5xHd2UrFnH9u1w
         tt7riiMm/Z4VOkZiv33Rfc3KGUY+6sNs/W5riruHM68LiclfBYVJiP2nXeon5729zeU2
         3FYe2bpxnsCmme20wPXPObBQi7eaIC/001OHr0z9zovTVgrYsXf9HJJ2KZeoCGm13CT8
         NIhHmd/yCm5fX1HSpVmnHRzgGC2hMySUZe2QFgIFR8TfM/v0vR/bkPa62gAXgwblz2Qd
         BaeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GkBnQz3k5bLmXELexJ5h5XMAi3/Z9UxkbG5CoQEVieo=;
        b=YUZpa+/RnerSxi1+NZXMy+pz4QlDETn9KaVmfNr3fx9iksdLEtbjp+Cncj0B+G4dnb
         aZRs8JGdD4S+fLCHC8Jixfm/zr5Lz/0HEf0hvhkFutGE8EUjh4FFjPKPRsEZRlxgNzvx
         UhTNB+1NA61V2ffzlmTB8G3IMghphQ0+auWzozuuDAP6r6qJNG81i7AuGkas/8Hi7SJc
         bWjD+dtEbEhpO/hxTawSJ+XuFqFY0Y81VS+Ih7k/WUK1lpha1rZ2fcXjbK2f6cPomX/a
         uT/HhxOAChRWHqjMXlIEGvsJvBmTi27iM/v37hLXaqvVd7d/XXtFYigLS2dd+XaLXBEC
         5H5g==
X-Gm-Message-State: AOAM533We6VlBSlLVWoCewyW5sBvX2XfK9obwmliyppGXMSK0FqGfYue
        OAW8lkDPdFSU4o8gfbucTSE=
X-Google-Smtp-Source: ABdhPJy9UaqBBiC7gRyxUjcLxMYNPDX65sT2K9w5NErcDQKaSyvjD/znMocfIRZBKDpljhoPic1+Ew==
X-Received: by 2002:adf:e749:: with SMTP id c9mr6910714wrn.407.1626194223351;
        Tue, 13 Jul 2021 09:37:03 -0700 (PDT)
Received: from amir-ThinkPad-T480.ctera.local (bzq-166-168-31-246.red.bezeqint.net. [31.168.166.246])
        by smtp.gmail.com with ESMTPSA id m18sm15219563wmq.45.2021.07.13.09.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 09:37:02 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH] fanotify_mark.2: Update w.r.t tmpfs support
Date:   Tue, 13 Jul 2021 19:36:52 +0300
Message-Id: <20210713163652.36196-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

tmpfs can be watched with FAN_REPORT_FID since kernel v5.13.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_mark.2 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index add678735..34c20b8cf 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -401,7 +401,12 @@ The filesystem object indicated by
 is not associated with a filesystem that supports
 .I fsid
 (e.g.,
-.BR tmpfs (5)).
+.BR fuse (4)).
+.BR tmpfs (5)
+did not support
+.I fsid
+prior to Linux 5.13.
+.\" commit 59cda49ecf6c9a32fae4942420701b6e087204f6
 This error can be returned only with an fanotify group that identifies
 filesystem objects by file handles.
 .TP
-- 
2.25.1

