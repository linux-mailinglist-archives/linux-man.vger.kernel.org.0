Return-Path: <linux-man+bounces-1764-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F2C96A2ED
	for <lists+linux-man@lfdr.de>; Tue,  3 Sep 2024 17:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F8CE1F27C2E
	for <lists+linux-man@lfdr.de>; Tue,  3 Sep 2024 15:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8495B22EE5;
	Tue,  3 Sep 2024 15:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHdVJRyp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EBE1AACA
	for <linux-man@vger.kernel.org>; Tue,  3 Sep 2024 15:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725377856; cv=none; b=AGPQrkJi+3+wxu3xjeJBzqAYJp9xQfdSnYWWlCdvJGHB91v+aN2/Io9PJv8TxRXKpKd/Yzceph9k8GIS0lEWyXCXmRfWo/BRbat4YNw5hEnyg5tZPpcz7IBTFSOdJPOowhA3Ibc/W+rKRPVE/w1Lb6gEBU0P2QIDwFBNleLVyrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725377856; c=relaxed/simple;
	bh=TEzWnbuNrwAz1DSx3choN7x5YF3WiADHs/vwi4ZSC9c=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=knnJaZOP3aFbv96anMBiEczF7pk6Unwyy3Wm61QJ2mamry5+BwyLhCGBuWK5jfLVfNsN/u4X/3ZVCk+I5u5aYzC0bJrwJbbFjez12dy5VhPkVMipGw36YGuWnzX9TSQdJVdUa1VBfUH56taX3d0Q9DH0FUaUn3BSDN9eBDHVluQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHdVJRyp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C855C4CEC8
	for <linux-man@vger.kernel.org>; Tue,  3 Sep 2024 15:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725377856;
	bh=TEzWnbuNrwAz1DSx3choN7x5YF3WiADHs/vwi4ZSC9c=;
	h=From:To:Subject:Date:From;
	b=bHdVJRypbtv5e+4m//8NkI+wcbn9GxgCjCvGGPE4ZrGOXqeN4rkt0A0gYc0Sm+7ff
	 FN9pOIFUVP8sHBleKgEZxXBi8vvBoH856FG7ISvF3Ucq1xb/liCCyr/GJUuxz7Hjo8
	 BWfqdlS34e4qVnU0NF7xcacvbWVZVGAxQTeqzmGjgb8F8FzEh2q1PI2rCCYJpescUQ
	 lsnf0OncUlgyKD9t6rBVQjgcv6fdAPUDKfOiOnP/40AJ+sswzZGZo5mWMMLE25sA2Z
	 zOmeBaUoSVWDdH2vYSyRr+4zCbL33/ikbfz1XzE9TspKKO/q3KvfMp5I/DQAYnIUSw
	 OAbO86GJMSncQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 15522C53BC7; Tue,  3 Sep 2024 15:37:36 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219226] New: Invalid BPF_MAP_TYPE_PERCPU_ARRAY value size
 limits
Date: Tue, 03 Sep 2024 15:37:35 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: kernel@dimka.rocks
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219226-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219226

            Bug ID: 219226
           Summary: Invalid BPF_MAP_TYPE_PERCPU_ARRAY value size limits
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: kernel@dimka.rocks
        Regression: No

Not a man page but I'm not sure where else to submit, it's part of the docs.

In Documentation/bpf/map_array.rst in the end of the first paragraph

> The value stored can be of any size, however, all array elements are alig=
ned
> to 8 bytes.

should be changed to:

> The value stored can be of any size for BPF_MAP_TYPE_ARRAY and not more t=
han
> PCPU_MIN_UNIT_SIZE (currently 32 kB) for BPF_MAP_TYPE_PERCPU_ARRAY. All a=
rray
> elements are aligned to 8 bytes.



The limitation is in linux/mm/percpu.c

        if (unlikely(!size || size > PCPU_MIN_UNIT_SIZE || align > PAGE_SIZ=
E ||
                     !is_power_of_2(align))) {
                WARN(do_warn, "illegal size (%zu) or align (%zu) for percpu
allocation\n",
                     size, align);
                return NULL;
        }


PCPU_MIN_UNIT_SIZE defined in include/linux/percpu.h as "PFN_ALIGN(32 << 10=
)"

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

