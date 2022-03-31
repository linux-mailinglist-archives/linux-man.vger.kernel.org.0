Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC8864ED50C
	for <lists+linux-man@lfdr.de>; Thu, 31 Mar 2022 09:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231654AbiCaHzS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Mar 2022 03:55:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbiCaHzQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Mar 2022 03:55:16 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 647EA25DC
        for <linux-man@vger.kernel.org>; Thu, 31 Mar 2022 00:53:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0EA50B81E81
        for <linux-man@vger.kernel.org>; Thu, 31 Mar 2022 07:53:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACE8C340F2
        for <linux-man@vger.kernel.org>; Thu, 31 Mar 2022 07:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648713206;
        bh=sah+8D7+ZtHR/spBDdfjPGUORXpKZAHJCqFJq3JthCQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Bz08XljCe4j/EOL1gkLZ2nHpuwqdE+KmfzYb0J2AkiGUsHLylokLAHuf+Fnu1dGcP
         +DWv2TLjFYHANFjVmy/d7CbV2ZqWxYtAz2oeVRsd7ot26aklPOLc3285WXhC7LSHSN
         qtwSnr+xzK4xeLhXToHOjWmmcp7WUnyBhvHRrq6QNTQn7qnN/Ys4F6PrhDB3x3Li2L
         wr1+fGT4HdoIKsnUHhSfWvYtthCYwYt/bpIV66XBHdubniJdYP3hZlnJFpWUDQkhpw
         exc+bXfX7e7eQ1T2ZL4J/5ccRppVZ5WgdEnk/dZh0hLy/9u3ciABWLnrf4aTnta9Ab
         jljitm+PZ/cDg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 90901CAC6E2; Thu, 31 Mar 2022 07:53:26 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Thu, 31 Mar 2022 07:53:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: socketpair@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-t9D0Rz5N6I@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

--- Comment #3 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3 =
=D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
Hi,
I appreciate depth of information validation. Actually, you are right. vfor=
k()
DOES work with pid=3D1 processes. I figured out the cause in my case. In or=
der to
reproduce -- add unshare(CLONE_NEWTIME) just before vfork(). Now, I don't k=
now
if it's a bug in vfork() or in fork(). Yes, both are clone() actually.

In any case, they should either both give EINVAL or both don't fail. But it=
's
definitely bug in the kernel around CLONE_NEWTIME.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
