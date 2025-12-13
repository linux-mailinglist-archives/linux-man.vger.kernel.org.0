Return-Path: <linux-man+bounces-4403-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C963ACBB0EF
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 16:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B56F304FB84
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 15:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E37298CDC;
	Sat, 13 Dec 2025 15:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpN6uZ5W"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CB5298CA5
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 15:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765640260; cv=none; b=axKthMiPnfnKk+8e5gkQ8nEv/ZmLp5bAuqTo1sZxyYJVTurLsRZh2dL86OPa3RvVdS0NWx9X5IeI80mLYHbv5yrC2O0BH8yNNlaD/zKrmZ+coTTx7WSvhNX3etm21/O4+WyiV+z/nQ0/GCNUTHS0h4K3aT3Z3iHPgWX79uv3zqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765640260; c=relaxed/simple;
	bh=vDei0Ep6nKBaH0bBVUgewODRIC8LJy8zhGtdvKlHTK4=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gpnTVSdRgeIMpEJoxCj2g5wbE6mqhHOh6pG4NSYGJb9lxlxCF+3Z14oTNwu5pRvgZ4PC3iJ7iq9VciI+BEMeSgMs/7a5GVhmbXsV7+1r+dMQGoQZHQQ1yoQoywMUh3wOhWcZj0gsg7fgAq4qhcLrxk6RbArl4vYcqm+pgX64awc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpN6uZ5W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85F4C19423
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 15:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765640259;
	bh=vDei0Ep6nKBaH0bBVUgewODRIC8LJy8zhGtdvKlHTK4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=RpN6uZ5WJEOpd2jo0Ms6/bpW1gsbxN+PSzMITyByWgbumFWJq1zqSG5+Hy4RjKEHb
	 fDpnu3NzhcBG3xbVytqSLJZcbBCJJUQNunQU7KghvHaSHmlQq/vAfhbW+zSUnfLppm
	 UaGNCTfBwobQkkvvM0M9fvsDGQf3aH1vUsZxd6302dpzrhBIxzWzmCC6I4wLXGwyDG
	 eVkZvLhWgnDegoRlrgVbaC4Jn8oeZQPaciiDUEY00H+7H0+bha4iD7y88LEEDcf8qH
	 VaJyDYudaYGESy7fO2fj4YymJYSGYnPHeW7Oe+z/fHiLdHhiGABC69VIBgfLTed3yp
	 /swhtaGR+E97w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id DF258C4160E; Sat, 13 Dec 2025 15:37:39 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Sat, 13 Dec 2025 15:37:39 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: longdescs.isprivate
Message-ID: <bug-220726-11311-5VulGWhdGQ@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220726-11311@https.bugzilla.kernel.org/>
References: <bug-220726-11311@https.bugzilla.kernel.org/>
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

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
      Comment #6 is|1                           |0
            private|                            |

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

