Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04F5A7096FE
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbjESMC3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:02:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbjESMC2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:02:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A480F5
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:02:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ACA8265719
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:02:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2178FC433A0
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684497747;
        bh=gD0MNapGVAU7cErT7rQQfn5OsXuciq1+RV/PGGk3oF4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=EJrzk/BObLuRirXxcQla8aPWjlkMbcazsR/VJTw/Sp7Ao1POR9B4NZs6vnihFxwrN
         bO+aolw1iNu3ctY8j+Mz7j83NPiatRI/mL4CKTuZgl3JSHPvX/aJ1+QeyTEdWmXOpl
         M2lmXrJCTflzXWJVBrO1trC4jT3FOINwid6b3aIIFFBFkko4dcZPOxM9s/zjLnrqtQ
         XDAQKVoou/OI7ux70XN0YrSTryGkZvKjf2JL6Eku0pBz5Sg5O1HjWSfO3fNr+P+Us3
         sbd/o/g6Jo+Cv93c/OusC6gk2sLSSeni9aIu63T2xC2s3TCf5OjYlGhr3LnbmyefAa
         Nq21cnnUeYJJQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0C01DC43141; Fri, 19 May 2023 12:02:27 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217148] man-pages-posix: create symlinks during installation
Date:   Fri, 19 May 2023 12:02:26 +0000
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
X-Bugzilla-Status: ASSIGNED
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status
Message-ID: <bug-217148-11311-1nISUuEuX4@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217148-11311@https.bugzilla.kernel.org/>
References: <bug-217148-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217148

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |ASSIGNED

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
