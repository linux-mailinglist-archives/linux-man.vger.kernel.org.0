Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46877295E9B
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898261AbgJVMjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898468AbgJVMjF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:39:05 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62438C0613DA
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:39:00 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a72so1889290wme.5
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ru3xBcM4NaKLMYRiAjZSKh4300mwmz8cNOCl7pbeDn0=;
        b=mjUyihGgcC2IkEVa3L+tw8urAOivwgDhqQ9v7xten7Knlos+q+69tl4EDJiTRW9Gz7
         GsbhvKMBdmkig3ZYR0SEJo+m1tZMuM5HGYe8OtWcpDW3X+/QYeyr6z7nzS0SrMtcDFre
         CAExfAdZvoXMqxCTQAcyjlEG5r2MNUM0fxaQ3VMtP8hh1zMpx3oOxXDSTLvR3F11gb0T
         JUoHiz7xjuvQcYNpNrYul05/CUDgI3122X3Ag8Chy77nL3inA3Au/+tKlCoYXQoiFW2L
         9v5WCrjRJlWU1fe1HWza7ntEBQaxszzaZUYzXnninuMhmO/7Evty8qc1pWkPqDluZdI0
         Vh1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ru3xBcM4NaKLMYRiAjZSKh4300mwmz8cNOCl7pbeDn0=;
        b=DCUtJmtzq5KRCPoewBSNDEbdrYjPXuEJaeKG+TnT+bAnx7bfKMoFeHRFq4VaRIeojd
         wXEjxc+km0zj21PB2c7t7dGkbDK2kxXKHDLw83q/fbM1ZOE9p617TlBeIGaikG3hXsGs
         0YysqbXIACqgr68+pJsD7PbbRJ3R2rsTmWdk/4MNjM4k2tTaFfG10wB/5r1IAaahl+Ui
         4575bbQ6mAgsGU6NIbndOIzq9DpqqpPMfzJUzYenx+IiSsF/ApmZ8i1rv/p5iUMz4BcW
         RnRRYnotubm2Vp4RVgeDbDQwoautO2SkSYs0gVx4l3iztwn86xwcp1qbcTG+AfPmWl0O
         R5cA==
X-Gm-Message-State: AOAM533pIfOf7TENsuGkXU5NBVQwUuLWZF+7/ZQwqP2+58AWVN52YtVE
        VipLzHiU0VIBUfwa0S/CvpC8dKPE5Nc=
X-Google-Smtp-Source: ABdhPJz7zx6c0OWt0OBaDcFG1jZpnmw0s2xi8o5hGxlPVHMHC77yFtycQXjiJOv5mPhZ100JNVcwqg==
X-Received: by 2002:a1c:bbd4:: with SMTP id l203mr2374716wmf.153.1603370339053;
        Thu, 22 Oct 2020 05:38:59 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:58 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/10] slist.3: Add details
Date:   Thu, 22 Oct 2020 14:38:20 +0200
Message-Id: <20201022123821.22602-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add remaining details to complete the page.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/slist.3 | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/man3/slist.3 b/man3/slist.3
index d97b745a0..7a8078de0 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -48,6 +48,7 @@ SLIST_REMOVE,
 .\"SLIST_REMOVE_AFTER,
 SLIST_REMOVE_HEAD
 .\"SLIST_SWAP
+\- implementation of a singly-linked list
 .SH SYNOPSIS
 .nf
 .B #include <sys/queue.h>
@@ -87,6 +88,8 @@ SLIST_REMOVE_HEAD
 .\".BI "void SLIST_SWAP(SLIST_HEAD *" head1 ", SLIST_HEAD *" head2 ", SLIST_ENTRY " NAME ");"
 .fi
 .SH DESCRIPTION
+These macros define and operate on doubly-linked lists.
+.PP
 In the macro definitions,
 .I TYPE
 is the name of a user-defined structure,
@@ -259,11 +262,38 @@ from the list.
 .\" and
 .\" .IR head2 .
 .SH RETURN VALUE
+.BR SLIST_EMPTY ()
+returns non-zero if the list is empty,
+and zero if the list contains at least one entry.
+.PP
+.BR SLIST_FIRST (),
+and
+.BR SLIST_NEXT ()
+return a pointer to the first or next
+.I SLIST_ENTRY
+structure, respectively.
+.PP
+.BR SLIST_HEAD_INITIALIZER ()
+returns an initializer that can be assigned to the list
+.IR head .
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (SLIST macros first appeared in 4.4BSD).
 .SH BUGS
+The macro
+.BR SLIST_FOREACH ()
+doesn't allow
+.I var
+to be removed or freed within the loop,
+as it would interfere with the traversal.
+The macro
+.BR SLIST_FOREACH_SAFE (),
+which is present on the BSDs but is not present in glibc,
+fixes this limitation by allowing
+.I var
+to safely be removed from the list and freed from within the loop
+without interfering with the traversal.
 .SH EXAMPLES
 .EX
 #include <stddef.h>
@@ -321,3 +351,5 @@ main(void)
 }
 .EE
 .SH SEE ALSO
+.BR insque (3),
+.BR queue (3)
-- 
2.28.0

