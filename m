Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3FBF78AEF1
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 13:36:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231499AbjH1Lf7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Aug 2023 07:35:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232526AbjH1Lf5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Aug 2023 07:35:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE88110
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 04:35:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3C455636CA
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 11:35:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6958C433C8
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 11:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693222546;
        bh=1m3t27D3f3aPh58rRCSPzofjBR3FTf5P+PuuhO/ouUw=;
        h=From:To:Subject:Date:From;
        b=AAF1X0/rd/YxovvgPwM2MxRJax7cjdvZ6hLKKQ77q3A52i7wvv8CnKL89asssK1sv
         SgdZ5bfak09mqzBLKcGqm3GGjfpMJvuyXPMFSlt1WFIx6/HOd1dH6/AmpC90EhBlw0
         cR/DWji7UFwnOdTQlohdS1jSWHTD7RcXajyzicGlZQoN0rXRwDFivGew0mHDVtGceL
         Wyyv4wBLQzL+LFW1U2Im7YqYZSUHqJnOB8vkRW5TPnyP7dNYl2AQAsZl7XTYNqUoAD
         YzLiTwNnszxkC89NnSQCmG982Od9JP4SZSV++Yy2qmRh5zYwfp2GNEfkbpsp4mIg2w
         6Oh279DUdaxsg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 9513EC53BD4; Mon, 28 Aug 2023 11:35:46 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217838] New: Systemd nowadays mounts Cgroups v2
Date:   Mon, 28 Aug 2023 11:35:46 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217838-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217838

            Bug ID: 217838
           Summary: Systemd nowadays mounts Cgroups v2
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: goeran@uddeborg.se
        Regression: No

There is a note in the cgroups.7 manual page saying that systemd automatica=
lly
all the cgroups v1 controllers. This is no longer correct; at least on my
Fedora system it mounts a cgroup2 hierarchy instead.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
