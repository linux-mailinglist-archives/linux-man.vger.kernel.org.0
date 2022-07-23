Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDCF357EF2C
	for <lists+linux-man@lfdr.de>; Sat, 23 Jul 2022 15:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbiGWNCL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jul 2022 09:02:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbiGWNCK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jul 2022 09:02:10 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18AEF1D0EC
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 06:02:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 7A633CE0627
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 13:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AC3C341CA
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 13:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658581326;
        bh=vV9cymQb2Qgbd6S8mxH/Ns708xNxg0tdGwMUizOOT7Q=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Y9HXdQF2viyYu45NlGwf6QkwGQvHgVRcfb2u0EybhQNq0DBu9CGf9EookM5WkkXHz
         PDyOheuj9tosAUysRxGtTHwYsIfpeXxLtKBa0HqGQ1h7+Ap89IQRHBZknRw5hNVJqM
         gpmIhRbElFVMqk9fWSzPvcVgcIy9ZjhVNEHFj5vDVq+AGfT9UGR9w5rTuuWqfBxM5I
         bhxGStZJmZSZysTOjiSxh8hXtiAoxILsnEqp4HMdK0RpYOouRvqITcFsoIhENWOV1P
         MurNygDHAIpLpTPwHAOnM8nj9NvoB3pLkbJkbJH8EK+XI+pBpTIBuW7qJPoIYQQJwk
         JTNZ+pkhRd38g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id AC491CBF854; Sat, 23 Jul 2022 13:02:06 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216275] Incorrect fts_pathlen in fts(3) man page
Date:   Sat, 23 Jul 2022 13:02:06 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: philj56@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216275-11311-to7h63aRUm@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216275-11311@https.bugzilla.kernel.org/>
References: <bug-216275-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216275

--- Comment #1 from Philip Jones (philj56@gmail.com) ---
Another minor discrepancy I forgot to mention: the man page documents both
fts_pathlen and fts_namelen as having type short, but the glibc source assi=
gns
type unsigned short to each.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
