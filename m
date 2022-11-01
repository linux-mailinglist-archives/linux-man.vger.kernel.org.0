Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37F92614D14
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 15:51:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbiKAOvL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 10:51:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbiKAOvK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 10:51:10 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CCD355B7
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 07:51:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 361F2B81E1E
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 14:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD755C43470
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 14:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667314266;
        bh=9HQcXxc2IGGQF3Drxw31EOtZ6eC3UkijuqLZwYKzF50=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=axXhg5a1xBQSxZV/UU/yVu8nsoMhh/rp5PH1fuZQXqbwueLuU29JHypz28II1IJ6q
         5IKVAS7kM225jiju+U18U2VKHbjGCLd+Fc5VVPQAd9k94YlIxxq+bmP+iymlw7snsW
         +THTKrzDrEDOht6nPF3oTRWI/iZJoNOjmcrGtEcjQzMLB65uDS/nu5VktNo2e218Uj
         6ppRIUm0a+h7IyVNcq27ICQ6ZGTUPUMYfDa/dLcFY/hR0EsnCOjt0x4EC7qq5f6A5R
         9aXwSqrpIVVLg+Ei2WkDtmTu3DgaXrsekMS4lunWjGU6GA/Ba7w4XATumRq/BYE+Q4
         SY6MrQFlKrXLQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C616AC433EA; Tue,  1 Nov 2022 14:51:06 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216648] man 5 core incorrectly states circumstances in which a
 core is not produced
Date:   Tue, 01 Nov 2022 14:51:06 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: veluca93@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216648-11311-1xpuZrs2EW@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216648-11311@https.bugzilla.kernel.org/>
References: <bug-216648-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216648

--- Comment #2 from Luca Versari (veluca93@gmail.com) ---
> Do you have any experiments demonstrating the actual behavior? Could you =
show
> them?
On a system with systemd (or where /proc/sys/kernel/core_pattern is configu=
red
to pipe to a program), run `ulimit -c 0`, then run a program that segfaults
(writing `int main() { *(volatile int *)0; }` in a `segfault.c` file and
running `gcc segfault.c; ./a.out` should be sufficient). This creates a core
dump, despite RLIMIT_CORE being 0.

> And do you suggest any specific patch for that page?
Something like adding ", unless the system is configured to pipe core dumps=
 to
a program" in that bullet point should be sufficient.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
