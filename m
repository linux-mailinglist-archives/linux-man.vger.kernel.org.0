Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA175661452
	for <lists+linux-man@lfdr.de>; Sun,  8 Jan 2023 10:37:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230165AbjAHJhQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Jan 2023 04:37:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbjAHJhP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Jan 2023 04:37:15 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0E1A1162
        for <linux-man@vger.kernel.org>; Sun,  8 Jan 2023 01:37:14 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5B8CDB8095A
        for <linux-man@vger.kernel.org>; Sun,  8 Jan 2023 09:37:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01E59C433F0
        for <linux-man@vger.kernel.org>; Sun,  8 Jan 2023 09:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673170632;
        bh=mQGrItw5iwXIKKwHOEPYy2rsbigEr/VHQ4HVEVR3C+o=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=spLnIHEOUIUCLIRBnS0s2oZp2vqhNwf4jFYCTViTmP7XwA1ICaaRwRbvUfBR1By5h
         ivs6jiIk90mzOQd+cvDdZFMsvb5b4SBd1MhtwWC17mzhCsmqYH+rykX3w3TjQRImBq
         NKJMIfE3LuIkxvubf8cjWFQgLejjWJW+2PAcX0UKrrKv1mek9rnesuy/gsMc5F61le
         8CMDrFInLJf44mFHaPIuaNuYBow6/Z6YRygh7huO4GDgC6W1gGYE1gyHP72E4X8ilv
         gmkz2936EykFTtnN+3vxxG7uei8WSVMeJtYoVZnvTFXzpkRYGgPQP8RG6DRNXOq4Z9
         XhQCgujCS9p+g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id E15FEC43145; Sun,  8 Jan 2023 09:37:11 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216648] man 5 core incorrectly states circumstances in which a
 core is not produced
Date:   Sun, 08 Jan 2023 09:37:11 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: veluca93@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-216648-11311-0xwfIQnQtG@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216648-11311@https.bugzilla.kernel.org/>
References: <bug-216648-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216648

Luca Versari (veluca93@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |CODE_FIX

--- Comment #3 from Luca Versari (veluca93@gmail.com) ---
I believe this has been fixed now.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
