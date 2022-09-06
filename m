Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F9115AE3D2
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 11:06:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233731AbiIFJGa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 05:06:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232233AbiIFJG3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 05:06:29 -0400
X-Greylist: delayed 301 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 06 Sep 2022 02:06:28 PDT
Received: from a7-20.smtp-out.eu-west-1.amazonses.com (a7-20.smtp-out.eu-west-1.amazonses.com [54.240.7.20])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 418FC3F31C
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 02:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
        s=ehv72hrdm63prfxoar2vn7kuxcadjmfr; d=pxeger.com; t=1662454885;
        h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type:Content-Transfer-Encoding;
        bh=l8JjaTgDGCTSOW96hcH5lY43QX2WodpovlV7fTcDwII=;
        b=AycvExmdl3np3t4gC8Gcmb6P7MuqNat/mRRYClPKv9O9YRQ4OtY34yA2H6lfqlUa
        hXt820tZm88SlB9fH8vFXoWPScA28Z33BqsiX4fqzmeWN8iQJUVGeTlhBMWOGfSwsmM
        xdCEBpBLKiXpPFWaj9NIGJts2qxEzxVpcMsyNAC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
        s=ihchhvubuqgjsxyuhssfvqohv7z3u4hn; d=amazonses.com; t=1662454885;
        h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type:Content-Transfer-Encoding:Feedback-ID;
        bh=l8JjaTgDGCTSOW96hcH5lY43QX2WodpovlV7fTcDwII=;
        b=DnGfXwRrkKUzzSbQVkO6a9r3/qPEW/nC+rbu9/SOduwJfMDYGcP1R6M+adf1nRiH
        BFB+RzajZgk3E41avUXt2cLBnj+flupc203EDZo2nVkJ8JjlSeQnzZ3J7Uj2G4+vcg6
        5Cid3tTXck/6E6AEDzeFvQEfAk7jVaTT7RCSTaWg=
Message-ID: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>
Date:   Tue, 6 Sep 2022 09:01:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: en-US
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
From:   Patrick Reader <_@pxeger.com>
Subject: [patch] unshare.2: Add note about potential capabilities confusion
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Feedback-ID: 1.eu-west-1.O8fLL1RnZ8YOldtp6Bf8+xGGBJTnUb+xpx8eQnH6GAs=:AmazonSES
X-SES-Outgoing: 2022.09.06-54.240.7.20
X-Spam-Status: No, score=2.3 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_MUA_MOZILLA,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See https://bugzilla.kernel.org/show_bug.cgi?id=216215 for context.

I know nothing about groff formatting, so what I wrote here is based on 
my inference from reading the existing source. If it's wrong, I apologise.


Signed-off-by: Patrick Reader <_@pxeger.com>
---
  man/man2/unshare.2 | 10 ++++++++++
  1 file changed, 10 insertions(+)

diff --git a/man/man2/unshare.2 b/man/man2/unshare.2
index e72464950..851129022 100644
--- a/man/man2/unshare.2
+++ b/man/man2/unshare.2
@@ -461,6 +461,16 @@ Such functionality may be added in the future, if 
required.
  .\"be incrementally added to unshare without affecting legacy
  .\"applications using unshare.
  .\"
+.PP
+Creating all kinds of namespace, except user namespaces, requires the
+.B CAP_SYS_ADMIN
+capability. However, since creating a user namespace automatically 
confers a
+full set of capabilities, creating both a user namespace and any other type
+of namespace in the same
+.BR unshare ()
+call does not require the
+.B CAP_SYS_ADMIN
+capability in the original namespace.
  .SH EXAMPLES
  The program below provides a simple implementation of the
  .BR unshare (1)
-- 
2.37.3
