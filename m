Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40C3A5A4317
	for <lists+linux-man@lfdr.de>; Mon, 29 Aug 2022 08:21:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbiH2GVz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 02:21:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbiH2GVy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 02:21:54 -0400
X-Greylist: delayed 441 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 28 Aug 2022 23:21:52 PDT
Received: from kiste.informatik.uni-erlangen.de (kiste.informatik.uni-erlangen.de [131.188.40.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D46A41D22
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 23:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sicherha.de; h=
 content-type:content-type:mime-version:message-id:date:date
 :subject:subject:from:from; s=dkim20200822; t=1661753668; x=
 1662617669; bh=/URuszxD0hzfyU4gCG+/Z6J/GhMPnaCJP9XTk1jke9s=; b=m
 s+XsFz+LO8e20b1gcGb7ze+MNbtu4IuksIrUFgKI4a8KD+j93CObL5F6Ydust7KE
 M+XpFg8MjdZg1W5Tk1R4C4kIm9nJdc3/zdmwkv+VT7GHeZbXNPXOtMkZElVOMRjc
 O/Y/b/GXUVeNhCeDOjM1pr26wowMnXvitQ0Uz1Sk3WAwkgAjwpj7tYVhT4VM7h0l
 mqfiblGd8Dbsh5L9w+lHbrF+rxizpgwUND8hlH+AyDzLcfK7nrPa9URPXs2EPmic
 ijdscOeamU9fAEiZd6PQRcMkk3j3huU5ICmBAusmV6rSQYEHSsIRvguTOVLihclW
 rhdpuGdXINGSa4eV2Yej57hh+DItCxFZcWoi5sxJYWrWlCWUn0BFrBbqfBWlTPAV
 gbjBlN69kHn3c5vLUdMQDJBkV/SJUc7A2KYfpDIRl4aN4o4sviCGu3cpcfNRu+Ac
 v79f3ys0FlXF0iC9QVnMJBz4PwhpUaB/7LJttBJqMu4LxIu81/eE/O4i3AY3woK6
 ma4eOw7ZOP/ZcUIH8USMdkfeh+iYXkSmleeJRlZDRudR2AVs7lhvzk0pUqJwuhcs
 SKVnRNhuPgEdaEi/HQb+vjH0bTTHaCnwBhxQtslqy3t67RPHBA+Q1UDWF4sXBL20
 GQS6gwE6rK0NKcewyPnqXFxS524ausYkqgKDk+cqmE=
X-Virus-Scanned: Debian amavisd-new at sicherha.de
Sender: christoph.erhardt@sicherha.de
From:   Christoph Erhardt <fedora@sicherha.de>
To:     linux-man@vger.kernel.org
Subject: Is man-pages-posix redistributable?
Date:   Mon, 29 Aug 2022 08:14:22 +0200
Message-ID: <3765026.aeNJFYEL58@delle>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3771136.44csPzL39Z";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart3771136.44csPzL39Z
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Christoph Erhardt <fedora@sicherha.de>
To: linux-man@vger.kernel.org
Subject: Is man-pages-posix redistributable?
Date: Mon, 29 Aug 2022 08:14:22 +0200
Message-ID: <3765026.aeNJFYEL58@delle>
MIME-Version: 1.0

Hi list,

I have a question regarding the redistribution of man-pages-posix.
Prior to the 2017-a release, the POSIX_COPYRIGHT file contained the following 
paragraph:
> Redistribution of this material is permitted so long as this notice and
> the corresponding notices within each POSIX manual page are retained on
> any distribution, and the nroff source is included. Modifications to
> the text are permitted so long as any conflicts with the standard
> are clearly marked as such in the text.

In the 2017-a release, that paragraph has disappeared. I would like to clarify 
the implications of that for downstream distributions.

The Fedora project, which is known to be very strict about licensing concerns, 
sees the new licence as impermissible and has dropped the POSIX man pages as a 
consequence: https://bugzilla.redhat.com/show_bug.cgi?id=2116859

Now, Fedora's quasi-official way of dealing with such licensing issues would 
be to add the item in question to RPM Fusion's 'nonfree' package repository. I 
have opened an inclusion request:
https://bugzilla.rpmfusion.org/show_bug.cgi?id=6396

However, the discussion there has raised the question whether the contents of 
man-pages-posix are redistributable *at all* - given that the clause 
mentioning redistribution has vanished from the licence.

Could someone please clarify?

Thanks a lot,
Christoph
--nextPart3771136.44csPzL39Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwp5/nkNlccrQ2UKH4yzDBS9Gs8IFAmMMWT4ACgkQ4yzDBS9G
s8KxbA/+PhjQi6RvuUdZ0Tc8ZDQoIz2VX7DtEJe0OrUBcAW2bI3u3N+Q39eGiAlV
mB5oktJH3Qe4YF1HdWzzGSXefCYXT7Kj+RflEodRoKSz0GF1pUwTynNSbxx3ITY5
P7rthF79LO9vDAJDA4hmws4nXgHk6tgQXplHSM//e2xS37DlrXK+OOLiRlIeuOVz
FQvgQ+NA/CgeH7rmJAUYRdAg+rgqf6SF086DODkEi+2JXE4Zq9pFJplPIzup8D/b
tKpY1eFqVc4ViARnAcu/Ims7oR+zwaEs9YhzlJ+ZCNnx/8Q6iDPryqWxHJ6e8STY
QzLyuvtCxAUQaj7ho5XqLQvlCLSbzQNDZPB2wAGAN+PtE04uey6/xLes7LKx4RJh
4vG1Myeoh9h6P8kFXSZFlV0qNUd1QtNTy/pJCHaOuHpgD3NON+6auhX/blrtGtk2
fqAeWPm3DHIXHkpPNAgKGS1ZzMtu5MkgPcsxeMQ1xbxFaKBQxmJHjYzQW59Y1XiX
y46HcG0vEQwk2SsqvLFlrQEh+xW0MD5lRMwetjSqbyK0Ia+9piWlrhnwU7pm/SAl
2Gq3A3Zg1/a321S0bJz1l4pwOsZtUag/ytY3aRcodQdIjDzoSTxVLCVfWK8ui4y2
Wy2h8ZEtJcWiWBA+GiU/nOZftqOKdhBZrP4LNQ3h1g2orSktSxU=
=W9HG
-----END PGP SIGNATURE-----

--nextPart3771136.44csPzL39Z--


