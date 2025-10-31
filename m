Return-Path: <linux-man+bounces-4235-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E40EBC23426
	for <lists+linux-man@lfdr.de>; Fri, 31 Oct 2025 05:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ADFE54E8EF3
	for <lists+linux-man@lfdr.de>; Fri, 31 Oct 2025 04:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E1542BF001;
	Fri, 31 Oct 2025 04:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2brtkXb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2D725782E
	for <linux-man@vger.kernel.org>; Fri, 31 Oct 2025 04:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761885694; cv=none; b=VaMg26ZOuC1KMKmWjVTJQSTpumv0UX4WQnzwIhsCKDxIZO09DZFCPYnNKjNmV4seasdi6ZyI8dYKL1NN2cnvK5fFVodhmJeIXsHbmB38aWwyAGKOsS0wM2fdAyqLVxl2ChtbOr5WmRHmETOlStJ3JnYurTeE52SlB8a43vc76ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761885694; c=relaxed/simple;
	bh=BgHg5MW7Jz5GR79hPJGmrVLwG/GwgQgNcM8QXBOH8Rw=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=g1xeIdELaNz/Z4wBWgoEOi7KZj0+3W9O0dwaNuMio0TsEOltuOhyf7i6ud/P2+tClzlv5Kewl6NkjkqlOxgkpySKwMqL3zdWir+faneviCl3hoGrlUzArRl/j0AtuBmrs8mSSza1LccCbb9YKYeGbf0q6JX4v8pqD2oR1SOdFhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2brtkXb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B8C4CEFD
	for <linux-man@vger.kernel.org>; Fri, 31 Oct 2025 04:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761885693;
	bh=BgHg5MW7Jz5GR79hPJGmrVLwG/GwgQgNcM8QXBOH8Rw=;
	h=From:To:Subject:Date:From;
	b=Q2brtkXbNR+HJIOR7Z6oWTvH/pRkk5OECRw+J0xSDwRmSRQp9cR8rLfh4MUEy97MN
	 FM2fJ4VL+v478Jd5u8/rzT+03KIbrISTzfg0OlwiACHB0hJF2vqRIG0MAfVF/aamdw
	 tReRf1EowCLZ7SjwXcO1JraLoo//5PdV/fgSDN6p3+LyEGUj8GJ99WZyknrns4zIKC
	 kFjrZ2fwM8+UC9F4NpKaYWqYBicL69K9/7zuyn8+d4ZoF/TCtMpxqJy2UILAp4pROq
	 A9deoaevP3QaoVFepiPAkhqK55VDeDDTbBy4v2RWEaiIsFqMN4k8re+Zm6w+EaXQrU
	 q3pwTJ1Nla4QA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 961BAC41613; Fri, 31 Oct 2025 04:41:33 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] New: Patch of ioctl_vt (2), small clarification.
Date: Fri, 31 Oct 2025 04:41:33 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: teika@gmx.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression attachments.created
Message-ID: <bug-220726-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220726

            Bug ID: 220726
           Summary: Patch of ioctl_vt (2), small clarification.
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: teika@gmx.com
        Regression: No

Created attachment 308874
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D308874&action=3Dedit
Patch of man/man2/ioctl_vt.2

Let me submit a patch of the man page ioctl_vt (2), which clarifies a bit.

I also have a comment in this page about the struct vt_mode in VT_SETMODE. =
It
has the member "waitv", which does not seem to be meaningful any more today.

It is because among all files in the kernel source drivers/tty/, it is only
refered once, in vt/vt_ioctl.c, in the line:

vc->vt_mode.waitv =3D 0;

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

