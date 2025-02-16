Return-Path: <linux-man+bounces-2462-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A2636A3777B
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 21:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C866F7A38F5
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 20:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E201A238B;
	Sun, 16 Feb 2025 20:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd7vdVQh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4B11A0BE0
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 20:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739737562; cv=none; b=aZYH/vuKzLijDCRb0eDGqIj3PxoIIFR3GF0RRuOkFZKt6awaNo89SSspfdDg/cK546Qp6Jb12WyR9WVjA3iz/xO1Iqc6Kdg1eTd1Xz239/3r8pXYSSAkD4ofpfIp2UUpoBCnv5gkBfHf5p20d7C5lz3d2a6N6nqF1lSfJLOEwCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739737562; c=relaxed/simple;
	bh=Txd1JdcW3vxXN9ydhFyly6bjoiqHnzO/p2oBoZyVBXs=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RTRUrcsS1wB59Pw867KhdxMckj+QYmQUQW4v6smQMKptbNQptyFFTLRw9/YmfmtlVvsB8/ke7hYt5Zp6dDNqspHqKU8L6jBu2bB0KLFmc+H7ERVEaIdgFcz+H2EFkfqJRI2n+3TjaVL8HrwKxiawLLV1z3lw9WGPm6bc62Y3jXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd7vdVQh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A14EC4CEDD
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 20:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739737562;
	bh=Txd1JdcW3vxXN9ydhFyly6bjoiqHnzO/p2oBoZyVBXs=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Fd7vdVQhf8JVKCTW6wVMDhlSoIIbOstpfXqWbKMxev6Rkg0czS+o88BbQvA5aJoXq
	 cZDsh9n2BieA0lubjcCM2YeEEA25D9LwXztE6Yq3//WW2jYXeHg75Prp7PoVMJ7ZRv
	 MDODG2COeFZj5CrZ97BSN/bl2F80L1yhmJ7qhsOJO90pTP9dgfyaqOLCj0S9yxxo+7
	 opiJUlr+04mV+3Nvj1up69fAvklwB/DLyC48GTxMIEeYEFvCfhmHRiYiZH8Dkw+HFx
	 dvgGcdU/0ApzREU7W0v15Gbt6lcXB8/X8/RO+c1CeuvwIukLfqFjH485Ic8LhDheFV
	 G7xPTxmPFHEpA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 6DFEBC3279F; Sun, 16 Feb 2025 20:26:02 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Sun, 16 Feb 2025 20:26:02 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217709-11311-MfEBHWjCRV@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217709-11311@https.bugzilla.kernel.org/>
References: <bug-217709-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217709

--- Comment #9 from Alejandro Colomar (alx@kernel.org) ---
Makes sense.  Thanks!  :-)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

