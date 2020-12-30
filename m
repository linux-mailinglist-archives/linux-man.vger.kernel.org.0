Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 231342E7CC7
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 22:43:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726500AbgL3Vmt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 16:42:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726486AbgL3Vmt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 16:42:49 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 543D4C06179C
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:09 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id c5so18628107wrp.6
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5i7ArzqIFUQ0D6LvQuPl+LBedDWOek/Pk4Iw4gEDQJs=;
        b=VxtumtjNp9DUXrsoBb4DHn6m+d2XnoQWTVTORHOG3gxyd3y2DjuhsA4yCCF0zbcTMd
         1vOOWjDNoxRor7b2CFjT3gZZ6vErHpe3Txhb6c/6Kk3EHCxtS8UWpOd5+kuyALJA5zpN
         y9VSTeXBnrZMKaJpU8tXr6z/d9vhdRCFEtNGZLUzN3+DwNIblJafHW9F4D3ghhULWPXL
         4k7BHpsC9CkSprcO9hfBEQtl4eeWk78QHg6raWHp8KkUcHGV2bUIzqN1urSAV/a+wLZA
         5H2PkP8gORL0JGmX3fSSmi3kcigCVp6KEEL1wDaY+Gcvks39WLyVsQrMzfSaSU1trcff
         xPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5i7ArzqIFUQ0D6LvQuPl+LBedDWOek/Pk4Iw4gEDQJs=;
        b=kMA4S11RkGschdvMvwLIbbx72d8LhKkWLwnQNeurtcGUvirK9siHy0p4Fb8TfmH24R
         9R8npLWhWjuptXkAEGgHebPwLT6ZufZ5d1ogRD1bBIo2jViDG0ht3grS4apFWzUU9RLG
         DJeO4Ayy4JdFD3fmGMETpdyq+wnIN/QAGhh2Ce2WXriV/mij4YLq5fyOtyfuDokXC1nn
         qD8Kyd/Tr5bhQrCVK+zRwT/0pbA90kfEyja7d87t4mWn6SzLcaCIbOyvZpq1Y/va10Ty
         xXQ5sk4WQcVoxS2whgeuq4iNKPtZVCwBy1Er+25S9XXt9o1+a3QrcPTuG7mGuowQQ2KY
         RxSA==
X-Gm-Message-State: AOAM531i6nsKypwe/aw8rSwr5HBI4bvOELZ8Hb6fILl+58OkQnDmUswp
        or+ZBea5pXCg3UgHafP1KRI=
X-Google-Smtp-Source: ABdhPJwoE9/R+jCVG7qqrDMhTea//JqSKFFPT+IZnK0/xrQEBuzft/lVAQZkWGNvUwJjSyhyNl0Z4A==
X-Received: by 2002:adf:e9d2:: with SMTP id l18mr60126211wrn.179.1609364528153;
        Wed, 30 Dec 2020 13:42:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id 67sm9519234wmb.47.2020.12.30.13.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 13:42:07 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] copy_file_range.2: SYNOPSIS: Fix prototype parameter types
Date:   Wed, 30 Dec 2020 22:41:45 +0100
Message-Id: <20201230214147.874671-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'off64_t' instead of 'loff_t'.

This patch doesn't change the types in the code example,
because it uses the Linux syscall, and not the glibc wrapper.

......

$ syscall='copy_file_range';
$ ret='ssize_t';
$ find glibc/ -type f -name '*.h' \
  |xargs pcregrep -Mn "(?s)^[\w\s]*${ret}\s*${syscall}\s*\(.*?;";
glibc/posix/unistd.h:1121:
ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
			 int __outfd, __off64_t *__poutoff,
			 size_t __length, unsigned int __flags);

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/copy_file_range.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
index 1692aa44a..6f4708c4b 100644
--- a/man2/copy_file_range.2
+++ b/man2/copy_file_range.2
@@ -30,8 +30,8 @@ copy_file_range \- Copy a range of data from one file to another
 .B #define _GNU_SOURCE
 .B #include <unistd.h>
 .PP
-.BI "ssize_t copy_file_range(int " fd_in ", loff_t *" off_in ,
-.BI "                        int " fd_out ", loff_t *" off_out ,
+.BI "ssize_t copy_file_range(int " fd_in ", off64_t *" off_in ,
+.BI "                        int " fd_out ", off64_t *" off_out ,
 .BI "                        size_t " len ", unsigned int " flags );
 .fi
 .SH DESCRIPTION
-- 
2.29.2

