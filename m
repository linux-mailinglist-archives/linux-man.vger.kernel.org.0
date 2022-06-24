Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06C75558D47
	for <lists+linux-man@lfdr.de>; Fri, 24 Jun 2022 04:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiFXCnC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Jun 2022 22:43:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbiFXCnA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Jun 2022 22:43:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B74BF10E3
        for <linux-man@vger.kernel.org>; Thu, 23 Jun 2022 19:42:57 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 311F762048
        for <linux-man@vger.kernel.org>; Fri, 24 Jun 2022 02:42:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65F7DC341CC
        for <linux-man@vger.kernel.org>; Fri, 24 Jun 2022 02:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656038576;
        bh=FJrOVUcNU4CP0dwYoRRC1mcg1HPdxPQ5d7Bps68hbfI=;
        h=From:To:Subject:Date:From;
        b=eucVxrxSNpl13WC2vEcRqEzJaAG/dnf7eJTcZJTavT0F/4qzs2JAi/ACSzjKQoU6O
         oofqbXKeNqU1LvEk92xgbuUfbXguKqkUWMsZww4gBnkkg26IHerh4/kMcM3ZARe1F9
         ZprY4v7N+9E4Ox/JXno5hWRVsuWV0s1ZQVQNCroXR9BYItAkp9w2uvrmYjes3xko9R
         FQVvHfdn36YpImszlf4DMhL3MqWQcxYrPnCqnr7NS4ec4n/lZWcy5vwg8fwm8Sfa7S
         GgiHmDJrql2rgJ+pwo5vptbdNQebDcckFlS1/GzH4Y5RYv0/muniBpIB2lyYYcMVIJ
         lz5GCbTECmIqw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4E569C05FD5; Fri, 24 Jun 2022 02:42:56 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216168] New: updwtmp(3) doesn't mention need for _GNU_SOURCE
 for updwtmpx
Date:   Fri, 24 Jun 2022 02:42:55 +0000
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
Message-ID: <bug-216168-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216168

            Bug ID: 216168
           Summary: updwtmp(3) doesn't mention need for _GNU_SOURCE for
                    updwtmpx
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

I think utmpxh's updwtmpx might need _GNU_SOURCE to be defined to be usable?

Noticed when investigating a warning when building gdm 42.0:
```
../gdm-42.0/daemon/gdm-session-record.c:200:9: error: implicit declaration =
of
function =E2=80=98updwtmpx=E2=80=99; did you mean =E2=80=98updwtmp=E2=80=99?
[-Werror=3Dimplicit-function-declaration]
updwtmpx (GDM_NEW_SESSION_RECORDS_FILE, &session_record);
```

... but:
```
#if defined(HAVE_UTMPX_H)
#include <utmpx.h>
#endif

#if defined(HAVE_UTMP_H)
#include <utmp.h>
#endif
```

And config.h, set by Meson, contains HAVE_UTMPX_H, HAVE_UTMP_H, HAVE_UPDWTM=
P,
HAVE_UPDWTMPX.

From looking at glibc-2.35's /usr/include/utmpx.h, I think it might need
_GNU_SOURCE? It's guarded by __USE_GNU within glibc headers:
```
[..]
#ifdef __USE_GNU
/* Change name of the utmpx file to be examined.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int utmpxname (const char *__file);
[...]
/* Append entry UTMP to the wtmpx-like file WTMPX_FILE.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern void updwtmpx (const char *__wtmpx_file,
                      const struct utmpx *__utmpx);
[...]
```

Aside: a friend points out that NetBSD needs NETBSD_SOURCE defined for it t=
oo:
https://github.com/NetBSD/src/blob/6c9d506c6146a69f3807ce59b4c063792ef32829=
/include/utmpx.h#L143.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
