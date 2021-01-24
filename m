Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A35DB301D0C
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 16:13:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726554AbhAXPMd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 10:12:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726539AbhAXPLv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 10:11:51 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDCBAC061574
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:04 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id a1so9754901wrq.6
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OiIxtAS90som2ftWXh7kY74JiJoThy/Sn7eT77cDIv4=;
        b=r7gtiE547YwuQlzhzRpHjr+NYRD2NlbOL/pWB8it1DmZ8W7h8FQ49M1wLclnetHD1g
         Wfja+Tst3HVYLNvbPSh/nZ75GezTh4ir28lDNgl9kHkSsvz5ZgpmBzEU2DabhpureRnj
         eZ3inOzJ7K/0pS6QCkOPiCclTuj0VVLHHRmoeRFweYk11baWEuILslq1tiWKOpqQvhD9
         ELm2yhgkePzSxobi9VC4+euiggqL+24RItqvG86baS7Bb4gPBxXz5jDqvue4keQCAHRg
         LkxkqefX2Uxufo6q1+bALQREDdex57aLwZV5VOoNfsqxzZUm7Qy0z58ia353r1noSrOK
         Hs0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OiIxtAS90som2ftWXh7kY74JiJoThy/Sn7eT77cDIv4=;
        b=CTNOwj7XDY4GEYJn6wtY2qk3emfDfrE8WhOGkKvZJ+Rkd56OdmpdMGYyj4xojfnSXX
         RyANml+ehCdTLGEc1DExzQbsYM4oXQ8bIUMfC3oSKeRRPx6QSBol78Dx0ttjpboV4Nzu
         /e1cXsfdPIBl+Htnx9e1RrN1DgCjivyQNK1Se5imuXnnSxSxb0LzbyfRIuwHJpZp8om0
         OuSBFJw5fpDcw511GEeZysePQ9TgcTANv/sS0HMc39miUtgJlGZS+Ef5Cjxbz+C27siE
         iQOEdh5LVG5OgEA5I8UmDirPNx2/eIb+929HLHW3DfCM7cmZhAs7VYtADdpsDkcAC9XA
         L6QA==
X-Gm-Message-State: AOAM533YrygO8UXJ/yfVb/ecpjh70ePTef2zrQvRH3qfU2IgobbuR6mK
        39uZpzZDe7zbqUFM3Hg730A=
X-Google-Smtp-Source: ABdhPJx/0guUA4HHKMR9AAvQ5UVotsYcuC/M4SAoQMJs0NRYNga/nud8oOVrjeLd66wRDY0fLvWN/Q==
X-Received: by 2002:a05:6000:1045:: with SMTP id c5mr225578wrx.250.1611501063503;
        Sun, 24 Jan 2021 07:11:03 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j2sm18480099wrh.78.2021.01.24.07.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jan 2021 07:11:03 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] kexec_load.2: srcfix: Don't break a line that doesn't get past the right margin
Date:   Sun, 24 Jan 2021 16:10:31 +0100
Message-Id: <20210124151035.70536-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/kexec_load.2 | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/man2/kexec_load.2 b/man2/kexec_load.2
index 8cd062229..eec63d312 100644
--- a/man2/kexec_load.2
+++ b/man2/kexec_load.2
@@ -31,13 +31,12 @@ kexec_load, kexec_file_load \- load a new kernel for later execution
 .nf
 .B #include <linux/kexec.h>
 .PP
-.BI "long kexec_load(unsigned long " entry ", unsigned long " nr_segments ","
+.BI "long kexec_load(unsigned long " entry ", unsigned long " nr_segments ,
 .BI "                struct kexec_segment *" segments ,
-.BI "                unsigned long " flags ");"
-.BI "long kexec_file_load(int " kernel_fd ", int " initrd_fd ","
-.BI "                unsigned long " cmdline_len  \
-", const char *" cmdline ","
-.BI "                unsigned long " flags ");"
+.BI "                unsigned long " flags );
+.BI "long kexec_file_load(int " kernel_fd ", int " initrd_fd ,
+.BI "                unsigned long " cmdline_len ", const char *" cmdline ,
+.BI "                unsigned long " flags );
 .fi
 .PP
 .IR Note :
-- 
2.30.0

