Return-Path: <linux-man+bounces-411-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 503CD847ACA
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 21:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B83A28962D
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 20:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D6D77F37;
	Fri,  2 Feb 2024 20:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ujhny4Uy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6DA1804E
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 20:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706907274; cv=none; b=qyimXUvZyhQ5bRduzk8o3Kd8RHN1MQP7jKFjwp4Abc8G7nCloWmqH7kSuN1NtC2dQ4zVgxeUJ/0IHw93+5LcILpQBBMfWyvdBaX0c4WsqI1gGcLu46ELhgcRteKfXcG0Z3EScs7869hTylCDgjYBjtAZb3FBn6GJtWquejpXGdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706907274; c=relaxed/simple;
	bh=cpCziwn0U6swNcINgElxc/dQMyKV0Jiykoy9k7GRmWY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XCKHoNm7/ECE3hfCBblPZXRg/i0eoGt1eag3d+iewBvmFNhARx3AdfX2vKS49CEBXxeHgXf0TUudoHiq1AFDIxBOF6QOmqFP8YtLwwuPQeEMBbGSSLfoEy2LOZ38dgsRbyGPvQ3AWwcvGnE0ucBf+bA0W62ypzjK0fdaOAEDLis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ujhny4Uy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73864C43394
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706907273;
	bh=cpCziwn0U6swNcINgElxc/dQMyKV0Jiykoy9k7GRmWY=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Ujhny4Uy+hKI6CUY8YH2EcQCCQhHmdl9s49VW0ZGoVuoPiQBZ4dg3l9NmvfXPqbwG
	 vCmw1Ma7j2dlxtORTdQO81rua8F+/iwTu/KhIR8yJhXAxKzGKWjcayIvlA2XAC2E35
	 N/yvEQE5ZdxvtWKhkb9gdl6s93M5gVYJm4FFuK/XkUNfdIWIk2/m9kjbXmfRjoGore
	 xmx+7a/qMjeveCazFgGrN1YAWZ6mQQvleg6lcdE1VzNxARuK68AhOgyYvUKHelbuHU
	 N1J4kerQlDHWE49ZDGcu/rbO33mpph9fD9c37kdewHnJjw+183YfQm3FRziwq2KKNC
	 apDRH1ARwe1dQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 5DDBBC53BD3; Fri,  2 Feb 2024 20:54:33 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218453] Update posixoptions to POSIX.1-2018
Date: Fri, 02 Feb 2024 20:54:32 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: cquike@arcor.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: attachments.created
Message-ID: <bug-218453-11311-3WY2dXNPEX@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218453-11311@https.bugzilla.kernel.org/>
References: <bug-218453-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218453

--- Comment #3 from Enrique Garcia (cquike@arcor.de) ---
Created attachment 305816
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D305816&action=3Dedit
posixoptions upgrade to POSIX.1-2018

posixoptions upgrade to POSIX.1-2018

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

