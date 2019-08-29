Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC390A1565
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2019 12:07:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727116AbfH2KHC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Aug 2019 06:07:02 -0400
Received: from mail-wr1-f46.google.com ([209.85.221.46]:44402 "EHLO
        mail-wr1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727040AbfH2KHB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Aug 2019 06:07:01 -0400
Received: by mail-wr1-f46.google.com with SMTP id j11so2746501wrp.11
        for <linux-man@vger.kernel.org>; Thu, 29 Aug 2019 03:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=iQI1xCVoBZXPyvLaHQcdl8AvWdq3dDpI93sRzTyhaCQ=;
        b=Cb7bfJXmBfQWcwD3W+VVRVcYQhD0TymkhsQv5GW09ANIkrGQ6yCj8mPki6/ij31ShW
         PRfuWTdA4LJ39H9VUxTygMVWQM+2uRl1SeM/KzF25SVD82h0lfLQqY9KlMDONou/meID
         dhps8/aWTWEdC4U/+KnG4i4XZdDAfYM1oVkkI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iQI1xCVoBZXPyvLaHQcdl8AvWdq3dDpI93sRzTyhaCQ=;
        b=GMjUjIUszxQ9gIrhIfytm/+lvjwqkNHOA6fxjYeVPb79KfMkN1rBnHCKvLVaGb7f0Q
         ObeaFQ2nXQ76XTFBmUBlaQOlP6HyS0sCktHMQTXd/jDd2soifDzX/XAUCIbF7QC+frfS
         r0fV0ZvNdP2SHJMhz4j7WqP6kGumIfxEvw+Z0K/YxMcWNKHatjAoFam4BW4HrDT4vlcA
         GyHB6+/8vBvKOhVgBG9bLA9vwmaMceZx68n0ZeRHbErlV1J3IWt+XgbkXV6cmv7JODaS
         sAGXVdvb2NxPhsUQyVqDIsewZKk+dsNy3XwTbcuLJZrG/MG4Oq5sZ44XBxXkKYmvjTN/
         hmgw==
X-Gm-Message-State: APjAAAU1Pg6+I+fUgUtmA/8kn4Kucj/Ti2f94MnYfcGtUg/JZxR+Mw1H
        E9lK2o+/hHVCbRmBFzkUcpiCF9h/YzsOiA==
X-Google-Smtp-Source: APXvYqzkmgRufYY5uzwxFm8Ob1wNBrReB8H7rxoTgZoTHOlIqRHmsBgj8+Lhn8snQGFOYpwEmS6SvA==
X-Received: by 2002:adf:b1d2:: with SMTP id r18mr10097510wra.237.1567073219374;
        Thu, 29 Aug 2019 03:06:59 -0700 (PDT)
Received: from wildmoose.dk ([2a01:488:66:1000:57e6:57d1:0:1])
        by smtp.gmail.com with ESMTPSA id q19sm1095240wra.89.2019.08.29.03.06.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 03:06:58 -0700 (PDT)
From:   Rasmus Villemoes <rv@rasmusvillemoes.dk>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Rasmus Villemoes <rv@rasmusvillemoes.dk>
Subject: [PATCH] errno.3: add some comments on EAGAIN/EWOULDBLOCK and EDEADLK/EDEADLOCK
Date:   Thu, 29 Aug 2019 12:06:21 +0200
Message-Id: <20190829100621.11386-1-rv@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.11.0
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Rasmus Villemoes <rv@rasmusvillemoes.dk>
---
 man3/errno.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/errno.3 b/man3/errno.3
index 6cbbafed5..794be7c7b 100644
--- a/man3/errno.3
+++ b/man3/errno.3
@@ -94,7 +94,7 @@ must have distinct values, with the exception of
 .B EAGAIN
 and
 .BR EWOULDBLOCK ,
-which may be the same.
+which may be the same. On Linux, these two always have the same value.
 .PP
 The error numbers that correspond to each symbolic name
 vary across UNIX systems,
@@ -240,8 +240,9 @@ Connection reset (POSIX.1-2001).
 Resource deadlock avoided (POSIX.1-2001).
 .TP
 .B EDEADLOCK
-Synonym for
+On most platforms, a synonym for
 .BR EDEADLK .
+On some (e.g. Linux mips, powerpc, sparc), it is a separate error code "File locking deadlock error".
 .TP
 .B EDESTADDRREQ
 Destination address required (POSIX.1-2001).
-- 
2.11.0

