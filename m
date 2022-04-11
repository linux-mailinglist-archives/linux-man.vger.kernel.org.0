Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 088C84FC0F8
	for <lists+linux-man@lfdr.de>; Mon, 11 Apr 2022 17:36:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348066AbiDKPi6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Apr 2022 11:38:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348070AbiDKPi5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Apr 2022 11:38:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 758883A714
        for <linux-man@vger.kernel.org>; Mon, 11 Apr 2022 08:36:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 12574610F4
        for <linux-man@vger.kernel.org>; Mon, 11 Apr 2022 15:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72252C385A3
        for <linux-man@vger.kernel.org>; Mon, 11 Apr 2022 15:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649691399;
        bh=jMGrzrgRbMtlA1dYyNIYRVVghQuyP5u2wRW6MHRrEgo=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=J2gray/G3E2nBFOcLx7nnobvlh2xMLULuyfOLOGofS7D+s/xI14CoO60SN38otGjG
         QkyJk5uA8BRH8uEK1v490lA4pk8Z7mk8S4vh/vdCNKy4d0ddZNfAlYEaqEwrrWrcLf
         gSVsXVLfSw7mudSn2b4EtWvMjBgdvOhdKpa/Do9i8OpZw0DBNbhSop2fNFiNoTCqBO
         kSDm8Lux2v0c7gSP7Nq4zjjUATPOUONNKazPAz0xt7JSHtcOm+l0cztrByHgYWIvrL
         ATkiCF9U5rLQN4Xbvuj6hk04dRNMeVtA1qgylHSxVTh1rHfZefB7/eE426Hb1oyNtt
         ZP6RolQsMC5fw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 57D68CC13AD; Mon, 11 Apr 2022 15:36:39 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] vfork() returns EINVAL after unshare(CLONE_NEWTIME)
Date:   Mon, 11 Apr 2022 15:36:38 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Other
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: fweimer@redhat.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-u8W1lJeFSU@https.bugzilla.kernel.org/>
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

--- Comment #14 from Florian Weimer (fweimer@redhat.com) ---
I think the fundamental issue is that a time namespace needs a new data seg=
ment
for the vDSO, to store the changed office. So fully shared virtual memory j=
ust
is not possible with CLONE_NEWTIME, which is why vfork will not work in this
situation.

Maybe the effect of CLONE_NEWTIME should have been deferred to the next exe=
cve?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
