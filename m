Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 460D938E314
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 11:13:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232515AbhEXJO7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 05:14:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232495AbhEXJOz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 05:14:55 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E74EC06138C
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 02:13:26 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id z17so27731975wrq.7
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 02:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/KK6X9YUnqKTbfF9B7Se3VpYv/Wz20ao4TN1ayQHvSQ=;
        b=rD8ndcqJk3pxK3UhEFFCHEWzsbAHYuKo92nCdGbMMV1dsJK7PuN4Ha0jCgUW6lbFlG
         JVv3vKQm5SRwOVrxM+h/SSKyRReRD/wTUzPrsO1nGNAAYqz3vJkmCQahAxoRvu9qY5E4
         UOmKbZcvvPo4OippKpLv4WcJSjSiUQjSJMKTL+L8e6TWYJ3kFN5spnlLA4aiMpQIYN4g
         GlOOto4k/d4hq3WDS6wARrjgvWFP3SJfXMQKRKUly4r/J1yNFdg+n2ecsu8Bjjcaqll+
         Bcf4N2mnU/3ZEQX4y6YEISIWOPSNbutkdDJIvh//Ab7ntm1O/D4CJ0MTHRS2AoYjW6up
         BGwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/KK6X9YUnqKTbfF9B7Se3VpYv/Wz20ao4TN1ayQHvSQ=;
        b=Hihh/kWILV7Rbgeh6jZdTQTotlWDRFZxq/yS7SNXiXq0+DQfyy019RU4KlDmAb9kdT
         OUoCHTllN4dYz569wJh/f21MEGZwjQoGp4gXIb+/pNIJjsSbQ+sXAYhhka6Ohrkld6ew
         T+LBGPoCLwN/skV7XCifBWwFph5C4PHa4CczprL3D2uL1EFheFKbXsOvMjwof2+2OZiy
         ldTEE5sBtt01ws6eiGY4UgIlwMHBy0sA2vMKvhgN706mRtALJO0r18aYPij6LMsA7M0Y
         fXLsp10aAj5M5X33KUxVQhSDn33nMURY/3vN4063I+K4ddG+l+pLjQkqT+5dXDJrcMjW
         blvA==
X-Gm-Message-State: AOAM530tpI0V0Pyttn4ZQQnUQZZp/2z+5vWBCn/w7umds1Mh0AcZZ+47
        R0ahGl2UR0E9XeJIGIMyrGc=
X-Google-Smtp-Source: ABdhPJxed7bSR+F+i3Lxj+lvsOj7fhYSThFbWeFadA0WE+i6WXgGlnDxrR9X6ctgtPgK6vVzOWBRIg==
X-Received: by 2002:adf:ef02:: with SMTP id e2mr5779636wro.162.1621847605268;
        Mon, 24 May 2021 02:13:25 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id d3sm11512059wrs.41.2021.05.24.02.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 02:13:23 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 3/3] aiocb-struct.3, lconv-struct.3, sigevent-struct.3, sigval-union.3, sockaddr-struct.3, timespec-struct.3, timeval-struct.3: Rename some links to system_data_types.7 to add -{struct,union} suffix
Date:   Mon, 24 May 2021 11:13:09 +0200
Message-Id: <20210524091309.384317-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
References: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This avoids shadowing other pages, and clearly differentiates
function pages from type pages (both are in man3).

Do this for struct/union types, and not for typedefs.  This makes
sense because typedefs in C are in the same namespace as function
identifiers, but struct and union (and enum) tags are in a
different one, and can have the same name as a function.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/{aiocb.3 => aiocb-struct.3}       | 0
 man3/{lconv.3 => lconv-struct.3}       | 0
 man3/{sigval.3 => sigval-union.3}   | 0
 man3/{sockaddr.3 => sockaddr-struct.3}    | 0
 man3/{timespec.3 => timespec-struct.3} | 0
 man3/{timeval.3 => timeval-struct.3}  | 0
 man3/sigevent-struct.3                  | 1 +
 7 files changed, 1 insertion(+)
 rename man3/{aiocb.3 => aiocb-struct.3} (100%)
 rename man3/{lconv.3 => lconv-struct.3} (100%)
 rename man3/{sigval.3 => sigval-union.3} (100%)
 rename man3/{sockaddr.3 => sockaddr-struct.3} (100%)
 rename man3/{timespec.3 => timespec-struct.3} (100%)
 rename man3/{timeval.3 => timeval-struct.3} (100%)
 create mode 100644 man3/sigevent-struct.3

diff --git a/man3/aiocb.3 b/man3/aiocb-struct.3
similarity index 100%
rename from man3/aiocb.3
rename to man3/aiocb-struct.3
diff --git a/man3/lconv.3 b/man3/lconv-struct.3
similarity index 100%
rename from man3/lconv.3
rename to man3/lconv-struct.3
diff --git a/man3/sigval.3 b/man3/sigval-union.3
similarity index 100%
rename from man3/sigval.3
rename to man3/sigval-union.3
diff --git a/man3/sockaddr.3 b/man3/sockaddr-struct.3
similarity index 100%
rename from man3/sockaddr.3
rename to man3/sockaddr-struct.3
diff --git a/man3/timespec.3 b/man3/timespec-struct.3
similarity index 100%
rename from man3/timespec.3
rename to man3/timespec-struct.3
diff --git a/man3/timeval.3 b/man3/timeval-struct.3
similarity index 100%
rename from man3/timeval.3
rename to man3/timeval-struct.3
diff --git a/man3/sigevent-struct.3 b/man3/sigevent-struct.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/sigevent-struct.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.1

