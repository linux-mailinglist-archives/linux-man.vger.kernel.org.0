Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19B2E57EF2A
	for <lists+linux-man@lfdr.de>; Sat, 23 Jul 2022 14:57:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230483AbiGWM5A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jul 2022 08:57:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiGWM5A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jul 2022 08:57:00 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B66CB1CC
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 05:56:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id B7CDBCE04AE
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 12:56:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19E95C341CE
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 12:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658581015;
        bh=1fDitXhurC49sKL8v3Yz2nx2buQ+YMZh+yHn/p2NLcI=;
        h=From:To:Subject:Date:From;
        b=Enkc2pGYVUhJj4XfUVgEmlcbmwQG+m2EXYz79exW5EoMblL51lk9mnoQ/KjTaIcva
         tRS+MMXL33rgd7QzrR7kx4sj8ZOHdfYKIgtNVJqY1MhfF9bRcoZx84vb5UkYzMMeem
         oJtmbMmcCyKwVW6zL/9mF2hhImCYxEzmbkUMEHAQlNUdbGywU1F0v6HBjUJaEjHQxE
         3Isuypf0KKtyhRjxM91kUYt2pNXE3mKkzYSIRcqGwBhhAvtyuOULeCDFAu5iD1tVEm
         xLivZx0u9+1Wj8yS1GYj8SNR0G0P360rvXikMPLtod4rsCxncqdGu+zuqwXJa+gkcB
         EMetrts+qQxwg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 05601CC13B6; Sat, 23 Jul 2022 12:56:55 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216275] New: Incorrect fts_pathlen in fts(3) man page
Date:   Sat, 23 Jul 2022 12:56:54 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: philj56@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216275-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216275

            Bug ID: 216275
           Summary: Incorrect fts_pathlen in fts(3) man page
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: philj56@gmail.com
        Regression: No

In the fts(3) man page, `fts_pathlen` is described as:
```
short           fts_pathlen;  /* strlen(fts_path) +
                                 strlen(fts_name) */
```

This was changed from `strlen(fts_path)` in the following commit:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D1=
0b6adae8ac6026b2bb69bc66d1e0fcb37c81696>

This is only correct when `fts_children()` is called, however. When
only `fts_read()` is used, the original `fts_pathlen =3D strlen(fts_path)`
is correct. This feels like a glibc bug to me, seeing as the original
behaviour is listed in the glibc source:

<https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dio/fts.h;h=3De00575=
d154b1457ddd02a0ab67a4a5e3b10237c0;hb=3DHEAD#l98>

Assuming that glibc won't change, I think the man page should document
both behaviours.

The following program demonstrates the difference in behaviour:

```
#include <fts.h>
#include <pwd.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

void test_fts_children(char *paths[])
{
        FTS* fts =3D fts_open(paths, FTS_LOGICAL, NULL);
        FTSENT* ftsent =3D fts_read(fts);
        FTSENT* child =3D fts_children(fts, 0);
        while (child !=3D NULL) {
                printf("    %s %s %d %lu\n", child->fts_path, child->fts_na=
me,
                                child->fts_pathlen, strlen(child->fts_path)=
);
                child =3D child->fts_link;
        }
        fts_close(fts);
}

void test_fts_read(char *paths[])
{
        FTS* fts =3D fts_open(paths, FTS_LOGICAL, NULL);
        FTSENT* ftsent =3D fts_read(fts);
        for (; ftsent !=3D NULL; ftsent =3D fts_read(fts)) {
                /* Don't go any deeper */
                if (ftsent->fts_level > 0 && (ftsent->fts_info & FTS_D)) {
                        fts_set(fts, ftsent, FTS_SKIP);
                        continue;
                }
                printf("    %s %s %d %lu\n", ftsent->fts_path,
ftsent->fts_name,
                                ftsent->fts_pathlen, strlen(ftsent->fts_pat=
h));
        }
        fts_close(fts);
}

int main() {
        struct passwd *pwd_entry =3D getpwuid(getuid());
        char *paths[] =3D {pwd_entry->pw_dir, NULL};
        printf("fts_children:\n");
        test_fts_children(paths);
        printf("\nfts_read:\n");
        test_fts_read(paths);
        return 0;
}
```

Sample output:
```
fts_children:
    /home/phil/ Templates 20 11
    /home/phil/ bin 14 11
    /home/phil/ Pictures 19 11
    /home/phil/ Public 17 11
    /home/phil/ Videos 17 11
    /home/phil/ Downloads 20 11
    /home/phil/ Music 16 11
    /home/phil/ Desktop 18 11
    /home/phil/ Documents 20 11

fts_read:
    /home/phil phil 10 10
    /home/phil/Templates Templates 20 20
    /home/phil/bin bin 14 14
    /home/phil/Pictures Pictures 19 19
    /home/phil/Public Public 17 17
    /home/phil/Videos Videos 17 17
    /home/phil/Downloads Downloads 20 20
    /home/phil/Music Music 16 16
    /home/phil/Desktop Desktop 18 18
    /home/phil/Documents Documents 20 20
    /home/phil phil 10 10
```

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
