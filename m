Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3078432664F
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 18:28:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbhBZR2i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 12:28:38 -0500
Received: from mga18.intel.com ([134.134.136.126]:11180 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229550AbhBZR2i (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 26 Feb 2021 12:28:38 -0500
IronPort-SDR: 2zxCUv5uB+jjCSt8qM7TlE5NP7TWIE8jPBHwqiIuKhf6vfC8U4qfKO/lN/VwilQbms+1noSqma
 cW1bL4LdE4Hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="173587218"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="173587218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 09:27:57 -0800
IronPort-SDR: RzmeFdSRfYABg3rHeDV/nLrSletEtkoodJaR+vOBewS610TzSt+PvJ7drhutuNAI8g+D86F2vm
 aZ9OvIWDf/mg==
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="405052437"
Received: from yyu32-desk.sc.intel.com ([143.183.136.146])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 09:27:57 -0800
From:   Yu-cheng Yu <yu-cheng.yu@intel.com>
To:     linux-man@vger.kernel.org
Cc:     Yu-cheng Yu <yu-cheng.yu@intel.com>
Subject: [PATCH 0/2] sigaction.2: Updates for SEGV_CPERR
Date:   Fri, 26 Feb 2021 09:26:32 -0800
Message-Id: <20210226172634.26905-1-yu-cheng.yu@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Control-flow Enforcement [1] [2] introduces a new control-protection fault,
which is triggered by a branch instruction (call, ret, or jmp) violating
branch-enforcement rules.  When the signal is delivered, si_code is set to
SEGV_CPERR.  Add the code to sigaction.2, and while at it, clarify when
si_addr is set.

[1] Intel 64 and IA-32 Architectures Software Developer's Manual:

    https://software.intel.com/en-us/download/intel-64-and-ia-32-
    architectures-sdm-combined-volumes-1-2a-2b-2c-2d-3a-3b-3c-3d-and-4

[2] CET Shadow Stack patches v21:

    https://lkml.kernel.org/r/20210217222730.15819-1-yu-cheng.yu@intel.com/
    https://lkml.kernel.org/r/20210217223135.16790-1-yu-cheng.yu@intel.com/

Yu-cheng Yu (2):
  sigaction.2: Add SEGV_CPERR
  sigaction.2: wfix - Clarify si_addr description.

 man2/sigaction.2 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

-- 
2.21.0

