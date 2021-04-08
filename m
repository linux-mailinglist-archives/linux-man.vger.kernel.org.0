Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18576357E8F
	for <lists+linux-man@lfdr.de>; Thu,  8 Apr 2021 11:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbhDHJAP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Apr 2021 05:00:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbhDHJAP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Apr 2021 05:00:15 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB8C3C061760
        for <linux-man@vger.kernel.org>; Thu,  8 Apr 2021 01:59:57 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id 12so1252920wrz.7
        for <linux-man@vger.kernel.org>; Thu, 08 Apr 2021 01:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c4ojmZ/VMC9uIsO52E/YO5aDC4muAKuI+/aR6g2b2h4=;
        b=CktRDVQDZU+hZk63oP83tCePpKQSNbNeknnuC3BZOlLDjBjKJ5Vz/ReMZYi3afjQrZ
         AHKSyFTOpQ9Y3EBcT4hqt7Jpgb5/RaS8Lf5pd6HB0IR3XTlAtUw1DzOVFBQ40fuBammR
         zom7RSH/uxF1dbt5MxZNiAnYO6RsiiBEZBerjln+5n6sdXDXIx+UGHJwZ1/ipjSO1vwY
         lGcjBiRjo80XmguuB3xd7qMX4ZQ8NgQSaEwxncXeKFmW1xMlSVSnjQeukmubsR60GXal
         jxn3YF9rUOda3eeo1UEHK9PW8sIsrAjEFhZP5b+LdZ0aCen0JjLurcfC0rHGqPWqfxHx
         8r9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c4ojmZ/VMC9uIsO52E/YO5aDC4muAKuI+/aR6g2b2h4=;
        b=beLttI82d1uVa6OfWlrsuFKJ/cXOcudRUx+XfYxWWtdOauHoB3DXFk+3oWu1SrN+M3
         XB+eI8nGuFY38hqzay2GQFfqomBKDf9Uk/gJAI6Ki1nb+ek6JzVPcJjdApUFzWUKfTOO
         /sq3roCINA7uT3PPM/iqxXeOvWzutJyLlxt/GbqE2q4lGMi5x7E2adW6u2epV7xVxWUr
         P7LRAHIs79jYr97ypAIPBgCSFClMLZg7osUovBmhpHN9wQ4AN62AfvaXaI0Y6gjzZneT
         3BedqHqLj5XFLDEgoQiLiB1aQbl2EmF4CbB5fO4TcxEBkzMQWVmQgoPB4j3lnc+AiZk4
         zidg==
X-Gm-Message-State: AOAM530rxP4RGw1nmC6/pAMqbeIXxDKxt3+NgVfPLCz9xCRlzOg1JzBc
        U5iNQbFXW5vpwDXQuYDuQUs=
X-Google-Smtp-Source: ABdhPJyC9qg/hLgRDmUch66RRMzkB2h7+DBK6cn+gEcchfqaYaCbQgDvJZ3UN2wgyu+n2f9sOl2Hhw==
X-Received: by 2002:a05:6000:1868:: with SMTP id d8mr9887565wri.301.1617872396746;
        Thu, 08 Apr 2021 01:59:56 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f2sm13071875wmp.20.2021.04.08.01.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 01:59:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v6 3/3] .gitignore: Add file
Date:   Thu,  8 Apr 2021 10:57:15 +0200
Message-Id: <20210408085713.7093-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210406111448.20392-1-alx.manpages@gmail.com>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ignore everything new by default.

This avoids adding to git unwanted temporary files.

Cc: Debian man-pages <manpages@packages.debian.org>
Cc: Dr. Tobias Quathamer <toddy@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 .gitignore | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 000000000..866012df4
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,13 @@
+# Ignore everything new by default
+/*
+
+# Ignore everything in man?/ that doesn't follow conventions (e.g., tmp files)
+!/man?
+/man?/**
+!/man?/**.?
+
+# These files change name in each release
+!/man-pages*.Announce
+!/man-pages*.lsm
+
+!/scripts
-- 
2.31.0

