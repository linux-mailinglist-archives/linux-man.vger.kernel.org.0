Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FF4040738C
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232523AbhIJWsk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbhIJWsk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:40 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EEE7C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:28 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id n7-20020a05600c3b8700b002f8ca941d89so2353817wms.2
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UsiFWEDjPdcTpi6E/jYwFI1vhA2Ju7FYWk6tfuYFoGg=;
        b=MnRy8ksgpVdrSS+6DrZqefpOitz9MadkRhHXqcXOXSILDooCNwEdUs/ovHRbpaVXQi
         1NOJ/wh98mHvgEFYMQYalwTEFgss55iBKeXI+tQqXYj05IwOzvbk68IrufkQBRcWo3kZ
         9p68dq8/SikqvXSwHsGbquvFftlLEZizqBXZ6tugNcGyhry1j5n/l6GQD93yIPyPCrIo
         sP47dmcKh8OYXfIuN9EZI0n1MTrlnEQo6uHXbyxZ28knSfMeG8/y1B45WB4NMDI6Ri7e
         JjhPOAwVnwguIyMvK8aAsQc7t7i86mRdD5EPRXjkZDoytRSYxmuwKYBfJlo44sMy6ULq
         s7uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UsiFWEDjPdcTpi6E/jYwFI1vhA2Ju7FYWk6tfuYFoGg=;
        b=APKShT5H6ksRySePGpCj4EUmYlq+XE3i4jrNBQfoxAWGmNkQ5bPYFBtdzc/afDuvVS
         +GrrgHGmVIKD0S/9HC0THOsMjKXjLRNjwY3rSizpGR2essdb/toJlWpLzmeEzDEqpYN2
         JCALHWPQtmI4X468gMIMkDF4qEBrzhpHSdtLNCbmnnbq7L8j3BG9FqRZHxDfzwipju7h
         Qqwdcw/br7mUMOUiASwkx81+PgxxAMH9g9g4UefWYNtkXhroS5a2YG0nVdh9RslFlJ7T
         MXB3G8RS8IRbUDRo7FWPLa37IPWKo79Nm0j/UlpRPK/U3BpeExa799hffck3+kDiiGTZ
         E6AA==
X-Gm-Message-State: AOAM533cvHIXdz0EfDeidez5+AtLrS3JfB8H8pEYoQNvk9jAymgvhSOB
        35N0rPTof9IiAqcJtkBZJ9E=
X-Google-Smtp-Source: ABdhPJwT9XUh9O6zu7+IilpUJvazX6Pvjjo3BGtt2YQrAtpk/YGAQNB7JY7Yn0m2D3LSDOUeaS4SKg==
X-Received: by 2002:a1c:ac07:: with SMTP id v7mr27223wme.160.1631314047284;
        Fri, 10 Sep 2021 15:47:27 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:26 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Andrew Wock <ajwock@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>
Subject: [PATCH 09/15] clone.2: ERRORS: Add EACCESS with CLONE_INTO_CGROUP + clone3
Date:   Sat, 11 Sep 2021 00:47:10 +0200
Message-Id: <20210910224717.499502-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Andrew]:
I noticed that clone3 can send the EACCES errno after I wrote a
program that used clone3 with the CLONE_INTO_CGROUP flag.
To me, it's important to know what kind of failure occurred if the
clone3() fails, so I was glad that a unique errno is set for
this case, but it wasn't documented on the clone man page.

[Christian]:
In essence, any error that could occur during regular fs-based migration
at write-time can also occur during CLONE_INTO_CGROUP. The clone3()
manpage just has the inverse of that above statement:

"Note that all of the usual restrictions (described in cgroups(7)) on
placing a process into a version 2 cgroup apply."

Reported-by: Andrew Wock <ajwock@gmail.com>
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/clone.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index e381da165..90db92ad6 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1209,6 +1209,16 @@ in the caller's context, no child process is created, and
 is set to indicate the error.
 .SH ERRORS
 .TP
+.BR EACCES " (" clone3 "() only)"
+.B CLONE_INTO_CGROUP
+was specified in
+.IR cl_args.flags ,
+but the restrictions (described in
+.BR cgroups (7))
+on placing the child process into the version 2 cgroup referred to by
+.I cl_args.cgroup
+are not met.
+.TP
 .B EAGAIN
 Too many processes are already running; see
 .BR fork (2).
-- 
2.33.0

