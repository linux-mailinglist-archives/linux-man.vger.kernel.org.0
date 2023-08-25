Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF0EA787CC0
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 03:08:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230173AbjHYBHe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Aug 2023 21:07:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230107AbjHYBHM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Aug 2023 21:07:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 649ACE77
        for <linux-man@vger.kernel.org>; Thu, 24 Aug 2023 18:07:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E4AA662E31
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 01:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4D73BC433C9
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 01:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692925629;
        bh=Zh8YyIx9P1ZvGMOhowVqrDSCuX+NUbfjEmQVpnSCTTo=;
        h=From:To:Subject:Date:From;
        b=fplRdslfc2wJOGyq15sv8Jsw/NkImt2DHFR6973k7Kjg0YpL/Dh1/3K9+KO8tSTU+
         tY+xVMS5OLEwwD/sJ7NQJh6UpgIUEOP/rIu1qK5S1WOGuPA9rD/wf9emH/SvoPUl1G
         kqgdXhwM0kUMy3uxjgJr012r6RTiFgawSrtN5KOkPK8cLTrReeKvWKn3Ln04xGZ/5p
         B0pmpuO77ObeQlho23HWjlDQZ9UJ1SSXVV2ZZ9PkdPNouFWW+AYFi1tBuXIiwEPWqC
         OlbAKhxsKx4P70iPCie8zkA+f5PBXduNdz2LxnSMy7bpfNGU3V+U+Mc9+hbO3SvMpD
         39RGku14ynGRw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 3888AC53BD3; Fri, 25 Aug 2023 01:07:09 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217821] New: document that Linux' open(2) uses ENXIO in case of
 sockets, while POSIX mandates EOPNOTSUPP
Date:   Fri, 25 Aug 2023 01:07:08 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: calestyo@scientia.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217821-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217821

            Bug ID: 217821
           Summary: document that Linux' open(2) uses ENXIO in case of
                    sockets, while POSIX mandates EOPNOTSUPP
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: enhancement
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: calestyo@scientia.org
        Regression: No

Hey.

It seems that under Linux, when using a socket file with the open(2) family=
 of
functions, the error is:
> ENXIO  The file is a UNIX domain socket.

OTOH, POSIX specifies[0]:
> [EOPNOTSUPP]
>    The path argument names a socket.


Maybe it makes sense to document that? Possibly right at the ENXIO descript=
on
and even additionally in the STANDARDS section?

I could write a patch if you tell me which you like.

Cheers,
Chris.


[0] https://pubs.opengroup.org/onlinepubs/9699919799/functions/open.html

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
