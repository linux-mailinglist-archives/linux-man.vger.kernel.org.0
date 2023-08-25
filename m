Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B374A788FDA
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 22:31:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbjHYUbD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 16:31:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbjHYUah (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 16:30:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E8881BE6
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 13:30:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EC7B7632F8
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 20:30:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57EE7C433CB
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 20:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692995434;
        bh=XNOFyiFrR5oSUZDcflwckoSmuxO9Psq/oBqRz8Oz9Qs=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=fWL1+tofKme+SeIG118KztnwqWVc0vtoiB27gtnkVuQ/FrQwsz8I5Eq3wNnDLNXVb
         RWFPRpvtCxviNtpzLjcQ+7hneE2NXTWqEcVYzMX2VqkD5R2TI7YIHjLDMnrjKQTtDb
         l7kRd7CPQlBdoeWK+ebxvG8qJpuEaaA6WDBHLa+NK7ENUs9GVIAYyJEyY/l01kw6W4
         7LCW4VDlJ+LEy10of5T3uZhHKBNND7V8NqIsJvVHxT7/78WTIAvLd1RV/wBwlIQVJb
         fZApsen2GI8IE0WHGFRDH3R44XF5aigrIF0fgqjuttKDVqTO8DkY+G5I+82GL3K6nD
         lWuPxeD8OeqBw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 41225C53BC6; Fri, 25 Aug 2023 20:30:34 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217821] document that Linux' open(2) uses ENXIO in case of
 sockets, while POSIX mandates EOPNOTSUPP
Date:   Fri, 25 Aug 2023 20:30:33 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: calestyo@scientia.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217821-11311-e9cPH1aOB7@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217821-11311@https.bugzilla.kernel.org/>
References: <bug-217821-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217821

--- Comment #2 from Christoph Anton Mitterer (calestyo@scientia.org) ---
Patch posted at:
https://lore.kernel.org/linux-man/979345cf576e86c42743ea48d797484fc41f8bf7.=
camel@scientia.org/T/#u

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
