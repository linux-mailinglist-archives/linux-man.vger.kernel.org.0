Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 158F368E1B5
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:11:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbjBGULu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:11:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbjBGULt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:11:49 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E36A5CD
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:11:47 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PNfIppxJWc9C4PUJepYP8U; Tue, 07 Feb 2023 20:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675800706; bh=wZq3M+LEU0SAZl+ii3GfvV1qPDhPS3QoxxPJrn3tmj8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=TLL9zU7LWfkGm2W7MKHc0T7n6NCzhvZHD38FDq1lP7WQcNWqW1J8zLe+h8Hu67l4K
         C4WNKhXNtTlpYts76Q1yNd6A8i/zQoyGbYu7vFR08CJaDQZSwpWdGpFITmBEEbJsmb
         9nHx26y6XIZZWXmEsovG3v5w3E0Xb23lbDtTTCznUEqgOMGtAsPl/UeLdWX6j9GzOw
         HhPpu2COB+3q+GgMh6PZ/PRuBOdPvcVq1dPHdZ/G6m+gyRr4k8A4SR0wv/sqRhYSEY
         BuMSg90O1bQ6S0XYazaG7eH9eFFm8hcGpDQwSiQ0LiYNT5Vw9B3BTxY273oq++rDih
         QkVfPqNbaXsFQ==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUJdpfnuvHFsOPUJep7rPD; Tue, 07 Feb 2023 20:11:46 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e2b082
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=JjFQb_LDtpKBWWSn7NYA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
Date:   Tue,  7 Feb 2023 13:11:22 -0700
Message-Id: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Organization: Systematic Software
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfL+u2PUXm32P7BA+/AlRBrEPdJENSFUV0P+jk4C1Orx0JFoDxgy0SuPMy4Pc+6YARXwy2MSgExnngppot7iV+d874ZtAh4ixM+/A6mWUsacP5EloMAiI
 uyf/v4XAtuJB/0jc7WMqGOoZ+fWlLjQMBK3GiYNla2Mzh9ygG6fXrqqrtCv+cba31/szbAyY/XDJm1J2gpYOf27tNqtR5bNDTlj7XvJtVoYrpQUd1QZy+Xuf
 hvRaI+mOqom247uvX2x4rf4j3BWCQonXxJOMAfWdhdz0TDDUs4tVFC6YgtAKay3h
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/shmget.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/shmget.2 b/man2/shmget.2
index cdb2d3bee4b5..4bc18bedf3a9 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -354,7 +354,7 @@ for a discussion of why this default value (rather than
 is used.
 .IP
 From Linux 2.2 up to Linux 3.15, the default value of
-this limit was 0x2000000 (32\ MB).
+this limit was 0x2000000 (32\ MiB).
 .IP
 Because it is not possible to map just part of a shared memory segment,
 the amount of virtual memory places another limit on the maximum size of a
-- 
2.39.0

