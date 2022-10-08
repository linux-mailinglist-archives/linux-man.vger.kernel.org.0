Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 179355F818D
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 02:25:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbiJHAZ1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Oct 2022 20:25:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbiJHAZZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Oct 2022 20:25:25 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3427E3ECD3
        for <linux-man@vger.kernel.org>; Fri,  7 Oct 2022 17:25:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C4A6D61DF3
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 00:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F97FC433B5
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 00:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665188724;
        bh=gJg+WAJWr4BD14Xrn12jUIztGBZedr0PaP/hTeL3lN0=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Uosf/kHcw+y6ddN4Nq6QYCq9OlkoFtYQYlT3aqbryzHQ46Ccj6BzOZ8gwkEZxzN3j
         a0+fYLUuOctTDkGi4m/MM+O+GRt8I52tmpDW+yrYUhCP2dA0CdZZWnl8SLc8/Td2q4
         nx9pUYDcssSZplBsdwV2FlIVAzuqtf3LLqbFYeZ1Cf3ncfJYJ5RYUc7SODIjSsuYqr
         8NKM+fBmt4yz0SPZHOVYSYcd4snyXPISppy3YT4ByKIyMD68hcIjUaNvs2Xkb6mf4c
         DJIgSc+GBemRRq7kEfcH/fr3VqTy1VLU78PKN+omNEIkaQFyOGvSgjbJPNmG/LPFJW
         L+r9SMqNCWO/w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0C922C433EA; Sat,  8 Oct 2022 00:25:24 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] vfork() returns EINVAL after unshare(CLONE_NEWTIME)
Date:   Sat, 08 Oct 2022 00:25:23 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Other
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-215769-11311-MqWZPnTE2R@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx.manpages@gmail.com

--- Comment #17 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com)=
 ---
What assignee or component do you want to change it to?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
