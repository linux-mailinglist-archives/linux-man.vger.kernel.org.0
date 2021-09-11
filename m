Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B9CF407952
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233007AbhIKQDA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232635AbhIKQC7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:59 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CE95C061756
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:46 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id e26so3375277wmk.2
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gZCqZeCb+THXMpSfCt86hGrfsCi1yMx0GhHufG56KSk=;
        b=obUVJEe4W+AxjZsGBq69i1mK66d+F0qtduLNkmZDZufbdK5tBoO+KGDQ0oxU/EGVka
         YYOOAzBP064BYlYHeYywedvrTlMoeza4ZWOxNKekqEJl+HQNJNTdyKKhVaE7pYDeqkAe
         Bjy+3HCypEumvtWtcU8YaCqmyjzf/3PWn3Y4vwb71ljckDQ+4OiRd/px8BbZrf4Ua9A/
         UIOlD9l9fg0ChM4nUC+VB0dvf4GlGkpp50kC+0R4ZsDrtD/nfBqNu0rd4Ep40t/Ag3pf
         fHC0wsoejNoAhq9rhz2upnhJYuSeBrWjxu3K/UK8gwaj/7+YxBr4Z2O2cs+QLG0aDltY
         Y0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gZCqZeCb+THXMpSfCt86hGrfsCi1yMx0GhHufG56KSk=;
        b=k9dMVnArQkCuGeCb6EN8b6g2MZKA3djLmiwW+Hl7ldyhcPaAzLEgcza8oF5o5C9hDn
         9uCrB/9BUmZVmD80WauM/odCp0d4bwc4Tun7MbtgbzZbWGISUFAeulHqFiSXQXpNh8Sy
         qDcMkViZ+3RZSirtO5wv40Q2NOZC5L8+Cf/sTxPodhV7x7Am6yM1kvtDP1Xc8JiP5Wwc
         SzRei9yrjT189sBoWbwgdW1D+j6hXtlBt8efGAWPtWk6RfaBUuYXtlGGo7q+yXOoO7cw
         uEJv5rmj7ruDEnGFD1E4vzJOUGGq/dO+rAGKnijiLEPyxZm2V26ewMlQuRRC450zajrp
         KLdw==
X-Gm-Message-State: AOAM531Ab9yDBgsidvuXMjr5lGyyFqikQ3TU2xGyykdoJe0C4sF3FGQL
        6Gfe0QCLR3D7R8B8mCW6Zoo=
X-Google-Smtp-Source: ABdhPJyxNbi0m4oydDLEl0th16D8AzRoasRnRDHnc5sugy/IZtri/MTtWbFsjufQbXDu9O0e0Pp3sA==
X-Received: by 2002:a1c:7e8a:: with SMTP id z132mr3114749wmc.75.1631376105025;
        Sat, 11 Sep 2021 09:01:45 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 19/45] tkill.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:52 +0200
Message-Id: <20210911160117.552617-20-alx.manpages@gmail.com>
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
 man2/tkill.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/tkill.2 b/man2/tkill.2
index 6e1afcd36..72fb429dc 100644
--- a/man2/tkill.2
+++ b/man2/tkill.2
@@ -29,6 +29,9 @@
 .TH TKILL 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 tkill, tgkill \- send a signal to a thread
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <signal.h>" "           /* Definition of " SIG* " constants */"
-- 
2.33.0

