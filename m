Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B5C238D1EE
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230150AbhEUX13 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230146AbhEUX13 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:29 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8AAAC0613CE
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:04 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id i17so22485087wrq.11
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oF1TEvbD66/8tVHjsVVnvpp05Ez5xIjETe7glax1kt4=;
        b=tCgnxZyx+EmGObZiLohX/TXDJonD5e1NEHGULGcfyi6YtI/CdWEpX5J0/RjBwZbJc3
         sOA/KvtceA7ngX0oU0cfDEvtXoLyCq/2RrPVCVXwcpUOS/0BwjDyd7KaTSeqZRFtS38V
         77cjjiS3ROOdLCiRY/DxffH7yVoWSloK3cR5NstV9Crlg3ixB26N4UJlJokNo7giyB5Y
         7vhYfobPX2sSCshcqeL76uX7k3qJxF5hXpCLz1tgXeOgh5ehSog5Z4ejYnMLuZIhThnp
         P1ywChBoWKf/hB5yF8lOB5AdmXgu/M33xxxizoDSBPgJISp4v1U7ariWoVcbE0wtvHfA
         eg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oF1TEvbD66/8tVHjsVVnvpp05Ez5xIjETe7glax1kt4=;
        b=Ify3fU/X57m2z8IYWvdonrzLS82OQl4a/99CEfVNUka7bF8V/1rwZEZTC32PuTchsT
         A8CXiP5vg7bsgbX0N1G/pGJXdoJuEsqS9ibJ1JJGCBeiVLVcQuqsrc97snp/0as7QQ35
         6Ycr7ORGOLon4bxdxP4s98Z4wpvSlECiDOazmDsCNcVvMMmjzm2bRcAZPF2UBb+oK9G1
         O4VN/ACBEBdpsHL9BtTdcC8XkLDZHpE30QNhqAeKwpBA0ELn0lYcfcVH2oqYpcnpdz7r
         vm2gmoKhZIqrtBWiof9DoetdocurJHGRsFQxsWC+WGuE8U3K1VnytTFyCmCNGEOSAo4Y
         83Ow==
X-Gm-Message-State: AOAM532XZhlXtZdtZnyij5wyC/dJ8P/QEDpj3FcYlrsxorehaHUjnzwq
        20pk3gSR6LFYsSVEUhcACHk=
X-Google-Smtp-Source: ABdhPJzOdjINDq9I5YzbN9ojXiXdKbFPYKzIYPe6lIaa8lYq9G2f67AekzVmTeNEAbX21zY+TRSE6g==
X-Received: by 2002:a05:6000:52:: with SMTP id k18mr11597861wrx.419.1621639563397;
        Fri, 21 May 2021 16:26:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:26:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 08/10] shmop.2: Remove unused include
Date:   Sat, 22 May 2021 01:25:51 +0200
Message-Id: <20210521232553.161080-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-1-alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/shmop.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/shmop.2 b/man2/shmop.2
index c7e66af0e..52baed96c 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -42,7 +42,6 @@
 shmat, shmdt \- System V shared memory operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/shm.h>
 .PP
 .BI "void *shmat(int " shmid ", const void *" shmaddr ", int " shmflg );
-- 
2.31.1

