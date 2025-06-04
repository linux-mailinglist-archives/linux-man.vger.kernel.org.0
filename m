Return-Path: <linux-man+bounces-3098-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2232AACDD92
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 14:11:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8427A188166E
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 12:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB521E501C;
	Wed,  4 Jun 2025 12:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMXsVVk3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5B01E5B99
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 12:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749039092; cv=none; b=oU2/qzCfrruuUyocw++O3LxCj//vhn+/n7RX9+ypqsmSiJt3BoHNRcf/+ORe+mm0/05/lJuV9fvE06FAq1/oksMTCs9L1Nnb3iuhaJjtHje5+qOLArjgORtMQoQp0fBigxeQk/yFeTrSXIrqhiYpL6GTG9I55jp9G9LWWYXiQmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749039092; c=relaxed/simple;
	bh=cDDL0FATx83moSCmOcjhcma5ZfTU0D7mnxnPUjl738g=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CDZXSJDlYFXnIRqtzOPlWaMK/O8yety/HRrWZp5ouDDV/L8fbXHkgBgHADrR+SaqjRdNzywXm5htCXLnC11hqXSRa6UMb6Yyqtg1sTILiOv3emqZSsT3JaxXrOOdzxZzeer19/N/HPA8iQPeApp9HwzYxiP91Q4eAdGh81FyMcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMXsVVk3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C56FC4CEE7
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 12:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749039092;
	bh=cDDL0FATx83moSCmOcjhcma5ZfTU0D7mnxnPUjl738g=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=tMXsVVk3EcGXUNwLzboNVbcjyJDnwlLY9H1AslgCXMEV/s89SCANHddyKRxRnBYdA
	 bfB8FuRjvSg9dY7s+Wp0Zh4ahHvrozrt7nzcg1hBl1a7Gsv1P9+61L87Se0z/HNHHG
	 O/rdmX4M/vtxNn6Y3x4ceKEca9SDl/e+9whBz3aRsWm8YLAqPrcaDchgt6hhsXI8fb
	 CTXkG/h72zm2jphLyZht/IcTKGBQFVUU24YzFBdi9sWL0NJn2FPW7pprVQ/NzueWV7
	 L/oiaRJpw67Pz3mxjpAE7fQT8kYwfjRf/XGt14UfbGdwOXOSD0uX78Rwb126MBPRxm
	 rhNH4KVgyeHgg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 403B1C41613; Wed,  4 Jun 2025 12:11:32 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220192] Duplicate size parameter in setxattr manpage
Date: Wed, 04 Jun 2025 12:11:32 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: mnaughto@redhat.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-220192-11311-wKoL9PPL0O@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220192-11311@https.bugzilla.kernel.org/>
References: <bug-220192-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220192

Mark Naughton (mnaughto@redhat.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |mnaughto@redhat.com

--- Comment #1 from Mark Naughton (mnaughto@redhat.com) ---
This is a recent change made to the man pages to include a forward declarat=
ion
before the arguments.

Please see this thread:
https://lore.kernel.org/linux-man/CACdZg2WJtzBYJS06vy4uLNaH2_N73Wn0HHJSSThD=
-F8QnX3d8Q@mail.gmail.com/T/#mc8f93664403f9eacc0add8f02bea4c760dc26499

I agree this is a confusing change and will cause problems as it gets rolled
out to more distros.


Mark

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

