Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3703735FC4
	for <lists+linux-man@lfdr.de>; Tue, 20 Jun 2023 00:11:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbjFSWLH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Jun 2023 18:11:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbjFSWLH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Jun 2023 18:11:07 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 16A58AF
        for <linux-man@vger.kernel.org>; Mon, 19 Jun 2023 15:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687212662;
        bh=rNv/CgG2I6b1vf4JVcw1T23PABXJ/7r+2c1KHbmGwJg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=b0Zpzef+zExXJl6B2vHZ4CO8f7lHjmPBy9k97/1euL2VkADNmCb2QCbbi0w3wbcSO
         fIhIEPicASaoPD2HSze7q9tGK26etAh793D6ZMciD23bhRcL7Ed5wKCyJO/MaVfIaB
         Guk4WygCG44c1eDvAexneBJ5J2Oy4BNwC4hvc0E5gW4GvB1SyGa3r1UCQPz993HYgS
         27mKPvZzK+mc9s5mxnQe146fDNnxpT8hZxvHBtP4uAgOuef3QFxfgrM+DNYjGBRLWa
         SJMS9ZHXWC+GTVjtX9zzv5FK41kf7xGstVkni7dpfz+MEwRvwF0NFYyDh1z6bvcmkE
         jHZNwSlrSq1Dw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 98169E30;
        Tue, 20 Jun 2023 00:11:02 +0200 (CEST)
Date:   Tue, 20 Jun 2023 00:11:01 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] grantpt.3: no-op on modern glibc and other UNIXes
Message-ID: <tphi327wxuem5xjzwf7u5tv5qekpb2a6cm5hczndq4urp2wp32@xgyidtmglbny>
References: <s55h3vx7kapgrkczmyenyijo5munjjpzpmvxmtea5zlamnjqqx@toofqdlalwzl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fswmvvat6ya3f3vf"
Content-Disposition: inline
In-Reply-To: <s55h3vx7kapgrkczmyenyijo5munjjpzpmvxmtea5zlamnjqqx@toofqdlalwzl>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fswmvvat6ya3f3vf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open,
and grantpt() is a no-op (that checks whether the fd is a pty, except on
musl).

The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commit
 facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
  Driven Device Naming"), which kills pt_chmod, notes that it's been
    6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem).

glibc 2.33 completely kills BSD PTY support on Linux
(Debian hasn't configured with them on any architecture since 2007:
   https://bugs.debian.org/338404
 and even earlier on some arches; they're really all but trivia under
 Linux =E2=80=92 this may be better served stuffed into HISTORY as an expla=
iner
 for the SIGCHLD thing, since regardless of the "version", the behaviour
 is well-defined and consistent).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Heh, yeah. While writing I read this as "or a br ioctl" so I didn't
notice.

 man3/grantpt.3 | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/man3/grantpt.3 b/man3/grantpt.3
index a19172a3e..e3d4e4aaa 100644
--- a/man3/grantpt.3
+++ b/man3/grantpt.3
@@ -84,17 +84,15 @@ .SH ATTRIBUTES
 .ad
 .sp 1
 .SH VERSIONS
-Many systems implement this function via a set-user-ID helper binary
+Historical systems implemented this function via a set-user-ID helper bina=
ry
 called "pt_chown".
-On Linux systems with a devpts filesystem (present since Linux 2.2),
-the kernel normally sets the correct ownership and permissions
-for the pseudoterminal slave when the master is opened
-.RB ( posix_openpt (3)),
-so that nothing must be done by
-.BR grantpt ().
-Thus, no such helper binary is required
-(and indeed it is configured to be absent during the
-glibc build that is typical on many systems).
+glibc on Linux before 2.33 could do so as well,
+in order to support configurations with only BSD pseudoterminals;
+this support has been removed.
+On modern systems this is either a no-op\[em]with
+permissions configured on pty allocation,
+as is the case on Linux\[em]or an
+.BR ioctl (2).
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--fswmvvat6ya3f3vf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSQ0nUACgkQvP0LAY0m
WPF8ag//eDu+w80pfTRIYcm8yRN1YPV1oAC57AmcLZJ0VnjT24FMf89fF8+NBl+R
hf0Nd3wAqb9Y3GbqQYmhOcGjQuQmdGW3XQpLfoEBEl3FTHmfep4NtERhnafFoYvf
jsSbPFFcKxH3Q2hvEL5CkdpxtDE+Tfq90YzAH76G5zx+cPLV4eugGnSGPSRpcJ68
WtLn5vfuZ5/LBFsClUHk91kXJ/YQ0xQDsQeKbPLdaeLx6dxy8SEH3WbZySpbnuXZ
WsXvgoL7i93kiC+wxEEBSbbE7jhKeS2Bp7MGeT+PG8rtEoupy3sbbzj6A31eo0RM
M8FJBANnV922+f6aIy/0xbfyZcMJgqTzy65ZhzzOv/YW4000zlaHdHcLvnGI5sTU
27iGFlxpHQkFlEBR0BLOW9i9+mmFtJz5XPcs84jIbyuTi2R6cyw8EllrunW662vZ
em3zOzDLsq3yWRl8ZrxjDfMWCt0dM51lsgUqTsUSBSsnIdhSibatdcaj0C0YkzPC
K6ltOttTAW78xKo6/xpkaTlHrjCvyT5KNXfvC6XhEjz22y02/Uoi93WN7+uL2owb
YzrAuCQqGYdfEXPyawCPYFrr8bwQ3hYJa7Po3wLHOzsodXMOcLh0kkvVdgVJoRd5
Ed4N12JW+vDHWhV1JMG6UV/WUXKl8cwDnxW9Kf+VhNJlJSpC/so=
=jrwa
-----END PGP SIGNATURE-----

--fswmvvat6ya3f3vf--
