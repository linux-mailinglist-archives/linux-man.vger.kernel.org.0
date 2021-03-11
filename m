Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78DDB33805B
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbhCKWeZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbhCKWdz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:55 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54A1FC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:55 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id n11-20020a05600c4f8bb029010e5cf86347so3723355wmq.1
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BtcRSttyb7PEKrP5ov8UPCiUEg4e6dcbYNzcVWGp7W4=;
        b=K4bAh/UZWal6hDCa72JuDJ8mmm+SeNtHr2d1AVXAzyH2CHkMheMY68f8JzQYk0T00F
         c8fyp2VV/SbHE+7VZjHIwVqJBkKy4De6L3t16KG6B6ZFl6UTh1O5RxTsR9zChi/RH4+K
         vS+P8gNCYVbBlRbd+79XXppMWaVSe8VzZarPaGEuAir0GVAfyQ406wwgU5MO5fJyJIT0
         dMMMsyJKlB/ysUqBEjZcPzCfe7wSsbiD/SHAlMLnrA/hideJV+XKzVKIESbZg8RHA7xT
         WF0K0+G/ifFPL2mF2KNtZr7Ojq3Z9lKHLsCQwO4B5BrYfDnR1Povr2ibRNxyAMd1/snf
         A6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BtcRSttyb7PEKrP5ov8UPCiUEg4e6dcbYNzcVWGp7W4=;
        b=MQi8TR3VhzwZolkLg6kGR4TOLk1i7x584jSOjHUfM/ymgBa9r+mg99BMcER59nva06
         RTBJWNA3r47arUXbTJ9bcpzdDCwJsIM9WPnhpjQzaLA3BTORMzjbpNRlOvVPBdlUa2j7
         nPTypjvRztLNXu/B9xwCRg/+g+Q6qXDWaIZ7wLP0kvaI/xO8aVzytkyRqYOQ5HEaEWrL
         nf9rBrYsc2zEOiE4ZhsXTezy97swDef+pW24Rywl0MoRpw3J/1CLGhg9wgQ2XaSHw5Wf
         WO37ei5x1aXyV3xqihbNXJLCP6p28QYe92C9l7Ly7I/nSrnEr/wrNOClk3Zj8vxxFK+K
         09ZA==
X-Gm-Message-State: AOAM533E+8yRC0SrZL7yT9buEl7lHGAdqmGimb+d8pBLx9NjqrW3keIC
        8TiBmKj6rQoXJxXRh3Zadfg=
X-Google-Smtp-Source: ABdhPJyk6TQqujFB7mVaqdnVxDpQmFDYh2/64khgTwoZnY/0zL/vww86U4IbGdxCa+pwLNWmqvj99A==
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr10382013wml.86.1615502034085;
        Thu, 11 Mar 2021 14:33:54 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 15/17] wcstombs.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:28 +0100
Message-Id: <20210311223330.722437-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcstombs().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcstombs
stdlib/stdlib.h:937:
extern size_t wcstombs (char *__restrict __s,
			const wchar_t *__restrict __pwcs, size_t __n)
     __THROW
  __attr_access ((__write_only__, 1, 3)) __attr_access ((__read_only__, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcstombs.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/wcstombs.3 b/man3/wcstombs.3
index 21f2c8274..a42c25ebc 100644
--- a/man3/wcstombs.3
+++ b/man3/wcstombs.3
@@ -20,7 +20,8 @@ wcstombs \- convert a wide-character string to a multibyte string
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "size_t wcstombs(char *" dest ", const wchar_t *" src ", size_t " n );
+.BI "size_t wcstombs(char *restrict " dest ", const wchar_t *restrict " src ,
+.BI "                size_t " n );
 .fi
 .SH DESCRIPTION
 If
-- 
2.30.1

