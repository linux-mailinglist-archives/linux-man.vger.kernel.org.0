Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A20AF70A77F
	for <lists+linux-man@lfdr.de>; Sat, 20 May 2023 13:18:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjETLSV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 May 2023 07:18:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjETLSV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 May 2023 07:18:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A359E42
        for <linux-man@vger.kernel.org>; Sat, 20 May 2023 04:18:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F3D386100E
        for <linux-man@vger.kernel.org>; Sat, 20 May 2023 11:18:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5FFB2C4339E
        for <linux-man@vger.kernel.org>; Sat, 20 May 2023 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684581499;
        bh=1Gy7p9i0BUH6hWoX7Pc01HwraubUYNmX/Jq1ZHvRu7w=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=d5Q7Dld4ccjmvHIP2k9nhbxQTuIa0LuM+bJqVjgNB8ArKciQiQ2zAOcGOnp6peeB1
         FZsvG2qqVbOouahxrmzFBWL5S9MBpgkb4Y5AuFMzN9wBbB/bXhJF2sBBkfDOLHLO5o
         josLV97CHV3StJARF6u0Z+DaORWS/SrqLbBcddAE42y9Q/sl7KSDBPxovkxhbUcY9W
         2fLdxxC5oOo8JWOyL5OCKsKRQjJ0W6c96CED8nRGbdufZbtjWYQ+dzbuyROp4yRMkB
         oAWmhLGmU6YiEmQwZVVS/H/3oTPg+tUV38vR+XZ1Qbb47C58qBrdskDUrppwEc6zLo
         ZWRyLdgh6I4KQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4BE49C43142; Sat, 20 May 2023 11:18:19 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217059] Please document behaviour of iconv(3) when input is
 untranslatable
Date:   Sat, 20 May 2023 11:18:19 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: rrt@sc3d.org
X-Bugzilla-Status: NEEDINFO
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217059-11311-G9zVBt9pKE@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217059-11311@https.bugzilla.kernel.org/>
References: <bug-217059-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217059

--- Comment #2 from Reuben Thomas (rrt@sc3d.org) ---
I've sent a patch.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
