Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05F5852723A
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 16:52:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232546AbiENOwK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 10:52:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232492AbiENOwJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 10:52:09 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDF1730A
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 07:52:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9161FB80905
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 14:52:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 466BFC34118
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 14:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652539926;
        bh=+gmFT6LLnA+MDlR+S1fkycYHnbCkEqREuLbiGcvchss=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=RxkpEMrnCZeNFv2Ap8JgxoSFuPJJSO16qp6S1xb/2Sn3WqS4Sl9TboJx7+FrjKH3L
         noTjgOKJG0miAfsrSuswzdVp3EC5bMsPMJSlGx0KplpOhnFguFTp3A3xg8jTBLqF7a
         0Vkql4D9CCHZMK0O+Ar7AzbfUlJ85NjZShqVCbBSlw8NgE/80R3zI3ie9sjXE0gzLN
         NfrmFzP/809ZyLSooEfWmk0W0uJC1xPc1aSwfHbCNPSeKv6IVptHsLPJE69pucWPoY
         3zz9S5UvsBfwhBgiDXg0GtQZOluPuXztQ6vQRX03cLwguUedLCcTCFxrOuUK0lydY0
         ZNUf5Px+gZ3zw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 2751DC05FD0; Sat, 14 May 2022 14:52:06 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215971] dd(1p) manpage contains empty ASCII to EBDIC tables
Date:   Sat, 14 May 2022 14:52:05 +0000
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
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-215971-11311-jbpxjNpV14@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215971-11311@https.bugzilla.kernel.org/>
References: <bug-215971-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215971

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx.manpages@gmail.com

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Ben,

Ideally, we would distribute the original roff(7) POSIX documents, and not
convert back again from HTML to man(7).

If POSIX sends (or publishes) their original roff(7) documents, I'll be hap=
py
to work with them (In fact, I'd probably completely skip HTML, and add the
minimum to make the roff(7) source work as man(7) pages).

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
