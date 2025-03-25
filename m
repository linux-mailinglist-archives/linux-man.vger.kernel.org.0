Return-Path: <linux-man+bounces-2650-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D0DA6E799
	for <lists+linux-man@lfdr.de>; Tue, 25 Mar 2025 01:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27B0017406B
	for <lists+linux-man@lfdr.de>; Tue, 25 Mar 2025 00:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3634918E3F;
	Tue, 25 Mar 2025 00:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1he+Anb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76D028F4
	for <linux-man@vger.kernel.org>; Tue, 25 Mar 2025 00:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742862777; cv=none; b=ZWm3EBIaVjjjD6rWNnvlCm3E72v07++iGY1wZOEmZqAPWQzF0kwx+/m3z8DAomLke5Q9UeWe9V+uyj9CplT0iUb/W4t6/VqTONcmih/mWYZ6ARSdJvZ5LPHlMh+xevkCCWLM0hwuYe/gpO0dCtQe7RRZbZxKmsyYwDWxyiSByI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742862777; c=relaxed/simple;
	bh=JtbO52MfF5+sHqW6ycVbNA/QMxf2hSZ18U/P5wJDYYU=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=HZ/HgP+ZzGNXv6SUrautXwW7suwACHqqq3at2+sHPTcghl57pHijaFjsecT5V/Lu847+8Ef8a27kRmpGvjIa5aDHeQYIbVTJwORQuce9Ugq6TgY1NsVy13NLL7Lv+ajN2N7GAYuitiwGUWM5WSH7kCd9rR1lTAz2dI+DyN4vVIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1he+Anb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 668B5C4CEEF
	for <linux-man@vger.kernel.org>; Tue, 25 Mar 2025 00:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742862774;
	bh=JtbO52MfF5+sHqW6ycVbNA/QMxf2hSZ18U/P5wJDYYU=;
	h=From:To:Subject:Date:From;
	b=n1he+AnbEdlgceiGo9vLGMHPqjjlzx+kq7goY3FARHIRQ5WMKqW8RDx4N20EgPrsD
	 tv6nMo0LT69yklDzlhgDpszJ12JGvZ8BCKeD6WQHMmU1WdwQiJQwAstaQrdyWVS7EP
	 9LQZELIR+4KhJp0y1sliDeGMlAaZgkpspZ1zFRjNrdElbEBIUNMR4LVuEFMtnpfd7o
	 oPsADbWhFT0pK9mCBjUvMlfbI/pOSEl7B0qqeVkLvjCKWmooMJrItoo+YH0vCqikW0
	 /68jYMei4vDND4xwPZhTfXcbXVkbujzgRRbiL/9/nsE4pEoHoudWV9aZXggogKXrmM
	 xcmZXjcsTBa+w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 4E5B8C53BC7; Tue, 25 Mar 2025 00:32:54 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219921] New: posix_fadvise refers to non-existent len parameter
Date: Tue, 25 Mar 2025 00:32:53 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: ppluzhnikov@google.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219921-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219921

            Bug ID: 219921
           Summary: posix_fadvise refers to non-existent len parameter
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: ppluzhnikov@google.com
        Regression: No

The man page currently reads:

int posix_fadvise(int fd, off_t offset, off_t size, int advice);

The advice applies to a (not necessarily existent) region starting
at offset and extending for len bytes (or until the end of the
file if len is 0) within the file referred to by fd.

But there is no "len" in the prototype.

Changing "size" to "len" in the prototype or "len" to "size" in the descrip=
tion
would fix this.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

