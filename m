Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E5FF443553
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234999AbhKBSSE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSSD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:03 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A96ADC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:28 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id t30so9823170wra.10
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LHqwcCU9nC2c+CXwZa6RovM2nJjb4TqAb4nv9tjEdR0=;
        b=HfT9VCQ+gk5pFuj+em1bTEObvRbNsx06v1VkKZ00dD3JqmOxUAHq6R0UWglI77+zYa
         HMsSFAtSQf4JL2KJqpPsL0+iesIGSTdIBQDHHRNNQGVamA9edlWgwBQZyausNlcy5Uoo
         03/imexnCoQ7GLngOx56mlI7zDrz816TK6Qn8Q/ecweacvPF5lYO80BHiDjUgGDSl+Da
         39xHZl8ZaKZ1k3WEZj1L7N+XL0z63jPy/MsXQ4fZhFJxetikjblIHsJWRHFvB2KhBxu3
         zqwmYWrZ+AzxpMANJdjk9dL+E9W2efkmRFHjrNBrldr6INNyxki2gmK3i6ECRcTZheF8
         7w0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LHqwcCU9nC2c+CXwZa6RovM2nJjb4TqAb4nv9tjEdR0=;
        b=ODnAakHSV8BcROa5IVKIbzG76upydFETROK0vZ+VVjnIwF8M7Mk9ArQr4lSa8iCfd2
         0qLrVjBpo5H35WFGxN8NQVDC+E5Wz020rhN0J3cyyurQ/7bAoaDc2YZXylSW3xz6Foj0
         zbG/Pb08josxO6K3XhzIQiyAEYQIOdpUP8uBbcNrOPvakMMoR3bzCbu3wAV7gGiwl34k
         l9unEjE7M7a/nV3Nqbio02QZLESNrN+o4vfXQUHRyAlBw2jSTAi2BLWLPMJP5kgCzQkj
         TIueMILCWswhnPFL5wHFbFSNF/ntVhrw/pKnxg+AV3bae1RmS6C/fXxOSQyXhXjhHqqy
         j/QA==
X-Gm-Message-State: AOAM5324NZ4yaUVCl+osjCELdpmmvcjMeMdCfmqzNiETQKxkP11Vmxm8
        eUWAxlvg2bznrVNbRelmPJY=
X-Google-Smtp-Source: ABdhPJyAcv04ECmGOmxP6HwpRLuPn6563lgjNGk0xKpq2LfwDeyboCKPUsgaS91jBK8DMa0EkrYkMQ==
X-Received: by 2002:adf:ee0c:: with SMTP id y12mr46706519wrn.82.1635876927279;
        Tue, 02 Nov 2021 11:15:27 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:26 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 23/37] id_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:40 +0100
Message-Id: <20211102181454.280919-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/id_t.3              | 26 +++++++++++++++++++++++++-
 man7/system_data_types.7 | 23 -----------------------
 2 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/man3/id_t.3 b/man3/id_t.3
index db50c0f09..1fdfd99da 100644
--- a/man3/id_t.3
+++ b/man3/id_t.3
@@ -1 +1,25 @@
-.so man7/system_data_types.7
+.TH ID_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+id_t \- process/user/group identifier
+.SH SYNOPSIS
+.nf
+.B #include <sys/types.h>
+.PP
+.BR typedef " /* ... */ " id_t;
+.fi
+.SH DESCRIPTION
+A type used to hold a general identifier.
+According to POSIX,
+this shall be an integer type that can be used to contain a
+.IR pid_t ,
+.IR uid_t ,
+or
+.IR gid_t .
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH NOTES
+The following header also provides this type:
+.IR <sys/resource.h> .
+.SH SEE ALSO
+.BR getpriority (2),
+.BR waitid (2)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 672528cb4..819f0a2df 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -97,29 +97,6 @@ POSIX.1-2001 and later.
 .BR credentials (7)
 .RE
 .\"------------------------------------- id_t -------------------------/
-.TP
-.I id_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <sys/resource.h> .
-.PP
-A type used to hold a general identifier.
-According to POSIX,
-this shall be an integer type that can be used to contain a
-.IR pid_t ,
-.IR uid_t ,
-or
-.IR gid_t .
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR getpriority (2),
-.BR waitid (2)
-.RE
 .\"------------------------------------- imaxdiv_t --------------------/
 .TP
 .I imaxdiv_t
-- 
2.33.1

