Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71CA7428C68
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 13:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234711AbhJKL6d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 07:58:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234903AbhJKL6b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 07:58:31 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7454C061745
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:56:31 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id y3so22288686wrl.1
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ITHh23oEa6sZ55dr+t7qBIafzJcvg+QdGAZDQadYP7E=;
        b=pZkR2ILRavcZ8M67nrSY6qsFxPpK1AkThqZQLCiGjSVrHLgSYkc71hzV3pCePWr7Sv
         2hTI/r5IvbBi0EWC134K9cDQeg1G+/HtDAu9IY6n4RrXyJlRaEr1V4DOMzCCp4Rj4zvF
         fnPwqdCKuuf0LM+cLGxR9Rep6g55AzAk647Yq2NQF7em/BeYJD70Wf9cHoBfVxIHEIw+
         13D7gxps6pxjDy0N2IyHTgwJE6rx9vae1b0GUU9qYXdNDx71yl1AGwB5UcZfgWvjuiob
         2yZ3ctYy4x7jbYuW2WD4aYRM2sENcjsBQEvmoUtaU9P3Tf1wgVbJP5yQi5DPup5gsaJE
         onGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ITHh23oEa6sZ55dr+t7qBIafzJcvg+QdGAZDQadYP7E=;
        b=v8CXzHmlQDjxl49eWTulJyF4AgkTknIPO56ZbH+C53w/GranCqSEUVlPkde9tIfnn0
         PfGr9LeQoU62eEkn3gzKwWIzbZH+XgT0wfZUaMm6Up9fZ4y+S/NrO1uKyGoUuNFN0Y4t
         xZJzUXsSrM95t1xn2NuxshfdJMBKgZJDdVQsy673VrWKNACs6r5dN2Wdz0DIqWfSvigk
         rK3/3b9A4jMcFRoGOBdVZxmTBETPnLDaAXq00ien9eEiblJGZ0/PAsF1fO9eNO3akcyt
         ULnKAOrilMgBw41JxUTyiSsiIchKFo7XkU8Y+UCXNFQTsFrwi1VWK2kgvh1L5mRgzfx6
         /bsA==
X-Gm-Message-State: AOAM533hmz9WSL1jmHWq/OQaKuYsO7xkdm77SwXdOeSmTY+QWbGVRp79
        ooAIKVH5gNE4A4yRuHmosx0=
X-Google-Smtp-Source: ABdhPJwK7jDlACa54hSrQEPpw6yE2vsTUqTcuI1ymD506s1+2DmgiHMpAa5eNJTouFxscmjlPbbwOw==
X-Received: by 2002:a05:600c:3b24:: with SMTP id m36mr6152375wms.176.1633953390501;
        Mon, 11 Oct 2021 04:56:30 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l16sm7912490wmj.33.2021.10.11.04.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 04:56:30 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v3 1/2] ctime.3: mktime() may modify tm_hour due to tm_isdst
Date:   Mon, 11 Oct 2021 13:54:06 +0200
Message-Id: <20211011115406.11430-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

If the input DST value is the opposite of the one that mktime()
uses, which comes from the current system timezone (see tzset(3)),
mktime() will modify the hour (and if it's in a day limit, it may
carry up to modify other fields) to normalize the time to the
correct DST.

If a user wants to avoid this, the user probably wants to use UTC
time.  mktime(3) uses local time, so it's not suitable for that
(by itself).  Consider the following solutions:

For that, the easiest solution is to use timegm(3), which is
non-portable (it is present in Linux and the BSDs, but not in
POSIX).

A portable solution (untested) might be to implement your own
timegm(3):
	time_t portable_timegm(struct tm *tm)
	{
		tm->tm_isdst = 0;
		return mktime(tm) - timezone;
	}

Another portable solution would involve setting the timezone
explicitly to UTC+0 with setenv() (see tzset(3)).  But this forces
all of the program to use UTC time, which might not be desirable,
especially in multi-threaded programs.

Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ctime.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/ctime.3 b/man3/ctime.3
index 0e2068a09..7a5714be8 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -260,6 +260,13 @@ normalized (so that, for example, 40 October is changed into 9 November);
 is set (regardless of its initial value)
 to a positive value or to 0, respectively,
 to indicate whether DST is or is not in effect at the specified time.
+If the initial value of
+.I tm_isdst
+is inconsistent with the one set by
+.BR mktime (),
+.I tm_hour
+(and possibly other fields)
+will be modified to normalize the time to the correct DST.
 Calling
 .BR mktime ()
 also sets the external variable \fItzname\fP with
-- 
2.33.0

