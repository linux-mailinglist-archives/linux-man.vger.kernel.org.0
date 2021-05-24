Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD73138F2DD
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232985AbhEXSV2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233637AbhEXSV1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:27 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5F53C061756
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:58 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id z85-20020a1c7e580000b029017a76f3afbaso8895547wmc.2
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Lo2pCks/EHMfUh/wT+IkymkjQI+uWPgyMuPrl38onQQ=;
        b=RRaT1XH/F1Kj4iS5mFB7Opr7/J/E6RbcEuox8NnWU3N8bJWu79UThT4SGPn2MySMYJ
         eeN1z0FVKmNBPfccDFSQi4q+uWEznaO7TM69WF3omDcMGGV9rhhLnn1hVadQOxXNQxnZ
         airRCgcj+ChtrpVXRsxImdGc1EoZGc5U2iH76Jq3d38ujYKO65HCRoJP2HIdhcaf1miY
         IhZ8GgpMijMFEMM+yBCICgHFDNvZE3LThBmyAl3Rp9t+6QoMleGywxnQ6oeslM9L/Cdm
         AQ0yErkR8Y002dsc3ZzxDiJWMMmpEQ9/Nhwgjm38w6SUFlhqNMzivvo2fb/LZkplJneB
         YlVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lo2pCks/EHMfUh/wT+IkymkjQI+uWPgyMuPrl38onQQ=;
        b=FvkFsjzCHAUtdxnCmP+HJl5GRwFQ5Y1i5Fml4sdAZxPG8pQsca+0Xrc+Ok+pCwkJ1g
         kv78kHwH2vsdrb+2Eukt5h6RZIWY6gCxtJ7D8ctNr8SEGppGz0xB4J93FtCSKz5RMtC+
         H5Zie2yG5Zi+suH+72Vj+LoQDNw7zSY8yaQpDaZj2vKOK9X496uNOGZFcor5enqh5Hnc
         EQcdlxXn+RxAbAy8hy9lh66HgCmWeobiBoZ7e2BES8puDYKXJm3k3ej83rhAnRmIYdW5
         IYqObzOMwcSBZaKOgJkNFMepIyXneLKNdS231Sdw/4K/vRwFBg+DULKP4iWjOlYqL6hW
         eYfg==
X-Gm-Message-State: AOAM531IDwEVmeOxFT6HAlo29Ekc3nnOmb0NDlx1kgZfgWiH5GceAnNr
        /aBelU9n1AOIkhRbhDMSM6s=
X-Google-Smtp-Source: ABdhPJzlsTuTDC+QcZ/piFCwK9/DQmgqy//GQklsjwiMhDcDfHbon/jlEHEn6woKm4iKuVdZKnSjyg==
X-Received: by 2002:a7b:c346:: with SMTP id l6mr20307029wmj.109.1621880397574;
        Mon, 24 May 2021 11:19:57 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 06/10] set_tid_address.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 24 May 2021 20:19:43 +0200
Message-Id: <20210524181947.459437-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/set_tid_address.2 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man2/set_tid_address.2 b/man2/set_tid_address.2
index 258c9b9ef..65b4931eb 100644
--- a/man2/set_tid_address.2
+++ b/man2/set_tid_address.2
@@ -27,13 +27,17 @@
 set_tid_address \- set pointer to thread ID
 .SH SYNOPSIS
 .nf
-.B #include <linux/unistd.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "pid_t set_tid_address(int *" tidptr );
+.BI "pid_t syscall(SYS_set_tid_address, int *" tidptr );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR set_tid_address (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 For each thread, the kernel maintains two attributes (addresses) called
 .I set_child_tid
@@ -99,9 +103,6 @@ This call is present since Linux 2.5.48.
 Details as given here are valid since Linux 2.5.49.
 .SH CONFORMING TO
 This system call is Linux-specific.
-.SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH SEE ALSO
 .BR clone (2),
 .BR futex (2),
-- 
2.31.1

