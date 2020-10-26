Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E3622999E2
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 23:50:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394785AbgJZWue (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 18:50:34 -0400
Received: from mail-wm1-f43.google.com ([209.85.128.43]:52757 "EHLO
        mail-wm1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394727AbgJZWue (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 18:50:34 -0400
Received: by mail-wm1-f43.google.com with SMTP id c194so13244987wme.2
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 15:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p8lVQgW1D88Q5NdGupx/a8GSyfRQ2E2hqZ5NCm5UYW8=;
        b=UBB3E5ZsFRusICc0So30D0xoc1jNQP7bxt0eymWCqpx0TWJsqtT0PDjOLeJm+Wnj+a
         qWC/LEevMdtde9Vx+JsMxT+m09QdvnyxLUXOKtMI2Kz9+q6D/3/cZiChN1ulKkheZsWM
         pOJTkjWH0EuzKx6bdBrqzUyCSRgcUmCt59ikzu/dAPh2yXrMvhajauNyy1hyTNDHttnz
         VnS+Mj7GA5Bn0g0vwfibJX58gM3TxId81Mgj0kgcbi/+ZH0OXiVnjpD3PslMs32KFzf1
         gtHKQHRxlW0UvrmGw2XMJFFbJqmFqAnnwMemvjpi/BXsfDJibDeIEUke7SJ/tWF5VxZy
         74TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p8lVQgW1D88Q5NdGupx/a8GSyfRQ2E2hqZ5NCm5UYW8=;
        b=EYiDTrPCkPrvFSa5LQfyqiOca4VJ6aCvNJPMWqkm6dZonIe/goHZEHOMsfk7LNBud9
         2BRGDVsvC2fZfMS2YIW5M2SjUMQE5ZVT8lzjdzWqcYZLeTJyOpTQPIMcLApY5t6APANR
         L4WSg5RPudlS42mcSzwta+HRbaFVnFSxhRSAHyMsvUALU2eq9AaCU1uB0DaWGR1xdE5Y
         G+Vmn9Z13+1SfF7yBH9d5BDruTNkRiiw5JoCsNctrKMC6v6hi5E69VOHtH1eBPfO4Beo
         tOh2c2j2JlHaISpUwZKSy2cR7/y4leNZ40YC8OigPNoi02jWeUSAvjg+YtqNJzZ7hzXq
         ggFw==
X-Gm-Message-State: AOAM533sCEada35+zxBktXLMQNtrBu2WSEZc1R/7+E6M+vBFjAOngKQ2
        2V+4Ukgb6SM27J6vi4wxeo4f69Ejynw=
X-Google-Smtp-Source: ABdhPJx/u1PM+Ze9nRrJYAyXnhMiVTYyTYKUYk4m/2lT8PapvOd3PAuNJZTnZzBAxSvDUoBylrcQig==
X-Received: by 2002:a1c:2901:: with SMTP id p1mr18847057wmp.170.1603752632000;
        Mon, 26 Oct 2020 15:50:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm22593046wmm.34.2020.10.26.15.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 15:50:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/2] system_data_types.7: Add 'dev_t'
Date:   Mon, 26 Oct 2020 23:50:08 +0100
Message-Id: <20201026225008.28903-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 7eba87cde..c82d9d2f3 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -111,6 +111,27 @@ See also:
 .BR timer_create (2),
 .BR clock_getcpuclockid (3)
 .RE
+.\"------------------------------------- dev_t ------------------------/
+.TP
+.I dev_t
+.RS
+Include:
+.IR <sys/types.h> .
+Alternatively,
+.IR <sys/stat.h> .
+.PP
+Used for device IDs.
+According to POSIX,
+it shall be an integer type.
+.PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
+See also:
+.BR mknod (2),
+.BR ustat (2),
+.BR makedev (3)
+.RE
 .\"------------------------------------- div_t ------------------------/
 .TP
 .I div_t
-- 
2.28.0

