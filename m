Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F4AC326FCF
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbhB1Auu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbhB1Auo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:44 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB020C0617AB
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:26 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id u125so10988427wmg.4
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9XSFnxzlutuzpkVOnmw3fo/iM40tJH68o9e8DCWOKzA=;
        b=JashziLEVZIRmSOQdBH2/oiuuV2ML37aK+QoSXsd86iO7i06GcyFGi+6l5wnJ4a1g5
         eJTRS55D84IVRHZAK2OxBr8cc7BF7Evwna91ciGnVkaLeJeOi7bWK2p1i66eas4woEVk
         6e0SfTS4UOwKqucIyaEJQJEioj5pCCsZPcAxqSK7CtGH0+4YN+osuOecoGJLs6YegEII
         Lgda4Xw0qxcOTiYW+/RVAxGQCoHeRnfUDtB+cLRyDbKFW02+lqv1vJ3IiTWcw9zR6IBb
         enxKU2LluyduFO7xEz8LkCXpjCP7kjG9jaQ04Pv0QLrS9o38NZpk/76fR6fTHYyj4ZFb
         A6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9XSFnxzlutuzpkVOnmw3fo/iM40tJH68o9e8DCWOKzA=;
        b=XhbKEVElWLSvW6RqvmvE4dYhMuSBy+3r+F6BkV1qKwegSbpRXytIEHjl7QHmH1+Iy6
         lEZZQsbOWP+9O948P3av7L9lny2X9ugwyKPB+yHHUbBhJ0uK1Aw2qFNzaOnmvQw8P7ND
         ecJINEs1bBqR/DhySeME1NGNjIwIKmL3TCup7miiIN60tQyjqiOnLm28d3YeQypJAoVk
         Ji7hfCg8wkP2Mez1gOY8Nh396bWKACm83let8YHzA4EI0mk4aKrdSxK22jjL0JGZ4l8A
         XJf3cXM0rtu9bimwTEyE7Fb4bTQoeG2be0+c2vQd1Nc3JUwo0QTG9KSPj/SGhSq8/Nxi
         Mwnw==
X-Gm-Message-State: AOAM532lHFX5MjXHwkcEEVnXCyObmcRusr1NusgoH79I8+2JfHenKbgd
        8Z65VMx+T7Se3darVNt3+P0=
X-Google-Smtp-Source: ABdhPJx4/f/XF8++lBb2UThwIj0gMQQQkKlb46ql758YJHypVmYD/pUen5TaW5o5YRevZSbUzxW/Jw==
X-Received: by 2002:a05:600c:d7:: with SMTP id u23mr8928618wmm.127.1614473365688;
        Sat, 27 Feb 2021 16:49:25 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH 10/14] getnameinfo.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:14 +0100
Message-Id: <20210228004817.122463-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in getnameinfo().
Let's use it here too.

I conciously did an exception with respect to the right margin
of the rendered page.  Instead of having the right margin at 78
as usual (per Branden's recommendation), I let it use col 79
this time, to avoid breaking the prototype in an ugly way.

.../glibc$ grep_glibc_prototype getnameinfo
resolv/netdb.h:675:
extern int getnameinfo (const struct sockaddr *__restrict __sa,
			socklen_t __salen, char *__restrict __host,
			socklen_t __hostlen, char *__restrict __serv,
			socklen_t __servlen, int __flags);
.../glibc$

Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getnameinfo.3 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man3/getnameinfo.3 b/man3/getnameinfo.3
index eff8b2562..d4d3f42e5 100644
--- a/man3/getnameinfo.3
+++ b/man3/getnameinfo.3
@@ -15,9 +15,11 @@ getnameinfo \- address-to-name translation in protocol-independent manner
 .B #include <sys/socket.h>
 .B #include <netdb.h>
 .PP
-.BI "int getnameinfo(const struct sockaddr *" "addr" ", socklen_t " "addrlen" ,
-.BI "                char *" "host" ", socklen_t " "hostlen" ,
-.BI "                char *" "serv" ", socklen_t " "servlen" ", int " "flags" );
+.BI "int getnameinfo(const struct sockaddr *restrict " addr \
+", socklen_t " addrlen ,
+.BI "                char *restrict " host ", socklen_t " hostlen ,
+.BI "                char *restrict " serv ", socklen_t " servlen \
+", int " flags );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

