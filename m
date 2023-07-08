Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97A6774BF0D
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 22:01:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbjGHUBd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 16:01:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjGHUBc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 16:01:32 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 898E51B3
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 13:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1688846490;
        bh=nymJ/O+Y8PJzdJUEf9UuRK1i4g917VRk/n9FcbbOPw4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gqn3grkC9kQEOkXa9FKAYMRv3JhJN9diPYuBFRIb3EN4Fd6/kTS8rpYTMF6Osv7KD
         0IxcEf1sTMzbyqxoLOlEHl3+YBKKPu3a6y2rws9nFg51TPag/L156otmvzCcQsnPH2
         oRcdcWDGqw8OgKGeqXTwgthbKarPC8eNTTMqkwFvr7DKG5zPoLsLcYoPMEROoqNhOC
         WjwGW5ErQsvzMsx7pn5kD5lgvysQtgRAPSbiIQiHNHLGXKHgfyXu02OddtZwEG5euL
         GHCQTHTQ9u6wl9mNQUl2MW+OxjlErqTdNfczRGeb6g/x1e9g3DEnkRzUfeeTJya4fm
         DDMp2XL/gZ9dA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CD5B42C88;
        Sat,  8 Jul 2023 22:01:30 +0200 (CEST)
Date:   Sat, 8 Jul 2023 22:01:29 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
Subject: [PATCH v3 2/2] statvfs.3: note f_favail = f_ffree on Linux
Message-ID: <rubximyg43zxy2itklr6jrk3bisxt52zbsbwfdovpy7b5cgma7@zwl7wl5xnpzz>
References: <c79b5d7e-540a-ce0a-2ee7-ce5fdde6947c@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="b46qnrunl3byvgxt"
Content-Disposition: inline
In-Reply-To: <c79b5d7e-540a-ce0a-2ee7-ce5fdde6947c@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--b46qnrunl3byvgxt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Quoting myself from #musl:
01:59:40 hm, I think this was just invented for symmetry with bfree/bavail
02:00:46 FFS has minfree for space but nothing equivalent for inodes
02:32:31 (this is mirrored in ext4;
	  a global grep over DragonFlyBSD and the illumos gate
	  showed just NFSv3 forwarding from the server;
	  OpenBSD always sets it to the same thing as f_ffree;
	  oddly, NetBSD /does/ calculate it differently
	  for LFS and FFS but due to queued writes or
	  w/e not because of root reservation;
	  and as expected a lot of "/* what to put in here? */"
	                       and "// XXX same??")

Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzha6hsl=
ahv24szs4raroaz@ogivjbfdaqtb/t/#u
Cc: Tom Schwindl <schwindl@posteo.de>
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/statvfs.3 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3/statvfs.3 b/man3/statvfs.3
index b1f0e7545..50b568ab1 100644
--- a/man3/statvfs.3
+++ b/man3/statvfs.3
@@ -227,6 +227,14 @@ .SH NOTES
 .BR statvfs ()
 with the argument
 .IR path .
+.PP
+Under Linux,
+.I f_favail
+is always the same as
+.IR f_ffree ,
+and there's no way for a filesystem to report otherwise.
+This is not an issue, since no filesystems with an inode
+root reservation exist.
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--b46qnrunl3byvgxt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSpwJkACgkQvP0LAY0m
WPHexA//Q4ojkNjGWAG07LlLJNXyxlm93PQoJEAWvQHMV642dwCQUa3o44HCN1su
/UzWr8GOkJAe2ZzMzaarM/F80ATFt006ESr7LO/d/gGSjZo+fiOG8buc3eVqR7uZ
2lOu8zz4Aes/0FMmMMIsnJIyXVJX4uZd3ZS7gU+ThUJxbRZUEo7BeTsWEcrYVMTb
plW86QVRuOWrvkKc/WKL25w2WxvCj5cI+7uzPk5jSzW4Cn+9VPMc+RtHdRN9CdvR
rX2SAxkj4wp4S0PQpzfybJcVAIMAFMy5U/XxmWAo4YEU18YxeEBEAIk9uI6XNno0
D/8aKg+IQQEEQ/6C2e1uHEnYnAv/I6cSMIDYtYFHqjlXWV4wOs+gErYBHjFxXmV4
8T3485f/A9W0Y44d8w6thXtS4bwFuTgF1vJ3QNoQdiBOsVX6njIIacSzerb/zlI8
Afvc1BBxPDs/YQpbK2V0A8wNeZ/Xy+E9qxKwpwH6JSIiuQZkKG+Us2slwlL0j4by
3zLb2RXf5UvYw2ZBkhMtUCOUxNZbhKDUHvrzX8zswPqsrvx8/pblFsUcveMejwMy
b9tnvrW/wx4b3CNLRbZtGj0Qo5GGxeQBniZHSsMwgrmOTgeCt9z1S+zB25RyQ7P/
YBGjp/83NDGtahFz4fBMDbQP28Vg0W83yW0/Li3kMse6jMzK4S4=
=11mN
-----END PGP SIGNATURE-----

--b46qnrunl3byvgxt--
