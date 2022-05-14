Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A47E527368
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 20:07:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbiENSH0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 14:07:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232202AbiENSHW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 14:07:22 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F2DCE01F
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 11:07:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7A670B80AF5
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 18:07:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2918DC34116
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 18:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652551638;
        bh=/m7xBgsiPbWeDYOYboZc3rDiRYDtr3igqK+lcf1M0ro=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=XyC6MX5cBL7zrVGd5YQSo8kbkd3/2HE/G6DOiieOVUV+qwXltoNTzE7JaSVqgFwvW
         +MQKXEFsG9B6pffilP0vVVrzahtLE8x/G9ye5x7K9Wtx651QNyKfBuiBvTqWNLUm7a
         +n5K5uj2471s7bW+fKOKq2e5E1YCLzUuadtpArMdjbZCJQ8SJCZxdveTZDr52ULEtT
         fNtv7VaNyrlVD8hByK8jEhS8E6tWXjtB29Rgk73X1sT4cFQBnCrQG6cA1ehfMFnsxb
         ujMOmyXohBliU4bPFPswAgnsC5m9dsDQLvM2pvT5iK2eu7cilJYwOGLCyv3fJXwiBP
         1TNgxrg0pBP7w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0CE71C05FD5; Sat, 14 May 2022 18:07:18 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215971] dd(1p) manpage contains empty ASCII to EBDIC tables
Date:   Sat, 14 May 2022 18:07:17 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215971-11311-EhOlyX5jCc@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215971-11311@https.bugzilla.kernel.org/>
References: <bug-215971-11311@https.bugzilla.kernel.org/>
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

--- Comment #4 from Ben Fuller (ben@bvnf.space) ---
https://bugzilla.kernel.org/show_bug.cgi?id=3D215971

On Sat, May 14, 2022 at 15:12:48 +0000, bugzilla-daemon@kernel.org wrote:
> --- Comment #3 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com)
> ---
> I guess maybe Michael Kerrisk has the sources; I don't.
> <https://www.kernel.org/doc/man-pages/maintaining.html>

According to the Austin group, (see Q6:
https://www.opengroup.org/austin/papers/posix_faq.html)
Michael Kerrisk has some nroff pages, but I don't know if that's
referring to the ones generated from HTML. Michael, is there any
possibility of obtaining the roff sources of these tables?

Ben

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
