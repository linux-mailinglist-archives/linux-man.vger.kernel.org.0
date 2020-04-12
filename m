Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36A421A5D5E
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2020 10:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725832AbgDLIJe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Apr 2020 04:09:34 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:38885 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725812AbgDLIJe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Apr 2020 04:09:34 -0400
Received: by mail-qk1-f195.google.com with SMTP id h14so6598151qke.5
        for <linux-man@vger.kernel.org>; Sun, 12 Apr 2020 01:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=fo4hJWTGxdkqKD5rpuY3wgc49FF4i1fz/mmapGPeKUY=;
        b=z3bfesQ/2SuknFlixu48knMM2srhCm4TvsFQ+Gtc7Kd5KD2yLoLoW8ZPWQ8fZrDoiS
         E/oU1x1FE2o8b1kuJO7fHOAD+h+p8RM/ypuP08zUn6z8a+khDVGbOE8tqRk5W+H9nHI8
         t/w/8+dseB2l7lEdXnJITVfgdiNpQ18CyzH/fes2BbNdhhy/9PsQKMRo1Ghj08NagUtC
         BGTTmK4KZAFDjv1BuTNVNGo6gILW6shLL6D0zjEiSyh1KzGHJBFbCFsFoeVhMy1KHYkZ
         mUA1bVnRi+DCRTS1h7TyB4HSVhxXLzWgtSDRrj+jAFMALbH6m7/0jvkPoB49+H8/JdhH
         /nMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=fo4hJWTGxdkqKD5rpuY3wgc49FF4i1fz/mmapGPeKUY=;
        b=USfM6Qvlg68WHJNQ0BgU2jwxRgNeqXwv6v3qtgBTeM9A2yctEN3lM/Os2Q5EeedqCS
         +YCDx3ABvhFSyuMdy6XkdVjqEfOeOTnFgS0sV2PP89RY4zGNYprAN4I10QfV+1GIovaD
         zS0olMglhu2nWQN7K/xC6xZTqzDMLdM5o5tlLAW7jiCnziXS8dSUHWDv12+X14dmA4mx
         SxlYcM881tQkB5JoLYEXaC4yAIzHOKIE5pLgNbtCB1WKvDVyjfBlhwhLNqGJ/6h0sE71
         sB4U8lJ85q/2pTL3rJv7YGJmN714xQ6UeglAsq7SHoaa1qlFK4e8sWBcLAdyqrG9JJCu
         VGaw==
X-Gm-Message-State: AGi0PuZK3NmfbsoWMjp3MzZ7WSVlogI/4HnvlgKtnRui02TXeK1oxuTK
        MfbNtdzUcBmLLuLuPng8TDHuww==
X-Google-Smtp-Source: APiQypLlY18PSZii2lw8SLpD/TfmuDOWUye0MUQcmDXW6Js+JyuFA2lvHJUcaQ3khV5OZiq+7uYfSg==
X-Received: by 2002:a37:8604:: with SMTP id i4mr692731qkd.481.1586678972449;
        Sun, 12 Apr 2020 01:09:32 -0700 (PDT)
Received: from juliacomputing.com ([2601:184:4780:3aef:84eb:412b:3040:45a0])
        by smtp.gmail.com with ESMTPSA id h13sm5340929qkj.21.2020.04.12.01.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2020 01:09:31 -0700 (PDT)
Date:   Sun, 12 Apr 2020 04:09:30 -0400
From:   Keno Fischer <keno@juliacomputing.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] proc.5: Fix an outdated note about map_files
Message-ID: <20200412080930.GA30569@juliacomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The restriction to CAP_SYS_ADMIN was removed from map_files in 2015 [1].
There was a fixme that indicted this might happen, but the main text was
never updated when this commit landed. While we're at it, add a note about
the ptrace access check that is still required.

[1] https://github.com/torvalds/linux/commit/bdb4d100afe9818aebd1d98ced575c5ef143456c

Signed-off-by: Keno Fischer <keno@juliacomputing.com>
---
 man5/proc.5 | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 34cb957dd..0d6043c8f 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1090,16 +1090,18 @@ lrw\-\-\-\-\-\-\-. 1 root root 64 Apr 16 21:33
 .EE
 .in
 .IP
-This directory appears only if the
+Permission to access this file is governed by a ptrace access mode
+.B PTRACE_MODE_READ_FSCREDS
+check; see
+.BR ptrace (2).
+.IP
+.\" This permissions check got removed in kernel commit bdb4d100a
+Until kernel version 4.3, this directory appeared only if the
 .B CONFIG_CHECKPOINT_RESTORE
-kernel configuration option is enabled.
-Privilege
+kernel configuration option was enabled.
+Additionally, in those kernel versions, privilege
 .RB ( CAP_SYS_ADMIN )
-.\" FIXME
-.\" This may change. See the mail thread
-.\" "[RFC][PATCH v2] procfs: Always expose /proc/<pid>/map_files/ and make it readable"
-.\" from Jan 2015
-is required to view the contents of this directory.
+was required to view the contents of this directory.
 .TP
 .I /proc/[pid]/maps
 A file containing the currently mapped memory regions and their access
-- 
2.25.1

