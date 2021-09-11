Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B96E407953
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233055AbhIKQDA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233007AbhIKQC4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:56 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7AC2C061757
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:43 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id w29so6597126wra.8
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3g/qNYB/ovhkuKc92KZPnWejFkkEpZP30IaPwR+MtBc=;
        b=pEf9qT74rNeX+OVT+LQRXRKp1kTYG4V700gHEZF0GSAx1kGi3ozVbE1UpyvT7Im/lE
         UtYr3/yWPNUIrvCjL0CvqsbjBh9rc6JNJ3vqV5JY4b+6WZeZ/ppfKj9XvmR6yVr7YQa6
         uApPxvuVHXrPS2cqdGu+MLN/jGlu8VOFDh3i/3BKKvHIWvYDyCLqKR9RW8IIK0sJDCwV
         2AGlq1PB+DANYmAyiO6LNq8Dvms/QhmqSNaGRlFoX8z9WAI0pKMfH0IlkNF5SeGDt73n
         rGGYchJMRAarIHleRfFnMnsYVLjtIMHet94S76Dzy7yf2GtNg5KhltEbcxL+lAaVymYM
         msLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3g/qNYB/ovhkuKc92KZPnWejFkkEpZP30IaPwR+MtBc=;
        b=O05FIN0VP0Kl/p1RzNf8bx57BK+vhiXoXY3Y97uoD0gHXbKKlmruxyZT10yz/dHmx5
         wKo14sKFHstkATm+NNVA6jVh2YuIRG4MqzDXndJOrTEPGm7UT1DcTSAWSepA4ExlBcOt
         Hoz1jrrYVZyYGlzQrTe32Oh10YVuuUNy5nya0D1C/W/Xp5AYbLSqieR7YGAyVw1RDXS3
         jNc8n9uK+F+GRQFvuzDUG7xCd55xlblKsfKN7HHKFxXaPAYDnwKCvWF2dG3EKDl+cZq8
         Ebw5p5tD/T+iP1NIeGX5rWkV4RA/+k0Cl3TVd/9n2fYLK41yYQVBDsZkhgl9jBLkOwcA
         +hYw==
X-Gm-Message-State: AOAM532SGTfDdJNWx0JtmNr2cn5uss1n6J7g5F7OFcwX9NZwC4ruluMX
        OgTNX6HRjaY8MrMAL/Vb/HGNQzuEoms=
X-Google-Smtp-Source: ABdhPJzlwE0lzAWsLMx3OdPc/z7AchvTNrhIM4p9fgwSqTXA4H8p/29wgGInVvlyLBVnAIsRfiPODQ==
X-Received: by 2002:adf:9d4c:: with SMTP id o12mr3638348wre.187.1631376102481;
        Sat, 11 Sep 2021 09:01:42 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:42 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 16/45] unshare.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:49 +0200
Message-Id: <20210911160117.552617-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/unshare.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/unshare.2 b/man2/unshare.2
index 851c2b20e..7eee0050d 100644
--- a/man2/unshare.2
+++ b/man2/unshare.2
@@ -20,6 +20,9 @@
 .TH UNSHARE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 unshare \- disassociate parts of the process execution context
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #define _GNU_SOURCE
-- 
2.33.0

