Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA3EE3537F1
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230424AbhDDL7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbhDDL7v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:51 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED262C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:46 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id j20-20020a05600c1914b029010f31e15a7fso6344603wmq.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fwhwr6f7qb06ZDUqOxxmDfgFb3kytZmjcBLKXopOTrs=;
        b=Y+wsm87kF2x5dlWkMF5PYsKEqZ041wM1YsOC337kOHzaQXbdagIyI13NmcaY4rp2aK
         JSjm6H5TbKWLvlqOaAYhssme+u9o2qwAlHEOXEkqumTWSK2qXcqo6OoWUeqjaPp0c+9N
         E8cMxrIJg4ZsDd6aIihYbNdxfkAYZ/YenrOuZYvs0GgdPdfz6DbTsqb3YN4x1b6sJXNB
         T8PucOAGgX2WIDwGJz2PwA6RI0QC0Zg8dWdS6kRgOf5mBIyV9QmtnLRclP1u4frGwQoB
         N8JcHxHIF6Gei8b4qdCZbibg6tG/1J/bo0kl+Y9cxYkR0psxHav1NB5btpB63WU/hi/D
         hXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fwhwr6f7qb06ZDUqOxxmDfgFb3kytZmjcBLKXopOTrs=;
        b=HnTE5a6ZjdFVztUz66D1HdHvvzLWw2MyvfEbbNwlPPVhWOps9xiI39mDbVJ3y4mJ+S
         yV+n6cVl8kWntqo7klQtvsxAMPx70ug645CjIIl4p5rvhP08OL2v516NcGNZg35Vw91G
         ORqWG4FNQZXnJFOTIw9i2/++w8NgW4D/mk5B7srcrG0aPCcMHsp7gCDnt+56uce9WCVb
         Ca2YJxpou33gLc2c83bIOYpsdrdoVIZJyflhmgogzpEjp/r+vDokVQ8wkA67vw3yIqhc
         iiIc2+kYO8zjzuP867uyjcCzsGudFS2ulZWaj1N5ED/feOKIJFKkejIuyr9sEu1y2+UD
         NNyQ==
X-Gm-Message-State: AOAM533LHzLGtCwQhossen5H9vqVMPSxp1P6dTryq5lmLjw1nBtxfSXQ
        oHoGpBXB1sEPZT5MNFGFkOs9cEsKumY=
X-Google-Smtp-Source: ABdhPJzvEFZDWYgSNQUpGev3ogVMk1MTmtLnUNszMvBrDWoTuIZgJZ+2figrGKrLZ3jNDNUJleuT4g==
X-Received: by 2002:a05:600c:4fd0:: with SMTP id o16mr20839741wmq.123.1617537585586;
        Sun, 04 Apr 2021 04:59:45 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:45 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 18/35] fcntl.2: Remove unused include
Date:   Sun,  4 Apr 2021 13:58:31 +0200
Message-Id: <20210404115847.78166-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I couldn't find a reason for including <unistd.h>.  All the macros
used by fcntl() are defined in <fcntl.h>.  For comparison, FreeBSD
and OpenBSD don't specify <unistd.h> in their manual pages.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/fcntl.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/fcntl.2 b/man2/fcntl.2
index de87eec1f..7b5604e3a 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -69,7 +69,6 @@
 fcntl \- manipulate file descriptor
 .SH SYNOPSIS
 .nf
-.B #include <unistd.h>
 .B #include <fcntl.h>
 .PP
 .BI "int fcntl(int " fd ", int " cmd ", ... /* " arg " */ );"
-- 
2.31.0

