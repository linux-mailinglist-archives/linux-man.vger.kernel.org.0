Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C51E256D74E
	for <lists+linux-man@lfdr.de>; Mon, 11 Jul 2022 10:01:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbiGKIB1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Jul 2022 04:01:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbiGKIB0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Jul 2022 04:01:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 941C71CB3F
        for <linux-man@vger.kernel.org>; Mon, 11 Jul 2022 01:01:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2897760C68
        for <linux-man@vger.kernel.org>; Mon, 11 Jul 2022 08:01:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869FFC341CD
        for <linux-man@vger.kernel.org>; Mon, 11 Jul 2022 08:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657526484;
        bh=BJ/p0uYgUFyhtonn9/A2+PmGxjsWALN3OfND4Y/JW7c=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=IDMuSaGi1d2H1eKCp8bIU+NyRbumUj38j0MyDqdCtWnCXEBiJkVulL6zN0v4VQ+sl
         wka+60jCKNW68jMlddytGwzexYajZpzxJt2JDZn7zahGv5R5shYVcGBioddXxMpC3/
         ZvNWRFdIEq3oIfAQ5zalT7DozE88/3yW28+OpEdyoeFIHhtTguJ14RerigbGQ8pVdZ
         PUewiMbsigvDoVheRReVjZeijWe+UXgpfVKWXDTXYlwH41MtKB7MqPkq5b/VoCJc5j
         7xVEWlntIPHziji7z5aKQaP1Yti8dvnencFePtAFYhhYu8orqg0C3xDwqw8lIu3IY7
         6m+oTO0wDF3/g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 728DFCC13B1; Mon, 11 Jul 2022 08:01:24 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216215] clone and unshare say CAP_SYS_ADMIN is required to
 create new namespaces
Date:   Mon, 11 Jul 2022 08:01:24 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: linuxkernelbugzilla@pxeger.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216215-11311-uSrlZVvYdZ@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216215-11311@https.bugzilla.kernel.org/>
References: <bug-216215-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216215

--- Comment #2 from pxeger (linuxkernelbugzilla@pxeger.com) ---
Ah, I understand the confusion I was having now: all namespaces, *except us=
er
namespaces*, require CAP_SYS_ADMIN. But creating a new user namespace
automatically confers a full set of capabilities. So, when using clone(2) w=
ith
CLONE_NEWUSER and some other CLONE_NEW* flags for other namespaces, at the =
same
time, you don't need CAP_SYS_ADMIN in the parent, because it's given to the
child during the clone call.

Is this worth mentioning somewhere?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
