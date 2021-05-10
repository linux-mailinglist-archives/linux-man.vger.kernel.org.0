Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCEEA3796A6
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233291AbhEJR6D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232654AbhEJR6C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:02 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82FBEC06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:56 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id x5so17514120wrv.13
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gxCmG5Kd+TaaV5+mAaigLRxnoTYuzJvrptNwSvlLxFs=;
        b=dud3WsJoNKUjSqDboi1Yu6mTchedyieKGB3C2ZNM85kqyOxwWaD2chYmRkE+1Wy3sr
         LV21PYritow6kqhYlifC6VztbdgWEjYvW6VyHRGy9wyS4bnpurDPcMuNBjk9GvmiC3QM
         IPWIi9WADDRSu3QDJroDRBPj8KFKwquuCJDSMAETCXpuMcL5QL2IVg/gVhaYV4YlGWXo
         j65UiTmAqYfbfqI1Wtkw7GEWQ3LZ4X039k8gOxotkWAUFk9bhm6J8YK3UlgubjQTxPDl
         vt84IDAgJ7BpmXqcfhENKU5W3PGg0hND3qqWmJYgQxC4mnmcszWqcuKgZWxOE2iXqOuR
         lbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gxCmG5Kd+TaaV5+mAaigLRxnoTYuzJvrptNwSvlLxFs=;
        b=ATJ8XHaB3nfvKXsc9NfIj3w9ftG8yPTvDYsgGTu7dzqPb85yK/gZFMP6jYdM5UG4zW
         Fs+KWYSufFUMn3hjXI/V9uqhLFWatDtj+IC42UY1XdfSWHSJf/vtsUOzrJwbpQEea/gG
         0nEXSFYqeSkgKJ29MWgw1vUKpuPzZtj0SBQFVQXF8l4YJ70zoecd2aa6xn3aXDgFXX/H
         KlCApP16fUrtaFcbzpbvsaZdAyUx6cj9TRG9QIO6rgKKzz0x6gO27Mi+/BPbXw5F3rh9
         40RAyJpfiOGWcGn+yPFisvIn3WASxGDFvfOnzeli9DDMHmDo5nEsB+xY0jjwbcTBT/q3
         0bLg==
X-Gm-Message-State: AOAM533Ug6/CtxRRXfIeyW803r12ziKOVyaZ/GB1CEtw8JsePQpsJqAA
        0AcuWDHC3G3ZQHix4RypHTs=
X-Google-Smtp-Source: ABdhPJxfS2lYrqrF/cvfzka67zctVJ4MdsvsEU3z5T2QxV+SrkM5MBgaV+67weyZybTshaG0l6aDtw==
X-Received: by 2002:adf:b30a:: with SMTP id j10mr28054835wrd.417.1620669415334;
        Mon, 10 May 2021 10:56:55 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 26/39] open.2: Remove unused <sys/stat.h>
Date:   Mon, 10 May 2021 19:55:35 +0200
Message-Id: <20210510175546.28445-27-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I can't see a reason to include it.  <fcntl.h> provides O_*
constants for 'flags', S_* constants for 'mode', and mode_t.

Probably a long time ago, some of those weren't defined in
<fcntl.h>, and both headers needed to be included, or maybe it's
a historical error.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/open.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index bac1ee806..1bcd995f4 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -53,7 +53,6 @@
 open, openat, creat \- open and possibly create a file
 .SH SYNOPSIS
 .nf
-.B #include <sys/stat.h>
 .B #include <fcntl.h>
 .PP
 .BI "int open(const char *" pathname ", int " flags );
-- 
2.31.1

