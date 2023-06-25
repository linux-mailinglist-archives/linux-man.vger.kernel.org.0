Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB7AA73D0C2
	for <lists+linux-man@lfdr.de>; Sun, 25 Jun 2023 14:06:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231905AbjFYMG1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jun 2023 08:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231249AbjFYMG1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jun 2023 08:06:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A910115
        for <linux-man@vger.kernel.org>; Sun, 25 Jun 2023 05:06:26 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D1D6860B6A
        for <linux-man@vger.kernel.org>; Sun, 25 Jun 2023 12:06:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30591C433C8
        for <linux-man@vger.kernel.org>; Sun, 25 Jun 2023 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687694785;
        bh=8gx+/r1bE3AmOCRhHrDO0g/Sdi79FXi2dao98GEAxNY=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Fj5bP7oC77EQQSx8NknM7+QjeFZFRpO4NEPcd4d4eygjPAWyuS3uAgbHfFZ0IowdL
         KWDyzickuiuul/UnpOme95O7W/EYUEB72ehvfHFhnChEN3+pMWcCLb12Zu9S0b2qjP
         7wB1CzSz5h3tQ/qZA5zOT4coIreqml1GtAIdiJd4k18RX9nqgK8Stw1M10T60nzG0T
         vLLZXqQOWvr+0xTM000Za8+GRYxX8hyFGmJgfO4JCvqAmIOBmsk37w7UVPMBzTL+77
         FFCpjzytLW14EjuzMEWuR5c0KvvutcMJPI8kB4Y8TpD0THrjTwf+nvttCjNj8wHg8a
         dINMIxxV66Sfw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0C979C53BCD; Sun, 25 Jun 2023 12:06:25 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217547] The shell example in time_namespaces doesn't behave as
 documented
Date:   Sun, 25 Jun 2023 12:06:24 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: kernel@t-8ch.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-217547-11311-W3Pn2jEsM9@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217547-11311@https.bugzilla.kernel.org/>
References: <bug-217547-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217547

Thomas Wei=C3=9Fschuh (kernel@t-8ch.de) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |kernel@t-8ch.de

--- Comment #1 from Thomas Wei=C3=9Fschuh (kernel@t-8ch.de) ---
It seems in commit 2b5f9dad32ed ("fs/exec: switch timens when a task gets a=
 new
mm")=20
the time namespace is frozen on exec().

begin_new_exec()
  exec_task_namespaces()
    timens_on_fork()
      timens_commit()
        timens_set_vvar_page()
          ns->frozen_offsets =3D true

As a workaround you could use "unshare -T --monotonic $((2*24*60*60))" to l=
et
unshare set the offsets directly.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
