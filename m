Return-Path: <linux-man+bounces-1783-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A3398A85C
	for <lists+linux-man@lfdr.de>; Mon, 30 Sep 2024 17:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0CAB283DD9
	for <lists+linux-man@lfdr.de>; Mon, 30 Sep 2024 15:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E611F1925A4;
	Mon, 30 Sep 2024 15:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCOxRL6k"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71FE18FDDA
	for <linux-man@vger.kernel.org>; Mon, 30 Sep 2024 15:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727709724; cv=none; b=X+yFUuM1mwm1MmpuRH1yXDgjvOKVCAyEiOuUcv86t7RYamIXcoUeeJcH7PCNGyzUXm9fEtlQ3r4r6jipHuA4j0c7ABAItbjwiV1BJoroX1DwOlM49B1fJannrO4E2qZWRR0tUnfIrdyDPszIYNYIj+PaQfBXN+CzKuP0T/pkHz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727709724; c=relaxed/simple;
	bh=9BLgB4gL38t0spy1Ur7cEtbBRrPGpqVeA2FihXxnjiM=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=fi4kc6CWMtOBFpaOVEKaPUffyDrxFfIA2mPTbNUIvFPdKeM0kp5F4O80Wn7Um5Gvk6imYQEIvO5TznlGxoNwzjYiMnPTGq2w8JYI+Jsjl3TOHY5eSag33QZ2528CpfdALwaNpmMvSIqZhHPV6p8JMFcAR50cSakfnSojyD/cB0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCOxRL6k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADBEC4CECF
	for <linux-man@vger.kernel.org>; Mon, 30 Sep 2024 15:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727709724;
	bh=9BLgB4gL38t0spy1Ur7cEtbBRrPGpqVeA2FihXxnjiM=;
	h=From:To:Subject:Date:From;
	b=YCOxRL6kDeveq8Cg5J2+yOqyE2xKSBHXjt82yfewUdjy6HfhgLR+ays7OaQO1Czm/
	 ax/ydW+ZXi3kDP1tdnyHqAFLvtBzyh2M7jEJgbiKmRcTs7q0xwKXu03jzhNV6qAMcd
	 7LYDdxsdc4SLlsc4tDqWwq+/4PdvaTAJiQnYljJ9PTvgkx2cMswW1l1/vmu+k4eMYb
	 k4i6ZPn4RBBaIm+OXqTKeMxXOzQnNh1CvSgtA0s+EpoVzJE7NEqv1FFGIeXUw4NygV
	 ILsY3snX95w0OLHwFmv5lDRv3Cq2xpTmv7UVCKUnlJouuvcpSfogKhovxQp8t/Rzkq
	 aFjI6edwMvvAA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 5B011C53BCA; Mon, 30 Sep 2024 15:22:04 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219335] New: Wrong in the write text
Date: Mon, 30 Sep 2024 15:22:04 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: rmbeer2@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219335-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219335

            Bug ID: 219335
           Summary: Wrong in the write text
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: rmbeer2@gmail.com
        Regression: No

For /usr/share/man/man3/sem_post.3.gz=20

In the line:

EOVERFLOW: The maximum allowable value for a semaphore would be exceeded.

Must change to:

EOVERFLOW: The value exceeded SEM_VALUE_MAX limit.

The text in the help must be as illuminating as possible and avoid confusion
about its real limit, one cannot inquire, assume or guess what the maximum
allowed value is. And much less waste time with trials and errors in testca=
se
to know its real limit.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

