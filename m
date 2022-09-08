Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69FE35B1230
	for <lists+linux-man@lfdr.de>; Thu,  8 Sep 2022 03:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbiIHBnC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Sep 2022 21:43:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbiIHBnB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Sep 2022 21:43:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C35A923E8
        for <linux-man@vger.kernel.org>; Wed,  7 Sep 2022 18:43:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BC81D61B10
        for <linux-man@vger.kernel.org>; Thu,  8 Sep 2022 01:43:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DC02C433C1
        for <linux-man@vger.kernel.org>; Thu,  8 Sep 2022 01:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662601380;
        bh=uXP/ocuA+i0b7a8tEcmxQZ2pL/w6zaaXp2tdo065hdE=;
        h=From:To:Subject:Date:From;
        b=iWM/XW2Xb+aP2Dzlv8cCVLpM5pXzf3gY86d1PVg955zCE0m/LlmhWI/LHrdKzFbMw
         Zg50tbFAdU4wxw1kHu+D0ufLUg+FTMZYBIIK/YXz7WdWy2hwA7oXHck1MBgVCQR8iu
         tS7hNO/Qvtgvkgs2/tIYNF3zPt6H2jixH3hYsk1eTZcI5C5E0+9gC135VgKb7+C3VW
         ZvcQL16NVn8fu7SXmSmV5dnCYOWMuEVE+WgrTJ3wZNpRVTXDUSpubQt6JFSuAJmeE/
         +kSCPjyfAePfYZmHnub3RCu5/g2hgrlm1e4qPrjqHMtVLpGelBL1NjjNCUa3NJ/vsb
         w5uNytiivkOdQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0CD55C433E7; Thu,  8 Sep 2022 01:43:00 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216461] New: Misleading synposis in printf(3) for vsnprintf(3)
Date:   Thu, 08 Sep 2022 01:42:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: sam@gentoo.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216461-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216461

            Bug ID: 216461
           Summary: Misleading synposis in printf(3) for vsnprintf(3)
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: sam@gentoo.org
        Regression: No

Hi!

The printf(3) page says:
```
SYNOPSIS
       #include <stdio.h>

       int printf(const char *restrict format, ...);
[...]

       #include <stdarg.h>

       int vprintf(const char *restrict format, va_list ap);
[...]
       int vsnprintf(char *restrict str, size_t size,
                   const char *restrict format, va_list ap);
```

It might just be me, but the gap between the two blocks of functions made me
think that only <stdarg.h> was needed for those latter functions, even thou=
gh
it's needed for va_list.

Would it be appropriate to add a second #include <stdio.h> above #include
<stdarg.h> to resolve the ambiguity?

Thanks!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
