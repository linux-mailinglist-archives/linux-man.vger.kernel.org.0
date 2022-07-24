Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D04EB57F4B6
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 12:41:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232755AbiGXKlt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 06:41:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiGXKlt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 06:41:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D28213F1E
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 03:41:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A421560C88
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 10:41:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0908DC341C7
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 10:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658659307;
        bh=z3MbSdkPhobUbUGwiVyHZcFwtxuXgBT36or2+cGUJ7Q=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=qMEuG6doQXjujBiLaYgOdVMVBcVLEzNL2HgstLFanqBuy8XAvkHTacILEQ+nf2+Ee
         dSd6QGSueUjzapfsEud5+1n1D66k3PyoLebluvMvLyUHM97zn3awN1tnP+mvn9og3+
         w5SkuVCy6lYboB4Aw3D5or4g3X3zJeqeYvQfr770d7p3afKQhYBx6P2K4SDV7qdNyx
         OiIiUjog82YDpFdLCZC9Ou0H608ExDQ0LBRB6Lb3ADv+bZHOnXbPladZJonOL7GzAh
         mvo8Tc7GKe4WVJ2CnJINPX+JLYwiEmSGkvMOHRJ9ivnzfXUyW+u/yfL6w3m+gQcv79
         FUQgyI2BkBfTA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id E8A63CC13B7; Sun, 24 Jul 2022 10:41:46 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216275] Incorrect fts_pathlen in fts(3) man page
Date:   Sun, 24 Jul 2022 10:41:46 +0000
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
Message-ID: <bug-216275-11311-eujppNKN7b@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216275-11311@https.bugzilla.kernel.org/>
References: <bug-216275-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216275

--- Comment #2 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Philip,

On 7/23/22 14:56, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D216275
>=20
>              Bug ID: 216275
>             Summary: Incorrect fts_pathlen in fts(3) man page
>             Product: Documentation
>             Version: unspecified
>            Hardware: All
>                  OS: Linux
>              Status: NEW
>            Severity: normal
>            Priority: P1
>           Component: man-pages
>            Assignee: documentation_man-pages@kernel-bugs.osdl.org
>            Reporter: philj56@gmail.com
>          Regression: No
>=20
> In the fts(3) man page, `fts_pathlen` is described as:
> ```
> short           fts_pathlen;  /* strlen(fts_path) +
>                                   strlen(fts_name) */
> ```
>=20
> This was changed from `strlen(fts_path)` in the following commit:
>=20
>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D10b6adae8ac6026b2bb69bc66d1e0fcb37c81696>
>=20
> This is only correct when `fts_children()` is called, however. When
> only `fts_read()` is used, the original `fts_pathlen =3D strlen(fts_path)`
> is correct. This feels like a glibc bug to me, seeing as the original
> behaviour is listed in the glibc source:
>=20
>
> <https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dio/fts.h;h=3De005=
75d154b1457ddd02a0ab67a4a5e3b10237c0;hb=3DHEAD#l98>
>=20
> Assuming that glibc won't change, I think the man page should document
> both behaviours.

I replied CCing the glibc list, in case someone from there wants to comment.

>=20
> The following program demonstrates the difference in behaviour:
>=20
> ```
> #include <fts.h>
> #include <pwd.h>
> #include <stdio.h>
> #include <string.h>
> #include <unistd.h>
>=20
> void test_fts_children(char *paths[])
> {
>          FTS* fts =3D fts_open(paths, FTS_LOGICAL, NULL);
>          FTSENT* ftsent =3D fts_read(fts);
>          FTSENT* child =3D fts_children(fts, 0);
>          while (child !=3D NULL) {
>                  printf("    %s %s %d %lu\n", child->fts_path,
>                  child->fts_name,
>                                  child->fts_pathlen,
>                                  strlen(child->fts_path));
>                  child =3D child->fts_link;
>          }
>          fts_close(fts);
> }
>=20
> void test_fts_read(char *paths[])
> {
>          FTS* fts =3D fts_open(paths, FTS_LOGICAL, NULL);
>          FTSENT* ftsent =3D fts_read(fts);
>          for (; ftsent !=3D NULL; ftsent =3D fts_read(fts)) {
>                  /* Don't go any deeper */
>                  if (ftsent->fts_level > 0 && (ftsent->fts_info & FTS_D))=
 {
>                          fts_set(fts, ftsent, FTS_SKIP);
>                          continue;
>                  }
>                  printf("    %s %s %d %lu\n", ftsent->fts_path,
> ftsent->fts_name,
>                                  ftsent->fts_pathlen,
>                                  strlen(ftsent->fts_path));
>          }
>          fts_close(fts);
> }
>=20
> int main() {
>          struct passwd *pwd_entry =3D getpwuid(getuid());
>          char *paths[] =3D {pwd_entry->pw_dir, NULL};
>          printf("fts_children:\n");
>          test_fts_children(paths);
>          printf("\nfts_read:\n");
>          test_fts_read(paths);
>          return 0;
> }
> ```
>=20
> Sample output:
> ```
> fts_children:
>      /home/phil/ Templates 20 11
>      /home/phil/ bin 14 11
>      /home/phil/ Pictures 19 11
>      /home/phil/ Public 17 11
>      /home/phil/ Videos 17 11
>      /home/phil/ Downloads 20 11
>      /home/phil/ Music 16 11
>      /home/phil/ Desktop 18 11
>      /home/phil/ Documents 20 11
>=20
> fts_read:
>      /home/phil phil 10 10
>      /home/phil/Templates Templates 20 20
>      /home/phil/bin bin 14 14
>      /home/phil/Pictures Pictures 19 19
>      /home/phil/Public Public 17 17
>      /home/phil/Videos Videos 17 17
>      /home/phil/Downloads Downloads 20 20
>      /home/phil/Music Music 16 16
>      /home/phil/Desktop Desktop 18 18
>      /home/phil/Documents Documents 20 20
>      /home/phil phil 10 10
> ```
>=20

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
