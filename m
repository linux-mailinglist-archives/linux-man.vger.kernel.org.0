Return-Path: <linux-man+bounces-2251-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF48A13C6D
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 15:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF03E188DB40
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 14:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146CF22B8A2;
	Thu, 16 Jan 2025 14:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DzIGp7g7"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E07D22B58E
	for <linux-man@vger.kernel.org>; Thu, 16 Jan 2025 14:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737038259; cv=none; b=fcLliLSMM3LHzUSXx59mlRhXfQlWc/u7wcZ2CzbJ/VRet6y8If2rOElARBq4z9+Hy/M37cbrE18az4hnSGpsA346H4S37OIU9T5XkHoQiBDck3aek3/Nj5s0uFvHSWY4QzT18znCXlrpgWjxQV6YMolHHLBwYGHZXw4NY9Rcq28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737038259; c=relaxed/simple;
	bh=Ugtpl9SH7y98fH6v7GsT0453yzZih4TWy5rrUGcv79I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-type; b=AKUdKHxnaHXHi9Hg0DtfTKuU3gecgNut/4JJFrX1aD2WXuxTA1HLlKebKi6XIGi4qClXN+0LF8P9LkJIuKS6OqtyaETthidsFZw9lFv3DlRwI/h3rhTYWp5usTA5STGQFiDbb8CHc3IXr2hIYBjdebFa9B40tQFn0NeBW8SvpgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DzIGp7g7; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737038257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=365y7JlHC80N2S+oGkqBXtlk3XrzLwH2T51QQBHq03E=;
	b=DzIGp7g7qZUkCGcbYD8JcoBQyMZQaNHTxq6+wUI22vdZtmafx7tuv4ZK+Z6YFhLZ2jn2F4
	suTZzQiSnR5Dky+oZ/J0m38+AUG2LCcQXuwxhX8ljbYX4N1UnUoDfuIVKPcpGbXmUq/w9o
	s8bI9s6LIkYMjrAqcxttg4qofBcSso4=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-PL23JHHZPK27gQ5I_V-0tw-1; Thu,
 16 Jan 2025 09:37:34 -0500
X-MC-Unique: PL23JHHZPK27gQ5I_V-0tw-1
X-Mimecast-MFC-AGG-ID: PL23JHHZPK27gQ5I_V-0tw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DD3DB19560B4;
	Thu, 16 Jan 2025 14:37:32 +0000 (UTC)
Received: from isengard.. (vm-10-0-109-147.hosted.upshift.rdu2.redhat.com [10.0.109.147])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 2CEFF195608A;
	Thu, 16 Jan 2025 14:37:32 +0000 (UTC)
From: Phil Auld <pauld@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Carlos O'Donell <codonell@redhat.com>
Subject: [PATCH v2] man/man7/sched.7: Mention autogroup disabled behavior
Date: Thu, 16 Jan 2025 14:37:47 +0000
Message-ID: <20250116143747.2366152-1-pauld@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15

The autogroup feature can be contolled at runtime when
built into the kernel. Disabling it in this case still
creates autogroups and still shows the autogroup membership
for the task in /proc.  The scheduler code will just not
use the the autogroup task group.  This can be confusing
to users. Add a sentence to this effect to sched.7 to
point this out.

The kernel code shows how this is used. The
sched_autogroup_enabled toggle is only used in one place.

kernel/sched/autogroup.h:

static inline struct task_group *
autogroup_task_group(struct task_struct *p, struct task_group *tg)
{
        extern unsigned int sysctl_sched_autogroup_enabled;
        int enabled = READ_ONCE(sysctl_sched_autogroup_enabled);

        if (enabled && task_wants_autogroup(p, tg))
                return p->signal->autogroup->tg;

        return tg;
}

task_wants_autogroup() is in kernel/sched/autogroup.c:

bool task_wants_autogroup(struct task_struct *p, struct task_group *tg)
{
        if (tg != &root_task_group)
                return false;
    ...

        return true;
}

One can see that any group set other than root also bypasses the use of
the autogroup.

All of the machinery around the creation of the autogroup is not
effected by the toggle.

From userspace:
0
/autogroup-112 nice 0

Note, systemd based system these days is not really using autogroups at all
anyway because any task in a non-root cgroup bypasses the autogroup as
well.

Signed-off-by: Phil Auld <pauld@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
---
 man/man7/sched.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man7/sched.7 b/man/man7/sched.7
index 71f098e48..f0a708cd7 100644
--- a/man/man7/sched.7
+++ b/man/man7/sched.7
@@ -724,6 +724,8 @@ in the group terminates.
 .P
 When autogrouping is enabled, all of the members of an autogroup
 are placed in the same kernel scheduler "task group".
+When disabled the group creation happens as above, and autogroup membership
+is still visible in /proc, but the autogroups are not used.
 The CFS scheduler employs an algorithm that equalizes the
 distribution of CPU cycles across task groups.
 The benefits of this for interactive desktop performance
-- 
2.47.1


