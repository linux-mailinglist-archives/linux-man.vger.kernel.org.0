Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29534790A40
	for <lists+linux-man@lfdr.de>; Sun,  3 Sep 2023 01:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235203AbjIBXKI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Sep 2023 19:10:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjIBXKI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Sep 2023 19:10:08 -0400
X-Greylist: delayed 300 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 02 Sep 2023 16:10:03 PDT
Received: from aib29gb123.yyz1.oracleemaildelivery.com (aib29gb123.yyz1.oracleemaildelivery.com [192.29.72.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9314DB3
        for <linux-man@vger.kernel.org>; Sat,  2 Sep 2023 16:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=oci-2023;
 d=n8pjl.ca;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender;
 bh=5qQ0OYK1FpxJHjMuhcGJ+9PCSTPSBB2u9zONF3WVm9o=;
 b=T3ljWM2XyqaJgVZgXgWt/Tc9P6pNGUcgWPSL9i0svHRBrNiaG7FAsNiZbZH3uutQ2scSGlRfgvMr
   a/fBIAODDTYfgTN5Vli0GImgxGnuyQguIxuScgX5/2xGywJMSfOeP1e3+52G3kJ6PN5H7a+jRM6G
   uyidTcRqUUkS38cnalSpxNH9v6E1Iy01svnYViaSXEFKIWBgSLmHTbspC7/dsdhFC8pOyjJjSF0S
   ZEKo4vdCqBNnrigQn/jxipsvTjK7xEdY6UBBX1PexqwgZw5R1nyJlWiaGLArlIOWWe2J4Y9rbCQx
   csOcQWPY+KtUdmE78z9BlmVYjrYk4VtHqiQvaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-yyz-20200204;
 d=yyz1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender;
 bh=5qQ0OYK1FpxJHjMuhcGJ+9PCSTPSBB2u9zONF3WVm9o=;
 b=FWhm/bkI7HXXE0Sm+DXQGPblCslBR/KgLxkpLzJz+4DuJ2goLzu36d07e0pojN7iW3/ibD8ZPoi0
   WiMifRC7NowNfb00Bgk8KzKZNTbebN1/HQcQZOI4pg3MmHm6mZONYmU/9a9Kmul+jGJtuJJyRxtN
   kWFRy7+B3zRifLUlM5imHqb6oPXUNpeo0O+waCbFCnSQMIJx0sdjAvHwrPMaqa2+lMkXpqb1LDyR
   oi+7HIrcvuoRqiQ80OIPrXVT3Wk3Z6uVtLGwR4BLJVrr6kJpwYjIB4yTd08zTYfOCWaNOTxaz7xf
   bY/k892BA+WXon/o2GHmR5ViQDpkhjdasY+bHw==
Received: by omta-ad1-fd1-402-ca-toronto-1.omtaad1.vcndpyyz.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20230707 64bit (built Jul  7
 2023))
 with ESMTPS id <0S0D00HHAS4EVF90@omta-ad1-fd1-402-ca-toronto-1.omtaad1.vcndpyyz.oraclevcn.com> for
 linux-man@vger.kernel.org; Sat, 02 Sep 2023 23:05:02 +0000 (GMT)
From:   Peter Lafreniere <peter@n8pjl.ca>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Peter Lafreniere <peter@n8pjl.ca>, linux-man@vger.kernel.org
Subject: [patch] sln.8: wfix
Date:   Sat,  2 Sep 2023 19:04:58 -0400
Message-id: <20230902230459.12115-1-peter@n8pjl.ca>
X-Mailer: git-send-email 2.42.0
MIME-version: 1.0
Content-transfer-encoding: 8bit
Reporting-Meta: AAFWiEryPnrbqUeqhIKHJ0wZHEZlVrb7alOKew4aX85+gcJjdhlULHniXAFs3e5T
 vtBYAKxHfOi4eC5QbBGdW88tR2EtjDtxhfJHoOJDl+dWHhvwKOoXUzKfTNWllAR0
 O2vCfm5DhRGZ7DUxyBeKAsrYmGDcYDS9/B+hUP+qtPG4MayhyoHiciVyeH7fAhoO
 k1Fij2loF4WqdmL6oEWO1SeKpmQj7xuTFnXO7fpdEiBmCISSQRNTTUX4XZORmcr6
 +CprNtKcsiA09yT4h5G9dOmC6/LgP4SGdwlDkZvmeM6Tppo6uxq4d7UJ1M8vwznd
 zzU0oWoNdHbSg0bn3sX4wytLPJdchZwOp5AyfFDBHP2747Lf0vo1tOrC478COEoV
 WqqkMae7AdCNQf/W0meTbwDC083ellCocFJvCu+7KUONfbKYzLKh0kA4pDZ2hg==
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The description for the second form of sln(8) can be taken at a first
reading as saying that `filelist' is a list of paths passed via the
command line, when it is really a path to a file containing that list.

Although the confusion can be resolved from the surrounding context, it
is better to be explicit about filelist being a path.

Signed-off-by: Peter Lafreniere <peter@n8pjl.ca>
---
 man8/sln.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man8/sln.8 b/man8/sln.8
index 448d0bf07..2a7ed13e5 100644
--- a/man8/sln.8
+++ b/man8/sln.8
@@ -29,7 +29,7 @@ as a new symbolic link to
 .PP
 In the second form,
 .I filelist
-is a list of space-separated pathname pairs,
+points to a list of space-separated pathname pairs,
 and the effect is as if
 .B sln
 was executed once for each line of the file,
-- 
2.42.0

