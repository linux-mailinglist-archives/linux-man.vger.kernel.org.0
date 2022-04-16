Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 125AE50361D
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 12:58:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231570AbiDPLAn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Apr 2022 07:00:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231575AbiDPLAm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Apr 2022 07:00:42 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60AF85A146
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 03:58:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 1836DB81D17
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 10:58:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4B4C385AA
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 10:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650106688;
        bh=2zdk6LCFHDRNDEvVjT6dFF3qrMCIqV+oH+I1mFjfdPQ=;
        h=From:To:Subject:Date:From;
        b=nSZhmIWfB4lrtVxy5h52cO5l3NY+nAHR+zC2hWYdnUnQ2qUfFZu+8SgFyKbqOkw/l
         uQfdgBBi3a8cqaZ7NtX80esLG0aY9+iH3oew84mmtv5g+Bj6rQt9fdxwFeJhSAfLb+
         HY2J8QNpwQ0pnjgkPHcqJ6sVvFv6iuMaLngw8EczsiXvMDh/wVB6SUHFTTiG//BYQl
         bOZetx0CtHU9nyefFVoXmcCoWzaor8bEUOWzDdWB6re0YxgcIXS95efFMIJ9kDX8BY
         rORZ4yJKRIJ2rIjs+8FQkKE2pXY9HcwDlpANAJwJTq3z6QxI3kq9J269Dy5ngaJs2T
         sDJaZyZ/6yOOA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id A18B9C05FD0; Sat, 16 Apr 2022 10:58:08 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215844] New: scanf manpage incorrectly says that ll (ell-ell)
 is equivalent to L
Date:   Sat, 16 Apr 2022 10:58:08 +0000
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
Message-ID: <bug-215844-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215844

            Bug ID: 215844
           Summary: scanf manpage incorrectly says that ll (ell-ell) is
                    equivalent to L
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

manpage of scanf says that "Specifying two l characters is equivalent to L".
But that's not true.

Please check the following code snippet:
#include <stdio.h>

int main(void)
{
        long double ld;
        long long n;

        scanf("%Lf", &ld);
        scanf("%llf", &ld);

        scanf("%Ln", &n);
        scanf("%lln", &n);

        return 0;
}

gcc throws these warnings correctly:
warning: use of =E2=80=98ll=E2=80=99 length modifier with =E2=80=98f=E2=80=
=99 type character has either no
effect or undefined behavior [-Wformat=3D]
    9 |         scanf("%llf", &ld);
      |                   ^
warning: use of =E2=80=98L=E2=80=99 length modifier with =E2=80=98n=E2=80=
=99 type character has either no
effect or undefined behavior [-Wformat=3D]
   11 |         scanf("%Ln", &n);
      |                  ^

I think, we need to add separate entry for `ll` (ell-ell) like printf(3).

Also, another related issue is that scanf(3) doesn't mention that conversion
specifiers like `%Ld`, `%Li` etc. are GNU nonstandard extensions unlike
printf(3) which clearly mentions the nonportable part.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
