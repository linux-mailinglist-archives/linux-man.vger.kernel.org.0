Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6393B525488
	for <lists+linux-man@lfdr.de>; Thu, 12 May 2022 20:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357529AbiELSP2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 May 2022 14:15:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357509AbiELSPZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 May 2022 14:15:25 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2972D270193
        for <linux-man@vger.kernel.org>; Thu, 12 May 2022 11:15:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D48FEB82AA1
        for <linux-man@vger.kernel.org>; Thu, 12 May 2022 18:15:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93607C385B8
        for <linux-man@vger.kernel.org>; Thu, 12 May 2022 18:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652379319;
        bh=nzn7rY3Ir9kIr0xuv6SM0wlyNq/7/HKsNVBRSVfkSqk=;
        h=From:To:Subject:Date:From;
        b=o5rjI3PtU2q+yMaqSh0c6OnPFHnSyoFCVVj79i2jds44uVKgCgTjn4UvgSN967Yz9
         XL3Lqv0jDugEjN8Ouk8ER/gnT2yrHEngb/kYP2PxXqZAsx4d+Z/Hk1u3EBh5Q0YO+u
         92zEAcVmYw96DM+keK381RdlqcndOefrBFr7odgB9vMV0+ZQp2KEghIIY7tdkUsAKp
         7TP6FzvxT8+8AkMuVJDcoVthTmhkvHBd4RIyC3dTz0jaggz4K8g94i7IRkFkom0soT
         liyTPCQ3eAR5K7Kdv2yfTg5+YDybEGb+YdMbCCs2Gq+Hkk53nD2vDqkHyca10A6LP2
         ZQoH8icAoLUGA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 73849C05FD2; Thu, 12 May 2022 18:15:19 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215971] New: dd(1p) manpage contains empty ASCII to EBDIC
 tables
Date:   Thu, 12 May 2022 18:15:19 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: ben@bvnf.space
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215971-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215971

            Bug ID: 215971
           Summary: dd(1p) manpage contains empty ASCII to EBDIC tables
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: ben@bvnf.space
        Regression: No

The POSIX standard includes at the end of the `OPERANDS` section tables
displaying "the octal number character values used for the ascii and ebcdic
conversions (first table) and for the ibm conversion (second table)."
https://pubs.opengroup.org/onlinepubs/9699919799/utilities/dd.html#tagtcjh_=
25


In the above HTML edition of POSIX.1-2018, these tables are images, but are
generated from troff source. In the man-pages-posix converted manpage `dd(1=
p)`,
the tables are empty; only the titles are present:

```
...
.ce 1
\fBTable 4-7: ASCII to EBCDIC Conversion\fR
.bp
.sp
.ce 1
\fBTable 4-8: ASCII to IBM EBCDIC Conversion\fR
.SH STDIN
...
```

Perhaps the tables could be preprocessed with `tbl` and included in the
manpages?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
