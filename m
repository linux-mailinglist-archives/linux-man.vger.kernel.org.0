Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AB0B2EF3D7
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 15:22:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726662AbhAHOVn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 09:21:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725901AbhAHOVm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 09:21:42 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F964C0612F5
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 06:21:02 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id 91so9183682wrj.7
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 06:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1KIcH26IT0UxX2ouZ7Y5aBsyHaDwdyeFAmJyvWjpw04=;
        b=h6fNSsftFswZ5U/ZwmErk8GDOvL7UqrHRqYQROZzor27tRaSWBtYiEQ72uAgpyrmdp
         ffSZKN/eiyrKHAAQrckXuOpm3Lj7G+yQyD9uZuPKHsfvxP69KpVPEavjCgtR6UicYVjz
         WTUlJ44ULd9smPIQai2+nmjd70Zt10DOhSMuuAvFejUmNxPJM5hXeQmn2BiiJnb4rvq9
         cpY81TPnl+CLaHiLX4/PX7tdHz6TSAqDtFX+e9IfQM5BYAfnfYwGSbCWdPFSSRm16gQf
         X1PvWy53WiMiZEZGWH0paMlL3t3mlL9FWtf+SaOFoECvFJu3prlozRe9SvbbnjJ+xZtc
         cJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1KIcH26IT0UxX2ouZ7Y5aBsyHaDwdyeFAmJyvWjpw04=;
        b=KdrnELP3hIBh9SaHz3U0xGOsQ8oBvCVYJTN2M6uqs3yxASFEOmqUxuVB4X6UmOiM8l
         QVXW1krICSDLXtN+XrNllJk4Hpr56k24WUDdye5vRNl+msosDQQvM4BaKGgxi9Z9DxPD
         fd/0k9Y1Jjc6xBV9TDbwejQzWzOiKFU1lFJbP6rhmPJf5TtRuZESb8xMTKG+RqkrIiB+
         OFuA4j5ipki9UMYxTacGjGKh9M62gzY9EGUh+D11y4SZN7s4khBMVtCKUd4Wuo+XfmjN
         M2EavYZZihbhaxEQ/2tIfC9dyqVQeY7MUQj8NXsbbFdQlmfuGjLAcj4SiFU6ZlDstmVk
         QvCQ==
X-Gm-Message-State: AOAM530kZ8s0hQnFGQv5qeb/2ydJawbOrAy2rMiEG4VHpkb8KFo0gpoF
        6oT/qIou8zQYxTO/e9xgYME=
X-Google-Smtp-Source: ABdhPJzSa0p8UQ37nxdwWidu2v353KeSgvdap8nY9lo4dOVZusfaoM7TmoLxHgx8h3vEHxVGTbN4/A==
X-Received: by 2002:a05:6000:c9:: with SMTP id q9mr3788114wrx.259.1610115659756;
        Fri, 08 Jan 2021 06:20:59 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id r13sm13881945wrs.6.2021.01.08.06.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 06:20:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     libc-alpha@sourceware.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: [PATCH v3] system.3: Document bug and workaround when the command name starts with a hypen
Date:   Fri,  8 Jan 2021 15:20:52 +0100
Message-Id: <20210108142051.61875-1-alx.manpages@gmail.com>
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

Hi Michael,

I forgot to remove some escapings in the commit message in v2.
I hope it arrives in time :)

Cheers,

Alex

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

