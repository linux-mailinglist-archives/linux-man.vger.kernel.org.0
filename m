Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 182E6275882
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 15:17:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726332AbgIWNRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 09:17:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbgIWNRv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 09:17:51 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BC7AC0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:17:51 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id t10so3316wrv.1
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yyr2Pc6kNbQLnr+wIQx9p2700xUWismiUXJ++yaes3s=;
        b=X3XnbDRLYO/p+rNqd+GoCquYr0bqpQmu7bOWeJU+9Ofbe5CjpeAd/Dj4biTUw7NkGS
         3Ce1s9yknIXcCKZbXj9BZSbTzFAfqOyegaEciL5YGaj5MIsOMcwz++tHinfJ1iK9ARQ+
         2liahSVo3no9ZFoXGBNwmZCleJbyc+XoHci9h6t9t95LCDPhRhpRQXDH9GGjlcKgdei7
         3ujcF19xMapUGsXzVjSTEO0CooLRZPQGnFHZjAYqjOgEiV7et6Ezq1lPKROG4cRJDnX+
         0TsruxbFJAOw6fMYET1euyB/m/g+olOjISqEB4eOl1Wd6+FuZaE7+JGG/fBnWJzQRtPr
         AkuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yyr2Pc6kNbQLnr+wIQx9p2700xUWismiUXJ++yaes3s=;
        b=iS3ylntSWBAlsxb7+ziRdY9vQTRxJWUytyxLxbZAQryVlrwWLxdXTjosudQe0YOtDL
         Rf7m9yskV/xoWU3ov7fQVG/NYuP0BerQmqbQV6pOaVE6+5DNRh4V58KIkxw8nMFAWJcp
         deJLcxHg1vgyWmVyMl69DpEO5bE4YA4iWdudJx2TDBd5hKeugo1Y0Pg2ETnJn/sS61QI
         LjrfMcNR+CWtGt1vLy6zM5FWBqoiaknBeRTJhtHH6AFHkomZFkz2+4UVPi1TgTXyBKe7
         egg3/icWpQmVKHKY/uKQiVeC5t2gOix/7pNaXUzR/cJipTKNZSWAXi9X+1hOskHHizvH
         pwzQ==
X-Gm-Message-State: AOAM530wCCvTGgdZv9LVpGUGj+cRIbQVPpF/yjdScnIs1r4USDJhb6wM
        cCL6wO5BFjb0ij9HaVVw1z8=
X-Google-Smtp-Source: ABdhPJzJz5tAKI0RLt7BNa1n2+j+GNNKJLwfFfvT0jklxav6Wx8Sm3bPBEST5u5AZNJV4XqY8IHFkg==
X-Received: by 2002:adf:ec92:: with SMTP id z18mr883185wrn.53.1600867069995;
        Wed, 23 Sep 2020 06:17:49 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id a15sm32441361wrn.3.2020.09.23.06.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2020 06:17:49 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2 1/2] system_data_types.7: Add 'fexcept_t'
Date:   Wed, 23 Sep 2020 15:17:06 +0200
Message-Id: <20200923131706.21393-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922153822.33728-2-colomar.6.4.3@gmail.com>
References: <20200922153822.33728-2-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

On 2020-09-23 10:36, Michael Kerrisk (man-pages) wrote:
> [Thorsten, I have removed you from the CC because I get persistent
> bounce messages whenever I send you mail. Hopefully you see this reply
> via the list.]

Me too :(

> While I'm pretty sure they would allow this without problem, I'm
> wondering if it's worth the effort. Ideally, we'd have text written by
> someone in their own words. Reproducing the text of the standard has
> limited value, since people can in any case consult the standard
> directly.
> 
> Alex, how about we just go much simpler, saying something like:
> 
> [[
> This type represents floating-point status flags; for further details
> see fenv(3).
> ]]

Nice and simple.

Thanks,

Alex

 man7/system_data_types.7 | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 4352d6a6e..ea3e25175 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -110,7 +110,22 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR fenv (3)
-.\"------------------------------------- gid_t ----------------------/
+.\"------------------------------------- fexcept_t --------------------/
+.TP
+.I fexcept_t
+.IP
+Include:
+.IR <fenv.h> .
+.IP
+This type represents the floating-point status flags collectively;
+for further details see
+.BR fenv (3).
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR fenv (3)
+.\"------------------------------------- gid_t ------------------------/
 .TP
 .I gid_t
 .IP
-- 
2.28.0

