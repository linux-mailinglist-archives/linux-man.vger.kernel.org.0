Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF6338F2DB
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:19:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233510AbhEXSV0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232985AbhEXSVZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:25 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF955C061756
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:56 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so8794388wmq.0
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZzaUAhfFhlIf3CgJrBMJ0WDhU+jXb4jo7IfmLFvTxLo=;
        b=ubtC/zn9+9VbtgXlX0pQUttgbyUOWhf90MqJbG96/1qT6OrZyuKAeOwbnFUaDUlajY
         B0se3Y1wLEPn6nkHwlEBoYTbt4BhTxMe9Y122wFyxBfMQHaM/G8JYI4ofuO5fOYOz6OD
         iq39s9/Na6uC4fynZ+UTE9KpDF2pVtU8Lm/NB4ciArwpNYQYIFS+TOPMDCaEmK4HlUzR
         OZkGcdcDnXuqsV7vidXgRtzhgq+sh7TvkndYTcVgAzN9jFSaviy0Buim57JcDZ16GJGN
         RN4Uy5HUQXUDT8pKKdhBohbBeplxqDPACKcdhxwHwRrGKXNbl/UEl5BfkeFK1RiM27XB
         IQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZzaUAhfFhlIf3CgJrBMJ0WDhU+jXb4jo7IfmLFvTxLo=;
        b=sNSaRQpWWo0ohWSCTAZyNB5hA5W7rKndFnwZAUPVEzMe8rUiQ3y0qIxne11Tg8aHgw
         JCpu85AURwWr7eaNJndcJKzdLhRulj+CqJ27MsdE8kN9OL445uLiXE4jA7Zb+VWVwycS
         Up7NK2C7KLtec6Lnww0SE4kgbUHRBZsICZM8FpobRuPWSrKMOWllR+E4MEDtaedHVaqJ
         qYtr23p3YLbnztZhXnE8VwCvo7nzeon7evflZ/JIZH7tyDrY3lNJWlsM+wEHBQEvWXED
         DHyD8JAOhAoCxyQ9d2fEqZN2s2vnmLJ62LNb/j5M0K2KTQJU2Ktn97Eob8XwKbiTCe6q
         6ITA==
X-Gm-Message-State: AOAM532ju3DK621vq1Sqvfgr7LcnXJA0cdjo+dtGaz0QmPmUw3ZtMS1p
        MoVm31oq924d7j/1jLbFe6g=
X-Google-Smtp-Source: ABdhPJxOyh0hCkax/YbpN56Qe6E9AZW7SSDmgsJjeWm7DL79wFBXorua3FtDm5DIJIEDiUSVFSuelw==
X-Received: by 2002:a1c:4444:: with SMTP id r65mr289459wma.127.1621880395351;
        Mon, 24 May 2021 11:19:55 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 04/10] seccomp.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 24 May 2021 20:19:41 +0200
Message-Id: <20210524181947.459437-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/seccomp.2 | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 1be7d6766..0f3f30767 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -37,13 +37,18 @@ seccomp \- operate on Secure Computing state of the process
 .BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
 .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
 .\"                  need <sys/ptrace.h>
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int seccomp(unsigned int " operation ", unsigned int " flags \
-", void *" args );
+.BI "int syscall(SYS_seccomp, unsigned int " operation ", unsigned int " flags ,
+.BI "            void *" args );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR seccomp (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR seccomp ()
@@ -858,9 +863,6 @@ Tile (since Linux 4.3)
 PA-RISC (since Linux 4.6)
 .\" User mode Linux since Linux 4.6
 .PD
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .\"
 .SS Caveats
 There are various subtleties to consider when applying seccomp filters
-- 
2.31.1

