Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E151F3537EE
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230397AbhDDL7t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbhDDL7s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:48 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5523C0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:43 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id i18so5144108wrm.5
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JXWn8Nd3MCs94z9YfHZPmIU6x0WwZCWfTr+hRs6FLmw=;
        b=vWfRCDZ4kZ++SpLtWmYZ/TRMM67Jukj8eQaD9YelJ8iavqZoV9d/uvM6BMr52rLzlK
         1CbnV+ZXbBt8uFLCIJmXKXmDA75an/upADE3QXHDBXtiItd8v6zZ1oHH/PLlzBEKwvLW
         +oJZ1tIPiUf7duuSD575J8uOEhZnmcg6U4b0ByxaORGn2M2rX4vhBpGD7jjIc6i0MQKa
         o5V/REehGeT5RMujFa9AKgfqAwlJmqFV6m0+1g+e2/RZV+ytD1TEqY+YuW3gBYwkQPOA
         blwOTSwUtsSFquBLuHeAAQBaYxrCJaRJlAN4t41YK21I/yVf2Z1bGY21StRONkuO5Qy+
         ogpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JXWn8Nd3MCs94z9YfHZPmIU6x0WwZCWfTr+hRs6FLmw=;
        b=lgyGs+bDZTf7n0nnaX716J3PhmcIBRECBpZbMb80wm4vIRa1tP9CmN1wD0L1x6z//x
         VHKgdpKbel/xSVPwk9vWIcUMkxwWJgl2mmCfVfylGJJEbfM32v4fKq1L0HBdcqNR6xKm
         GKSdTa94LCQ1FL6zFJQLWSEltlx9dG2spHsC4JsmR8/EtkeAU7xkfD48ZowYm/o78rGK
         iDtn1jUVCmwELbtUqhAVoIhLkFl4Ty2IrDRnA0EuUNHlLwMkbUuO/k645Rld242g/cKE
         F0nJSYePyy3FT69EucLUDfy3dbO+wh9oLH8wAJWPzGx7jejRM+nAnaGPEfMQkDWLNxml
         Jncw==
X-Gm-Message-State: AOAM533hnjveD90z9CCcEyiWMqx3QKvd/uK8x3pEVrarnCMLuEjGzQCC
        S7mzOW5+fLbv1n/3G86z4GDkMxfrpE0=
X-Google-Smtp-Source: ABdhPJzSu6eI5reRtTKwNYXM2loK4K7RiM8qYicWTEfg1j6InlSo37FZ/4eQSxuHYb7DHbebNfuKVA==
X-Received: by 2002:adf:fe0b:: with SMTP id n11mr11619913wrr.230.1617537582651;
        Sun, 04 Apr 2021 04:59:42 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:42 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 14/35] execveat.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:27 +0200
Message-Id: <20210404115847.78166-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add <linux/fcntl.h>, which contains AT_* definitions used by
execveat().

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/execveat.2 | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/man2/execveat.2 b/man2/execveat.2
index 855832765..c566f53df 100644
--- a/man2/execveat.2
+++ b/man2/execveat.2
@@ -28,15 +28,14 @@
 execveat \- execute program relative to a directory file descriptor
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fcntl.h>" "      /* Definition of " AT_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-.BI "int execveat(int " dirfd ", const char *" pathname ,
-.BI "             const char *const " argv "[], const char *const " envp [],
-.BI "             int " flags );
+.BI "int syscall(SYS_execveat, int " dirfd ", const char *" pathname ,
+.BI "            const char *const " argv "[], const char *const " envp [],
+.BI "            int " flags );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=27364
 .SH DESCRIPTION
 .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
@@ -209,9 +208,6 @@ the natural idiom when using
 is to set the close-on-exec flag on
 .IR dirfd .
 (But see BUGS.)
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH BUGS
 The
 .B ENOENT
-- 
2.31.0

