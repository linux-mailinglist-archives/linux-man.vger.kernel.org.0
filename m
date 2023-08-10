Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4C4D778079
	for <lists+linux-man@lfdr.de>; Thu, 10 Aug 2023 20:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235802AbjHJSkM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Aug 2023 14:40:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235800AbjHJSjl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Aug 2023 14:39:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10A3330EE
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 11:39:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B3E63665D5
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 18:38:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16FE2C433C7
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 18:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691692705;
        bh=4fm7I9lPg6jxsDoG7uEQ9geLQHpT3JyZ8D5krAnv968=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Jiz51q91c1OxBen5LdE3hxlqIeDXv4Oj+WqwwDYqRxvtn7aTnQF3/GIh4Q6R1af1c
         /vhicI665PQecOBYPcly73BDv/QMSlWPNcLFdsHSaSdN86XqbsA3zexHA4l1utWTfN
         okTRhI+gZxi9D52oWKdDnRT4n6wWI9TfwDBvWn0CuPPvoyvqYdndHSmyLE913ZT5/P
         QqvcNFDLvkqc750j03LU18Gy1ONwq+md2P2s7hIr88o/odI/N40bgDMcRLuOWV2Kyw
         E5HnhQuEmKqgNOiI9YcuQlY+Xjm4xPI/h1Vd9yzUScoU6TzkK/h9v1BRi4VKiCOLHt
         NjkF85a8iCh3Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id F3377C53BCD; Thu, 10 Aug 2023 18:38:24 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217783] Documentation: networking/can.rst contains incorrect
 definition for bcm_head_msg
Date:   Thu, 10 Aug 2023 18:38:24 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: arthur200126@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-217783-11311-BxdrECjH3F@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217783-11311@https.bugzilla.kernel.org/>
References: <bug-217783-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217783

Mingye Wang (arthur200126@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |arthur200126@gmail.com

--- Comment #1 from Mingye Wang (arthur200126@gmail.com) ---
Can confirm that the 0-length was replaced in Linux source code. Commit
https://github.com/torvalds/linux/commit/94dfc73e7cf4a31da66b8843f0b9283ddd=
6b8381

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
