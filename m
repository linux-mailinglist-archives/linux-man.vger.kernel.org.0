Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C90C7458F4E
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 14:22:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235215AbhKVNZf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 08:25:35 -0500
Received: from mail.kernel.org ([198.145.29.99]:36850 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231697AbhKVNZd (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 22 Nov 2021 08:25:33 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id 72AB060462
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 13:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637587347;
        bh=ZaWnZu+SFuruTR7W8XJbJ9GpAMsReAxILG6TgDqhAsI=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=iZSViyMkNIXpKV9lA8uceQwTn1kJVuJw2hOcKj8hPU4FKuQHtbwkmSAsQjFFvYDBL
         QYohHVt8P1cUCpgQ6jZRkVmVkCsp45Ax2hkyY4EBXhArEo0xz/PFiqbWW2duSuVZrR
         g6zsfA8+a6sN+PWp5snC+LeRMHQh9J70QnTaR9okOQAS3Z/dnyOAIt3SJiO+mPUlHb
         seQ5Kzl1d8LWT2BmJSvmwa8XhmldN/YvmhQXlKBjf69u9+m+yPqYIgwCfrFW0jAyHJ
         i3Z+/ZvknrUaMKizyTmklQhhWDxL8BHAQR9A4lJF9O6kQL327tHpTtDcVp7rhKhle3
         /C8S3VcOU9K3w==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 6CF1C60F01; Mon, 22 Nov 2021 13:22:27 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215097] Example in getpwnam_r man page compares size_t variable
 to -1
Date:   Mon, 22 Nov 2021 13:22:27 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: fabian@ritter-vogt.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215097-11311-lmX7TaUEV7@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215097-11311@https.bugzilla.kernel.org/>
References: <bug-215097-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215097

--- Comment #2 from Fabian (fabian@ritter-vogt.de) ---
(In reply to Alejandro Colomar (man-pages) from comment #1)
> Yes, long (sysconf(3) uses that) or ssize_t (to indicate a size) seem bet=
ter
> types.  Which one do you prefer?

IMO using "long" makes the most sense. It's already used as the return valu=
e of
sysconf, while ssize_t has no direct relevance to the code.

> Also I noticed that sysconf(3) doesn't document _SC_GETPW_R_SIZE_MAX.

Oh, indeed!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
