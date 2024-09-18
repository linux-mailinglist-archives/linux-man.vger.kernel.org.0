Return-Path: <linux-man+bounces-1775-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A528597B8E5
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2024 09:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5797F1F23479
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2024 07:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281C416BE39;
	Wed, 18 Sep 2024 07:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roqTxizR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC037139CF2
	for <linux-man@vger.kernel.org>; Wed, 18 Sep 2024 07:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726646366; cv=none; b=bdXQnggwlMx/iFbvvRdKH83h6t66NDnHTHFiFdfjKz9EBrJ0SGwK8kUdp1CWk6X5j6l59WzlHNio49l/rUVlOqShezApN+kNFSHa9ekPMTn6FZlOfjBXg+V884nOGKW4yRxq5PuaOSi9H9gVSStdslvC4LTCrtd5y7t8+fYsnZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726646366; c=relaxed/simple;
	bh=hVPA1nvItIPxWlAZY+FQ6UCFoQiQqstb9bPK82qYaa0=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=ijBBH6e4H8PgAo0+QDtmKXdvAr2CtEUYfSWaGfHfzlbHZVIMQhZrn80NaKJtm9Ym9FDKTAF11arW1WHE2S48giPKxK9myioww8FShzyK2hvz97PbOJmlD4tuRGVftvhNieFTHqh4VFBPh9X20Ivu0gTOFGNmPxbnk4V7t9Glj5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roqTxizR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C572C4CECF
	for <linux-man@vger.kernel.org>; Wed, 18 Sep 2024 07:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726646366;
	bh=hVPA1nvItIPxWlAZY+FQ6UCFoQiQqstb9bPK82qYaa0=;
	h=From:To:Subject:Date:From;
	b=roqTxizRPogM5UInO1HafyTj2UucWxJltiOSTKW24UHRz8ZwJJZHenrXGxOHwM6B3
	 u5JGGe8ut+b23LCchewjWa9uLVHiQW3s2tgPqDHT94pi4jAoXdqPdoX7dWrxV8p1rg
	 QkKr/c9VC5cre711c9sY2sybuev3bzBVIh39CbcTWwCVg5TZ6kXMKL28AtiA1Wkio0
	 se8DDSHTr2GfUdgxfhsDwiKEFmZw+itIKb0uqy8bvDfr50P8UV+yGN19hwYdxrm64P
	 HuwU9bETw9kdrlvHV+03MBycw7GYz3v9J5kCNZvUVlStkBfe3c8rcb/OBrgnNR+cm6
	 JArL2zPWAFuiw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 626EDC53BC7; Wed, 18 Sep 2024 07:59:26 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219288] New: Missing mount point for UML /etc/fstab
Date: Wed, 18 Sep 2024 07:59:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: marian@famion.eu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219288-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219288

            Bug ID: 219288
           Summary: Missing mount point for UML /etc/fstab
           Product: Documentation
           Version: unspecified
          Hardware: Other
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: marian@famion.eu
        Regression: No

I think the /etc/fstab displayed at
https://docs.kernel.org/virt/uml/user_mode_linux_howto_v2.html#edit-key-sys=
tem-files
is missing the entry point for /dev/ubd0, the "good" line in that file shou=
ld
be
/dev/ubd0   /  ext4    discard,errors=3Dremount-ro  0       1

In addition:
- filling this bug report has no "UM" (pseudo)architecture ar the "Hardware"
menu
- while UML speaks about using the new vector transport, performing 'make
defconfig ARCH=3Dum' produces a .config file where CONFIG_UML_NET_VECTOR is=
 not
set.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

