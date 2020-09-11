Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3F3326766F
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725856AbgIKXPJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725890AbgIKXOk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:40 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E7FC061796
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:39 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id j2so12937423wrx.7
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BCtQsvezT5kPnKc4AbmN85f4eBFzhOBLaI+Qc7IJQSw=;
        b=n5QA/+QQJxdioLrAbuNlMi4ttjgoGz9cs3uYB2uje381G4CSpasiyFisTfihXVtes9
         9N5zAMfSlE1QS04WEuNsL5Vh8eyN00IP2V9ZWseDCnNOprKkSD3ZyAE9712ABLKz3KTG
         HJVw2RSRuhjwHmQEv2BKrmA0L7fx0AzrNsu475UjzeNUkeGg7Zx3R6HlYjL1e+rCcmN6
         W3I6W3k2XWHLYDxm9S3XU2gPrWQ3gDcE+FQetIPfVR0ORSalvo2+Mmq4TwI0RsUTn0p4
         o6iNOkQn438SL1lbUSycffgv8ro1FQ6+L+k6F/ZAQjv6dczdICRjSIoWPP/Hq0nTKP/M
         wbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BCtQsvezT5kPnKc4AbmN85f4eBFzhOBLaI+Qc7IJQSw=;
        b=GUcTwMoEddT0gga9myPKyHJqPimYXYaK6MjEVpSgyI4nF/CDdfYgs4i1StQBD9DYba
         z0YZEUznh2j3/aZwtDcOe+1sdrRS/Sx9JDVs5lvWD+RWbEIButG84QtaZMeqH68AxScY
         X1AlGAesbwKimP3xW45/K+IOgTVJr5Vo/xMle1557LYTolPpcrobyrGa46HtVYKMkWaG
         N56nDZ1Ak7Oe5AknpILGwuXlyOvKFupq8Pk+x4ybosULtUvVflw3o5w7THZACVBh07Rj
         ygc/nYnaSVkvS6HyjmgAgkntw3hx21KmXFRI1UiJocwPBwUh30qWEKHJbl9t5df2rmPf
         cHQw==
X-Gm-Message-State: AOAM531DA59FsPQsn43Dyv+77CiOx1d93sd+Bpk+8i9O78Rvh+lz+tB0
        xFQhUoY5sMzFlRPtvCAGqqc=
X-Google-Smtp-Source: ABdhPJxmLOnktISt0BK+RG89otU85q5S4lGNn45QNZBCnoU8edZ9OwYI/ctd7OsYJ+DTikWOKq59sA==
X-Received: by 2002:adf:9125:: with SMTP id j34mr4655831wrj.157.1599866078547;
        Fri, 11 Sep 2020 16:14:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:38 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 06/12] rtld-audit.7: Use "%u" rather than "%d" when printing 'unsigned int' values
Date:   Sat, 12 Sep 2020 01:14:06 +0200
Message-Id: <20200911231411.28406-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/rtld-audit.7 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index f90731261..b1b7dfebc 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -508,7 +508,7 @@ This is reportedly fixed in glibc 2.10.
 unsigned int
 la_version(unsigned int version)
 {
-    printf("la_version(): %d\en", version);
+    printf("la_version(): %u\en", version);
 
     return version;
 }
@@ -572,7 +572,7 @@ la_symbind32(Elf32_Sym *sym, unsigned int ndx, uintptr_t *refcook,
 {
     printf("la_symbind32(): symname = %s; sym\->st_value = %p\en",
             symname, sym\->st_value);
-    printf("        ndx = %d; flags = %#x", ndx, *flags);
+    printf("        ndx = %u; flags = %#x", ndx, *flags);
     printf("; refcook = %p; defcook = %p\en", refcook, defcook);
 
     return sym\->st_value;
@@ -584,7 +584,7 @@ la_symbind64(Elf64_Sym *sym, unsigned int ndx, uintptr_t *refcook,
 {
     printf("la_symbind64(): symname = %s; sym\->st_value = %p\en",
             symname, sym\->st_value);
-    printf("        ndx = %d; flags = %#x", ndx, *flags);
+    printf("        ndx = %u; flags = %#x", ndx, *flags);
     printf("; refcook = %p; defcook = %p\en", refcook, defcook);
 
     return sym\->st_value;
-- 
2.28.0

