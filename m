Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1C79326650
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 18:28:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229752AbhBZR2x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 12:28:53 -0500
Received: from mga18.intel.com ([134.134.136.126]:11180 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229550AbhBZR2x (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 26 Feb 2021 12:28:53 -0500
IronPort-SDR: JabG6351HjDGdyex8HfY8iHiLSqivCPdomUgCi9zOv55YiIdtdYwClXy7ZWN9aYNOzRBsVAzbA
 Z6ee0Yjt8eKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="173587221"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="173587221"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 09:27:57 -0800
IronPort-SDR: GJRkL/dS+2Bw8C4NoJ9VmUtGMZzFfqdD69Ft0czsTs5d7MvYi8UXsl3WRLnWOrT2ZiDjNFn334
 OjUChtmS2Sgg==
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="405052442"
Received: from yyu32-desk.sc.intel.com ([143.183.136.146])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 09:27:57 -0800
From:   Yu-cheng Yu <yu-cheng.yu@intel.com>
To:     linux-man@vger.kernel.org
Cc:     Yu-cheng Yu <yu-cheng.yu@intel.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Andy Lutomirski <luto@kernel.org>,
        Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Florian Weimer <fweimer@redhat.com>,
        "H.J. Lu" <hjl.tools@gmail.com>, linux-kernel@vger.kernel.org,
        linux-api@vger.kenel.org
Subject: [PATCH 1/2] sigaction.2: Add SEGV_CPERR
Date:   Fri, 26 Feb 2021 09:26:33 -0800
Message-Id: <20210226172634.26905-2-yu-cheng.yu@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210226172634.26905-1-yu-cheng.yu@intel.com>
References: <20210226172634.26905-1-yu-cheng.yu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

When a branch instruction (i.e. call/ret/jmp) triggers a control-protection
fault, si_code is set to SEGV_CPERR.  Add the new si_code to sigaction.2.

Signed-off-by: Yu-cheng Yu <yu-cheng.yu@intel.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: "H.J. Lu" <hjl.tools@gmail.com>
Cc: linux-kernel@vger.kernel.org
Cc: linux-api@vger.kenel.org
Link: https://lore.kernel.org/linux-api/20210217222730.15819-7-yu-cheng.yu@intel.com/
---
 man2/sigaction.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index cc183198d..49a30f11e 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -737,6 +737,9 @@ See
 .BR pkeys (7).
 The protection key which applied to this access is available via
 .IR si_pkey .
+.TP
+.B SEGV_CPERR
+A branch instruction (call, ret, or jmp) triggered a control-protection fault.
 .RE
 .PP
 The following values can be placed in
-- 
2.21.0

