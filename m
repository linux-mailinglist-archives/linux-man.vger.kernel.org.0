Return-Path: <linux-man+bounces-3316-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1E4B1B215
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 12:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D28E2168B85
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 10:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89BA61DE3AC;
	Tue,  5 Aug 2025 10:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyDq/XNh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E762E36FE
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 10:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754390067; cv=none; b=d2iFJYUk65MRMqqzhUOxnylGToFHMSKkC1GYD7W+qfGkQUt69YKdIhkBMVaW/TI8SU/2AfWa9DilRsvr7rA6e+CARW6oEND3L8E9PA/Hotx4jKuY+YGnN6UtS5zfMsedmT4xJfwB9+2kMSbYxmC5c4IPyPszFJs5URC97JrXoug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754390067; c=relaxed/simple;
	bh=E0cWk08RTxVPA1gcJ2JC+Np4pvmYdmq/TAelUfUf9LY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=N7MUOBzG/l1iPA9vlHr3xnQcZ4W2sOVrHEMN4x77abs2OQdYkEWO3dtRR7tYfdMgRfhs8jYMOhZvaEmIZjcZSIsaE9h6poVcXg1p+S8K2Pc/q/WHmxV+5nfao51JKDrh9RyTX7HggO9d0E6YCJmxR1TP3ZY0HIbU32EE2y+Fo10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyDq/XNh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51FBC4CEF4
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 10:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754390066;
	bh=E0cWk08RTxVPA1gcJ2JC+Np4pvmYdmq/TAelUfUf9LY=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=tyDq/XNhA13COPKc3bGFG77ZSBrpG2of28A1NlF5ACsDO4GO2GHPTFBvx0BUZRD1o
	 QJittQUfqRYdyDe5pdKgLzGI7Eu5NYWBPONO1d2ZRy82EEiUFQYK2sTrs9O0/v3HW+
	 YcJO0b+uHJgZo7HPcx9bQx6obNFo85n/UL9eYLQbySOtQFKFanYAYrAj1J3IJPMYWK
	 xBZqjZ+kxVx6NP90+cIhg/6eJ1xBGY/nl8mchLO6m+Maj9wmdSOnDasJUJfklgcjfi
	 KZED3mslvcfgET0mg8ODvXluBEl8CItxzeReye8ZmKpUZ6TH1eJNYK8BUJN0g3gChG
	 siH10Ik9eSs4w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id C77A5C433E1; Tue,  5 Aug 2025 10:34:26 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220405] can mmap a page, but munmap fails with EINVAL
Date: Tue, 05 Aug 2025 10:34:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aros@gmx.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: component assigned_to product
Message-ID: <bug-220405-11311-7ugF2U4Hd4@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220405-11311@https.bugzilla.kernel.org/>
References: <bug-220405-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220405

Artem S. Tashkinov (aros@gmx.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
          Component|Page Allocator              |man-pages
           Assignee|akpm@linux-foundation.org   |documentation_man-pages@ker
                   |                            |nel-bugs.osdl.org
            Product|Memory Management           |Documentation

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

