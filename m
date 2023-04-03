Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46A576D3B8F
	for <lists+linux-man@lfdr.de>; Mon,  3 Apr 2023 03:42:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbjDCBmj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 2 Apr 2023 21:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbjDCBmi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 2 Apr 2023 21:42:38 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E577ED8
        for <linux-man@vger.kernel.org>; Sun,  2 Apr 2023 18:42:37 -0700 (PDT)
User-agent: mu4e 1.10.1; emacs 29.0.60
From:   Sam James <sam@gentoo.org>
To:     linux-man <linux-man@vger.kernel.org>
Subject: make check failure with man-pages-6.04?
Date:   Mon, 03 Apr 2023 02:41:11 +0100
Message-ID: <87lej9u4g4.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain

Hi all,

Congratulations on the new release :)

With `make check`, I get the following:
```
# make check
GREP    .tmp/man/man1/memusage.1.check-catman.touch
.tmp/man/man1/memusage.1.cat.grep:130:           Memory usage summary: heap total: 45200, heap peak: 6440, stack peak: 224
.tmp/man/man1/memusage.1.cat.grep:133:           realloc|        4044800             0  (nomove:40, dec:19, free:0)
make: *** [lib/check-catman.mk:36:
.tmp/man/man1/memusage.1.check-catman.touch] Error 1
```

I'll be honest and say I have no idea how to interpret this, if it
matters, or how to give more info (so let me know how if I need to!)

best,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZCou+18UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZBJHgD/c7waPchseXrBy60T4pTn3RFhKlEHbguEW9fv
8elIpeIBAPi/Sc9p9HfFZTDLZk7Hj8BZIqPG/ScgD7NgeEd7PjIO
=dQwn
-----END PGP SIGNATURE-----
--=-=-=--
