Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40A0E31BA49
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:27:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230207AbhBON0O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:26:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230337AbhBON0E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:26:04 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A2FC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:23:31 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id t15so8802090wrx.13
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a5vMpHkHoC0jk6IEva5dYCgHy0BE2C/vvyRk2354Nrw=;
        b=gL2qUMoVRIgrMVdM/0PpGlFwqaO43qBI+zKK06g7sfo6vSGsRBPvQORzwdjd/NeZyz
         rAyMK8F30yfVHT7V0wru0hbafhsKtRQTQbCAs9FohvkTgDbWWdPcaP55pkjPPqtqKTQ6
         FvJRnpNW0sVqdMCL3Ob1GXDpgcQAp2cwRV9QEYfSwf/KcAgsSO0UJrXHeSBu8Qq/cNkW
         SiuDbuH19vIIMopDy05AHCSjT/KMDnae7HqaN46EqKmHlKEzBC9XRhONvvGYuKfBZl9S
         OwMJo1tTGCEG2QtvVgef1Ngsnq7JQiIzeSmXZehgsihlrP3X65t2lW9eK4P2uag6uMf/
         UwPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a5vMpHkHoC0jk6IEva5dYCgHy0BE2C/vvyRk2354Nrw=;
        b=I69KTFwAqiTt4fw/shCQBTmI+tJAAEtekwLLrGdJq/NcGtNeu+uLvZnq07ht06Lqwb
         cdgJyw2lLcjt8dMBLFajTJaprQ+lEofcDTEL7F1tYD+UfEXJWvHeoiWo+YfheO7Ee4U1
         JjTwHhl6iS8MUH09lMw9BTAlkVLDosUXnFJ8p6HJzdWrdLA+os1t+4dcVdVPnpE3RJkB
         TeyTAEh2A/MC7E8FhFUk/NTr5/j2kjD8E5wEIBaD7mg5qZUY75QV94G7bibgtkFGJr8f
         8dt35oUxPd3yDPUHGa1pIuqoku51diElzJKLJR4L8AScuwLpI+zZKD1Ni2cBqTePsRqi
         1SeA==
X-Gm-Message-State: AOAM531B6XftsNBTJoeSm4aKQGJv0F5G1+u70ttKLv9Gbtjt4945cByH
        GbAmQsQfk5/aliMbcQyaelw=
X-Google-Smtp-Source: ABdhPJy9a1DYfX310QxMBF7Cnd1r40C/+wSM8lu0Dnh5+stjZ1QCNdujXE/JO4VepRzlkm2NNEca8Q==
X-Received: by 2002:adf:bc45:: with SMTP id a5mr18875079wrh.290.1613395409973;
        Mon, 15 Feb 2021 05:23:29 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:23:29 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] pciconfig_read.2: SYNOPSIS: Fix prototype parameter types
Date:   Mon, 15 Feb 2021 14:15:32 +0100
Message-Id: <20210215131522.450666-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Use the glibc prototypes instead of the kernel ones.
Exception: use 'int' instead of 'enum'.

......

.../glibc$ grep_glibc_prototype pciconfig_read
sysdeps/unix/sysv/linux/alpha/sys/io.h:72:
extern int pciconfig_read (unsigned long int __bus,
			   unsigned long int __dfn,
			   unsigned long int __off,
			   unsigned long int __len,
			   unsigned char *__buf) __THROW;
sysdeps/unix/sysv/linux/ia64/sys/io.h:57:
extern int pciconfig_read (unsigned long int __bus, unsigned long int __dfn,
			   unsigned long int __off, unsigned long int __len,
			   unsigned char *__buf);
.../glibc$ grep_glibc_prototype pciconfig_write
sysdeps/unix/sysv/linux/alpha/sys/io.h:78:
extern int pciconfig_write (unsigned long int __bus,
			    unsigned long int __dfn,
			    unsigned long int __off,
			    unsigned long int __len,
			    unsigned char *__buf) __THROW;
sysdeps/unix/sysv/linux/ia64/sys/io.h:61:
extern int pciconfig_write (unsigned long int __bus, unsigned long int __dfn,
			    unsigned long int __off, unsigned long int __len,
			    unsigned char *__buf);
.../glibc$ grep_glibc_prototype pciconfig_iobase
sysdeps/unix/sysv/linux/alpha/sys/io.h:66:
extern long pciconfig_iobase(enum __pciconfig_iobase_which __which,
			     unsigned long int __bus,
			     unsigned long int __dfn)
     __THROW __attribute__ ((const));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/pciconfig_read.2 | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/man2/pciconfig_read.2 b/man2/pciconfig_read.2
index cec6f58e9..c379e2d3b 100644
--- a/man2/pciconfig_read.2
+++ b/man2/pciconfig_read.2
@@ -13,11 +13,13 @@ pciconfig_read, pciconfig_write, pciconfig_iobase \- pci device information hand
 .B #include <pci.h>
 .PP
 .BI "int pciconfig_read(unsigned long " bus ", unsigned long " dfn ,
-.BI "          unsigned long " off ", unsigned long " len ", void *" buf );
+.BI "                   unsigned long " off ", unsigned long " len ,
+.BI "                   unsigned char *" buf );
 .BI "int pciconfig_write(unsigned long " bus ", unsigned long " dfn ,
-.BI "          unsigned long " off ", unsigned long " len ", void *" buf );
-.BI "int pciconfig_iobase(long " which ", unsigned long " bus ,
-.BI "          unsigned long " devfn );
+.BI "                   unsigned long " off ", unsigned long " len ,
+.BI "                   unsgined char *" buf );
+.BI "int pciconfig_iobase(int " which ", unsigned long " bus ,
+.BI "                   unsigned long " devfn );
 .fi
 .SH DESCRIPTION
 Most of the interaction with PCI devices is already handled by the
-- 
2.30.0

