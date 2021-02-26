Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BAA5326653
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 18:29:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbhBZR3M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 12:29:12 -0500
Received: from mga18.intel.com ([134.134.136.126]:11180 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229550AbhBZR3J (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 26 Feb 2021 12:29:09 -0500
IronPort-SDR: D/VfvmTR5ATfkswZahODZMySIaSUEAULDrbmuHUARSCyzxbJQAYOpINfbTk2uU2SUyUZKE3sn0
 7DmNGnasL+0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="173587224"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="173587224"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 09:27:57 -0800
IronPort-SDR: kWM7i6bjCnSp3GFBkPPuXG6TEQ8gl2sM91C8rHZuwUn4QGEn2r9gs7D2f0QdAbeKOvMAjafXzV
 QLa6+fK0Ff8A==
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="405052447"
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
Subject: [PATCH 2/2] sigaction.2: wfix - Clarify si_addr description.
Date:   Fri, 26 Feb 2021 09:26:34 -0800
Message-Id: <20210226172634.26905-3-yu-cheng.yu@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210226172634.26905-1-yu-cheng.yu@intel.com>
References: <20210226172634.26905-1-yu-cheng.yu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SIGSEGV fills si_addr only for memory access faults.  Add a note to clarify.

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
 man2/sigaction.2 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 49a30f11e..bea884a23 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -467,7 +467,7 @@ and
 .BR SIGTRAP
 fill in
 .I si_addr
-with the address of the fault.
+with the address of the fault (see notes).
 On some architectures,
 these signals also fill in the
 .I si_trapno
@@ -955,6 +955,11 @@ It is not possible to block
 .IR sa_mask ).
 Attempts to do so are silently ignored.
 .PP
+In a
+.B SIGSEGV,
+if the fault is a memory access fault, si_addr is filled with the address
+causing the fault, otherwise it is not filled.
+.PP
 See
 .BR sigsetops (3)
 for details on manipulating signal sets.
-- 
2.21.0

