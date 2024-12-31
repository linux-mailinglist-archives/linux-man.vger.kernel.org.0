Return-Path: <linux-man+bounces-2179-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AEE9FF0F9
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 18:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FBAA3A30EC
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 17:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F52C19DFAB;
	Tue, 31 Dec 2024 17:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkityKxO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC3842A8C
	for <linux-man@vger.kernel.org>; Tue, 31 Dec 2024 17:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735666455; cv=none; b=MCNJP48jo64LVovtmg3JKhFXRwrfjygXOTxD33CK8SSzdv2dJvIB74kG29ZTLZsSmH7g9xfdHFP9/QdXeyO4kVhwh+Z4jSmhsmgXUXxFhTDFbHbD0A0O4WOQ1umQPfDVSGk06VwtOCwWBOA8n0lAySJVd2YYYBdfziWBNy1Rr3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735666455; c=relaxed/simple;
	bh=LuoilhvNtyMZfojvJ76LUX+a5MwRgilrDI+5ET3bDy8=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=GJlWLFCMfGkyHDhrX/rJxb5FbN9h38KFdnTzY9C15WkuyfOF8FN3vybppwvXpJ56d5YH57TxF3f8X5QNT9Y/W1n4VIDZMUNm0rXJSaajz+a5sEf3jjogbB0QNPvng9Sx/kbBSJ6MaeAPqs8heo8hCWtVVo8/mUQPAEm+CfOTqzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkityKxO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89164C4CEDC
	for <linux-man@vger.kernel.org>; Tue, 31 Dec 2024 17:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735666454;
	bh=LuoilhvNtyMZfojvJ76LUX+a5MwRgilrDI+5ET3bDy8=;
	h=From:To:Subject:Date:From;
	b=gkityKxOLTyy8HHcll6e/jssID2+DyUiUw4hTIqpFgSshsdEdgmMast6+JKVp0BkW
	 N2tSMi0G/JaHzNxeSsWOMJ0faZYeK2btIOUQTjEOzCJKeFX2z3zDrMdub32RQ2cz91
	 wD4nHql3BQkoVymnVkqhxGjRwqEXSaQYiJTlW45CQZ9RBYpAk3U8aia1zS60MFN75e
	 K2saOW1ienMd0I8mrGFf2we8zwhB9PvGijGOPDT/qHfuSEMHKWC/DB5wxTwTs0BC/0
	 k5m1qpQ4GPXq+U0gRZ9ny+PL+6hukgv6cI8ddLLAwr9PBOnt9jjfTVZVDOpHJg0Zp/
	 9qe8shlyISKmA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 7F6F6C41615; Tue, 31 Dec 2024 17:34:14 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219646] New: Most Make targets missing when path to man-pages
 has spaces
Date: Tue, 31 Dec 2024 17:34:14 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: jason@jasonyundt.email
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219646-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219646

            Bug ID: 219646
           Summary: Most Make targets missing when path to man-pages has
                    spaces
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: jason@jasonyundt.email
        Regression: No

The path to my clone of the Linux man-pages repo contains a space. This cau=
ses
Make to fail to find most targets.

Steps to Reproduce
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

1.  Create a directory who=E2=80=99s name contains spaces by running this c=
ommand:

    mkdir 'Name that contains spaces'

2. Change directory into that directory by running this command:

    cd 'Name that contains spaces'

3. Clone the man-pages Git repo by running this command:

    git clone https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git

4. Change directory into the repo by running this command:

    cd man-pages

5. Get help by running this command:

    make help

6. That previous command will have printed a new command that you can run to
get a list of available Make targets. Run that command.

Actual Results
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This list is printed:

> all
> help
> nothing

Expected Results
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

A list with over 100 Make targets is printed.

Additional Information
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I encountered this bug while using the tip of the man-pages=E2=80=99s maste=
r branch
(b199d102db5be24e0ac88eb6879e3e3b6e0ea722 at the moment).

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

