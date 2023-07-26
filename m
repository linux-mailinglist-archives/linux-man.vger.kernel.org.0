Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 390B17633E7
	for <lists+linux-man@lfdr.de>; Wed, 26 Jul 2023 12:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbjGZKfp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Jul 2023 06:35:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233186AbjGZKfo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Jul 2023 06:35:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBA872129
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 03:35:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6903D61A4F
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 10:35:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDA4C433C7
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 10:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690367742;
        bh=R4fEG1G6//LSFCL+39AQwbZ5PMdGDZmzxBz57dbaCi4=;
        h=From:To:Subject:Date:From;
        b=YRFl48X3MFJrm+aN4wggyhthb6mS9/nQS4DHp75fssIWzkBFFCTkehoLZ0PxWiqE4
         8e1SxNz8lu0Cg2wcpk9AGb/l09wXcV9SBu/KM7zExLkO7sgc+FFw5CZ0rd9X7eCKWR
         j8hepk7Fw9wsqnDOpL0tFyC0OHXN6ZsGBCRaSPcxxsVnK1EP0HodTIh5ob65PNo8Mg
         Pqnzt/6FTtYxVDma0b8Vt7qfPc2hyi3Eyf7jQw+a8Z5+sGpnRlsh301ScnhmzMow7J
         kixLAu1qtdcauSak4s2IwyFb7BMhCdpNE7OxqQZMiBjCuuYaQ0a/2XFr5kGSqKUxuN
         34eZb/yT3oXZA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C1615C53BC6; Wed, 26 Jul 2023 10:35:42 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217709] New: Mistake in example in mount_namespaces(7)
Date:   Wed, 26 Jul 2023 10:35:42 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217709-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217709

            Bug ID: 217709
           Summary: Mistake in example in mount_namespaces(7)
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: goeran@uddeborg.se
        Regression: No

In the example showing how locked mounts in a less privileged mount namespa=
ce
can not be split, a command "umount /mnt/dir" is shown. Surely, that should
have been "umount /etc/shadow".

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
