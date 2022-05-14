Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8046E52725D
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 17:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232331AbiENPEe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 11:04:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbiENPEd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 11:04:33 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FFEB62E6
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 08:04:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E3E57B80759
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 15:04:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B618EC34116
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 15:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652540670;
        bh=1T9DNthstS3EOSxFerTJbkUZhW/QeLTYbHvrIvF86Ug=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=dBX2UjyoevaNul2T3A+gIwuLqrkVQmy2XBgUfVy43rBUFRmTkLy673AxRXAZccifF
         BtUhTNtKheMqTdAj4dvX7RpljcS5zfUTVTxD+LEumymJqymrFlvj1m0dT4llDmW20h
         tXyCAmzJc4Ku1CeJivPQ6XlYV0y1Xp97NzVqbDFeCVgIgibYV6fEdTvd3heQkmJ8Ga
         utPb9FkhLezRLmn6AyzVrGDYry+A/t7uJdcztfXAN7Sc82oMDgf4bC3Ku/npihlZyp
         xhYd/9JKlptoKvvINUQd0R1StfvK6+HLpqjMEy0edk/JhO6zZszQ7CeIoM3FFj2J67
         laHuvO4qCtLFg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 9F4FECC13B3; Sat, 14 May 2022 15:04:30 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215971] dd(1p) manpage contains empty ASCII to EBDIC tables
Date:   Sat, 14 May 2022 15:04:30 +0000
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
Message-ID: <bug-215971-11311-87K07n65SU@https.bugzilla.kernel.org/>
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

--- Comment #2 from Ben Fuller (ben@bvnf.space) ---
Hi Alex,

I was under the impression that the maintainer of man-pages-posix had acces=
s to
the roff(7) sources:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/READ=
ME,
but perhaps I misunderstood this. Apparently the sources can be obtained by
contacting The Open Group?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
