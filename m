Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 216317096FD
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:02:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjESMCV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:02:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbjESMCU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:02:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3265618C
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:02:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AB94C65710
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:02:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B280C4339E
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684497738;
        bh=9pWPXjXA0snou4EK1Ab2iAhqFYKUcjg3fn1pwA3OuDo=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=S8mj0L8ybIbvdZtAP/6AaR9VzbxJyGKZWhTk1EkIiiXhwmRpJmNt21qOvkh5ptUfL
         AziCt80EqmoQMyqGnvM+RSOmgpknLUjQbuv/hLoVe/HdPcCKAZJDu1TeNHJjLAn4pN
         FXxY12mKu66sV3IxaOBWlYBH2BkGOIvnw1IRI5wAtOBoHDXwGiMT0CC5PVJKlhYZQn
         ebyE7LxZm0GaaLFHpaq76412xdZQoNAqHbu/Avrx1diKoiQtqB3LTgQPwbxLegVbKE
         /9VI0jw51MoyuJd5TSe69o2h8nUxuEfRY82KYE8rejOqsKd0vEvX1gkpPs2+CaTkBk
         Oo4BNbktvKVdg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0167EC43142; Fri, 19 May 2023 12:02:18 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217148] man-pages-posix: create symlinks during installation
Date:   Fri, 19 May 2023 12:02:17 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217148-11311-hboZ5LgQtK@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217148-11311@https.bugzilla.kernel.org/>
References: <bug-217148-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217148

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
The man-pages-posix project is for POSIX documentation.  There is actual
glibc documentation for those phtreads functions, but it's not (yet?) in
the Linux man-pages project.  In Debian you can get those manual pages
through the glibc-doc package.  I've asked the maintainers to merge
those pages into the Linux man-pages project.


<https://lore.kernel.org/linux-man/703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gma=
il.com/T/#u>


I hope we soon have these Debian pages in the project.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
