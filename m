Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34D3370982B
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 15:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjESN0Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 09:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjESN0X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 09:26:23 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABBDD119
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 06:26:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4046C65581
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 13:26:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94ABCC433EF
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 13:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684502781;
        bh=mGJwG7hYmB8GQ74OufkIN5yx1FkN7cVycads2dPoajo=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=lsBPPi7Uk9nkmhycenZzChBB9F2DAOclIL0f7OGmpMwJkIYVaJOU1XVWwQVZtYhTS
         +sMvsR01h0FKJXOJak/9JpkzwU01lInWMckyKU/j5uP27icW29HYvnFhU776NUvBWc
         Kl7BWOOV7/x8pEXLYxsZL7DR7PUS7RgOgSoZ99pG3vTBgCAxFv8IQZQ6Lkl5ktje5D
         kx3sTMZghDPGqMFGghDxEgm8ccl6hf/E238nU6KwmyuAXcerIWfxQ6nEWFHvmHsC+e
         QK3ReNKmsx1gWIFB4KX8ss6jY9tB1811GXPL8u68nBLW9XhlqH7zPUDbLMrLqsy1hI
         XMeeCUci50QZg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 7B0E0C43143; Fri, 19 May 2023 13:26:21 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216667] Self-contradictory description of inheritable
 capability set
Date:   Fri, 19 May 2023 13:26:21 +0000
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
Message-ID: <bug-216667-11311-BudgeiL3jD@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216667-11311@https.bugzilla.kernel.org/>
References: <bug-216667-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216667

--- Comment #3 from Alejandro Colomar (alx@kernel.org) ---
If you still feel some wording could be improved, I encourage you to send
a patch, according to the ./CONTRIBUTING file in the repo.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
