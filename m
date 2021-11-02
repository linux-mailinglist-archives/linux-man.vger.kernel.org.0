Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 128FC443544
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231848AbhKBSRn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233509AbhKBSRm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:42 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54781C061203
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:07 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 71so27799wma.4
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CKXAD3buYMEOdXd9k7hkrO7cqLDlGaHgaCL7tDli7xc=;
        b=MmbOSxw6egAPYpFA8LG/1zrQKar1z2UidrlfXoLx26A0+64x8GYWc88fKPlfKd1/BD
         dHnneosBIRcHJh6f0Od0MqablrJsbqxE4QjF5GFfFDK+1HFi8hbswSdFgdzjzw9YkBVS
         eRGY9axKZKO257wtgQEqVCCkMD154QrjqfTopJggqenAwoWxWJVG2DSa9enYrOyJyyXc
         56zfE/pYTRjjcMX3+otSxR1RkFHlOaUNP+U/hmiYw70sknTjUTtIrUbQ3mHeLChM7ruo
         fGUTrARdqyZojrds2N9SE6BXifeqXu0H1DvpuGhk8hiuqZ3J6DRQFRnVPF5TlMH/jVPz
         hLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CKXAD3buYMEOdXd9k7hkrO7cqLDlGaHgaCL7tDli7xc=;
        b=AVY0XXZo6hR4VM3RfpchyNWm6Rhgs5Oqv5zXUeFNW230X1PfSrPjNUFGX8bke6q+y1
         tQORdM9JjYS2Fax7DSAcEU0jnKu+YLAPzo1Mo+6jbHzVoyZTgybAUGkInxiSIB+gey/S
         x+AcJIKC9tiRI5S9zxbQEiEu4x/JIxYSvg9JsxJDTXOEf+KGbSKpx1BXGvaAfJO3ocME
         /p81t0GMcShni3TZHjOjolRGYhzrZPYmR++E06tF1x0acHOW10W1RSSVwHIgs7v8zuzc
         cmTljHvI51n2oZ36D6I55QFo/bwaejgMHj3D5pWFUrZTANcvlbuNg8lkGRH5N8+D8PD5
         lMVA==
X-Gm-Message-State: AOAM531iNu4cAyp4/AgUAZgtpU4QpwzwvyYtDLUW4f7KTMUXiWBGyFPh
        KcpHZa3h2geareryOkSox7g=
X-Google-Smtp-Source: ABdhPJzVnUX4k+636xGMmGaqhz9txyzkqTfuc36VwcAxSUZcm8nsY0TcoI5yLqVpLo7YVAWOE9JiIw==
X-Received: by 2002:a1c:f316:: with SMTP id q22mr8933608wmq.55.1635876905938;
        Tue, 02 Nov 2021 11:15:05 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 08/37] usleep.3: Remove incorrect portability note
Date:   Tue,  2 Nov 2021 19:14:25 +0100
Message-Id: <20211102181454.280919-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

That note against using useconds_t if portability is important was
probably true before POSIX, but since POSIX specifies the type in
<sys/types.h>, as recently documented in useconds_t(3), the type
should be fine to use portably.  Moreover, using it helps document
the code, so we better completely remove that warning.

Add a SEE ALSO entry for useconds_t(3).

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/usleep.3 | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/man3/usleep.3 b/man3/usleep.3
index 358d6d36e..d6dc4ecc0 100644
--- a/man3/usleep.3
+++ b/man3/usleep.3
@@ -115,24 +115,6 @@ Only the
 .B EINVAL
 error return is documented by SUSv2 and POSIX.1-2001.
 .SH NOTES
-The type
-.I useconds_t
-is an unsigned integer type capable of holding integers
-in the range [0,1000000].
-Programs will be more portable
-if they never mention this type explicitly.
-Use
-.PP
-.in +4n
-.EX
-#include <unistd.h>
-\&...
-    unsigned int usecs;
-\&...
-    usleep(usecs);
-.EE
-.in
-.PP
 The interaction of this function with the
 .B SIGALRM
 signal, and with other timer functions such as
@@ -155,4 +137,5 @@ is unspecified.
 .BR setitimer (2),
 .BR sleep (3),
 .BR ualarm (3),
+.BR useconds_t (3),
 .BR time (7)
-- 
2.33.1

