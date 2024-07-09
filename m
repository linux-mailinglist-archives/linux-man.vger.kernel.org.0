Return-Path: <linux-man+bounces-1379-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA14692B085
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 08:49:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D0221F2309A
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 06:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D3E13C3CA;
	Tue,  9 Jul 2024 06:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tko4CTUP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C6F13213A
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 06:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720507771; cv=none; b=mDwoyKYjakG5WS8RasSeb78Jjv6mjZo4Ern0GOhC3uqhbx7yHjmvbgftf3qjGiKNfsTwvluvksUXcJdUvmuhKXENc4kvYoSs1SE831M6qzxZDzU8Aykh08XGhbrLUDmeBV+GNpK8sh6g8nMUtT1MFV9MKmWxddhwF3CAqAj/nDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720507771; c=relaxed/simple;
	bh=Xg3oEbm3jFWEv5nhR3dlThy7QQPMFpN4/sOeRwvY5zw=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=iSifW4wzVb/w6XZrSiT8Q6djEucfSpHIJzxLPEJ0+n5CepwVDMuGZw6bVwM4nAQfZIZYA82qXgrILlqJGlm8+rF75imcAAFhwirqd22x7m9Vfyp/PWNCO5+2jTWn6adH1B/knTaE23eTkknWtxL+ekCBNTyDxIdIEw+8ybmiIMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tko4CTUP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 640D9C32786
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 06:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720507770;
	bh=Xg3oEbm3jFWEv5nhR3dlThy7QQPMFpN4/sOeRwvY5zw=;
	h=From:To:Subject:Date:From;
	b=tko4CTUPZU8Ar0YFJuRI5WvoHx3IVNc1JdUQOQE8T3c6iihN5J/TXHxZV9Yaas4Lq
	 LrpRXZWLQJ4TP4LMV02ArzxdKtKqyTz10OV+nNv0c/M/eeUg9aqK5sVh90xw+Ul7VC
	 CVU1eA4j5STH2QCDpRquYqGav2A8FhJMjTt8OKD3pI71Lka41Q9yIGFgB9eHlyPctW
	 haxteJf09RRFi4dL67hxEUvC7mxoVmpFKVJHqeYd7q586FsNsIxHiKZpMjFJ4OiJu4
	 Tjl6xA7Gp/FCdJGO3omvwqi3pnZ1bJOEkEC2fASi0dQSLt8MwfDceENcdip688Aug5
	 o/aNCm4K7UJ4w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 59E9AC53B73; Tue,  9 Jul 2024 06:49:30 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219017] New: "The call fmod(372, 360) returns 348."
Date: Tue, 09 Jul 2024 06:49:30 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: otte@gnome.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219017-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219017

            Bug ID: 219017
           Summary: "The call fmod(372, 360) returns 348."
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: otte@gnome.org
        Regression: No

I believe it returns 12.

That's from the examples of the fmod man page.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

