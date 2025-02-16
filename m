Return-Path: <linux-man+bounces-2460-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CDAA37762
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 21:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F07D6169681
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 20:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EFEE78F4B;
	Sun, 16 Feb 2025 20:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5qUMm13"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28779454
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 20:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739736183; cv=none; b=R7WrwPEzwBT7pyIEdkHI6IZfLmGyINxpuHCQkSRGYQCajq5+01j/JoBio3ERw3VQ85yi0qERGemgjxpJG/7qFF1OIPwKBQ8SVHc1vq16nJB+ZTmz94nS8hGrZ+rsVpDmocAH85myqlmC5GUfciM7f5jqIo3C8mgEhywtaGfzwqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739736183; c=relaxed/simple;
	bh=DmxMjD/F8RGhoD9GX5LCZybU9vwC0Q/vDMm5lpupvmw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CMI3oBryg2eRyvIZ672KXZixJrkWpep8taLxLaiJ/yQIOpg6RbX63s4kWNTPaZ0M6qp+qmlTk75254kR2Er/tKyB1k7D42d+X4FDULMiDnqjm20/6ECCyy5qXgDtq41dAIznaeCL7lP9Oe1EwPaUbjotBJBLBTFblOY89u1jpHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5qUMm13; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60C19C4CEDD
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 20:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739736182;
	bh=DmxMjD/F8RGhoD9GX5LCZybU9vwC0Q/vDMm5lpupvmw=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=L5qUMm138rtKbN3ABXF+AqCm8rSaQq/uXIzNv8ep4qe5uoZpuWgKwsTMdl/Gf6z5X
	 9/5Rgc9NJFDJCAUEM1EZqfj0QPnEehBsJwnrQ9qijbL3tOJpngFjJe7mz1IKKe7ozf
	 sqJMyP3QBBAE51DB4CuiNDJQBM1axTXbybbCzm8kI3khQhV8s5qvw10VI9YZSZDs0K
	 t1AGaBzG/4hbQR+yUOaBX1sSKw0tYP6WCpJg3YqJqrCgztiNtVFaH22E3DR5HMlu+H
	 Z80V42yii+Uxz5DVzEXi3UAK4YuljlRaHGQMatuy/vHv0s6Wnk9Qtn9SwbVQU+FWri
	 QtlwOtGNwWX3Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 4EDE2C3279F; Sun, 16 Feb 2025 20:03:02 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Sun, 16 Feb 2025 20:03:02 +0000
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
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-217709-11311-Cr98WlnhMR@https.bugzilla.kernel.org/>
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

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |CODE_FIX

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

