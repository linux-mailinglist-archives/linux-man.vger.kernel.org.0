Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D14B13B7A28
	for <lists+linux-man@lfdr.de>; Tue, 29 Jun 2021 23:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235094AbhF2V7c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Jun 2021 17:59:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235240AbhF2V7c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Jun 2021 17:59:32 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E091C061766
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 14:57:04 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id cs1-20020a17090af501b0290170856e1a8aso2888905pjb.3
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 14:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ndGQsXax8xSAIxrif/4+6DM5Xr82K+8x5vGB9i76dKM=;
        b=hNfsR6fOcsd4Pd5VFOju6zl5n6YAjW3p4d9FiwWe01xa38spNvlPh0rgiNGdLgl/sx
         gTFuOyUrzb/iHFwcsrk1U3mje5S7/uhHVEQZQetbaCRpTC/f9FJXeozzaTD7tVX6zofL
         MpO2DUu7NTbI+/YHVSWsaj0/pKopQT3mSp7WNcmPREM7Sy4ONFefxmoXsiUkdnMF2tCB
         FAPEWSytJu/RzinBx1TkrUsEeR6phYXN4F6SvaGFxDB5z7Vc5zD8lLIc7uilEhFgas8p
         s4OEXRCME3+tYBMgD/t4tDK+osuDlmyQYMWaL8sd+z+4ePZXlFIqo43CQusMN1weKfv3
         S6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ndGQsXax8xSAIxrif/4+6DM5Xr82K+8x5vGB9i76dKM=;
        b=DPQbFWyh/Qow9KLm2EK/Fdpyb05nZdP7ZLg8TSNleyWGz8Kfi/PaZQwFxtGWmKuQVc
         k8aHuYLKM9a3e7VZbcRWdgjuG7kmd577y40zZ1LpWr/y383PaOmKaplkhsIcwrzvhTXw
         trjJgou1cALaV47KDCqTPmeC1SXePuir0g2BbNleaUzYcBqcRvdT6sOLB+aGpjP0HziW
         CWwh3DiuL35AAq4CCkAwTnSYIdth9jPfTPANs1Ovd241iTJCcDGEhrehl8FFYH5uh2Gc
         hZkSa2Gy/kOL3c6lTg9ICajmX7OQDYJhq8jkUocQ/hP0lJ6t8hHLZVRVEDSGswHqml9d
         k4OA==
X-Gm-Message-State: AOAM5319lCOB6pWnZAcouNda0EM7GocKANPEpfKFs5+s9SeNgwbj7pNv
        NBAN5UV5uonC+3HP/2lYz2aqmHbJRjPw2kkh
X-Google-Smtp-Source: ABdhPJwv+dw97hppZdP8g0pPwymx1nUQ7b/3LdmHw2A+msrQ7m0l68u/pMQ3cbjovBGQBmghs0X7Uw==
X-Received: by 2002:a17:90b:1bc6:: with SMTP id oa6mr963663pjb.151.1625003823928;
        Tue, 29 Jun 2021 14:57:03 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id u23sm21885898pgk.38.2021.06.29.14.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 14:57:03 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH 3/3] capabilities.7, user_namespaces.7: describe CAP_SETFCAP
Date:   Tue, 29 Jun 2021 14:57:00 -0700
Message-Id: <20210629215700.137856-3-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210629215700.137856-1-kolyshkin@gmail.com>
References: <20210629215700.137856-1-kolyshkin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man7/capabilities.7    | 6 ++++++
 man7/user_namespaces.7 | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 9f8f0087f..2f9c9a61e 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -349,6 +349,12 @@ write a group ID mapping in a user namespace (see
 .TP
 .BR CAP_SETFCAP " (since Linux 2.6.24)"
 Set arbitrary capabilities on a file.
+.IP
+.\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
+Since Linux 5.12, this capability is
+also needed to map uid 0 (as in
+.BR unshare\ -Ur ,
+.RB see unshare (1).
 .TP
 .B CAP_SETPCAP
 If file capabilities are supported (i.e., since Linux 2.6.24):
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 518e7a3bb..3378b6057 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -577,6 +577,12 @@ or be in the parent user namespace of the process
 The mapped user IDs (group IDs) must in turn have a mapping
 in the parent user namespace.
 .IP 4.
+.\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
+If a writing process is root (i.e. UID 0) trying to map host user ID 0,
+it must have
+.B CAP_SETFCAP
+capability (since Linux 5.12).
+.IP 5.
 One of the following two cases applies:
 .RS
 .IP * 3
-- 
2.31.1

