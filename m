Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D307837BB4D
	for <lists+linux-man@lfdr.de>; Wed, 12 May 2021 12:52:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbhELKyF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 06:54:05 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.65]:52947 "EHLO
        mail1.bemta25.messagelabs.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230019AbhELKyE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 06:54:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
        s=170520fj; t=1620816776; i=@fujitsu.com;
        bh=jz4UklXu6Dk6n+3Atnmyo376MU3ZY7kz4k6yRxBof8g=;
        h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
        b=sMVx6XypaYSCmD/J2TBMzrYRgW9mKLlzh3ar9AO7fHBnP4YUj4xwllx/41CxmewTV
         /MbxWPhhEz4ceZ7WV8qa60/qUoxYXF/TK3pNOi6zwfLfANt21+5V5GVFJwIk4czO/S
         RrCRUO2vuQEOiuaCozkhOmpmNUI3A3vECy/ylHiU/rQW7NqgDtXqFJSDnnB3oNpT+2
         elOUlDx2D1CadOyEBGJlKoMbd+qB0DidC22NaAJse1FJufyXVoFkBVRjWOQKx+zNl9
         +nuVp67hHxQMc+FYqED9KiwgQ0G+nft7HT5Gz+GZGXGqJJxvzJUd3cMzy0p4dk2snS
         /BZR23W/hrJFQ==
Received: from [100.112.199.60] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
        by server-1.bemta.az-b.eu-west-1.aws.symcld.net id 46/50-00056-883BB906; Wed, 12 May 2021 10:52:56 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRWlGSWpSXmKPExsViZ8MRotu+eXa
  CwdtD+hZr1s9gd2D0+LxJLoAxijUzLym/IoE1Y1XPDKaCDraKd93/2RsY+1i7GLk4hAS6mSQm
  3+hmh3B2M0ps3vkIyOHkYBPQlHjWuYAZxBYRkJdYs2cBI4jNLKAusXzSLyYQW1jAXuLPjwNgc
  RYBVYkZO6eC2bwCHhIz9uxhBbElBBQkpjx8zwwRF5Q4OfMJC8QcCYmDL14wQ9QoSlzq+MYIYV
  dIzJixjW0CI+8sJC2zkLQsYGRaxWiRVJSZnlGSm5iZo2toYKBraGika2hprmtkYqmXWKWbpJd
  aqlueWlyia6iXWF6sV1yZm5yTopeXWrKJERheKQVHf+5gfPj6g94hRkkOJiVR3pOesxOE+JLy
  UyozEosz4otKc1KLDzHKcHAoSfCu3QCUEyxKTU+tSMvMAYY6TFqCg0dJhDd3NVCat7ggMbc4M
  x0idYpRl2Pz3KWLmIVY8vLzUqXEeZM3ARUJgBRllObBjYDF3SVGWSlhXkYGBgYhnoLUotzMEl
  T5V4ziHIxKwryrNgJN4cnMK4Hb9AroCCagI25MnwVyREkiQkqqgUlk+6Ylpz3LfwXfdfggvN7
  T2269HJeaW2X89UDNB9+YPq7YejX70TWXsGNMJc9WnFWa2c3c/lH2rIPI8gnHq5snft/Mdnj6
  upsBfumXJBl6Jd91TK2dudnl+PO5Cjlr7Z+e18/85nmTLdA6bVnu48cni7WvRPQ+4i34pB7Ld
  1xHeMkEdiMD30m9/FcncF3/fWP7mef/mVW+zrzaZH3ylPu9dTcsk3UvJpXabT1btraOe7dAdv
  +D+ncVDYf2P9JaIB9ezfTn74UZD8tYjAV+T141U0vsu8+tI4Kn+FRVe89/qzQ0W+vGXZ9fz/x
  JmG93PhPzvyd3fysUeZ8+uMFSseX0yezc/4E3Itr6MyeYMmopsRRnJBpqMRcVJwIA8sOc4DYD
  AAA=
X-Env-Sender: xuyang2018.jy@fujitsu.com
X-Msg-Ref: server-4.tower-287.messagelabs.com!1620816775!150805!1
X-Originating-IP: [62.60.8.84]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.75.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26559 invoked from network); 12 May 2021 10:52:55 -0000
Received: from unknown (HELO mailhost3.uk.fujitsu.com) (62.60.8.84)
  by server-4.tower-287.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 12 May 2021 10:52:55 -0000
Received: from R01UKEXCASM126.r01.fujitsu.local ([10.183.43.178])
        by mailhost3.uk.fujitsu.com (8.14.5/8.14.5) with ESMTP id 14CAqtrp028475
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 11:52:55 +0100
Received: from localhost.localdomain (10.167.220.84) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 12 May 2021 11:52:53 +0100
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     <linux-man@vger.kernel.org>
CC:     Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH v2] man2/shmget2: Add details about EPERM error
Date:   Wed, 12 May 2021 18:53:14 +0800
Message-ID: <1620816794-8503-1-git-send-email-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD09.g08.fujitsu.local (10.167.33.85) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

hugetlb_shm_group contains group id that is allowed to create SysV shared
memory segment using hugetlb page. To meet EPERM error, we also
need to make group id be not in this proc file.

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/shmget.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/shmget.2 b/man2/shmget.2
index 757b7b7f1..29799b9b8 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -273,7 +273,7 @@ The
 .B SHM_HUGETLB
 flag was specified, but the caller was not privileged (did not have the
 .B CAP_IPC_LOCK
-capability).
+capability and group id doesn't be contained in hugetlb_shm_group proc file).
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" SVr4 documents an additional error condition EEXIST.
-- 
2.23.0

