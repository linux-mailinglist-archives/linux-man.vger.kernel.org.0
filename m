Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E1311C5AFC
	for <lists+linux-man@lfdr.de>; Tue,  5 May 2020 17:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729491AbgEEPYr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 May 2020 11:24:47 -0400
Received: from foss.arm.com ([217.140.110.172]:43278 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729437AbgEEPYr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 5 May 2020 11:24:47 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57EA31FB;
        Tue,  5 May 2020 08:24:47 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 697AD3F68F;
        Tue,  5 May 2020 08:24:46 -0700 (PDT)
From:   Dave Martin <Dave.Martin@arm.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] syscall.2: Minor register name fixes for arm/arm64
Date:   Tue,  5 May 2020 16:24:38 +0100
Message-Id: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There are a few inconsistencies in the way registers are named when
describing the arm and arm64 syscall interfaces.

While fairly harmless, it's probably worth fixing them.

Dave Martin (2):
  syscall.2: arm: Use real register names for arm/OABI
  syscall.2: arm64: Fix syscall number register size

 man2/syscall.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.1.4

