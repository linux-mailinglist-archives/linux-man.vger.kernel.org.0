Return-Path: <linux-man+bounces-3096-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C3ACDC63
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 13:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBA987A77B9
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 11:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 964F228DB75;
	Wed,  4 Jun 2025 11:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuwzRXLb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5636825179A
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 11:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749036041; cv=none; b=iJJekfd96R8t4+c+8ZEK0jb/3bI4dCwti3uW5EaEYHpE+PmLckjhd04cQUfpyPAVWyc4rCo8fyMEhuy+i3X20jTbxxtwDK9WJ3ZglWX7h8dBFgHUqyDZOm/rpGCTLGFKJfgZsk8MqvPpA8+mOvydVdvMK6+NLLGEb1zVydWlko8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749036041; c=relaxed/simple;
	bh=SrsHY+/XwrszpZyAFSz5zyhWQpQUWhD7Vn+1k9d6Ylk=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=Lo7V4aw4L/4WJH84uL7xEt+dNlNoVuHVMLtcMpW3Z60M9cS6rkVz286fhFN6dQ0det1cyLYxWwdTwC+ikubdZQ0LKW2sC7GXwgJmxLZwiRqcMJfxK1LMSZv7rVKLtYhV+bGSwUaZOBG/50lql9Old/kVSGdktR3PRpjn/yAYhU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuwzRXLb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43C3C4CEF0
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 11:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749036040;
	bh=SrsHY+/XwrszpZyAFSz5zyhWQpQUWhD7Vn+1k9d6Ylk=;
	h=From:To:Subject:Date:From;
	b=BuwzRXLbZvR/FhUJHYPfvGooH74Tj8IHojSjxSi9PHJPocoifkwsZy+29kaf3uVny
	 tnansBo5AypqL3bX9Xk+3y6sJ/4P5EZP0G0W1hxnZeWP1tckIpYVdk0E4iFpkGJ/ZZ
	 k2b8QYTjsi51NoWXsS7LIhQNyPD45xcDMG9mGDDJ74Dl+Lx5EoMunkHrCgwIqPpqvf
	 zh9czbcOme0Z6Q5ijdzWdW5lu/3aK580iqQL0vrVHl8jvE2QDJbKV4ezETwuCKuYB0
	 KJO2ZorFY2asB4+c7f4eQQOmhr9e9XfFlo4SyYWXS/krYEaoIzuewPUPE5AIJOBbFA
	 5BK2OMRYwXZ9w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id BB763C53BC7; Wed,  4 Jun 2025 11:20:40 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220192] New: Duplicate size parameter in setxattr manpage
Date: Wed, 04 Jun 2025 11:20:40 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: paul.f.fee@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-220192-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220192

            Bug ID: 220192
           Summary: Duplicate size parameter in setxattr manpage
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: paul.f.fee@gmail.com
        Regression: No

The 6.14 man pages document the API of setxattr as:

int setxattr(size_t size;
             const char *path, const char *name,
             const void value[size], size_t size, int flags);

The first parameter shouldn't be there, it should read:

int setxattr(const char *path, const char *name,
             const void *value[size], size_t size, int flags);

Detected on OpenSUSE Tumbleweed, package: man-pages-6.14-1.1.noarch.rpm
Confirmed same issue in upstream tar file:
https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/man-pages-6.14.tar=
.gz

Not present in 6.8 man pages (as used by Ubuntu 24.04).  Flaw was introduced
sometime afterwards.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

