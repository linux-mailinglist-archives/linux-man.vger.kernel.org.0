Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB9473CAB7
	for <lists+linux-man@lfdr.de>; Sat, 24 Jun 2023 14:13:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232892AbjFXMNg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Jun 2023 08:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230001AbjFXMNf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Jun 2023 08:13:35 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 59EA81BFC
        for <linux-man@vger.kernel.org>; Sat, 24 Jun 2023 05:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687608810;
        bh=daspThnYFNpee96pPlKx+2t9i+a9aWeXxuxzYwEwWfY=;
        h=Date:From:To:Cc:Subject:From;
        b=Nfa5l0Q2n9QEYBYSE4W4edczG2y9mOrrYAzO4k+x52OEc4AdMnlykK1DoQaOBybsh
         XXwo4vG0Stt7FSQ2DmFethlgJdEaPTstDW11QBgQXFgsTnmkUJbiiQh43OAR/ICpAq
         78I0zxY+qKwWn3WFQ4n2QIEFCmOExqkd22YwVus/9zIt/NlRhCbtJnTvH9P8bxDWu+
         yJUQtuzeCrPOwm/TY//3/DFh5R+/4Yc0AQvAAXJzpke70Fi/4g3RKsSRf94ztm2kNM
         GxxMHvOEGT2SRjB6lok05HYYD4ITOu9NZ4MLN2LA2RvLix6+Kn1yZrgfrMbXQudArj
         //lIkRyhrx9Aw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3B3A8150A;
        Sat, 24 Jun 2023 14:13:30 +0200 (CEST)
Date:   Sat, 24 Jun 2023 14:13:29 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] poll.2: explicitly say what happens for regular files &c.
Message-ID: <h2mlruw5d63kkzfd7277qhqc6izaq32fuwxiuk5q3k3j55lul7@jowskzwxe3mf>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2vlxkzdbu7kh2sey"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2vlxkzdbu7kh2sey
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Naively, one may consider being "ready" to mean, for example,
  lseek(0, 0, SEEK_END); poll({.fd =3D 0, .events =3D POLLIN}, 0);
to be able to say whether new data has appeared at the end of the file.

This is not the case, and poll() is only meaningful as
"will a read or a write sleep": regular files and block devices are
always ready to return an empty read in this case, for example,
and you need to use inotify to achieve this.

Under Linux this is governed by DEFAULT_POLLMASK
  (EPOLLIN | EPOLLOUT | EPOLLRDNORM | EPOLLWRNORM)
being returned if no explicit poll operation is defined for the file.

As contrast, unpollables like the above are refused by epoll_ctl(ADD).

I explicitly hit the two keywords I searched for (regular, block)
before just writing a test program to confirm that poll() behaved as
expected and is not a good fit for my use-case.

This behaviour is guaranteed by POSIX (Issue 8 Draft 3):
51381  The poll( ) and ppoll( ) functions shall support regular files, term=
inal and pseudo-terminal
51382  devices, FIFOs, pipes, and sockets. The behavior of poll( ) and ppol=
l( ) on elements of fds that refer
51383  to other types of file is unspecified.

51384  Regular files shall always poll TRUE for reading and writing.

51385  A file descriptor for a socket that is listening for connections sha=
ll indicate that it is ready for
51386  reading, once connections are available. A file descriptor for a soc=
ket that is connecting
51387  asynchronously shall indicate that it is ready for writing, once a c=
onnection has been established.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/poll.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man2/poll.2 b/man2/poll.2
index 0b834306a..c2982a243 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -123,6 +123,13 @@ .SH DESCRIPTION
 .IP \[bu]
 the timeout expires.
 .PP
+Being "ready" means that the requested operation will not block; thus,
+.BR poll ()ing
+regular files, block devices, and other files with no reasonable
+polling semantic
+.I always
+returns instantly as ready to read and write.
+.PP
 Note that the
 .I timeout
 interval will be rounded up to the system clock granularity,
--=20
2.39.2

--2vlxkzdbu7kh2sey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSW3egACgkQvP0LAY0m
WPFziA//aK5PQkEp7EsioJVD6kFU/TzHF9GDt2qNoHtnrJxxB7QMXBIwxmxlbRtJ
KJAKA0QTqPvMzslkneNZ/bBm680owqAiuVYPO1egXTYXmpqLY7Nfs1wosWWe+mD3
v5sWAlmMsXycMzXDhdOoPYIsJn9/m5aATX+gMQsMSXL05bzEK7f7CRHzb+7AMY3C
ZD/vKPbQbb85QmAWGZU6GZ/Ue+bbqIq93nj/qZVrefjoJtR7iy1c2CFz61YJzf/L
Lq4bqcsiF7QYTYMJkk61Wit/B6ON1GwJvcnQU7PvITnZwqhbXJhsPi+rttRw2Npu
+5+wU5m47RvUCQG3sGxxHyIV7JyhH8WC/K5zBU8xSyDaM6DdMYV7LH9sYIA71Qj9
7W6B2yb+BOf/bCstAl9o9q05iQBs9cVyAG7HCO2m94mFbEdqPfOhxcOBVGmJBQsW
vmKMIBidpYcvGMpteHTDcXl7quFahNSectCcRS0Y/6Caon8XTsppg4lkcWBLMtVz
Ij8jSCDLyocq3VD5zOZL1y8d0PiUDEFQ7paURIrGRIuttFeiMHhMTGz+945dmgTG
0vI/4E83km1TNlfZRLikj7Ls5FMeLSppAmMsj+25HbgdWONyrE/YovOLLcfKPIcF
h2JljCT4xSB00ciHvrvDQlqLTHrU8k1czwSBPGxx3nqOvUu1EBo=
=HYF+
-----END PGP SIGNATURE-----

--2vlxkzdbu7kh2sey--
