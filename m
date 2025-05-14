Return-Path: <linux-man+bounces-2913-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7CEAB611F
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 05:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11AB44A2CBD
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 03:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A4826ADD;
	Wed, 14 May 2025 03:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FI0b+xh1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3512B5227
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 03:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747192557; cv=none; b=iNvmqjLd8FBwX/GWmoBxQbt786J215z3sU1Ci+hHj9JvjiPbdfA5/eVS3DnpZ7MOwsmH7yhLsMkJL6WdtLH5+dJp7Q30o6GKOY5TrvkpvNBsmXKerTSPBsiEXy+XawLOtfv3eQFLKXIGVFyT46fMVH5sk0lh4f0aw54PfchDFBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747192557; c=relaxed/simple;
	bh=u1aLBVfpRiabP39ANAvbdwrOoE13asdp/WOcIv4zXzQ=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=iCo0tLIFAEiULz0MVaCnNaqfb1AbYhYwVSXUSKJFo7l0iiwdQ4p9bkuk6ovuLBhd3yrimDqhSfdo+I+T66O/NCIUJMSC3OdU3WKqNS4vF/iSY1kYXgn4gwWd1mA2hJzFuEpBCFqMxQ9unh6nT7SBT8lzLHLb28zJm8yDwVrvoRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FI0b+xh1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98644C4CEEF
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 03:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747192556;
	bh=u1aLBVfpRiabP39ANAvbdwrOoE13asdp/WOcIv4zXzQ=;
	h=From:To:Subject:Date:From;
	b=FI0b+xh1fb08jbvTVsv16a16oFUX0+R1YPZAgsUh5sGsNiEefpBmC0YihmGf46uB+
	 XYDYfPuoE3Uy8Dpx8am5CtDLxMsdlWrlJ4f2RVMnmHMV+WW6DoVyGwVY7ZioXTzF2c
	 1tnYvv5LL8QhiH5nkXL5ibvnpNzdVuNom7M37EVfJb8ltB8jL6IqoWRCuESq0DGjZ3
	 jZzi5Xq7T/VipRzPrfA+PMzjTSK2uIruaF99bSyYT0DRpiApWSUvqbd0WsL1ed9i7Z
	 h6nrh7q3FI7q4bFCzTEvT/fDPqbyyp4vqBtjsUw5zobdJo4w5pEGT4UjqzUxnPYyGX
	 9QNUIpowYrnAg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 8B61CC4160E; Wed, 14 May 2025 03:15:56 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: =?UTF-8?B?W0J1ZyAyMjAxMThdIE5ldzogTOG6rXAgdOG7qWM=?=
Date: Wed, 14 May 2025 03:15:56 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: tracpham2210@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-220118-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220118

            Bug ID: 220118
           Summary: L=E1=BA=ADp t=E1=BB=A9c
           Product: Documentation
           Version: unspecified
          Hardware: Intel
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: tracpham2210@gmail.com
        Regression: No

L=E1=BB=97i g=C3=AC =C4=91=C3=B3

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

