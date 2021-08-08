Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 698A33E399F
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231354AbhHHImQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231348AbhHHImP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:15 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91584C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:55 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id m12so17091032wru.12
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jjLP7atLpW2YBKUeGjkG0jX7NVe46mN5fhZfKHQo+wI=;
        b=kAfYIh4/0CeXphbVo1O4FEcIkB+EBkXcU5PBoObxXP7XDAXeVqMAgxBgja/4YNFNtq
         koA//v+u5qF579qc4gsDuD6xePyj1PcbPo5Kf8MjHRwJqXTNyO36P3Ts0VF1f7A8P5hD
         N4zyVom2drbYUV4IySF6T1xn+U9tiaDiwLkBemb+s24o7Gw6rmjs0oHN476JUqIdBvAT
         tlsVwxCLGNs4Snh/46R7PCIUwV/y4YTVjqKDVKpc41C+DRBhfRZ7HifX3nukcv1tavt1
         CO8wY6ANr3E9dvJ3ce1yELiEdCtO7TH8GoqRFixu3vhG2F9Ph3ziyY0ByUHO44ez4421
         bLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jjLP7atLpW2YBKUeGjkG0jX7NVe46mN5fhZfKHQo+wI=;
        b=mvcQIeY5W1ayvLUmJHgdI8WKRtIisMfpZfmFg3a5a/p7MkzCQLz3szobnBAsz1lKpH
         utgHgJXwolmgSCKHQYoivGPWQ+9af7hd7rXGlhP2vP3ljU9pni9aUe1ukgqY9bewvLtH
         1gZ8cdUQt1yQU+NRsWLI3DckPE2SVbCUAKD5CL5rL6KH+YcNySXBN2I9jSYqNtiT6Eyd
         DSxueFNsBsZYNCcYSsqhsnYU9iSIau6wI3bNJlPxj1L8lb77KVlNIidpxKVai+hFY+Na
         XWJQEOh4zYR4TkxR+ak+Ru4GHBgOFf3OaX3RQwgXMJTU637rhm7dhxwA+pcDtGTyaJ+i
         cIag==
X-Gm-Message-State: AOAM533L62gqQaPi92dd6YHMaAelF5FwhO1kw1gPpfTTNaz9g2Ql4r+w
        rKNEKhJNPU+NncxpiWABga7tKRJxqK0=
X-Google-Smtp-Source: ABdhPJztxb1K+Le2hZ+q6rjeFytnjQm5EPSSQ/jwEMzpfSQA6X/oJNSozYljynXS2NQMLsatjr4G+g==
X-Received: by 2002:a5d:5985:: with SMTP id n5mr2425914wri.394.1628412114251;
        Sun, 08 Aug 2021 01:41:54 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "James O . D . Hunt" <jamesodhunt@gmail.com>
Subject: [PATCH 11/23] getopt.3: Minor tweak to James's patch
Date:   Sun,  8 Aug 2021 10:41:21 +0200
Message-Id: <20210808084133.734274-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: James O. D. Hunt <jamesodhunt@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getopt.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getopt.3 b/man3/getopt.3
index 315224c64..f5970075d 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -130,7 +130,7 @@ A legitimate option character is any visible one byte
 .BR ascii (7)
 character (for which
 .BR isgraph (3)
-would return nonzero) that is not \(aq\-\(aq, \(aq:\(aq  or \(aq;\(aq.
+would return nonzero) that is not \(aq\-\(aq, \(aq:\(aq, or \(aq;\(aq.
 If such a
 character is followed by a colon, the option requires an argument, so
 .BR getopt ()
-- 
2.32.0

