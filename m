Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 412CB78849F
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 12:20:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239003AbjHYKT6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 06:19:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244395AbjHYKTr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 06:19:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54DA79E
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 03:19:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E3DF16633C
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 10:19:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 516B8C433CA
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 10:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692958753;
        bh=cZmaCQbgE5CEjbmPIkzSbkXNU4z3lAy8BnUN0ZyhLIw=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=tm4YefET096vNJbFTzozn+MqQZYt3XLrUatqpAqZ40nFaHSwLJrtzAS85sin4iO7r
         E6wnFIjHTa3n4iBYJSP1eFO+3jX3ITWskBHnhwtfKJGC2WhRzjWL0pT/gUObBsrBa6
         cjkE7Kzi10bFzmMXtjl1124gAGRgTQtuHH6nSBxyHO0K1zGuBhzUsNC+X15OD3Cwhs
         IUAxls/AtKaKWGcjruxCG7bswt9XuEE+S1rmcMRU+Gz8VZgjf0T5IPHzMBhAVgLxQk
         Nkgq3+clWBuUa+T0j9/ElFNTJkkYxU+emJRRDSconrLixbm2fEFXKm14Z69vdgGP4M
         DN36lNpg2aXlw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 3CEDAC53BD0; Fri, 25 Aug 2023 10:19:13 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217821] document that Linux' open(2) uses ENXIO in case of
 sockets, while POSIX mandates EOPNOTSUPP
Date:   Fri, 25 Aug 2023 10:19:12 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: colomar.6.4.3@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217821-11311-nYxHyxUr6e@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217821-11311@https.bugzilla.kernel.org/>
References: <bug-217821-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217821

--- Comment #1 from Alejandro Colomar (colomar.6.4.3@gmail.com) ---
Hi Chris,

On 2023-08-25 03:07, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D217821
>=20
>             Bug ID: 217821
>            Summary: document that Linux' open(2) uses ENXIO in case of
>                     sockets, while POSIX mandates EOPNOTSUPP
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: enhancement
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: calestyo@scientia.org
>         Regression: No
>=20
> Hey.
>=20
> It seems that under Linux, when using a socket file with the open(2) fami=
ly
> of
> functions, the error is:
>> ENXIO  The file is a UNIX domain socket.
>=20
> OTOH, POSIX specifies[0]:
>> [EOPNOTSUPP]
>>    The path argument names a socket.
>=20
>=20
> Maybe it makes sense to document that? Possibly right at the ENXIO descri=
pton
> and even additionally in the STANDARDS section?
>=20
> I could write a patch if you tell me which you like.

Sure.  Please check the ./CONTRIBUTING file in the repository.

Cheers,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
