Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EECA1381A74
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234387AbhEOSV5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234377AbhEOSV4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:56 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF13C061573
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:42 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id z130so1327562wmg.2
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QlMmOMqXp2XTsNsKFZeQliOKrrlDbAqn7uaQh7OrCLs=;
        b=vArEH7nBb2J3KycFmW5Z1fUcYopwDNKv1JbxhJ2OjpJ5R6DqMJ2xTLX+iAPWZr53jf
         jH5b3WMRP0DUVmXmE0hj9dV25vDE9S9WtUcxzLbqvwaeCCtvgWN+/oLHgBBePgKBi02x
         Am3TDtgAIpX7r/bbdrLAVYerijCqE4EL+f3pClE+M2h3YX1cp8WIa5sIJeu8qqQzChpp
         A5DiLI/rTBlLHaSGXp7qQU3EnPmlj8ttBwi6hAt+gh30vdPN/8rbIfdGHzR7bv5Zh6jn
         GgBbbtFeiY35MbzYf8efwU3m7vP5+IIjALuue5oM2bdf8eS9NOVTghEYoNH3q/UxH/qW
         M2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QlMmOMqXp2XTsNsKFZeQliOKrrlDbAqn7uaQh7OrCLs=;
        b=djFzLq4G9SvE4iZpdlcs8tcKIja73Cb9ctVa+N6foCsKSaYgP4MdUA57phGn7yU5Rz
         11X7F55SsXFtpcxdo0xTtGlWac8WSyoYGO1rIaTlAIhrHRq6waSXGLGavM0C08rJdIt+
         U1TkKn2GfWikzG5Z9X+VdehS8fZz967XE7ebkqz5vgms4AV9MH0LdCU7k4aGToZNsgn8
         eiRhuN+mNQeJvralu09SQt45gBcVixYmGvedsy63AKRkDn9CCMy0ocuYFyQJLRuh4qry
         93Jiqklp2LzI1pfsyUuRSepN5kT5QoBNKj96bSEfklLVDug4AkHNNZq/qMsMBzMZn827
         ue7g==
X-Gm-Message-State: AOAM532VXP/GHWEtJXpYI32BoHO2/S84Mq5JIKXC4+IDO4UFjslaSBdM
        S3DX0FDPgo8IvmwbreDaDuw=
X-Google-Smtp-Source: ABdhPJzGem4fqYN5uXnCD8LPGGpG568D1LYM6hr8Zn96o/h1bAQPkHdyKO6GRn2oJ1MWWLcnLDsWNA==
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr15695932wmf.134.1621102841552;
        Sat, 15 May 2021 11:20:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 7/8] s390_sthyi.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 15 May 2021 20:20:27 +0200
Message-Id: <20210515182027.186403-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_sthyi.2 | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/man2/s390_sthyi.2 b/man2/s390_sthyi.2
index acba43a20..df4a91d5d 100644
--- a/man2/s390_sthyi.2
+++ b/man2/s390_sthyi.2
@@ -28,14 +28,19 @@ s390_sthyi \- emulate STHYI instruction
 .SH SYNOPSIS
 .nf
 .BR "#include <asm/sthyi.h>" "        /* Definition of " STHYI_* " constants */"
-.B #include <asm/unistd.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int s390_sthyi(unsigned long " function_code ", void *" resp_buffer ","
-.BI "               uint64_t *" return_code ", unsigned long " flags ");"
+.BI "int syscall(SYS_s390_sthyi, unsigned long " function_code ,
+.BI "            void *" resp_buffer ", uint64_t *" return_code ,
+.BI "            unsigned long " flags );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR s390_sthyi (2),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR s390_sthyi ()
@@ -129,9 +134,6 @@ This system call is available since Linux 4.15.
 .SH CONFORMING TO
 This Linux-specific system call is available only on the s390 architecture.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2)
-.PP
 For details of the STHYI instruction, see
 .UR https://www.ibm.com\:/support\:/knowledgecenter\:/SSB27U_6.3.0\:/com.ibm.zvm.v630.hcpb4\:/hcpb4sth.htm
 the documentation page
-- 
2.31.1

