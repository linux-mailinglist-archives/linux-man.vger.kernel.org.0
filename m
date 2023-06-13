Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5868172E67E
	for <lists+linux-man@lfdr.de>; Tue, 13 Jun 2023 17:01:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241780AbjFMPAx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Jun 2023 11:00:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242655AbjFMPAw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Jun 2023 11:00:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67AE3186
        for <linux-man@vger.kernel.org>; Tue, 13 Jun 2023 08:00:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F059E63757
        for <linux-man@vger.kernel.org>; Tue, 13 Jun 2023 15:00:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61E4EC433F1
        for <linux-man@vger.kernel.org>; Tue, 13 Jun 2023 15:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686668449;
        bh=2IuFQDSDLCrSF2+2S2mAbOHKZpeORiqukse107Dvhlk=;
        h=From:To:Subject:Date:From;
        b=UV8A7R6OCHaiNsejLG2bcQgHHKJfwCNS9e+02kQNennEbS+PxLQvTlmmKINBEdf+6
         MsW4BxrBv9fnUlcJCGMbB/wOCOiQ9Ik90j3Iv2rFDTF04fcya3cxew92RGkVgUFFPq
         nDSJXMuw0v1jeztSphSaxnjCa8SYBV3M7+v/kB67IiJEC/NcKhC3jEIQOhndtBoZTn
         Ub6/2iEANBJV6hLGHUKgmuLdVN8Gm/2JZkgox+JPG+xgnO+hOMhwVRX+IvE8wO54q8
         qwBKgb7oznoKyyhO9HIOOsJoTcGJZ34kIaqEtYiMvUAdFJPNwIhKmoRWr7cBK36EQB
         9Jb97t2lo78Lg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 49CB5C53BD0; Tue, 13 Jun 2023 15:00:49 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217547] New: The shell example in time_namespaces doesn't
 behave as documented
Date:   Tue, 13 Jun 2023 15:00:48 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217547-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217547

            Bug ID: 217547
           Summary: The shell example in time_namespaces doesn't behave as
                    documented
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: goeran@uddeborg.se
        Regression: No

Trying the shell example in the manual page for time_namespaces(7) does not
behave for me the way the manual page says it should. From what I can tell,=
 it
appears that the new shell ITSELF immediately enters the new namespace, rat=
her
than allowing for children to enter. This makes it impossible to write anyt=
hing
to the time_for_children file.

Using the --boottime flag to unshare gives the expected behavior. Does an
exec() trigger entering the new time namespace nowadays?=20

This was tested on a Fedora 38 system running kernel 6.2.14-300.fc38.

Example session:

kalle$$ readlink /proc/$$/ns/time
time:[4026531834]
kalle$$ LANG=3Den_US.utf8 PS1=3D"ns2# " sudo unshare -T -- bash --norc
[sudo] password for g=C3=B6ran:=20
bash-5.2# echo "monotonic $((2*24*60*60)) 0" > /proc/$$/timens_offsets
bash: echo: write error: Permission denied
bash-5.2# readlink /proc/$$/ns/time
time:[4026532249]
bash-5.2# readlink /proc/$$/ns/time_for_children
time:[4026532249]

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
