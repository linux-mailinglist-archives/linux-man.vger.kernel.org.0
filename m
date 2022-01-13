Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6AC248DA86
	for <lists+linux-man@lfdr.de>; Thu, 13 Jan 2022 16:14:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235997AbiAMPOQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jan 2022 10:14:16 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:59806 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S229838AbiAMPOP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jan 2022 10:14:15 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A54392882;
        Thu, 13 Jan 2022 16:14:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1642086851;
        bh=Bo4y3hWpBeQNwIrpMQ800OFs3cfNqrO5bPprM7BXhXc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GZwCFuzPveCl9ZtCx94HFsOmRiQODt29RjsCxxO9c3I0niQuTvcbSF/l/dbHxzhQL
         A95fPLffDpNajW+fzQ+lOZYANmfX0dG3ySv4Pxy+Tym7lSFyD9sJ3KvA7JG5QIpZ4I
         bkjk0wKP1ZA10v1xSlLs5i+FY5Zw4VdhcNXzHyQ9ABQp1ZAZ6JA9JE6X5IqQJdvbCR
         iBHK+1m8Le1gvUIKvwtbnDFT/M6H314ioHf3K1Vl11zm0jCMys/LqZ7vT2qAbK4sp6
         +LDKfl3M+thQI/t7lFIy8Z+8and3D/HWaRVJqJk38XAwFY//A8onNFja3V+P0fvi1v
         Q8DhdvLgDZ5gw==
Date:   Thu, 13 Jan 2022 16:14:10 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] epoll_ctl.2: replace input flag footnotes with a list
 section
Message-ID: <20220113151410.wdioekjeinssfybz@tarta.nabijaczleweli.xyz>
References: <dcfa6694-fa4e-11c9-b146-e9d2e4b5cd3f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fgcgakncs6q3dtzx"
Content-Disposition: inline
In-Reply-To: <dcfa6694-fa4e-11c9-b146-e9d2e4b5cd3f@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fgcgakncs6q3dtzx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is shorter, clearly separates the events from the flags,
and more consistent (cf. EPOLLEXCLUSIVE which has a different message
than the rest)

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
You're right, and in the 3am curse I missed that I specified >=3D1
instead of >=3D0. Rewrote that as you suggested: one sentence at the top,
and two lists with short headings referencing it.

 man2/epoll_ctl.2 | 39 +++++++--------------------------------
 1 file changed, 7 insertions(+), 32 deletions(-)

diff --git a/man2/epoll_ctl.2 b/man2/epoll_ctl.2
index ec31cac72..de6bcfb33 100644
--- a/man2/epoll_ctl.2
+++ b/man2/epoll_ctl.2
@@ -106,8 +106,11 @@ The
 .I events
 member of the
 .I epoll_event
-structure is a bit mask composed by ORing together zero or more of
-the following available event types:
+structure is a bit mask composed by ORing together zero or more event type=
s,
+returned by
+.BR epoll_wait (2),
+and input flags, which affect its behaviour, but aren't returned.
+The available event types are:
 .TP
 .B EPOLLIN
 The associated file is available for
@@ -156,6 +159,8 @@ Note that when reading from a channel such as a pipe or=
 a stream socket,
 this event merely indicates that the peer closed its end of the channel.
 Subsequent reads from the channel will return 0 (end of file)
 only after all outstanding data in the channel has been consumed.
+.PP
+And the available input flags are:
 .TP
 .B EPOLLET
 Requests edge-triggered notification for the associated file descriptor.
@@ -166,13 +171,6 @@ See
 .BR epoll (7)
 for more detailed information about edge-triggered and
 level-triggered notification.
-.IP
-This flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .TP
 .BR EPOLLONESHOT " (since Linux 2.6.2)"
 Requests one-shot notification for the associated file descriptor.
@@ -187,13 +185,6 @@ The user must call
 with
 .B EPOLL_CTL_MOD
 to rearm the file descriptor with a new event mask.
-.IP
-This flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .TP
 .BR EPOLLWAKEUP " (since Linux 3.5)"
 .\" commit 4d7e30d98939a0340022ccd49325a3d70f7e0238
@@ -222,13 +213,6 @@ or the clearing of
 for the event file descriptor with
 .BR EPOLL_CTL_MOD .
 See also BUGS.
-.IP
-This flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .TP
 .BR EPOLLEXCLUSIVE " (since Linux 4.5)"
 Sets an exclusive wakeup mode for the epoll file descriptor that is being
@@ -299,15 +283,6 @@ and specifies the target file descriptor
 as an epoll instance will likewise fail.
 The error in all of these cases is
 .BR EINVAL .
-.IP
-The
-.BR EPOLLEXCLUSIVE
-flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .SH RETURN VALUE
 When successful,
 .BR epoll_ctl ()
--=20
2.30.2

--fgcgakncs6q3dtzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHgQcIACgkQvP0LAY0m
WPGRVA//c82PKofouS4xaSCE+XwHqCfW+ZqvMEM8K/E/eOK1YzhcppA5BMYHX1zB
5/JIosPv5qEkQRwquhcFLHqZ+RSRJFQ3T+bCgqJZk3x7o91FwRrstUDA3mtntW25
Q2mHxkWYZMI9NperCqXazFOtV67dLJwRfmTVOqlUMf5rZ17RspcA+Qve96u5vXr2
TaXqQMqOo6ZgzV2M+XOaHh6QMlqfjOrG4wdZm5eTT8R+Ctlg15VxZdz5LN0qf284
56zOM7E5MXQ8DAU/rs3MsKOVBp1T5gZcZcDTpZ/pzypMQXlWpBcIDbVicyYjP1Ba
d294mAHLxG72+PkB5W+467i70BM7ZklRP4Jsm7WoPiifT5bJLryIzF/RzjSPsn6m
AkvLOPWHbM0f8rmUcgLO863jdDxqVersr+pn6VRV4LYDS55d05QfUIx878yTYWaP
hCRW6Zs9GV764JDBABqIvPIg/MRrsPPNdwSEotO21tE72qev7SCPW9Ksxli2DHzQ
8abe/Ht4ISmqujkwiMZ/4ADMLj278xAGVWhFpWfAdEHNTFUJ9X1EafOp57dO5JCV
K4TFjVFQ6Jxg5qlNnAGTbbyITCBFQS6AXRsjOpPHOiCcOxOoRNXzLSyoP/7hxUKI
4uEyRPOWVdL2+XCinbUfHuyvqyDakQG6zSqQnC488ILkV1iO318=
=RIOl
-----END PGP SIGNATURE-----

--fgcgakncs6q3dtzx--
