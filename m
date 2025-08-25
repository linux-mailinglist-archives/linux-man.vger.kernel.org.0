Return-Path: <linux-man+bounces-3708-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0256CB33694
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 08:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85EF57AAD03
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 06:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D780D27FD46;
	Mon, 25 Aug 2025 06:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twp5gFvB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9354E143756
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 06:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756104012; cv=none; b=HYZqg2FFfTHADF3ykSo3tG3cEql6L5QtcyucAKBZ7nm/836pR5GJPqdsA8Mam6/ueeMcvdCBAiEER97BI36343BW1u+mrgfsMMfSV2faTIvz4XBEAbnqFJNV47DnX9xVPdbDOtbZiz9VuXGf4b3BWWp7sbN5LhJZpJAYB+Hhhfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756104012; c=relaxed/simple;
	bh=fDCt9RQMn7kEFwzP5JQvfiLsXrSX9t7+uqYQ9UYzCrg=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=LdpApY4U9CDQzc3iV9SAXeli26jw1TKhcrhgbvejRJOVMf0NfvY51K2x50HrnltDDa3DLhq1fEU2bqUo6m+S0gDom9VFo16vEkqiVH+r0IP/OzKp3nQP5j1vxsK4u0UrNkGdDAI2cJNe3pm1simnZm7JJmMv7zopD2NL9dccubo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twp5gFvB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13185C116B1
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 06:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756104012;
	bh=fDCt9RQMn7kEFwzP5JQvfiLsXrSX9t7+uqYQ9UYzCrg=;
	h=From:To:Subject:Date:From;
	b=twp5gFvBaG1Xw4rvLVl+s5SHm58N+vDCtBOVSOsJYfA3rHMBDbIupbg8zDBLR0YVy
	 GAxTyhRjSpSROZYeEWNd6UgrFVmR0yKZHU7Bm1WOS/t6DtW0OcI6Ju7TfB8hJ19mek
	 dboDjXYf4GALD/2/lJUQmaTtud1C0DHoeLeNNIb6fI250S0slGLzj1asW2QjmEo0CR
	 CDNoU/NeQ/x/uMn5hTcrZmqpIByfy/C4FHtu3qnSkPYyiwVzhopB06fXpTtcpmAX9A
	 TvFYEVznC+ys6bvNfqeEyFrVVzWckicb7gu5qqSGGeCQui8Hf4cpERwjs0bRY62qrA
	 LkZfFCg4iumdA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 060F0C53BC7; Mon, 25 Aug 2025 06:40:12 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220489] New: copy_file_range glibc user-space emulation in
 versions 2.27-2.29 only
Date: Mon, 25 Aug 2025 06:40:11 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: hvtaifwkbgefbaei@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-220489-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220489

            Bug ID: 220489
           Summary: copy_file_range glibc user-space emulation in versions
                    2.27-2.29 only
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: hvtaifwkbgefbaei@gmail.com
        Regression: No

Current version of the man page: "Linux 4.5, but glibc 2.27 provides a
user-space emulation when it is not available."

However, glibc 2.30 changelog:
The copy_file_range function fails with ENOSYS if the kernel does not suppo=
rt
the system call of the same name. Previously, user space emulation was
performed, but its behavior did not match the kernel behavior, which was de=
emed
too confusing. Applications which use the copy_file_range function can no
longer rely on glibc to provide a fallback on kernels that do not support t=
he
copy_file_range system call, and if this function returns ENOSYS, they will
need to use their own fallback. Support for copy_file_range for most
architectures was added in version 4.5 of the mainline Linux kernel.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

