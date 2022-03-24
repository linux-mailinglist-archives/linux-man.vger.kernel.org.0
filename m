Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD6554E62E9
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 13:05:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347721AbiCXMGg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 08:06:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240561AbiCXMGf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 08:06:35 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34CC69F386
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 05:05:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D45C4B801B9
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:05:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 978F6C340EE
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648123499;
        bh=0aJajUYP/awuu+pOLwm8CAyulukk7PdR6+QUfY5yZiQ=;
        h=From:To:Subject:Date:From;
        b=aLjsBZVMNmizgU+q71vpDwve6aRqiDxnVH0wfOB1ondD+nCH/dl9gsS08xgAlaTNH
         BOaUOjvfoOG38rMwS65inCB5N04Z1X8yfC+7gRf1f7+YMZgisnL8kREFJgZlipp+mf
         CaOrF3KjSAjlZIRVN+qaMHaDqSFqCeVRau+ran1yQeiUql6XDHvt8PFd2pML0ixhK2
         x1+UrjOEKaMp3chhu9/47GPZ1YvuiCJRLBP9oYW1fJx4uIhARL0Y0D9VeBBQNgHmhy
         dwms4cmHmdlNkY8NMJ4xu03+XBHGcV7k0oKkIjnXLjAY+qiuqQ3wVhfhMHPU+xl0Kl
         MQB2PkfCKQjwg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 862EFCAC6E2; Thu, 24 Mar 2022 12:04:59 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215738] New: uri.7: CONFORMING TO: Refers to obsolete IETF RFC
 2396
Date:   Thu, 24 Mar 2022 12:04:59 +0000
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
Message-ID: <bug-215738-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215738

            Bug ID: 215738
           Summary: uri.7: CONFORMING TO: Refers to obsolete IETF RFC 2396
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

[uri(7)::CONFORMING TO] reads as:

```
CONFORMING TO
       (IETF  RFC 2396)  <http://www.ietf.org/rfc/rfc2396.txt>,
       (HTML 4.0) <http://www.w3.org/TR/REC-html40>.
```

which refers to an obsolete RFC[1].  We better conform to a newer RFC :)


[1]: <https://www.rfc-editor.org/rfc/rfc2396>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
