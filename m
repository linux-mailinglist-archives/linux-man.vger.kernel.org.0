Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AFBB3AE136
	for <lists+linux-man@lfdr.de>; Mon, 21 Jun 2021 03:00:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbhFUBCy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Jun 2021 21:02:54 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17443 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbhFUBCy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Jun 2021 21:02:54 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1624236330; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=YtGDXce8nLyqCN+EeANf49kS41NBRHvWWfXfJVB+WIq+KxX+VklD7Tc04DlS9RTVLXZB73nuijDJjVkBQEvRk1U0YIjJNojK7ybRmC9D3RThzCHykC8ubCmhhVp6P+335iINoZnh9VXSmaJdsqiMvthcq7jPYduVCmkElMdk2U0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1624236330; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=BtEpREhi1xQYlTjQIKCLFMBcrOWOqQt8sqX67lFe+aM=; 
        b=inDQklsdpN3lYyuurezQTKphZSPPeKNa/T697/gb3aqK2pRAo+H83cnWsB6YvWE9d/5ZAlcWrVvKAE8Fyq9NrbWO9NG62O0ow5h/Cr5iRBS2qx9V6R1h7JfNAV8hD7rAl/cfQK8rviuVsQV0DuYUGDHVL2iGz+XRrAS422Kklfc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        spf=pass  smtp.mailfrom=dan@dlrobertson.com;
        dmarc=pass header.from=<dan@dlrobertson.com>
Received: from gothmog.test (pool-108-51-207-71.washdc.fios.verizon.net [108.51.207.71]) by mx.zohomail.com
        with SMTPS id 1624236325237839.2182399639603; Sun, 20 Jun 2021 17:45:25 -0700 (PDT)
From:   Dan Robertson <dan@dlrobertson.com>
To:     linux-man@vger.kernel.org
Cc:     Dan Robertson <dan@dlrobertson.com>, djwong@kernel.org,
        alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
Date:   Sun, 20 Jun 2021 20:44:53 -0400
Message-Id: <20210621004453.7437-2-dan@dlrobertson.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210621004453.7437-1-dan@dlrobertson.com>
References: <20210621004453.7437-1-dan@dlrobertson.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix a typo in the documentation of using fallocate to allocate shared
blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
FALLOC_FL_UNSHARE_RANGE.

Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared blocks")
Signed-off-by: Dan Robertson <dan@dlrobertson.com>
---
 man2/fallocate.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/fallocate.2 b/man2/fallocate.2
index a62706193..b4cb3516f 100644
--- a/man2/fallocate.2
+++ b/man2/fallocate.2
@@ -81,7 +81,7 @@ Preallocating zeroed blocks beyond the end of the file in this manner
 is useful for optimizing append workloads.
 .PP
 If the
-.B FALLOC_FL_UNSHARE
+.B FALLOC_FL_UNSHARE_RANGE
 flag is specified in
 .IR mode ,
 shared file data extents will be made private to the file to guarantee
