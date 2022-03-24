Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA914E629F
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 12:43:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240170AbiCXLom (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 07:44:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238623AbiCXLol (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 07:44:41 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4517210DA
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 04:43:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E6B5EB822A7
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:43:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF04C340F3
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648122183;
        bh=t7dxzvWwpLTpaPpd5H+Uh+7u8TST1mMelbNNyNm/5BY=;
        h=From:To:Subject:Date:From;
        b=YUM+2myX/+w7kh3L6IqsQKPi9slL8nWIPvqJ0+Rqwydb765JoG+A7a0gUSfmz4t42
         gM7V5kPxEE8Sbhn31K7e9T81eqm5qTOrIAuy6P0zjg3SACgSC1SIqBlOYqCayoISeR
         FyeEddUzSycBFAWkYNbdqhd/1UvxBQmc29c/ahHjKeEuAxhAQ1H4OYw5CmL/bNlvg9
         LlOajre6ZBg7gzOHhJP+uoPjzV09loD6O0tg7NG95f3gL/VLxCayCorqCgOSG3onl6
         zZcPjw18R+vtVvFQCv+ZIBUrW+DnfLKaHrDVw+XGxLo2Kj4eiwxWixvkP31cQDdCja
         NnnCaFa65Tm7w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 727BCCAC6E2; Thu, 24 Mar 2022 11:43:03 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215735] New: uri.7: DESCRIPTION: Usage: news: Mention to
 obsolete IETF RFC 1036
Date:   Thu, 24 Mar 2022 11:43:03 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215735-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215735

            Bug ID: 215735
           Summary: uri.7: DESCRIPTION: Usage: news: Mention to obsolete
                    IETF RFC 1036
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: alx.manpages@gmail.com
        Regression: No

uri(7)::DESCRIPTION::Usage::news reads as:

```
       news - Newsgroup or News message

       news:newsgroup-name
       news:message-id

       A newsgroup-name is a period-delimited hierarchical name,
       such as "comp.infosystems.www.misc".  If <newsgroup-name>
       is "*" (as in <news:*>), it is  used  to  refer  to  "all
       available     news     groups".      An     example    is
       <news:comp.lang.ada>.

       A  message-id  corresponds  to  the  Message-ID  of  IETF
       RFC 1036,  <http://www.ietf.org/rfc/rfc1036.txt>  without
       the  enclosing  "<"  and   ">";   it   takes   the   form
       unique@full_domain_name.   A  message  identifier  may be
       distinguished from a news group name by the  presence  of
       the "@" character.
```

It refers to an obsolete RFC[1].  We should update the info there.


[1]: <https://www.rfc-editor.org/rfc/rfc1036>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
