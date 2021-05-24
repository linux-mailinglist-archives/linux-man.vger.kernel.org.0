Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 896CF38E29E
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 10:48:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232453AbhEXIuH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 04:50:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232433AbhEXIuG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 04:50:06 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD1FC061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:48:38 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id q5so27647985wrs.4
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oPyT8vcRQembux7HAXwZXOvECgLgsZhsNiYEUY2Ia8Q=;
        b=bPtC1cPJlMlb1S58BZ6z5DS+XOlyE4pzRSKph8CJoalckKwIgSQFYSGKM1XLau5kKU
         WzBtgDmMVXqzsVvX1v6O/bIbp3ff08dJJyfAZ74hHov3g8TcrWj5LLy5AlsEq0vD7pTc
         pHK6htYTVFe5sye/YOoILh5GqM0Afj+D/rlBivTNSklzudHwfN91nItbb2whb8eUPUpJ
         1cUrFY4BmlJaupSusHPUm+WLNEddZ/iUX+clnxLtjBeZ7Hdz/4TDdTjyvkz9L1hT+8qC
         tVs6Wm56fzfCCg5dhlo+GIj/DOtQSRIXvGZm4wFOXbIPQbuBd8yQdBncad1JROc1Sz/D
         vzCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oPyT8vcRQembux7HAXwZXOvECgLgsZhsNiYEUY2Ia8Q=;
        b=QVKxQmU1ppDbRmd2+MypiM7y0jEiJDTA6u1geJ3eOMzthIpn6nTc0rfhlYqhLh3L7x
         pZlFWeDIhkeJgOWx4bQaj6Ds6IVINMBEDHycJV49YsSi20rZQ1amk4MMIdl1rzZw45xl
         ARY3Hfq3zYexjymD0WwysI+n72WP7uF3uDGQqb3CsrcrnY8YIT0jkNhHYIktvQxWiq/Z
         /ITXwjxQkAvuXvfym76GgGsqPJJY6y2ThSKxgcieKOoqz/Rw2pA9C9PHbG516m/jpDnD
         /ByBx+h/swRiBSYKaeMlBqbp5SECC725lK/xWHcPWWZlrUGmRmSwRxj0VVjOMrxjfpwd
         q8jQ==
X-Gm-Message-State: AOAM532qd3a3qO5AmHD7bq7B6rU4Nf2XBYDdGhuJ+1U/NZAYe7kR1acB
        n4Er3hpZcSF/q+9IrYphhOM=
X-Google-Smtp-Source: ABdhPJxnUb5PwdbR0RATG1USun3rfty9CuNLEdAisklqhwVdcMBRDwnyxBQR7uTTxRjjVJTU/FPMNw==
X-Received: by 2002:a5d:648e:: with SMTP id o14mr20417979wri.27.1621846117208;
        Mon, 24 May 2021 01:48:37 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h67sm8674997wrh.44.2021.05.24.01.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 01:48:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/3] aiocb-struct.3, lconv-struct.3, sigevent-struct.3, sigval-union.3, sockaddr-struct.3, timespec-struct.3, timeval-struct.3: Rename some links to system_data_types.7 to add -{struct,union} suffix
Date:   Mon, 24 May 2021 10:48:14 +0200
Message-Id: <20210524084813.375379-1-alx.manpages@gmail.com>
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
 man3/{sigval.3 => sigval-struct.3}   | 0
 man3/{sockaddr.3 => sockaddr-union.3}    | 0
 man3/{timespec.3 => timespec-struct.3} | 0
 man3/{timeval.3 => timeval-struct.3}  | 0
 man3/sigevent-struct.3                  | 1 +
 7 files changed, 1 insertion(+)
 rename man3/{aiocb.3 => aiocb-struct.3} (100%)
 rename man3/{lconv.3 => lconv-struct.3} (100%)
 rename man3/{sigval.3 => sigval-struct.3} (100%)
 rename man3/{sockaddr.3 => sockaddr-union.3} (100%)
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
diff --git a/man3/sigval.3 b/man3/sigval-struct.3
similarity index 100%
rename from man3/sigval.3
rename to man3/sigval-struct.3
diff --git a/man3/sockaddr.3 b/man3/sockaddr-union.3
similarity index 100%
rename from man3/sockaddr.3
rename to man3/sockaddr-union.3
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

