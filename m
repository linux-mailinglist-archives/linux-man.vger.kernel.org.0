Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57BEC326FC6
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:50:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbhB1AuD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230063AbhB1AuB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:01 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9407C061756
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:20 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id f12so8473744wrx.8
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BBrj+RCRcLoX4M2VeZRIdCDXBU7W6+peH6JqoHXxaCc=;
        b=TkGjhZ5rZpEok7reexIutQypp11GAqVH7ZaO9aM7mO7Dx5Ztx6KocYZ3TQal/poifa
         4x26VTXpxrvefnMgTEk5Axj7WZRmyQ/OL6bfxjvrJqdcUHAuwJNcpjaxCGunhdsUCpsJ
         nSENSKt6XI/Y7p8U32t/xFHvZ+gbuos0fibMPgVTjQHgZaNGelzY8fFsps6h4xkS0266
         2cYvy+f1CK8pArhiSo6AY8FI6TJNqQFlc84pj5/dQ3sBp6ovcOLPJqjYVusm0wZAFmNd
         KMFS054iFNcv3w3yHBSuAIDbDbn3Fv7E1+kFNgdAo4suI8hQQYDoeyqb7AHXDX5ihCG9
         5MnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BBrj+RCRcLoX4M2VeZRIdCDXBU7W6+peH6JqoHXxaCc=;
        b=AaCW8qdoYGyEPSfeha7q5CD4bd2qWoWBsrwwbZE7RzcB8Mjn5GhEw5SazOQvkqckOh
         IZ3JQTfEocKCxOviwA+CxFjKrk3nszk9pmgE6xLveBA1VF3VXL7LoKYUpluHH3kF7kpL
         w/peubzDL5xadt80Lp1YaYvPS6jyhMOfyptUtbB4CBLvKMm5c77ZojQWYRc8htGVdK92
         /JlQxrXknzcCvnuO0S306HH/eVDnj3iH9djrUvAjSoxGeeB/54Jxzfz2uAXPUtAjdrif
         yvi/kfgqtz31PvZNBsgY9QAQHbZZ646aiBV9k1hfXYJqq6/OxNHWV2ZAxef7ji/vOwpv
         4Pig==
X-Gm-Message-State: AOAM532l3oHAcLwQwDShi1VNB/ZOetCGrMMmOTj04i11aSn+8CHMzQm/
        ROaCFaG97r7oOiHzdHU2EsQ=
X-Google-Smtp-Source: ABdhPJySLJJ0kbOLz4vrF1CPBBJ2sm5WaYdrBcYJdAviaFhSZyXRf7THm1rJ0//jFUk5cxRGuR044Q==
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr9637247wrt.127.1614473359455;
        Sat, 27 Feb 2021 16:49:19 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/14] getaddrinfo.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:05 +0100
Message-Id: <20210228004817.122463-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in getaddrinfo().
Let's use it here too.

.../glibc$ grep_glibc_prototype getaddrinfo;
resolv/netdb.h:660:
extern int getaddrinfo (const char *__restrict __name,
			const char *__restrict __service,
			const struct addrinfo *__restrict __req,
			struct addrinfo **__restrict __pai);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getaddrinfo.3 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index db397bdf8..37710c277 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -51,13 +51,14 @@ service translation
 .B #include <sys/socket.h>
 .B #include <netdb.h>
 .PP
-.BI "int getaddrinfo(const char *" "node" ", const char *" "service" ,
-.BI "                const struct addrinfo *" "hints" ,
-.BI "                struct addrinfo **" "res" );
+.BI "int getaddrinfo(const char *restrict " node ,
+.BI "                const char *restrict " service ,
+.BI "                const struct addrinfo *restrict " hints ,
+.BI "                struct addrinfo **restrict " res );
 .PP
-.BI "void freeaddrinfo(struct addrinfo *" "res" );
+.BI "void freeaddrinfo(struct addrinfo *" res );
 .PP
-.BI "const char *gai_strerror(int " "errcode" );
+.BI "const char *gai_strerror(int " errcode );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

