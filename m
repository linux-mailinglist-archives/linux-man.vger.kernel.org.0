Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53A2B5271FB
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 16:30:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233296AbiENOaX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 10:30:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232930AbiENOaW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 10:30:22 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D43E17590
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 07:30:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 28226B808BC
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 14:30:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F24C34116
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 14:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652538618;
        bh=sIxIS7U3dxaJwfsvLtYfidtmQ2XwJUJEe0WepWmqJ9w=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=E7S/8mDcMZsMLpcoULeRPENauLse7XImJjg3JpYILeTpLVpvn9Y1D+Ux5Co17FV/k
         5JaZlqOph6W5b9/CewSXERKDJjuKw5dknPAaOtasV7x++gRWrTzxi4KdwOi0NNf5bz
         4dqZqKKRSoQRm0oiFMU1Z2E+wpbx6rzlxlyp/0vk5p7oQu3cuz8/rdxkF1o4tNh7Jq
         X300deHysZS0BcPeYOO6S+bnT8r9CbF/K+Q+GjfTsX6qDL53tel4zjtwnvWVlvjubD
         WZAPJROV5V9/ENGug/YiMo0Y8sZ+PZ7jryls4s7DByq4mEYxl6mlDFZahq4FsDn5Rk
         +TP/hc0EZJgqg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id A601CCC13B3; Sat, 14 May 2022 14:30:18 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215738] uri.7: CONFORMING TO: Refers to obsolete IETF RFC 2396
Date:   Sat, 14 May 2022 14:30:18 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: sowani@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc attachments.created
Message-ID: <bug-215738-11311-M04fzoad6j@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215738-11311@https.bugzilla.kernel.org/>
References: <bug-215738-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215738

sowani@gmail.com changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |sowani@gmail.com

--- Comment #2 from sowani@gmail.com ---
Created attachment 300956
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D300956&action=3Dedit
Suggested patch to update uri(7) man page.

The "CONFORMING TO" section of uri(7) man page is updated with following
changes:
1. reference to rfc2396 has been removed
2. references to rfc6874 and rfc8820 have been added.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
