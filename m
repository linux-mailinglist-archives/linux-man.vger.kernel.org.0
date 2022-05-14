Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45FCC52727E
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 17:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232614AbiENPMw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 11:12:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232386AbiENPMu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 11:12:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FCE626554
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 08:12:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2891A60F98
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 15:12:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836F5C34116
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 15:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652541168;
        bh=SB4FzCecswhGUc9PyfNefnN4c9jNFYRv6xxCb+EZ//k=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Xy4e/vQZ8eINYHZidMu/kgP9wEurd/yQ+dph5p5kWBpVSoeKmRvwgyDJgdH5OWvR4
         6ue+Kpj1lFph2ACGLqQBfkWCD1oEwZBBBlfIendQRKoGHkzfxEc1Fc8WvRQobmxLu3
         gCGqr2ZgZQjTiBLLPFaFpuWCUJnpUqjenJ5zV9YIaHoF4npuxnWT8a8hqfbIKZPrvO
         7Hw67b5i2O+OBtMBfOi5Q0/eDpVfUkGHwPmycHI0fwugRLfcYnnVTRYP245oIa7AS5
         S4HBo1pglmXGnNX9dCH0uQo7n0MJrEo24ejDAzpXwVNLIOmus3kE9N2GyGFM74j56u
         moA8X/tvm45PA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 6974BC05FD6; Sat, 14 May 2022 15:12:48 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215971] dd(1p) manpage contains empty ASCII to EBDIC tables
Date:   Sat, 14 May 2022 15:12:48 +0000
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
Message-ID: <bug-215971-11311-9aDFHTTGcy@https.bugzilla.kernel.org/>
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

--- Comment #3 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Ben

On 5/14/22 17:04, bugzilla-daemon@kernel.org wrote:
> Hi Alex,
>=20
> I was under the impression that the maintainer of man-pages-posix had acc=
ess
> to
> the roff(7) sources:
>
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/RE=
ADME,
> but perhaps I misunderstood this. Apparently the sources can be obtained =
by
> contacting The Open Group?
>=20

I guess maybe Michael Kerrisk has the sources; I don't.
<https://www.kernel.org/doc/man-pages/maintaining.html>

And every time I've tried to set up an accout in the open group website,=20
I've found it a nightmare of redirections, logins, and accounts, so I=20
gave up trying.

Sorry :/

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
