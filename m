Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FDE25FE887
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 08:00:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbiJNGAP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Oct 2022 02:00:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbiJNGAN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Oct 2022 02:00:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9255B474D2
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 22:59:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CA238619F7
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 05:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E6E3C43470
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 05:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665727194;
        bh=gVyli7jXfifiJ853ig0vfs4B14hcuj6O5fU/I2dyolw=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=dau91lsaOhG+CS1lqVCEanisIX+oQAKcWQCOw5RcEantqvYFhFja9OrJR/YUUICD/
         fN9Yrbqs+Hh3KMoJnhbj7uzuFKIuTsDPukJfgRt7a/VF3Oe4ZfGWbd0CtthqirU0j4
         S8UIN4rbFbJtNmxNJARGrwlsSBPSoISJOXobBzsF8bT5tPcha6WZUC8K24daxmLJS5
         ZhkxoiT0I9bo+6ImZd6yctY8OGGNUmc06FgCOmwucsVdn+4Fnsu867dCZqY4brr9l/
         z5Qgm5JLx30qSiXxgcvAuG+XhTKtgeJ79JOjHpreYqipx1weTPjxYSoqRL+wnDCW/1
         LoS+9XUDd1nKw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 27E03C433EA; Fri, 14 Oct 2022 05:59:54 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216584] Undocumented mount option subset=pid for proc
Date:   Fri, 14 Oct 2022 05:59:53 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: linux@philippwendler.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: short_desc
Message-ID: <bug-216584-11311-RXQoC609aM@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216584-11311@https.bugzilla.kernel.org/>
References: <bug-216584-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216584

Philipp Wendler (linux@philippwendler.de) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
            Summary|Undocumented mount option   |Undocumented mount option
                   |subset=3Dpids for proc        |subset=3Dpid for proc

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
