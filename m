Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8178B3C5FDC
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 17:57:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231428AbhGLQAW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 12:00:22 -0400
Received: from smtp-42a9.mail.infomaniak.ch ([84.16.66.169]:53467 "EHLO
        smtp-42a9.mail.infomaniak.ch" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230394AbhGLQAW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 12:00:22 -0400
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4GNpLh21BnzMqJT9;
        Mon, 12 Jul 2021 17:57:32 +0200 (CEST)
Received: from localhost (unknown [23.97.221.149])
        by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4GNpLf6V3Lzlh8TP;
        Mon, 12 Jul 2021 17:57:30 +0200 (CEST)
From:   =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
        Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@linux.microsoft.com>
Subject: [PATCH v2 0/4] Add Landlock man pages
Date:   Mon, 12 Jul 2021 17:57:41 +0200
Message-Id: <20210712155745.831580-1-mic@digikod.net>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mickaël Salaün <mic@linux.microsoft.com>

Hi,

These four documents give a global overview of Landlock and explain each
system calls.  This is mainly a formatting of the current kernel
documentation with some new additional details.

This second patch series slightly improves the content and fixes some
syntax issues pointed out by Alejandro Colomar.

This patch series can be found in a Git repository:
https://github.com/landlock-lsm/man-pages/commits/landlock-v2

Previous version:
https://lore.kernel.org/linux-man/20210706182217.32338-1-mic@digikod.net/

Regards,

Mickaël Salaün (4):
  landlock.7: Add a new page to introduce Landlock
  landlock_create_ruleset.2: Document new syscall
  landlock_add_rule.2: Document new syscall
  landlock_restrict_self.2: Document new syscall

 man2/landlock_add_rule.2       | 139 +++++++++++++
 man2/landlock_create_ruleset.2 | 136 +++++++++++++
 man2/landlock_restrict_self.2  | 130 ++++++++++++
 man7/landlock.7                | 356 +++++++++++++++++++++++++++++++++
 4 files changed, 761 insertions(+)
 create mode 100644 man2/landlock_add_rule.2
 create mode 100644 man2/landlock_create_ruleset.2
 create mode 100644 man2/landlock_restrict_self.2
 create mode 100644 man7/landlock.7


base-commit: 33248cfe50ebb8762208e7ef3264676dad71b016
-- 
2.32.0

