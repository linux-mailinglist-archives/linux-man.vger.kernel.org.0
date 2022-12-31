Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6EC65A6CD
	for <lists+linux-man@lfdr.de>; Sat, 31 Dec 2022 21:14:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232169AbiLaUOM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Dec 2022 15:14:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232038AbiLaUOK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 31 Dec 2022 15:14:10 -0500
X-Greylist: delayed 426 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 31 Dec 2022 12:14:09 PST
Received: from a7-17.smtp-out.eu-west-1.amazonses.com (a7-17.smtp-out.eu-west-1.amazonses.com [54.240.7.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 656AA5FCC
        for <linux-man@vger.kernel.org>; Sat, 31 Dec 2022 12:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
        s=ehv72hrdm63prfxoar2vn7kuxcadjmfr; d=pxeger.com; t=1672517189;
        h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type:Content-Transfer-Encoding;
        bh=boNg25yQ0r+XsrjWrDFdE8WKPcInki0/8fiqDdx2SY0=;
        b=iUZT0x80vKCrmTeFizSCl77UDJvWLhX+x04AY5ITPP0JO1I/ryTAuVJ465JCp/m5
        tg6rgftfFDbQarcFpTRD7BVyGK/cLa9qHW+4q2a9I3+iRevtuMvD+eFwM/nez3EZotL
        /NXTDLb6wgiwfGmo2VR7luGRf8cbQ48VLIhgOWhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
        s=ihchhvubuqgjsxyuhssfvqohv7z3u4hn; d=amazonses.com; t=1672517189;
        h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type:Content-Transfer-Encoding:Feedback-ID;
        bh=boNg25yQ0r+XsrjWrDFdE8WKPcInki0/8fiqDdx2SY0=;
        b=Jk2WZcmh5cORwaERlUxfzIyJaABbS5CzwtUwY8tdnZxa9P3PVvbNfmQd2wMgQtt7
        NIsuvzWIx8pOBmb1TPCq/snFEhLh/FcW9VDOOjDovpEayOqm6INxokmv8pHIocU7G3W
        dVFUyKZ8lleAn41cNUG8YmQTpoLPKy6VS4IgYaKo=
Message-ID: <0102018569cafe7a-7d1625ac-01bc-431b-8619-049763ed7283-000000@eu-west-1.amazonses.com>
Date:   Sat, 31 Dec 2022 20:06:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To:     alx@kernel.org
Cc:     brauner@kernel.org, linux-man@vger.kernel.org
From:   Patrick Reader <_@pxeger.com>
Subject: [patch] mount_setattr.2: ffix
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Feedback-ID: 1.eu-west-1.O8fLL1RnZ8YOldtp6Bf8+xGGBJTnUb+xpx8eQnH6GAs=:AmazonSES
X-SES-Outgoing: 2022.12.31-54.240.7.17
X-Spam-Status: No, score=2.4 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_MUA_MOZILLA,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The bullet-point seems to have been inserted in the wrong place originally.

Signed-off-by: Patrick Reader <_@pxeger.com>
---
  man2/mount_setattr.2 | 6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index cfa1a6e5a..b344cc543 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -678,12 +678,12 @@ Currently, the following filesystems support 
ID-mapped mounts:
  The mount must not already be ID-mapped.
  This also implies that the ID mapping of a mount cannot be altered.
  .IP \(bu
+The mount must not have any writers.
+.\" commit 1bbcd277a53e08d619ffeec56c5c9287f2bf42f
+.IP \(bu
  The mount must be a detached mount;
  that is,
  it must have been created by calling
-.IP \(bu
-The mount must not have any writers.
-.\" commit 1bbcd277a53e08d619ffeec56c5c9287f2bf42f
  .BR open_tree (2)
  with the
  .B OPEN_TREE_CLONE
-- 
2.39.0

