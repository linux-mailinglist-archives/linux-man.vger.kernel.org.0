Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F22B767EAEE
	for <lists+linux-man@lfdr.de>; Fri, 27 Jan 2023 17:29:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234197AbjA0Q3M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Jan 2023 11:29:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234917AbjA0Q3J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Jan 2023 11:29:09 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929C784FAD
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 08:29:05 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1D07061D0C
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 16:29:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80781C433A0
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 16:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674836944;
        bh=yyjK84xw7qZgxNZGwMK7BqIRQh6HViixig2sZP5kCbQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=KbY6sIADRhREmmLcgMmfB2Hoi5BGIVPhEWMYmGYZzwGjvkfpn1yRy8vruwLqPRGQy
         xVvrym8u+Zcp+VhoLL8jDEtqkt4AG/+UzPxT78Hwdc7AkpznKHr9k8FN3N5iY7E6EM
         4tj6TJa+pQLYV16pwTK4nrr5LK0ryFfvrUSO/Euj0zJvTkP8Ml6YNRDOkwBWhpTz2m
         x9xl4UFFEDnqi5WG9ijmBP1qA6uGNGVnsUkEQq6fgWw3Qun22La97Eme//zl6+b0mr
         mE43n9QIC+/2jiTwfqJ6rsjwM65NtnyXUawE+ilQWp9HmXpVyvHODl0EXIdT9qUger
         UpVlmIf3nvcaQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 6B0CDC43142; Fri, 27 Jan 2023 16:29:04 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216971] add a link from filesystems(7) to mq_overview(7)
Date:   Fri, 27 Jan 2023 16:29:04 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: giecrilj@stegny.2a.pl
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_file_loc
Message-ID: <bug-216971-11311-r7ta9CHtSL@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216971-11311@https.bugzilla.kernel.org/>
References: <bug-216971-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216971

Christopher Yeleighton (giecrilj@stegny.2a.pl) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                URL|                            |man:/usr/share/man/man5/fil
                   |                            |esystems.5.gz

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
