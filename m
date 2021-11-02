Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DC5544353F
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234951AbhKBSRh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234973AbhKBSRh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:37 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15606C061205
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:02 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id d13so34661640wrf.11
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=om/5QWshjz/VbfUZCYzAVRVCIsY9CL6CeB3Yu7quVY8=;
        b=EZecVZ3jAu+Y6Qn9Xw5vzHz0dnpKcK5QZhG+44jRWPAWt8RxItAz/jUElerxinO35q
         zmxcAwTkoUbLA4p/9htY+pATGaFGYoXYZq45FNvFPj+Ykoi5LvY7D9zyft+lalWe11Cl
         /T2A6oe9yZRuM+HfuPAJupbxMfntihITHjzfvvoK5pSn0nbdNUM+GQevILxJTu00F9Ih
         ddTGqCopWI+UV9Eqi/8lonHSPqGa1IcJZOUW2umDOL3UWUk7kk9cAIl2Z1Dbk3/Igr9/
         yP8ESRZTMsrjaork3SbI6P4e08KrqkV3p8oNXQmls1YEkl+aw2PbHFNw/o0N+v4/6ZN3
         JXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=om/5QWshjz/VbfUZCYzAVRVCIsY9CL6CeB3Yu7quVY8=;
        b=N2I++oqV8EUcl1vbAokNyfGSpxIxOHndovy1qyFqewLH8QYfNsepTLHA5WqylTbnuy
         73bvDwyVJXq06AQyKGtDLYBvI03X71Ppn6z4T5ETamTG8JLZ8DU3XpDsDRy+eAoK97DS
         XKEaLtWM0ldoMHC7BL26QbMyg9nBWyCkXcJ+rO//lEyM5aBiedUNw1oQxQToztEVFPbY
         C319n1B4liosCKirOr2COIbt2soBGYylwVfVrrIq8HoRIDBAhRnyzG2npLpynhV+jFeR
         iFznG4/F6OwYwUQxmocZTwGmDEpSH0QELuYiUDS07P9/c9B4/B9HAZ0k2+vbnLHh331o
         eiJw==
X-Gm-Message-State: AOAM533nbsgik75X3IXNLAr0nDUU/qMyPC4bxDo/WExEXKDGrTbFD77M
        9B1CfZK033cWgYEeEAn1Cv0=
X-Google-Smtp-Source: ABdhPJzCWG6DV3iVg5R7Zj9p4oQQEqdVryURx6sZ3FjnzBTVN9buLTHu+aec9E3eyo3g6AOVKRHHCQ==
X-Received: by 2002:a5d:624c:: with SMTP id m12mr51119350wrv.160.1635876900738;
        Tue, 02 Nov 2021 11:15:00 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 03/37] aiocb-struct.3, lconv-struct.3, sigevent-struct.3, sigval-union.3, sockaddr-struct.3, timespec-struct.3, timeval-struct.3: Rename some links to system_data_types.7 to add -{struct,union} suffix
Date:   Tue,  2 Nov 2021 19:14:20 +0100
Message-Id: <20211102181454.280919-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
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
 man3/{sigval.3 => sigevent-struct.3}   | 0
 man3/{sockaddr.3 => sigval-union.3}    | 0
 man3/{timespec.3 => sockaddr-struct.3} | 0
 man3/{timeval.3 => timespec-struct.3}  | 0
 man3/timeval-struct.3                  | 1 +
 7 files changed, 1 insertion(+)
 rename man3/{aiocb.3 => aiocb-struct.3} (100%)
 rename man3/{lconv.3 => lconv-struct.3} (100%)
 rename man3/{sigval.3 => sigevent-struct.3} (100%)
 rename man3/{sockaddr.3 => sigval-union.3} (100%)
 rename man3/{timespec.3 => sockaddr-struct.3} (100%)
 rename man3/{timeval.3 => timespec-struct.3} (100%)
 create mode 100644 man3/timeval-struct.3

diff --git a/man3/aiocb.3 b/man3/aiocb-struct.3
similarity index 100%
rename from man3/aiocb.3
rename to man3/aiocb-struct.3
diff --git a/man3/lconv.3 b/man3/lconv-struct.3
similarity index 100%
rename from man3/lconv.3
rename to man3/lconv-struct.3
diff --git a/man3/sigval.3 b/man3/sigevent-struct.3
similarity index 100%
rename from man3/sigval.3
rename to man3/sigevent-struct.3
diff --git a/man3/sockaddr.3 b/man3/sigval-union.3
similarity index 100%
rename from man3/sockaddr.3
rename to man3/sigval-union.3
diff --git a/man3/timespec.3 b/man3/sockaddr-struct.3
similarity index 100%
rename from man3/timespec.3
rename to man3/sockaddr-struct.3
diff --git a/man3/timeval.3 b/man3/timespec-struct.3
similarity index 100%
rename from man3/timeval.3
rename to man3/timespec-struct.3
diff --git a/man3/timeval-struct.3 b/man3/timeval-struct.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/timeval-struct.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.33.1

