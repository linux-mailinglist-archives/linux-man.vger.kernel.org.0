Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CD6E51F9D3
	for <lists+linux-man@lfdr.de>; Mon,  9 May 2022 12:26:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbiEIK2U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 May 2022 06:28:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232498AbiEIK2M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 May 2022 06:28:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 623B422DA0A
        for <linux-man@vger.kernel.org>; Mon,  9 May 2022 03:23:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A6EE560F71
        for <linux-man@vger.kernel.org>; Mon,  9 May 2022 10:23:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11B18C385B1
        for <linux-man@vger.kernel.org>; Mon,  9 May 2022 10:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652091814;
        bh=PQz0mTJuU2eUS/AoFGjYEnfxZs/2uexO9f+CaUnXhKU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=lgUbLwdEf46YM60/8tl6clhNMhwn6f06kuFbhXgV9OUmtU8mi/5x71j2a1FPgAUn+
         CyA3RZ2gh4BWt8NTPQNNWhVxS66q927FALQyn0WwMvE8hYwfCKG120Pp5gWtQojpO5
         PwrrEyHHMfa15ris5VIN9IbOcs+fMP8NGeiP/nrGLRlyCXkr9BuH6BWDKvRTxX/zk6
         IBwDtZ1hdYzaBHbYQxj7gS1HsK+7mNhS6RlLtHLD7gsROzvduyv84K3QgEg17DEsSw
         U261yirR8/EMBtz/pSDnMi4OwFNQbRUX8tPOFv6ZtzXvnfVmDi/KOgNTeDJLaYUOEM
         DxlJ8u4xhOTfA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id EE167CC13B0; Mon,  9 May 2022 10:23:33 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] vfork() returns EINVAL after unshare(CLONE_NEWTIME)
Date:   Mon, 09 May 2022 10:23:33 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Other
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: brauner@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-215769-11311-SbZ1Yhk6kh@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

Christian Brauner (brauner@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |brauner@kernel.org

--- Comment #15 from Christian Brauner (brauner@kernel.org) ---
I missed a bunch of messages here. Apparently they weren't sent out as mail=
s. I
only saw the replies from Alejandro.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
