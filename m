Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2F224EB79B
	for <lists+linux-man@lfdr.de>; Wed, 30 Mar 2022 03:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239077AbiC3BCO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Mar 2022 21:02:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231130AbiC3BCO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Mar 2022 21:02:14 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 916991C552D
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 18:00:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 093E9CE1BFE
        for <linux-man@vger.kernel.org>; Wed, 30 Mar 2022 01:00:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5BBF1C3410F
        for <linux-man@vger.kernel.org>; Wed, 30 Mar 2022 01:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648602027;
        bh=y2wNDmZ9VwgvEr5aLlH6F2HKS9XXLMIEN2Cf6lsX6Z4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=OiZ6E3rA8hjK0ND0vHyeq8MVDHPx0+sece+t64NSE5CLTY2V204pLhSNdTc/3R8Fl
         /4nVWONbUNSinAYU8eiQwxACpOm7MEqk0jOxRDW0egG0z914bMVsDD9Wvh4OxCrsXF
         DjjDTkwgkdkqR2D1ec851GtisqNMF+DeiIHS/4mmYYdGpvkWiuHP+iQl999dee9+c/
         iDztoFi3yn/7IY2/p3217l2c7A9IhMe4RppwSEHzChn8fDEK+rwkdmwfVupeJvHmdr
         iPgwf28+EtIo2xFw0svxyN2v3E4O+WN+ZmCxiyV8YxWz7sWGq6Hctf7x4r7Clgf867
         zNnghu4mZKe/w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4185AC05FD2; Wed, 30 Mar 2022 01:00:27 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Wed, 30 Mar 2022 01:00:26 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-cdYi5ajYmE@https.bugzilla.kernel.org/>
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

--- Comment #2 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
On 3/30/22 02:48, Alejandro Colomar (man-pages) wrote:

> $ uname -a
> Linux ADY-debian-11 5.16.0-5-amd64 #1 SMP PREEMPT Debian 5.16.14-1
> (2022-03-15) x86_64 GNU/Linux
> $ /lib/x86_64-linux-gnu/libc.so.6 | head -n1
> GNU C Library (Debian GLIBC 2.33-7) release release version 2.33.

On (almost?) any system, you should be able to run the following program
to get the libc version:

$ which ld | xargs ldd | sed -n '/libc\b/s/.* \(\/[^ ]* \).*/\1/p' |
xargs sh -c | head -n1
GNU C Library (Debian GLIBC 2.33-7) release release version 2.33.

[...]
> If you can confirm the bug with this program, please send your system
> details (most importantly, kernel and libc versions).
>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
