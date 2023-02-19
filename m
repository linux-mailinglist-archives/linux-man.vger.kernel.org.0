Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0735B69BFF5
	for <lists+linux-man@lfdr.de>; Sun, 19 Feb 2023 11:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbjBSKbn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Feb 2023 05:31:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjBSKbn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Feb 2023 05:31:43 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E0B910251
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 02:31:41 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id CF852B8095A
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 10:31:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A0CDC4339E
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 10:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1676802698;
        bh=TmFij7DZ6ka90eOjcOznpIZ+v7WYET7T9avxEJgPjkw=;
        h=From:To:Subject:Date:From;
        b=Ma6Y8ph3IflOXbc/l7QtND9UFk6EXeddnsr5WiMvaZTc/NAEhUMNpmuQvxZgJZ2+C
         GOnq1qmrJFnWxZHH1hwkPuxVZvYIRo1OUdNY4d06F1Bacg14SSq4H6m6q5uWcY61XY
         IWiyCtNzzrchgqYYDUr3F16hyqKBSgJ+0a/CBZA5WhJGErv4Q2qEyVRJvxEjQa5TQh
         kokg9W16kavoTLndWpL9L7r7LuwK0iUvjkvPP7Baa6gMTYIgRKlvlkb74n6BifCZUw
         YSE8U3aRiB88HVqRE4WUChJSKV/VRja0ZcVzDKMOErCuzIsFWCrG4eR3PyKFlbD1A8
         YcZ2Otv+1FNMw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 54F04C43145; Sun, 19 Feb 2023 10:31:38 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217059] New: Please document behaviour of iconv(3) when input
 is untranslatable
Date:   Sun, 19 Feb 2023 10:31:37 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: rrt@sc3d.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217059-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217059

            Bug ID: 217059
           Summary: Please document behaviour of iconv(3) when input is
                    untranslatable
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: rrt@sc3d.org
        Regression: No

See https://sourceware.org/bugzilla/show_bug.cgi?id=3D29913

The issue is that the man page does not fully reflect the behaviour of glib=
c's
iconv. The man page says:

The conversion can stop for four reasons:

       1. An invalid multibyte sequence is encountered in the input.  In th=
is
case, it sets errno to EILSEQ and
          returns (size_t) -1.  *inbuf is left pointing to the beginning of=
 the
invalid multibyte sequence.

The phrase "An invalid multibyte sequence is encountered in the input" is
confusing, because it suggests to me (and other readers, see the bug above!)
that it refers only to the validity of the input per se (e.g. a non-UTF-8
sequence in input purporting to be UTF-8).

However, according to the original author of the man page, Bruno Haible (see
the bug above), it also refers to input that cannot be translated to the
desired output encoding; and indeed, glibc's iconv returns EILSEQ when the
input cannot be translated, even though it is valid.

Please clarify the man page to reflect this behaviour. On the one hand, it =
is
confusing and surprising when compared to the POSIX standard (again, for th=
is
reader and others); on the other hand, it is useful (because it enables
untranslatable input to be detected).

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
