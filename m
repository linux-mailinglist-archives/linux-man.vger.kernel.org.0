Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEF0B3E399E
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231344AbhHHImO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhHHImN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:13 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CE88C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:54 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id h13so17103412wrp.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WNedCv/IVBa/wyFHGsMPMeWY/HT7FIn7m9ZwZX2IAyM=;
        b=Y5JgFZqE9Y+ZITBeGJaD1MKpBiXUJcC1KYF6KF8yhIWoN+HUbyAHj8aeb2c3jN4BnO
         mdge6BjhYCGk24BmKC0Nnb6r/I1apidrVavDORxZ6NkcNGlIhEyc/OLDxEHXYwTvCm/U
         y+a3XgT3rwGmaacdRh1tsI7inVtmGbQn7OYbnXbLFu5oUdp41hO/4ZXNRnBTthjysme2
         GeLfnJSVIxlRTiRnUX1aZ9Z5RGdRqM7UdfEyL6nI+EpfQCinnpyzNAs6jK0b5Q3IQGrI
         tUcQrQVKK+VCploetCDqLnumZDcnQ5WO8DUbSLuwgNu9dsBruSkxF/zUHFSB9pkjtUxr
         eVRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WNedCv/IVBa/wyFHGsMPMeWY/HT7FIn7m9ZwZX2IAyM=;
        b=WRSjfXDtEmuXtmXXbKTu78cEmPUAPA+LcXrcauiEuQ0VNukwpvVq+bw/OmAOjm2KPK
         He8gd7mtKx+/L519xuXDy8FyNu0gWAi6kZN3tHIVJJTAhoLjBJUYIOUh0J9sSERAnn3M
         am9UDd2pSPc1ChOEIE0HE1SC2cpjZEjT2Gg0l5aWV6WU/WREITYwF5rnxTVP49l5s2nV
         mIeOjSsXOl9E2hmqFR6Uza5qHSXO9CYXhdozmQNw20BSnsgfzclbFWcFHF1fjAyW/DSA
         AEGZnmgIeQKr7frC8MO/dRKr3H2ToUggbzPi+SWqGeoc5BQjYzL/heorG6FsPCul6+B6
         RD6Q==
X-Gm-Message-State: AOAM5337IKJBEvjT2FzXC8KNAY/BX5u7KUoeGb9b/Ortaz7vLhxQl504
        vTDO9DDl0LVy1oNv4j35al0=
X-Google-Smtp-Source: ABdhPJxj7jz1N+IIOavIDUqKsyf0WIQx9AY+05qG5hkOVRJvyCxjepotJApMaOiEYc2R2inphyfV9w==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr19280934wrk.353.1628412113277;
        Sun, 08 Aug 2021 01:41:53 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     "James O. D. Hunt" <jamesodhunt@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 10/23] getopt.3: Further clarification of optstring
Date:   Sun,  8 Aug 2021 10:41:20 +0200
Message-Id: <20210808084133.734274-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: "James O. D. Hunt" <jamesodhunt@gmail.com>

Explain that `optstring` cannot contain a semi-colon (`;`) character.

Also explain that `optstring` can include `+` as an option character,
possibly in addition to that character being used as the first character
in `optstring` to denote `POSIXLY_CORRECT` behaviour.

Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getopt.3 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man3/getopt.3 b/man3/getopt.3
index ce4c28088..315224c64 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -130,7 +130,7 @@ A legitimate option character is any visible one byte
 .BR ascii (7)
 character (for which
 .BR isgraph (3)
-would return nonzero) that is not \(aq\-\(aq or \(aq:\(aq.
+would return nonzero) that is not \(aq\-\(aq, \(aq:\(aq  or \(aq;\(aq.
 If such a
 character is followed by a colon, the option requires an argument, so
 .BR getopt ()
@@ -166,6 +166,14 @@ If the first character of
 .B POSIXLY_CORRECT
 is set, then option processing stops as soon as a nonoption argument is
 encountered.
+If \(aq+\(aq is not the first character of
+.IR optstring ,
+it is treated as a normal option.
+If
+.B POSIXLY_CORRECT
+behaviour is required in this case
+.I optstring
+will contain two \(aq+\(aq symbols.
 If the first character of \fIoptstring\fP is \(aq\-\(aq, then
 each nonoption \fIargv\fP-element is handled as if it were the argument of
 an option with character code 1.  (This is used by programs that were
-- 
2.32.0

