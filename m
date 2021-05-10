Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15580379693
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232984AbhEJR5d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232947AbhEJR5d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:33 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56B54C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:28 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso10114306wmc.1
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fd/It0aytrScBxMuxxCVjrWxtRKcHrxFkakeY8Wqheg=;
        b=MvjfUKi9s0StBHesWT78ueP9FSDJ/S2nCzCJpAObGjGuoX0Dr61DFtWdZifK9DPEPI
         Q0rDlBC2KtWyO+fvEqdEBbSnjbjb8rQitYTW3ZmIPNBk2mA9wdeXChtbk5CVNj2YJA8T
         91htqnQNR1EeClWWmPfEryOjOavPscn+9YSSCQlyZiWOiO557UV/sHAX+n4zKxWYrzCp
         /Dh5+o6qHY/yiSedNGqCybmEetI82pU103gb1ZVdFS+VFF7nIrMQkJK3I2VtUSDXpET3
         +foQGNZ7fR7GuPgLSVeQ/NLjJ3gjYaRWRcNeSLdSJXMI3uEC/cmVUS1xKq/lz5d9Y8oL
         2faQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fd/It0aytrScBxMuxxCVjrWxtRKcHrxFkakeY8Wqheg=;
        b=dXhVfIIHLVomsbpF/wx9hfSRsT+4vTdGxNf9Q1rpEFVXMwJse/VBf3dCp5ViAjLdIT
         Ie4lDIVHb8S3Sg4Q63SMxNGd1xE/ZrRY1bLOgbpZ3qKIFflgwCB6fuGweRaSnTbUKx06
         B/o0pWCxc9ziCJ7qiFwY4mmW9babTudgNPaJwzlJs4f0d9KOKmXG3yhaT2f1bS0vCAY+
         lhgdavR8Dshni8G6kO2AXSq9s8iobiF2uhHVv4Z1ILRVDgnizif+Jci0bRG2iNEcl6Cq
         tIE2Iuocb1YeguZnjX7W1vLtV++om0KTfZGrodDx/wOaociXcUjJPqaGQn9phb22dmkk
         B9Jg==
X-Gm-Message-State: AOAM532emSI4u/g5DPXk6cFFNbgS3EQaDl3UnEZn7vPAHKQWxTin0n9s
        4vUz+kmnqSb6bU+jrJJDArk=
X-Google-Smtp-Source: ABdhPJxP2OSJNhX3OKxpMUOddjbirjC3QpY1PpPi2Q7wGLv8IslMA8AUT0+8DKe6l2aP3MyeKrew0Q==
X-Received: by 2002:a7b:c0c4:: with SMTP id s4mr372666wmh.174.1620669387147;
        Mon, 10 May 2021 10:56:27 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:26 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/39] ioperm.2: Remove obvious comment
Date:   Mon, 10 May 2021 19:55:16 +0200
Message-Id: <20210510175546.28445-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Of course that is for the glibc wrapper.  As all of the other
pages that don't explicitly say otherwise.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioperm.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioperm.2 b/man2/ioperm.2
index b13a0129e..7d4a4690a 100644
--- a/man2/ioperm.2
+++ b/man2/ioperm.2
@@ -36,7 +36,7 @@
 ioperm \- set port input/output permissions
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/io.h>" " /* for glibc */"
+.B #include <sys/io.h>
 .PP
 .BI "int ioperm(unsigned long " from ", unsigned long " num ", int " turn_on );
 .fi
-- 
2.31.1

