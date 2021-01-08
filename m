Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6D5C2EF3D3
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 15:18:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbhAHORK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 09:17:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726705AbhAHORJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 09:17:09 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B3A7C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 06:16:29 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id y23so8547788wmi.1
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 06:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6s+oKUOiKElGNQAa2YETLCrbmxVjQmdOeHMHCLTUwz8=;
        b=CAxujd9Q0us2GZyQqKnCqhTnT5t4+z+qpdz6VSMgkbiXu4L6ZAlgFrOyDZwUtEnC+Q
         PjJbOucjWNi6fpXSeyTcpmlB45rpiop1RWZ27BFlftX+v7CN5ZV7NFQuzC8Lg8g6m5I7
         2kvleoS8/D3cPrjYmzvoJ7kAKiGWpCRDEc810WyIxKyC8S3qx7Wb36LLwFDeko2M1ntr
         qwBZB5vuLvxvFj9oSDxttFNZdG3gD+/nHHCcHQYSB53hKy+KFEGE6P8CARF46mB3HYRL
         FmLPPnseOV8+idISHKwHkLVKJu/2J9YH4yhahrHmUAAOjGyOXuMemM/5RCm+ElzIj8mi
         f7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6s+oKUOiKElGNQAa2YETLCrbmxVjQmdOeHMHCLTUwz8=;
        b=uCWvHvwsuT1F979tEPlrImSwlkv1S5l3HcWZai5y2H/OuZWOfRZO4nHXSvA4qOv4sm
         ymmZAxgz+/aXG2dFQ6Q6IZv/3DS3ClH9VGSFy3cPEtd1c47FivSh+6n67Dw12qoALfoi
         bjn64zrH5sdFIXLDOR3w2HYE+MygDpwqc64GrAVk8xJyR2wQz+M6v33wEVLx4A2NG4L0
         0Cm1GNksFLe372jPruPaLZ3Z/gk/pdpDsC8OKluRGw8pESgzmBKD6PTpDBKfBTF/i6kM
         KSgXniV/o2u4iin4uLFCzYNAdIxAUf5kSb/8DRj07XTUTW+98CEh52hxTrZQA6Pimm7W
         +OYQ==
X-Gm-Message-State: AOAM533HNKHRYoiuJHAYoCOcPDuvUYuGRyYZvX1uXSWQF1l/Ifo3Wh0a
        wEQdkDWAq4yk5jgcXjG+HD8=
X-Google-Smtp-Source: ABdhPJyt2y1NAt4p9W9N1lWXoL6AGESA213PYGime5t7DEu6+xgJeT5+BoeQM7bnmaKmMbYqbP/Epw==
X-Received: by 2002:a7b:c1d7:: with SMTP id a23mr3214403wmj.62.1610115388057;
        Fri, 08 Jan 2021 06:16:28 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c7sm15050295wro.16.2021.01.08.06.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 06:16:27 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: [PATCH v2] system.3: Document bug and workaround when the command name starts with a hypen
Date:   Fri,  8 Jan 2021 15:15:20 +0100
Message-Id: <20210108141519.61501-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210104180420.74092-1-alx.manpages@gmail.com>
References: <20210104180420.74092-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

man-pages bug: 211029
 https://bugzilla.kernel.org/show_bug.cgi?id=211029

Complete workaround
(it was too long for the page, but it may be useful here):

......

$ sudo ln \-s \-T /usr/bin/echo /usr/bin/\-echo;
$ cc -o system_hyphen -x c - ;

int
main(void)
{
    system(" -echo Hello world!");
    exit(EXIT_SUCCESS);
}

$ ./system_hyphen;
Hello world!

Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
Cc: Florian Weimer <fweimer@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/system.3 | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/man3/system.3 b/man3/system.3
index 753d46f7d..ead35ab30 100644
--- a/man3/system.3
+++ b/man3/system.3
@@ -255,6 +255,26 @@ are not executed.
 Such risks are especially grave when using
 .BR system ()
 from a privileged program.
+.SH BUGS
+.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
+.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
+.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
+If the command name starts with a hyphen,
+.BR sh (1)
+interprets the command name as an option,
+and the behavior is undefined.
+(See the
+.B \-c
+option to
+.BR sh (1).)
+To work around this problem,
+prepend the command with a space as in the following call:
+.PP
+.RS 4
+.EX
+    system(" \-unfortunate\-command\-name");
+.EE
+.RE
 .SH SEE ALSO
 .BR sh (1),
 .BR execve (2),
-- 
2.29.2

