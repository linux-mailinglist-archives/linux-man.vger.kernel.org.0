Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2021B564916
	for <lists+linux-man@lfdr.de>; Sun,  3 Jul 2022 20:27:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232139AbiGCS1l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 14:27:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbiGCS1k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 14:27:40 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 448F72AD0
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 11:27:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B979BB80C2C
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 18:27:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5635BC341CE
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 18:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656872855;
        bh=zQkIj17jSwALxscFaSoVJgpF8s5YsWjL8+bnHVXqHv4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Z2w/W6BX43qMcmg+iZVtOZv8M6WI+n/H97UiF2ihlUuR/MltiohSROjDZzBvzYpMX
         v4xAW82QaR4VfogxzkKgG8vlunqOZ2vCVqbkxgD03dDKfdujOqFeFX4gzmDUymj9yZ
         FeAvdZAiFqJzzJqbOlEYB6NB95d/2IPy6Zozl05MFIteXFioOKKt2btPLjZLjGC2LU
         2H8a+WHtIT568XKSBScct03qdOS31ilVhetdAKPSHYPYv44jSq2dIrrytiXXGBqNKf
         4iC+i9w1hITuiyVVskBOaq0JMsimixSqg4Z5vlszq4Q/vSaCXHrUKCMelHhN8PIRdR
         h6vthSYNeG3MA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 34A50CC13B6; Sun,  3 Jul 2022 18:27:35 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216168] updwtmp(3) doesn't mention need for _GNU_SOURCE for
 updwtmpx
Date:   Sun, 03 Jul 2022 18:27:34 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: DOCUMENTED
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-216168-11311-3MVIMmtqq9@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216168-11311@https.bugzilla.kernel.org/>
References: <bug-216168-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216168

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |DOCUMENTED

--- Comment #3 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Sam,

Sorry for the delay; I read your posts, but didn't have much time to reply.=
=20
Yes, normally I'd ask for a more detailed commit message, but since it is v=
ery
obvious to me that it's correct from this bugzilla report (and also from the
glibc code), and there's a link to this issue in the commit, I think it's O=
K as
is the patch.

Thanks!

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
