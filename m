Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 225E3709781
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231400AbjESMtR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:49:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbjESMtQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:49:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E7510D
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:49:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 77DFA615A5
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:49:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E03C4339C
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684500554;
        bh=wxnyx/AGRCHF9Wbonm5FazcuzO2I+c29Wr8fdBjdEOE=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=T6m1qALBHxGUiHgyLOeyftDsSSDPNp0pR6pA2qCN6zxJrv2Fot2KRrlB+yCu+hJZZ
         tziH5eYwPuoaG+JVbaz4hBE87K/EZqkWYrlCWTLI22nKkLk5tkcH6FWiD3OFPEDlf7
         W/1g9wZeFTaFlQ7egdZI7g9dbbyLcuJtte3YJKql2kVv221CZUNpTDlFE4FyzmXkai
         OXw1zzbQ79N9xJKrGzZI6C/XnvcCx1n3ofcq1f/HXmEfEPlEapKMOZgGjr/puvvTRr
         63DbOJ2HLmm+jQ8AXp2V/dGyefi7uOiLUv29ZpBA1VPcRp6eHuFnvHzxjZhg5JOceu
         JPmsKMLb0pf5w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id BCF35C43145; Fri, 19 May 2023 12:49:14 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216951] close_range(2) needs refreshing for glibc inclusion;
 closefrom(2) page missing
Date:   Fri, 19 May 2023 12:49:14 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216951-11311-5BpQOC2Kyu@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216951-11311@https.bugzilla.kernel.org/>
References: <bug-216951-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216951

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi Sam!


I would appreciate a patch from someone experienced in these APIs to the
mailing list, according to ./CONTRIBUTING.  Maybe you can summon someone
by CCing in the mailing list?

Cheers,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
