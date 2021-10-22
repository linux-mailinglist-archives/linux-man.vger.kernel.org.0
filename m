Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67190437ED9
	for <lists+linux-man@lfdr.de>; Fri, 22 Oct 2021 21:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232380AbhJVTxj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Oct 2021 15:53:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:51466 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232291AbhJVTxi (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 22 Oct 2021 15:53:38 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id C39CF611F2
        for <linux-man@vger.kernel.org>; Fri, 22 Oct 2021 19:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634932280;
        bh=Yd9i3Xu65dIONlt1n9uRyU8aj4iQo2LZrD3DzFvznec=;
        h=From:To:Subject:Date:From;
        b=kmi1I/mrVfMzCNBkOYaSL3XgcX+fN03y1J7rasnRy1BdVjKNW2DEY6T1xh4xGHgLe
         VhOytX19QJ7N/0xDgEVv496vv/JZixHXe3ITEK4to5hCnmO1iFQ7zqeKfCjJshRE5W
         O/n40Xt0SMky3bmX+RmpRbUpmJTTvGcJ4CXSTBiwQtvmFUtwE1SiT/0juf6YBQPKJN
         gINRG56VtasJ+w8q24ajHfdUVxyDF3ZXTu95JbtuNhpooMU1swSjkccE8foxr9SU48
         tJTYy1V+CPh/DlU2LwBpf/axOzO4bycGNgUBswEFiB5zm9EqCJwPFtA3Lj0qQIdoNu
         rKn2XCibNmZ9Q==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id BD5FC60F9B; Fri, 22 Oct 2021 19:51:20 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214793] New: Missing mention of automatic ICMPv6 checksum
 calculation when using raw sockets
Date:   Fri, 22 Oct 2021 19:51:20 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: xrucky01@stud.fit.vutbr.cz
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214793-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214793

            Bug ID: 214793
           Summary: Missing mention of automatic ICMPv6 checksum
                    calculation when using raw sockets
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: xrucky01@stud.fit.vutbr.cz
        Regression: No

There is no mention of the fact that a socket of type AF_INET6 with protocol
IPPROTO_ICMPV6 performs automatic calculation of the ICMPv6 checksum field =
when
data is sent on the socket. This is distinct from how IPv4 ICMP sockets wor=
k.

As the ipv6 man page says that "the IPv6 API aims to be mostly compatible w=
ith
the IPv4 API. Only differences are described in this man page." I do believe
that the mention of the different behaviour should appear at least somewher=
e in
the man pages. Notably the ip and raw man pages.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
