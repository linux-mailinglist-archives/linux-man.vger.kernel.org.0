Return-Path: <linux-man+bounces-3870-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E82BEB5816A
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 17:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75B993BE5C9
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 15:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD5723817E;
	Mon, 15 Sep 2025 15:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1DGEjHJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198F8231A21
	for <linux-man@vger.kernel.org>; Mon, 15 Sep 2025 15:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757951982; cv=none; b=MZ1T28Bn9FehzMwyAwXRLJuR/gFPqk0U0TKPopAiI2tpaRBA7t3C1ej7qy62LMbjPYFNhc4hA+cXA+rnaFwffVBr3xFHdMUxRL8BbdXqoDHuCM3JjMf4X552sw70yKJ5MX/JibyVVRMCNDkwNR7wYAcqXPzbCUUPggFgdzXponc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757951982; c=relaxed/simple;
	bh=Z8+QsmNYVYFZ8u49FkiiIVSpB6quavWBFe/KReqvT9Y=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=mVPBVB6q1jqW3JjJyctC66VqGBafvI21iai0tmclRGN3aVipm9Gl3V6foZUB47wJR4CLJDPjpJExOem4xJnZKhx36sTsgb378lgYzOiom5NWF6abR8VmIFXwB4UfBpF+vpxRN6I3TLyrziPyph0OIs03I9KEmOkAVdcX6YAWR1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1DGEjHJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5629C4CEFA
	for <linux-man@vger.kernel.org>; Mon, 15 Sep 2025 15:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757951981;
	bh=Z8+QsmNYVYFZ8u49FkiiIVSpB6quavWBFe/KReqvT9Y=;
	h=From:To:Subject:Date:From;
	b=G1DGEjHJsvJhpO6unCHBi1YLFgEgxGfF15tFvTHEFjTrR26YAFduTa4MG/NGnFWV3
	 loAr9yKkVizpYxf92uSM+mqZLLJk5Y0TrmPBwD9eYwDbJlCWKuV9yo1doGcoyfUVzs
	 Pv/PSVv3Oi0yf02WFcspwdYrI8E6lUfEaIa25+Q9AizDxBQ4orlqcEFeZJSYvg5d7h
	 ufWdDwcCWk/zkZjFm155qDhcunwagvhCq6UAvMS5qt8+2rUMAbbuGCSIzIiT82p3sG
	 termyOkCkNtjZrCukTCHrGjD3ZJ4Sf9hf/LeO62kgSbefhaR3K2yqAf9z2lgBUXRD0
	 eUm8BB8frOXCQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 9C1BFC53BC7; Mon, 15 Sep 2025 15:59:41 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220577] New: Add AMD Family 1Ah ACPI v6.5 Porting Guide for
 reference
Date: Mon, 15 Sep 2025 15:59:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: avadnaik@amd.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression attachments.created
Message-ID: <bug-220577-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220577

            Bug ID: 220577
           Summary: Add AMD Family 1Ah ACPI v6.5 Porting Guide for
                    reference
           Product: Documentation
           Version: unspecified
          Hardware: AMD
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: avadnaik@amd.com
        Regression: No

Created attachment 308680
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D308680&action=3Dedit
AMD Family 1Ah ACPI v6.5 Porting Guide

Adding AMD Family 1Ah Models 00h=E2=80=930Fh and Models 10h=E2=80=931Fh ACP=
I v6.5 Porting Guide
for future reference when linked as a reference in patches.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

