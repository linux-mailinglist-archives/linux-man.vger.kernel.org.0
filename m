Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3F87268007
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 17:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbgIMPuF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 11:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbgIMPuA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 11:50:00 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3B81C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 08:49:59 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id x18so3318314pll.6
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 08:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/E7cx5L8JtvOfQMgPCP65sK6s7G0QiBQXi3QJz+yIPg=;
        b=cAmbgfG1EZBnQ8vO8VmD9tSi6HyPz0KdTiYYRZYzRP9V26gQL2r8VnDnZtgHZjp72F
         VkHOm5ZBquuvKEntffBxiFmH33Ar4tMExlPkEnPiEqWH+sE7GLgjzB3SRniEL9Da7bVj
         STkttcw8ZTUjQFWJG+TY0T4tBgijasp4XZ7ltQ+lF97n6a8H/KtJx+RoLOsp3r8g1bWE
         bLWPSF6LBtfyXBMNOrNEBS1t/7O7VBYId0Y3zNRu6vfBqH4/zg0LqroBVp58GmRZ57Oo
         3m0+i6viG2VUynhTrsXrmu+4o/UsS9YUdM48zslDSlCPROH7kmqAq1x7qS/vQXaOssLo
         Dkgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/E7cx5L8JtvOfQMgPCP65sK6s7G0QiBQXi3QJz+yIPg=;
        b=PudD14wbX2sTJ9fwHeqDMrJ6Qv7rWC7ETbAHU/fM8pooW9EK0faBN/OnROY61x3JE1
         xLA9IXi0HC3npT4ut7aQVgmYDV42DlR/NHGK+i6ximl4bNLGFvPKS0oOEQFdntESJeVX
         ZiyEC8UjoA1lOepZKSj1YhU4Hh6xHHSkoIxDsnKmR2s+MwL9j0IaMwGVe/Sxx9Vqb0vd
         80WodQ4tVK8jExNwLiGk7/y7KCILiEBSj6esHo9O0Des7NBtF3a2iKEY/C6eqKNBahVv
         d7hyNxOlNGgZ7JupMQAdrQMxgBxgS79O1Xv2I9yMGCUzpKPOzLIRe3GK01XWlG+OBDye
         51SQ==
X-Gm-Message-State: AOAM533w1lr22IgZuGogrJ37e0ecw+zSQsyIK74FY7oV710XLrZ6uGH7
        KILNvs8n2zftESS20hKtAQHgZgFD6RTwM6BYv5Y=
X-Google-Smtp-Source: ABdhPJzr2EzmsKgzz/b7dEzGgGM0X2pw+SUDYEdx1pgK+TB5YWmcegu/nNq7HRY/Y8f6wHAknf7dUwY5uX1k9D+MCWI=
X-Received: by 2002:a17:902:7606:: with SMTP id k6mr10444556pll.171.1600012199357;
 Sun, 13 Sep 2020 08:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAFDeuWPmWWHatxnZ9HsYN2fp3gagHOKCsKmVDj0F6us9XWKwFQ@mail.gmail.com>
 <20200913141808.GM3265@brightrain.aerifal.cx>
In-Reply-To: <20200913141808.GM3265@brightrain.aerifal.cx>
From:   =?UTF-8?B?w4lyaWNvIFJvbGlt?= <erico.erc@gmail.com>
Date:   Sun, 13 Sep 2020 12:49:48 -0300
Message-ID: <CAFDeuWM5Bu1Hq7FFUBvoxHJfEUTD=FDK35aJUQEYFGyCnx37NQ@mail.gmail.com>
Subject: [PATCH v2] posix_fallocate.3: add EOPNOTSUPP error code.
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        ericonr@disroot.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As can be seen in

https://git.musl-libc.org/cgit/musl/tree/src/fcntl/posix_fallocate.c?id=73cc775bee53300c7cf759f37580220b18ac13d3

musl libc returns the syscall's errors directly, which means it doesn't
perform the same emulation as glibc, and can return EOPNOTSUPP to an
application, which isnt't listed in ERRORS.
---

This patch replaces "[patch] posix_fallocate.3: add note about error
codes for musl." from
https://lore.kernel.org/linux-man/CAFDeuWPmWWHatxnZ9HsYN2fp3gagHOKCsKmVDj0F6us9XWKwFQ@mail.gmail.com/T/#t

posix_fallocate(3p) doesn't list EOPNOTSUPP as an error that can be
returned to applications. Should it be noted in the man page that this
is something added/required by Linux? (I might be mistaken regarding
this assumption).

 man3/posix_fallocate.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/posix_fallocate.3 b/man3/posix_fallocate.3
index 58338d673..125bcc12b 100644
--- a/man3/posix_fallocate.3
+++ b/man3/posix_fallocate.3
@@ -98,6 +98,13 @@ There is not enough space left on the device
containing the file
 referred to by
 .IR fd .
 .TP
+.B EOPNOTSUPP
+The filesystem containing the file referred to by
+.IR fd
+does not support this operation.
+This error code can be returned by libc's that don't perform the
+emulation shown in NOTES, such as musl libc.
+.TP
 .B ESPIPE
 .I fd
 refers to a pipe.
-- 
2.28.0
