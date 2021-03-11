Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4827338057
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229756AbhCKWeV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229920AbhCKWdy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:54 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E1FC061760
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:54 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id d139-20020a1c1d910000b029010b895cb6f2so14053777wmd.5
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LFx7KEIIk+kefiwFTieQVdGMtLKGTZPfA9s6FS/goAE=;
        b=FKUsQokPsfzQWCJM9CPQZwJmd/m3iaoh+qascfnpreZlrvoaQAjwPtjX6Sc96esFdP
         wUhZ1ox10lZ8/jifyBllH7cdYA3mzIVWmAnBcVy5MDE6nmRPlg1jtRbqSJqgF8UGm9p2
         rlu9IGeZpA1rJZuwNewxGVmFlRihPCWRcHdOCUB8GNW0sfk8OhzMka0tF26hZ3r24pgI
         NyMkjvx68ZLogs4Qw5vBlIQw2WyTbCofV7YMzvW2w5AELmPuDvaoncK67Om7vZDenfM7
         3liXtsFKGPlrG9a2UGJkPlXRpuTwzGkCY9frsU9h7zmBsubS7qq/BsC3GcgP/pWQOHNL
         dIiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LFx7KEIIk+kefiwFTieQVdGMtLKGTZPfA9s6FS/goAE=;
        b=uVZc7Dtk6JEkcxtSBy2uvtkVuZtV+YWZo9hg3qUenGGeue8DgoDayFsNLQ+Srhy/Br
         KZBMTpIfxrviRdoc9oD7HNaSQ458DAcQnfNgKnjBQIkotF1XFAFSvtKqNZnXXNj4Hfmk
         IWfv1zcIiHY8lLJa27q0Gkp6i8cR7j9AwouNz1bnrwDNcHrYgXHZAWSw1461wQqrc8NY
         NRVFbL2fO3A4oxi3eYCG/fnlH4QLYrwrWzrPy+yp15ZU4/2IbhE5tzAbwnbofMyso13d
         yKCBmWYSXC/YCwjccTOthZQ1YMipNJTAi9/EWS4v6DCJo7hOg9tQj3qaiCL+n+9LUgHQ
         2CrQ==
X-Gm-Message-State: AOAM5303omHJJdNKKRpJ9LcXmxY1EaSON9nh6T172z3G2nnstR7I+2e5
        zHiqjRVErZh3xl/C7SO5CfTTULCsSLE=
X-Google-Smtp-Source: ABdhPJxH+/NH7h4GG1fmlOFqJntql156Gb3lzucEVvowmBBNFZ3IiiW1qzVO4/25c4/YdJpHL8urdw==
X-Received: by 2002:a1c:2390:: with SMTP id j138mr10048704wmj.72.1615502033311;
        Thu, 11 Mar 2021 14:33:53 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:52 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 14/17] wcstok.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:27 +0100
Message-Id: <20210311223330.722437-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcstok().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcstok
wcsmbs/wchar.h:217:
extern wchar_t *wcstok (wchar_t *__restrict __s,
			const wchar_t *__restrict __delim,
			wchar_t **__restrict __ptr) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcstok.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/wcstok.3 b/man3/wcstok.3
index b8976da46..f433b250b 100644
--- a/man3/wcstok.3
+++ b/man3/wcstok.3
@@ -20,8 +20,9 @@ wcstok \- split wide-character string into tokens
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wcstok(wchar_t *" wcs ", const wchar_t *" delim \
-", wchar_t **" ptr );
+.BI "wchar_t *wcstok(wchar_t *restrict " wcs \
+", const wchar_t *restrict " delim ,
+.BI "                wchar_t **restrict " ptr );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1

