Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D38FA60333F
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 21:18:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiJRTSy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 15:18:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229905AbiJRTSv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 15:18:51 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2014786E5
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 12:18:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id DB0FACE1D52
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 19:18:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 135E7C433B5
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 19:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666120727;
        bh=FkY3qolpJUth47eT5FAmiX+IHKCm6ryZQCH3R8/UEcU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=cSN5em+rMNaHKiauWADNts88tRxauEh0L9yqq6hYS5IIHak4ZbGb2aKiZ3UxiCy8B
         fZC/MDM/lP1A5+VFJYrCQ5NbfA7Tll4lh1XYySpE6jpRfO/Gk9lyyKsl8xt3HqKlSC
         r6NtA4rNdgcg2grV6S8005yXaSC1Ndy2tNZbM9X0bvx5u9onF9SmpzxVi2hWOWy8an
         PRX4FiocnhmryqWptp9JACwwsaSu03EGpV1hR0mG5zYh/Wtb70rUVnFwVwtO7+liDt
         xlfx0gSHlEGrrLs7ZmO3as5RwLaTeYFIrCEwMsAb44jDLhMD99jEIdqhV42ZiifVXy
         TjOZ5LO2IEgdA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id ECEEEC433EA; Tue, 18 Oct 2022 19:18:46 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216602] The build system requires the bsd compat libraries even
 if only installing man pages
Date:   Tue, 18 Oct 2022 19:18:46 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: pierre.labastie@neuf.fr
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216602-11311-Lijo4vSprR@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216602-11311@https.bugzilla.kernel.org/>
References: <bug-216602-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216602

--- Comment #2 from Pierre Labastie (pierre.labastie@neuf.fr) ---
Thanks for the fast answer.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
