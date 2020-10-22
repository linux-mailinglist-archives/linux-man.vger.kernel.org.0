Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4B57295E9F
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898336AbgJVMjL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898422AbgJVMix (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:38:53 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED3C3C0613D2
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:52 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d78so1898601wmd.3
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4RD0Ms86p14aql5dD7Y/pXQk5G6LCzhe3j13b77RVtw=;
        b=PEltxKt+NmXBZ9Hg1y5B3SLMw+E4YQMPxSss0S/fi8zzbEZADgqcJwEHBo9DCfH3Uv
         9jv5WBX/V2GPH25HMHY61lTPFbW5l9D4zxkv/pCl1Q7lPrjVgtOsvwCxPUFtUPIsFTFh
         5UX35jWSuuw/XSSSl+VYhbvRb1xTiZF3ADWFkDRjYbQR0Piq4B3c4fhDy4mzTxJgoPWV
         dveQWuJhmDT6PFKiyzH2088D+jqYWuVZTwwAyasmnGLHDIQypRebyzN1vqNYaf0PNgZQ
         HbXDWhi3d+/qoL4jzg47jkJ7x9XqfccMB7ayySe2/vku2mVhJfaWdmDgxo1LmvlyZVei
         6XjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4RD0Ms86p14aql5dD7Y/pXQk5G6LCzhe3j13b77RVtw=;
        b=qcXpb1AVpkWuMUEDBglhIMja4l3epiOEGS1ajPfTIUfrpV/rEQLDUz+2HclqZOtqD8
         BdPvZ0MOx0xEJk/hX6k81AtLWa8Th4FB4uSF8+c8JhT/WRYaNYgJ7fDxk7L68rS2ZlmL
         czAJl95SJYYoHTo4I2XbxbqwbM97upJkVkF64lgC9EQfDrbkPQ5dz97z/ttLmpf7RzFV
         4xlJRCfRiM4W/zGRyPhvmcXbd8MuEuNkz/oVgtt/lYDeTtvlXlFv6Ow91y/2B1dxueXe
         w0JKvhBByFMA3hJwmVtro4k3+3v8clX2+sbamrIIANoXBGyhSW/nfMIAGXKoRD+xu9Oj
         YUJA==
X-Gm-Message-State: AOAM531C1UJDEVICwIGJck/GGhvJAyIi9JcOHxzksM24rCmWPExFUlxe
        cYrA88GVg4Er2aFjmS061OA=
X-Google-Smtp-Source: ABdhPJwIAhsaAsvvGGTLCMaig0aLolKjI/0Ojj8hM6RDilea0LJ/z+RF6JmEWn+JKBk+c06DHWgeiA==
X-Received: by 2002:a1c:7708:: with SMTP id t8mr2341181wmi.6.1603370331718;
        Thu, 22 Oct 2020 05:38:51 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:51 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/10] slist.3: New page that will hold the (slist) contents of queue.3
Date:   Thu, 22 Oct 2020 14:38:13 +0200
Message-Id: <20201022123821.22602-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/slist.3 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 man3/slist.3

diff --git a/man3/slist.3 b/man3/slist.3
new file mode 100644
index 000000000..20058a9c6
--- /dev/null
+++ b/man3/slist.3
@@ -0,0 +1,40 @@
+.\" Copyright (c) 1993
+.\"    The Regents of the University of California.  All rights reserved.
+.\" and Copyright (c) 2020 by Alejandro Colomar <colomar.6.4.3@gmail.com>
+.\"
+.\" %%%LICENSE_START(BSD_3_CLAUSE_UCB)
+.\" Redistribution and use in source and binary forms, with or without
+.\" modification, are permitted provided that the following conditions
+.\" are met:
+.\" 1. Redistributions of source code must retain the above copyright
+.\"    notice, this list of conditions and the following disclaimer.
+.\" 2. Redistributions in binary form must reproduce the above copyright
+.\"    notice, this list of conditions and the following disclaimer in the
+.\"    documentation and/or other materials provided with the distribution.
+.\" 3. Neither the name of the University nor the names of its contributors
+.\"    may be used to endorse or promote products derived from this software
+.\"    without specific prior written permission.
+.\"
+.\" THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
+.\" ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+.\" IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+.\" ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
+.\" FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+.\" DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+.\" OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+.\" HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+.\" LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+.\" OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+.\" SUCH DAMAGE.
+.\" %%%LICENSE_END
+.\"
+.\"
+.TH SLIST 3 2020-10-21 "GNU" "Linux Programmer's Manual"
+.SH NAME
+.SH SYNOPSIS
+.SH DESCRIPTION
+.SH RETURN VALUE
+.SH CONFORMING TO
+.SH BUGS
+.SH EXAMPLES
+.SH SEE ALSO
-- 
2.28.0

