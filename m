Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0443F5BB4
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 12:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235971AbhHXKHk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 06:07:40 -0400
Received: from mail.kernel.org ([198.145.29.99]:53904 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236033AbhHXKHj (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 24 Aug 2021 06:07:39 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id DDFDF6125F
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 10:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629799615;
        bh=g6uIaUYH3Bo0UKoJrMP9BWWWUXy+fPONUW8i+gIbyEk=;
        h=From:To:Subject:Date:From;
        b=fZI6Zky6nbdsgddw5zZTnL8bVzG4wk3yC/cboK5OL2WtOX+zjbCAqj45SeZ/X519u
         HMJ8LgvFq5sqf3kfWaGJnd17YVXiXlwRZQFiaBbGXYAeBImqXZTkA3hSsOf7pzyUJv
         Z/bdP6KH46fiFpUlZC4VCRsAOMMJEcyjR0PPSWeNgPiGsZ6OpmKdoCvHTAy2EDhhdz
         GHPRzn2cI1URvukjS2/4JuAf2DUPAkXYfO0o7huvM0SrVwweu0iNRM8i1u3NAAY3Q7
         3UvYY4le9/UftmBlWIA5AreyZRfBly4OtsP71NlEs5nCe9e1WbvRVjyVh7CudAomgl
         WSEs0ZGuHQ5nw==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id D4C1B61001; Tue, 24 Aug 2021 10:06:55 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214163] New: hardcoded library paths in FILES section
Date:   Tue, 24 Aug 2021 10:06:55 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: giecrilj@stegny.2a.pl
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214163-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214163

            Bug ID: 214163
           Summary: hardcoded library paths in FILES section
           Product: Documentation
           Version: unspecified
          Hardware: x86-64
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: giecrilj@stegny.2a.pl
        Regression: No

For example:

/usr/lib/gconv   Usual default gconv module path.

This is not the default path for 64-bit native programs under openSUSE.  The
default path is:

  * /usr/lib64/gconv for 64-bit native programs
  * /usr/lib/gconv for 32-bit native programs

Therefore, it is not practical to patch the manual pages to replace lib with
lib64, for example.

Manual pages should support multiple architectures as a concept.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
