Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5702E2EF3DB
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 15:24:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbhAHOXt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 09:23:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725942AbhAHOXs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 09:23:48 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74FF4C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 06:23:08 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id r7so9174901wrc.5
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 06:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WHYae1ZIOoUD+fH72usBuocdaizTJexo9mR+ov/wFxw=;
        b=eNryYAnn7BTnuC0uYUWMR9HH7dYq9npg67XutaEf7vMRTYA4jRrRsbwT3xEM1H5edq
         sO94LI0MULM+HOI9W6BxzpDWb3FSs2krkwEgUJK/OddgatDMClIgatih5/uTOJMtwKqV
         DPuVUc9CxzhXIQtHQvZwaOzGvcspPI+KHB4AyQKLtE8GYj+DFTgrKKk7me39v/xYFUFd
         fTbJZ0u4Ud7e5dRMCkmvOC7UwsqN8OtU5JMXDAjOPRI7SciNrq0jSvikfs81YteJlgon
         5m6Bc0Ziv4Ca4HAlcGYLrTK7pZfb9qbq6pi1iDsz7fH70bIqIY9x05VYI3jlX546W+Nu
         xkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WHYae1ZIOoUD+fH72usBuocdaizTJexo9mR+ov/wFxw=;
        b=C3eZcKl9kQJA0NrFvs5N438WNXgyQCYhoL5th3J56ePOtdcazXP6OR3tBmxGkPNxPB
         HpQiaYuhg7bLY/IhrQyngG33MpiQ1iNhRQj7OUVCWl+pgATKTaVEKu+GmBtanX5bnxO3
         51S87gsR+L6XJCfj9E7QUmIqQ1vzXd8qcmgMMxdcTK0/MuvZpLOKtH3YQ4saQ2C/eG2z
         TI+JvDSQWuqh8IQkQNJqX/b2Knp5rcUtcY0RZI/r1mauh9+NwOxwpYp/tT93ibFdscYD
         u3KRpDa7/AhZfnWhr19mLUy0gcqomJRZ906kdSPXPjUUKHaS4YAuCKE/nctot6ktqBjF
         RgKg==
X-Gm-Message-State: AOAM5307ROtyxnepOpI5WGZW1THE0Kmrugw3pOcYrzUAiGEDdKCqkQia
        UnjGZTfb2T1eANCzWjbsJMI=
X-Google-Smtp-Source: ABdhPJzz0BuPrzM+eGkVHaoCL85Ne4asXixJesSRlIhD2qdfSa3CXGt2MOksZrSzuDSJLfFWYrrbXA==
X-Received: by 2002:a5d:5227:: with SMTP id i7mr4072427wra.68.1610115787279;
        Fri, 08 Jan 2021 06:23:07 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s63sm13863522wms.18.2021.01.08.06.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 06:23:06 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     libc-alpha@sourceware.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: [PATCH v4] system.3: Document bug and workaround when the command name starts with a hypen
Date:   Fri,  8 Jan 2021 15:22:11 +0100
Message-Id: <20210108142209.61938-1-alx.manpages@gmail.com>
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

$ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
$ cc -o system_hyphen -x c - ;
#include <stdlib.h>

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

D'oh!

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

