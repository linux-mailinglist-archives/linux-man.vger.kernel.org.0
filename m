Return-Path: <linux-man+bounces-3211-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21692AEA1D5
	for <lists+linux-man@lfdr.de>; Thu, 26 Jun 2025 17:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46B4D7B3FDE
	for <lists+linux-man@lfdr.de>; Thu, 26 Jun 2025 15:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D28492ED150;
	Thu, 26 Jun 2025 14:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5IK7W2v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89AA32E7F3A
	for <linux-man@vger.kernel.org>; Thu, 26 Jun 2025 14:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750949700; cv=none; b=LGcV5LabkV8cJDtF9OHAwwZl6s+R1eGf2P0A/qizxXMbN7QMGFShYA7PYQijr9T6Mvo85m4PJBCMMLu4ZtOs5N2c0k27XXQkQeKu/RDNETu0I+4Ud5sAIilMTmk+GanY79Dd9zoPiRvbzNwIiDvs98o3rZrpL/G2cxfDinmgRHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750949700; c=relaxed/simple;
	bh=itHphjxkXBBmLEO5ke1Y9BLjiGt2mQWy7CkbTcXhMH8=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=t9WTOo51ql+UOUAbkR5W9HmFiGK4bS+b1u0BbW0/w/jvBtKpeUQI7DssnWNI/kHnp91Jso5JgY+zpTT1vrljI+9NSQ3ycjHtyqABYf/x+rLteZnjdQAqh9LWf73apUCx0zpB+BsPCzG3y53cgx8iH9ynAPWzz9Sm4wHBuKrLx94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5IK7W2v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18A17C4CEEE
	for <linux-man@vger.kernel.org>; Thu, 26 Jun 2025 14:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750949700;
	bh=itHphjxkXBBmLEO5ke1Y9BLjiGt2mQWy7CkbTcXhMH8=;
	h=From:To:Subject:Date:From;
	b=A5IK7W2vz6yOiPtZSmmwGUaWb1mnZ5ptGFZDJj3UtIX5pc4Tzi/lERw0yhIp0n2P3
	 Vm2y6Ai0psFomUDw1/dQz1bI1GsKfUD36+DGbjNVktz3mC2BA0un39puSrSOs0IZtA
	 kzTQIW020wN9iMCePJvp+uW8OpSphFEyO3RLPcFS5Ucxk7l5pEJURyHfUQ35aJUcqv
	 t75034lKdkiMVDpH6S9T+1Y2Ei3uYa1rpiJpRQIYB/gEgPhxdW5l74ZZhyxGX8NtR9
	 ScS3BKob8r5fgoUvDhCPObnWmB9obVKX8PfebWca3oTgu6oQE2YQk1C4K7Yr4ziQtJ
	 6hcntSktafXsg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 0BE30C4160E; Thu, 26 Jun 2025 14:55:00 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220273] New: syslog(2): conflict between "The symbolic names
 [...] are not exported to user space" and "Definition of SYSLOG_* constants"?
Date: Thu, 26 Jun 2025 14:54:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: nathaniel@google.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-220273-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

https://bugzilla.kernel.org/show_bug.cgi?id=3D220273

            Bug ID: 220273
           Summary: syslog(2): conflict between "The symbolic names [...]
                    are not exported to user space" and "Definition of
                    SYSLOG_* constants"?
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: nathaniel@google.com
        Regression: No

Over at syslog(2) we see both

```
#include <sys/klog.h>        /* Definition of SYSLOG_* constants */
```

and

```
The symbolic names
are defined in the kernel source, but are not exported to user
space; you will either need to use the numbers, or define the
names yourself.
```

Is there a conflict between these two? After reading the first one I spent a
while trying to figure out why I wasn't able to use the constants in my code
despite having the include; only much later did I notice the second one.

If there's no conflict between the two, what might I be misunderstanding ab=
out
the first one?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

