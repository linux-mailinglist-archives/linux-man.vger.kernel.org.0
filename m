Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F269B4E9F43
	for <lists+linux-man@lfdr.de>; Mon, 28 Mar 2022 20:57:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245093AbiC1S7b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Mar 2022 14:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240088AbiC1S7a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Mar 2022 14:59:30 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A1B11A3F
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 11:57:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E2B34B811ED
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 18:57:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 905ABC340F3
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 18:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648493866;
        bh=mWZHIbw5GbljFDLWcSKzybEw88wtRYbaKadCNuf0klw=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Vizzv9LKvQBKymuT8ZOPAkmL0X7vmC9RsRb53nft3xOxo/khObSuEWbnifOAZDlmM
         ILFK+69du2dspHUE0F8W/LjBKaciWKfeobJlU9mKD12LG5U309scSF2jay6L/jZP+H
         7D+RGiu+hccgrysY4d8PpOMUnO+uEhaF+z2Stf/b6hApfskshVsmmNMrCHxp2QxOrU
         tHNjeCgDHecYyWje3yatXV9Iu1mXRwuGn8AxFwkdDyzowdoHAY3v3aGDgQ39DTdlP8
         0jpGQ2Bzqqz9qbzuir9CWvGLRCFcdqyMqSpN6yFTORTprQKCNkvQGLx44wd9H+JQhA
         8o8lJ3eFlRNIQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 6F5C5C05FD5; Mon, 28 Mar 2022 18:57:46 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215737] uri.7: DESCRIPTION: Character encoding: Reference to
 obsolete IETF RFCs 2718 and 2279
Date:   Mon, 28 Mar 2022 18:57:46 +0000
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
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-215737-11311-Ybr8pFMO0Y@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215737-11311@https.bugzilla.kernel.org/>
References: <bug-215737-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215737

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |DOCUMENTED

--- Comment #2 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
2279:
  2718:
    - It doesn't introduce changes relevant for the manual page.
      Update the reference number with no other changes.

2718:
  7595:
    - It deprecates URL in favor of URI.
      Replace the terms in the manual page,
      which were (sometimes) ambiguously used.
    - It stays the same regarding character encoding.
      Update the reference number with no other changes.
  8615:
    - It doesn't introduce changes relevant for the manual page.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
