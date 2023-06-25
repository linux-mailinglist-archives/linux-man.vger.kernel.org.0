Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 224BE73D1E5
	for <lists+linux-man@lfdr.de>; Sun, 25 Jun 2023 17:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbjFYP7i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jun 2023 11:59:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbjFYP7i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jun 2023 11:59:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8930CF3
        for <linux-man@vger.kernel.org>; Sun, 25 Jun 2023 08:59:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 247F860A1A
        for <linux-man@vger.kernel.org>; Sun, 25 Jun 2023 15:59:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67570C433C8
        for <linux-man@vger.kernel.org>; Sun, 25 Jun 2023 15:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687708776;
        bh=QENIvRUWp4Z1eDAdgknEHgyM740xwGCkUe9RIj13uQQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=dSP/Ba8sXS6a5nwnnwsfgucIAEjtqTSCqFPy7TjUk624TEugkKQIemli3DdQ2d2lA
         VjIGhQCRkjEXP+t24ZexHSVuHx2uB8KYdX865R9Gu+AI++0taa6bb+DRJlKvG7soWk
         lQvok2LUhmL6zIkm/7+xRiQqs7rCkE9hhssYUbWGy7vBkpDCIbzn1UXPTSTjuWtUV2
         7KS4U6dWxLPPXZJMthXLc8QyN2KUaxe5olocWfduNzYy/kYWeoKG7Xx3/xcQLgKlVL
         /1CO0B/XiAUMnyz8NFO2f+Nnl+DRBfj68zsLf3G9wc8TcCNhhB1q1tpXNnP6Xdw4mm
         TUaq+Inlppl8Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 50A5FC53BC6; Sun, 25 Jun 2023 15:59:36 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217547] The shell example in time_namespaces doesn't behave as
 documented
Date:   Sun, 25 Jun 2023 15:59:36 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217547-11311-RN3MtNpgbz@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217547-11311@https.bugzilla.kernel.org/>
References: <bug-217547-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217547

--- Comment #2 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
That command works as expected, but unfortunately it doesn't illustrate the
behaviour as nicely. For example, the direct writes will not be visible, and
"time" and "time_for_children" will no longer differ.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
