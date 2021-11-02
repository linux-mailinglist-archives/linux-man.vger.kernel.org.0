Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 083E1443561
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234845AbhKBSSV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235057AbhKBSSS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:18 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70326C061205
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:43 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d13so34664204wrf.11
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KLTEBOX0/Yy/dHpu1WFc57p2Eoa+NHy7UNkdVferTXg=;
        b=Y0diLfHVxRb2aOeCCx5LU0gW2cBEA9ijx24VKSznxFqg/elMfyEjAox+XLDNircUWD
         fcQ8/b+IMw2frhC3Q3AVGebBjye4VpTIejvwUO1ucd5i1LCy9FUc+zVU9wby3DuMwsOh
         aE68gsVo+rK4XGIAawjKBn9DIVQTx6XaeEq0w8eeXtZtRlMWF6VFInRFZ+VLiD1JpkE9
         hfFr7frEhaUPVFag11DYX5rVhQET7a9227wouHPakCTl7JaryVd16R6I5OuXiadTtLxD
         H8w4QXRe5bPMcq9vzclAY/aWJj2HG7kD5omGtl5c0ITfL43Rtcu+fOiuLrjnI/NkBBJS
         K58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KLTEBOX0/Yy/dHpu1WFc57p2Eoa+NHy7UNkdVferTXg=;
        b=wPs5xqDgfTPUg6omSRwIFny4CQTBN0RhsVxBxNdGcaVIgYpCP9HQ4i3U7aigxTt556
         ZyqupajsDJu17cDLrAE4NYsR2k6avtG9pD7wNnn8qsTRbfDkrvjylmHSwdclbiUWnNWf
         rxOzODzbxGrReZybfIFrmPtVIISl5R5h4m3VDZmHUCA6PMI57s0UWHFuqC7eh1OGkLJk
         iQK7fn5Y1nzrAAxDIa43PiRAHjl29wlCMn+F/+Oa4Rr3DLzexT0e0E3BxmTTHy1XEYQv
         wE200oqxhCkXtX94YqSwUtV02ELk+RI4qvWErbk8vGDUts0jDFCPJ9vk9lDA83HLAxce
         8KRg==
X-Gm-Message-State: AOAM532+tyBEEhAeImAFkBmSOYLswI2NpJ6gra9b7YZRGpGx2Jyeu4et
        sPU45qDjdvZswHr307h9PNQ=
X-Google-Smtp-Source: ABdhPJxE8/vwgbYyTDZQ/Cnb6ocOGwu4czmNfXr9ywT6PN0PbEiMEmXiC05m5eqmy7j+sg4+IR7D2w==
X-Received: by 2002:a05:6000:2a4:: with SMTP id l4mr22907150wry.238.1635876942100;
        Tue, 02 Nov 2021 11:15:42 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 37/37] mode_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:54 +0100
Message-Id: <20211102181454.280919-38-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mode_t.3            | 32 +++++++++++++++++++++++++++++++-
 man7/system_data_types.7 | 32 --------------------------------
 2 files changed, 31 insertions(+), 33 deletions(-)

diff --git a/man3/mode_t.3 b/man3/mode_t.3
index db50c0f09..b2e5bf33d 100644
--- a/man3/mode_t.3
+++ b/man3/mode_t.3
@@ -1 +1,31 @@
-.so man7/system_data_types.7
+.TH MODE_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+mode_t \- file attributes
+.SH SYNOPSIS
+.nf
+.B #include <sys/types.h>
+.PP
+.BR typedef " /* ... */ " mode_t;
+.fi
+.SH DESCRIPTION
+Used for some file attributes (e.g., file mode).
+According to POSIX,
+it shall be an integer type.
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH NOTES
+The following headers also provide this type:
+.IR <fcntl.h> ,
+.IR <ndbm.h> ,
+.IR <spawn.h> ,
+.IR <sys/ipc.h> ,
+.IR <sys/mman.h> ,
+and
+.IR <sys/stat.h> .
+.PP
+.SH SEE ALSO
+.BR chmod (2),
+.BR mkdir (2),
+.BR open (2),
+.BR umask (2),
+.BR stat-struct (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index a39f7f269..f8971c6dd 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -138,38 +138,6 @@ types in this page.
 .\"------------------------------------- ldiv_t -----------------------/
 .\"------------------------------------- lldiv_t ----------------------/
 .\"------------------------------------- mode_t -----------------------/
-.TP
-.I mode_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <fcntl.h> ,
-.IR <ndbm.h> ,
-.IR <spawn.h> ,
-.IR <sys/ipc.h> ,
-.IR <sys/mman.h> ,
-or
-.IR <sys/stat.h> .
-.PP
-Used for some file attributes (e.g., file mode).
-According to POSIX,
-it shall be an integer type.
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR chmod (2),
-.BR mkdir (2),
-.BR open (2),
-.BR umask (2)
-.PP
-.IR "See also" :
-the
-.I stat
-structure in this page.
-.RE
 .\"------------------------------------- off64_t ----------------------/
 .TP
 .I off64_t
-- 
2.33.1

