Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AA3A32412D
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235807AbhBXPni (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237424AbhBXOtW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:49:22 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 345B1C0611C3
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:04 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id t15so2110386wrx.13
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VW3zVZshSFpBJG60uGM463FIgci7SpiCEdYBqYjCLWQ=;
        b=VxvD7IbyognHdDI+DzmaBzNo7evpB4fNaspzel3ZTl14n4hmjwxb2qhzcwRsagHOI+
         uz24Ugg6ZpXcfrkdUYZofgBvmJRv0BRvBQDRVxPllzWfaj7yK++kclRQ9wO4fSvo7NQ1
         LSKJ7wPcK5sxVVebqbDZvqnsJw+OtO0qcphLnutlmzyOIqL0BIl2moRtiZe2fKEWL+ir
         pe2OI+vh2gKQ9Jns/8xb8WuStEI5h+Cl3OZMdP/OP2osNiOrqlWF5gytTQuCcl92qG+j
         6MvHXw6jtqOqYwoepbO37XQh1F1mv7h4O5Kist+k76rzGajWzrrrUmWeip8NuOFIh2c3
         PuEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VW3zVZshSFpBJG60uGM463FIgci7SpiCEdYBqYjCLWQ=;
        b=RqA0V0sVO91LdEEEJ7i2K5kIOCoL/H2BcKg+Ct2PsuWFdy8nYl0lwWJTbExuog7ze1
         s2UyCeoiEsNy+K/gLZQ9cXHJG3HSlAah8PqCZTa0REjHfyY08mhPqUbTY9T6T4uxhepT
         kEVbnjWiD3cixV9ocgwZJnXPivmSL4DwHejuuv7ENNh6RPGBCdIEiSsW2hHy71zzdCAa
         RIcyb4bST8NmekUK5Q6v8mWPzaJkoiUfapDZrP6A6ltfzDDOSi4XtLLMLzrlllWmHeWQ
         le4hl9ECJqCA4a4Okdt5c8QSp7aO/trGSpX8hXpKiQZ/DNppRoVZyiv6fMu6jrAlDCSj
         vCCg==
X-Gm-Message-State: AOAM530A6pnk8/z7CA8XGWQ18rxTuFkSO8/w/wf135tqfu1EFq1QkEO3
        PGLWV0sPWLFQsUgyzzSn1uI=
X-Google-Smtp-Source: ABdhPJzXmaAgWO9LjM0lVt6nhhnThRIZOWGMwaMQWkmKo0fWq1Ic8J5DOls3aQJxrfYzjqK6f6sCHQ==
X-Received: by 2002:a5d:658b:: with SMTP id q11mr29538185wru.132.1614177843051;
        Wed, 24 Feb 2021 06:44:03 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:02 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 10/20] drand48_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:01 +0100
Message-Id: <20210224144310.140649-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for some of the functions in this page:

=============================  drand48_r
stdlib/stdlib.h:501:
int drand48_r (struct drand48_data *restrict buffer,
                      double *restrict result) THROW nonnull ((1, 2));
=============================  erand48_r
stdlib/stdlib.h:503:
int erand48_r (unsigned short int xsubi[3],
                      struct drand48_data *restrict buffer,
                      double *restrict result) THROW nonnull ((1, 2));
=============================  lrand48_r
stdlib/stdlib.h:508:
int lrand48_r (struct drand48_data *restrict buffer,
                      long int *restrict result)
     THROW nonnull ((1, 2));
=============================  nrand48_r
stdlib/stdlib.h:511:
int nrand48_r (unsigned short int xsubi[3],
                      struct drand48_data *restrict buffer,
                      long int *restrict result)
     THROW nonnull ((1, 2));
=============================  mrand48_r
stdlib/stdlib.h:517:
int mrand48_r (struct drand48_data *restrict buffer,
                      long int *restrict result)
     THROW nonnull ((1, 2));
=============================  jrand48_r
stdlib/stdlib.h:520:
int jrand48_r (unsigned short int xsubi[3],
                      struct drand48_data *restrict buffer,
                      long int *restrict result)
     THROW nonnull ((1, 2));
=============================  srand48_r
stdlib/stdlib.h:526:
int srand48_r (long int seedval, struct drand48_data *buffer)
     THROW nonnull ((2));
=============================  seed48_r
stdlib/stdlib.h:529:
int seed48_r (unsigned short int seed16v[3],
                     struct drand48_data *buffer) THROW nonnull ((1, 2));
=============================  lcong48_r
stdlib/stdlib.h:532:
int lcong48_r (unsigned short int param[7],
                      struct drand48_data *buffer)
     THROW nonnull ((1, 2));

Let's use it here too.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/drand48_r.3 | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/man3/drand48_r.3 b/man3/drand48_r.3
index b2209c5b8..9203498f4 100644
--- a/man3/drand48_r.3
+++ b/man3/drand48_r.3
@@ -33,21 +33,27 @@ srand48_r, seed48_r, lcong48_r
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int drand48_r(struct drand48_data *" buffer ", double *" result );
+.BI "int drand48_r(struct drand48_data *restrict " buffer ,
+.BI "              double *restrict " result );
 .BI "int erand48_r(unsigned short " xsubi [3] ","
-.BI "              struct drand48_data *"buffer ", double *" result ");"
+.BI "              struct drand48_data *restrict "buffer ,
+.BI "              double *restrict " result ");"
 .PP
-.BI "int lrand48_r(struct drand48_data *" buffer ", long *" result );
+.BI "int lrand48_r(struct drand48_data *restrict " buffer ,
+.BI "              long *restrict " result );
 .BI "int nrand48_r(unsigned short " xsubi[3] ","
-.BI "              struct drand48_data *"buffer ", long *" result ");"
+.BI "              struct drand48_data *restrict "buffer ,
+.BI "              long *restrict " result ");"
 .PP
-.BI "int mrand48_r(struct drand48_data *" buffer ",long *" result ");"
+.BI "int mrand48_r(struct drand48_data *restrict " buffer ,
+.BI "              long *restrict " result ");"
 .BI "int jrand48_r(unsigned short " xsubi[3] ","
-.BI "              struct drand48_data *" buffer ", long *" result ");"
+.BI "              struct drand48_data *restrict " buffer ,
+.BI "              long *restrict " result ");"
 .PP
 .BI "int srand48_r(long int " seedval ", struct drand48_data *" buffer ");"
-.BI "int seed48_r(unsigned short " seed16v[3] ", struct drand48_data *" buffer ");"
-.BI "int lcong48_r(unsigned short " param[7] ", struct drand48_data *" buffer ");"
+.BI "int seed48_r(unsigned short " seed16v[3] ", struct drand48_data *" buffer );
+.BI "int lcong48_r(unsigned short " param[7] ", struct drand48_data *" buffer );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

