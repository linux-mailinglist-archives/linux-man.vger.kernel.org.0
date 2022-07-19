Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 737F657A297
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 17:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236101AbiGSPEy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 11:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239034AbiGSPEk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 11:04:40 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98B5A4D4C7
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:04:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 324ADB81BCE
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:04:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2FAC341CB
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658243076;
        bh=uR9oEsf6KhW9lJ6x1NKDhUiS5XCIoYRcCLlH8FYlizI=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=J4fn5bK2ulNE8W1fumhWsllJ8wMq7LF/EFveqKw3y+MWKjwyovBD3IArWaCGgePRn
         rQIVsfme9qOgjWNf8imUV4WjlGi+I7Y3asUh8C5ddWWJ6//qHKK/D2gtG8n750l2yz
         bZm61mYiN8YTNKqK3ewpmIVMGOG6qnv/mtPXpbwJPbXrZjGcCHHfuuNre1eW9UPPs9
         /mFuui6ilbTQEHSpfSprNgZVqp+kZ8EVup0TCAog14D2aUnjvBbpoQGy1lEyo2ab2k
         sD4uSR0P77P7M7usW2O4FardAIZEOtzA3OPwGuWFSp9/WQDMHn3WXV4YPDEAgmv1V/
         e0Ptlj9o3tYIQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C40BDCAC6E2; Tue, 19 Jul 2022 15:04:36 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216215] clone and unshare say CAP_SYS_ADMIN is required to
 create new namespaces
Date:   Tue, 19 Jul 2022 15:04:36 +0000
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
X-Bugzilla-Status: REOPENED
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-216215-11311-dMGinjnYXy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216215-11311@https.bugzilla.kernel.org/>
References: <bug-216215-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216215

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|RESOLVED                    |REOPENED
         Resolution|INVALID                     |---

--- Comment #3 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Maybe we could add that to NOTES in unshare(2).
Would you mind sending a patch?

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
