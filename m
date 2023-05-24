Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7194870FB1B
	for <lists+linux-man@lfdr.de>; Wed, 24 May 2023 18:00:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237921AbjEXQAR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 May 2023 12:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238826AbjEXQAF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 May 2023 12:00:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FD13199E
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 08:59:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ED860632B7
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 15:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62C14C433A1
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 15:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684943961;
        bh=DViy8ie/ofdpzVf/sUWiPnTHYEeeF8aOd+ZwQ7rXUdw=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=FlhB9h4lAmRInjOI7XTmt8Hhcp7pNRIC60+cRmYS50HJE/K8QxC2x9+YBTdUnBiMX
         E2Ed48VEfhqusjiUp23M779/hdVlzfaduMmqiWqEDTS972BZdhL+BgiQ0dobgEDeNq
         1pJ0QpPT5D3mhYtS9lCmMt2jBN27BzM+kNFIiJHxOsi178dEQoG6mMoxI9NeZ5Ccjz
         JYThrTFAMoPINHUlG+1Ipilu5p0JhOUEA8fiFByqtOThLxtzJFpheGG6hrupWjYF9A
         a8s0pmsW3rGExtRAOqSYKS8hEcQoZyD3WYL1wVK2tO5QAQsIzc1IEpmAhZGrfsUkxj
         tViRNOJ1q4DDQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4D45DC43144; Wed, 24 May 2023 15:59:21 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216951] close_range(2) needs refreshing for glibc inclusion;
 closefrom(2) page missing
Date:   Wed, 24 May 2023 15:59:21 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: hi@alyssa.is
X-Bugzilla-Status: NEEDINFO
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216951-11311-uCSX1Qc4Iq@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216951-11311@https.bugzilla.kernel.org/>
References: <bug-216951-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216951

--- Comment #2 from Alyssa Ross (hi@alyssa.is) ---
On Thu, Jan 19, 2023 at 01:45:57AM +0000, bugzilla-daemon@kernel.org wrote:
> man-pages currently doesn't document closefrom(2) at all, and is outdated=
 wrt

Shouldn't it be closefrom(3)?  There's no closefrom syscall =E2=80=94 Glibc
implements it using close_range (if available).

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
