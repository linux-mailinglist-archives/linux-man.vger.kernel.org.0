Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFFE43AE135
	for <lists+linux-man@lfdr.de>; Mon, 21 Jun 2021 03:00:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbhFUBCp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Jun 2021 21:02:45 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17447 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbhFUBCp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Jun 2021 21:02:45 -0400
X-Greylist: delayed 902 seconds by postgrey-1.27 at vger.kernel.org; Sun, 20 Jun 2021 21:02:45 EDT
ARC-Seal: i=1; a=rsa-sha256; t=1624236325; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=LI0XSUBbCcTPM9V2MWbW8nmyPlmE8peIeUsX8W2UvNk2fw1LK54XCezmLVJeuUY7QG1Quxf39fvZx03L+iGahwN9WeFnFYWaUaNq7HMFQubHPG/9qntntT+C7S/4HsHBKq2fxV7j5gxIfcb8RwNK89nlwVahgeLEXjJuUJU5s+0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1624236325; h=Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=yGpZs2zuJvQx+mB2w7DTOBPhcwKdJPh9aUZdSC+Ba9c=; 
        b=ByyihrynKgSMrVLBjzhDV2n0chriPZ0X7Zatc64qlaHqd1tiUT0TwiFXT4ueKCzisbjPY3QkQZOIoa3aoT4q1+FtnkwLY6Jt13bWDV8kMgmxkPE5S2qO8jGKBjQlGbEAmFXjHyZCTuS9xVXBf93Z3RUzfZRobWW4i4TG71B3qmw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        spf=pass  smtp.mailfrom=dan@dlrobertson.com;
        dmarc=pass header.from=<dan@dlrobertson.com>
Received: from gothmog.test (pool-108-51-207-71.washdc.fios.verizon.net [108.51.207.71]) by mx.zohomail.com
        with SMTPS id 1624236322174976.0248843183987; Sun, 20 Jun 2021 17:45:22 -0700 (PDT)
From:   Dan Robertson <dan@dlrobertson.com>
To:     linux-man@vger.kernel.org
Cc:     Dan Robertson <dan@dlrobertson.com>, djwong@kernel.org,
        alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [PATCH 0/1] man2/fallocate.2: Fix documentation of shared blocks
Date:   Sun, 20 Jun 2021 20:44:52 -0400
Message-Id: <20210621004453.7437-1-dan@dlrobertson.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

While doing some work on fallocate for bcachefs I think I stumbled on a
typo in the fallocate man page. FALLOC_FL_UNSHARE should be
FALLOC_FL_UNSHARE_RANGE. I believe this is a typo instead of an update
as a brief look at git history in the kernel seems to indicate that the
flag was never previously FALLOC_FL_UNSHARE.

If I missed something in my review of history, please let me know. Any
feedback would be welcome :)

Dan Robertson (1):
  man2/fallocate.2: tfix documentation of shared blocks

 man2/fallocate.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

