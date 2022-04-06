Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F024F6BD8
	for <lists+linux-man@lfdr.de>; Wed,  6 Apr 2022 22:56:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234278AbiDFU6a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Apr 2022 16:58:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234992AbiDFU5v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Apr 2022 16:57:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F31A145997
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 12:22:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9689461CD4
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 19:22:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F32D3C385A3
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 19:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649272940;
        bh=6ebYNcZJ1ZmsSVUjcnD9j1nOi/r4A2XxWGvw/pcPevE=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=A2f0TfTkNH+yW7F/o4F7Bn4Upa2rOuki4qJ4vtX/T5HE5viYSXsM/hF/yf7XoxY0O
         jTQJ/CdprGqgEdVEFW6IHE9jgiaxOlwQH1dJIAUM0GIUVaCN2UQkmmRIKzoBvv2sr2
         fcHnJ0omUxsiTcQtYKJcO8RGl9nDoG+AjMqpCPXouz5fe9TJc3VKAKCBgPm4+GloSt
         rGhQq0HjA5rdjN+5KSQ10gyWlSlpNFBVMFmJEuA3JR4KpwxwxYuoMdXvNwdiJZG7Dt
         HpwF9Ql1NIEzZNiL0GdphfOPr0PzVOcsbQcu0cNq0vJlYTFB7Xcvy0Oc6WRagmxfPA
         QP6xtLyR0H4Zg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id D1019C05FD5; Wed,  6 Apr 2022 19:22:19 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Wed, 06 Apr 2022 19:22:19 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-EHdcWKyvOa@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

--- Comment #12 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com)=
 ---
> $ sudo ./vfork_newpid
> vfork_newpid: PID: 8479
> vfork_newpid: PID 8479 exiting after execve(2): Success
> print_pid: PID 1 exiting.=20


I definitely think this is a kernel (or glibc) bug.
execve(2) is supposed to _never_ return 0 (and errno 0).
I submitted a new bug to discuss it.

Please see <https://bugzilla.kernel.org/show_bug.cgi?id=3D215813>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
