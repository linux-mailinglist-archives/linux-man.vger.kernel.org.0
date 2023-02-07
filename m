Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C74668E1EC
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:34:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjBGUeE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:34:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjBGUeE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:34:04 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A81137B50
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:34:02 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id PTWmpqaNXc9C4PUfCpYUif; Tue, 07 Feb 2023 20:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675802042; bh=uIrMtS4N4oicaJpI7ihX+ml0TmAUGRXZJpaHFCFhjq4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=Fitnrtn+dIQ+DS/cf7KdoOHxEzeF72GbLTdXpehiJBGOsTll89+oNsttNTsI3NjvL
         pBzEp7AtCOUrE+FsT/arti+XakSgnfarqqy/39MJIVb0tJ92tMHEj60EtLQf4kA5wv
         UtEl8uC4p2K8Sjk1WIZNE1U17g5rKZT2H6m6WtYFGAKFlZVn9rsOunNrkRIuv7+UVJ
         a5eGtXx51CP0V8fbUCZXNlc9SymSVGtifmYa+6g5gjaT5Z0PbGplohmHT0Fz+lh8sC
         dd+t58XvW3K5IFAnRN7rmt2g7BnF72QdnsEpQo22WUUH5JJ9a7T76Ca9lW3DREhK3y
         wTbhu2VaoEJsQ==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUfCppo5a3fOSPUfCpIuiz; Tue, 07 Feb 2023 20:34:02 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63e2b5ba
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=d4E1t-a-ZZb6D74aQDUA:9 a=QEXdDO2ut3YA:10
 a=iqSyOaP4YS47XGSMiOkA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed value
Date:   Tue,  7 Feb 2023 13:32:51 -0700
Message-Id: <20230207203300.49894-3-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfOIqXKMI0d1jSn5s3g65b9DYV6LyOK5gDHE/oRKeS2YdH3d7esrK7pvD7eOh5JJqVsiSAw8mPDHGQpp61ZOqJGHDnszAu6FHILUppjG2DKjHcWgLMfcC
 dP6t1QsFl4HoHLRTj3a3G6KRXONpawIUsXAwujEjyvO4+qR3aCwzUK2kPx6rq1KrEymHNDCODXpTpJMGWmKg1tdxHnwKkg2mL0YuNZCRaqL1UZtbc4Lxco4+
 iv2ETlEMPfYyRV55+Cip5E9znQS1noNbtm6kCcIfjqJyqkmk9Y8wP7DdsessGQv1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------2.39.0
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

---
 man2/spu_run.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="0002-man2-spu_run.2-fix-example-comment-status-code-or-ed.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0002-man2-spu_run.2-fix-example-comment-status-code-or-ed.patch"

diff --git a/man2/spu_run.2 b/man2/spu_run.2
index 00d552986052..139f10a97a80 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -245,7 +245,7 @@ int main(void)
         err(EXIT_FAILURE, "open");
 
     /*
-     * We should see a status code of 0x1234002:
+     * We should see a status code of 0x12340002:
      *   0x00000002 (spu was stopped due to stop\-and\-signal)
      * | 0x12340000 (the stop\-and\-signal code)
      */

--------------2.39.0--


