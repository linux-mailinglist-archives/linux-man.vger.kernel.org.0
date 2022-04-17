Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95DC550488E
	for <lists+linux-man@lfdr.de>; Sun, 17 Apr 2022 19:05:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233839AbiDQRHz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Apr 2022 13:07:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231211AbiDQRHy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Apr 2022 13:07:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1B7DE92
        for <linux-man@vger.kernel.org>; Sun, 17 Apr 2022 10:05:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8904B61281
        for <linux-man@vger.kernel.org>; Sun, 17 Apr 2022 17:05:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC676C385AB
        for <linux-man@vger.kernel.org>; Sun, 17 Apr 2022 17:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650215116;
        bh=OJhiEsGqqIweV5P+VpkhRCz+N0J3EDD7z+Wbc0uH1Pg=;
        h=From:To:Subject:Date:From;
        b=M4+nPpgXkgfogacUzeY0y9Y/eou/FXlOUQACEr2hQIctQSH6+4ATB0igFcFRPAIs8
         xyrFU7U7J+2fxHHQykvbW3Mp6uuuJxZyeKGsA0vhufMOJMiOyyT6gZZhIa5LdFEHig
         jnaU2oo3ffM3ny9fZXbO9jMpGYM0zVmHA0i476kA029BHxR13aiQ6QzfeEZVwk7wJP
         KNTLnOvv9tH3bzUj7XFazQ/X5Lc//fuUcRPcExRwfgYmhsaFrJkc95GeoUsU0HfxoF
         GQaAfuGXyE6I+uAes1rm01nMZPKb03TeI5lueqBPQQT19wpk1LC1oGhM3S0fFZG/cR
         +hGoa/DqDxl7w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id BFC56C05FCE; Sun, 17 Apr 2022 17:05:16 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215848] New: fopen(3): Incorrect good practice suggestion
Date:   Sun, 17 Apr 2022 17:05:16 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: rootkea@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215848-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215848

            Bug ID: 215848
           Summary: fopen(3): Incorrect good practice suggestion
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: rootkea@gmail.com
        Regression: No

Hello!

From fopen(3):
"Therefore it is good practice (and indeed sometimes necessary under Linux)=
 to
put an fseek(3) or fgetpos(3) operation between write and read operations on
such a stream."

I am not sure about the origin of this good practice but fgetpos(3) seems
wrong. It has to be fsetpos(3) if I'm reading the C standard and POSIX[0]
correctly.

BTW, calling fsetpos(3) will require a call to fgetpos(3) first. So why is =
it
being advised as a good practice to call two functions (`fgetpos` and then
`fsetpos`)? Maybe just i) mention fseek(3) only OR ii) mention fseek(3) and
fflush(3) (instead of fsetpos(3))?

[0]
https://pubs.opengroup.org/onlinepubs/9699919799.2018edition/functions/fope=
n.html

Thanks!

Regards,
Avinash Sonawane (rootKea)
https://www.rootkea.me

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
