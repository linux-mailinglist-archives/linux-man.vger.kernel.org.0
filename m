Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC0F166DAD1
	for <lists+linux-man@lfdr.de>; Tue, 17 Jan 2023 11:22:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236472AbjAQKWi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Jan 2023 05:22:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236570AbjAQKWc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Jan 2023 05:22:32 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DDAA26593
        for <linux-man@vger.kernel.org>; Tue, 17 Jan 2023 02:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
        Date:Subject:Cc:To:From:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:In-Reply-To:References;
        bh=EV4rHl0grMArANTn8BcBVNDUFm5o4ZPRnZ6Oo07Y0+c=; b=F95YPsRp7qv6zKXkIZFmDJhul6
        OW+cIaAJJBoD3kNYGvksVGJjjsCyPfIJtCAr54mNq6HC234T9d4cy70P6mO5+1dNKGyULb06dS5um
        fE/f15Z8Twj8/kjpRmjf0am6V12wcKmrsPCpLpskqjayc+8s+h4QMLsIbbU+7y5btWblB07BDEFs3
        2WE1/SxbsI/IM3lcYCAn8UGSFbrLSy96m+G9ZIzKdJ/M4yB0Jb9gwv8j47lzFJtiW2mH656tEq51u
        RSA3bjhR51uEO32B/rSWILi4fmaqg+NQa2lEEEYeqIIkPL1EEmnCe2FGy9UC6Dlr01uGY6CchiOLu
        dYUfcV/g==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pHj6p-009mao-3M; Tue, 17 Jan 2023 10:22:27 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Improve getsockname
Date:   Tue, 17 Jan 2023 10:22:25 +0000
Message-ID: <2889739.XEG2VLDMQ1@portable-bastien>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1932131.Cvsq4nNeXK";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart1932131.Cvsq4nNeXK
Content-Type: multipart/mixed; boundary="nextPart2338276.Br8ZInOmSc";
 protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Improve getsockname
Date: Tue, 17 Jan 2023 10:22:07 +0000
Message-ID: <2889739.XEG2VLDMQ1@portable-bastien>
MIME-Version: 1.0

This is a multi-part message in MIME format.

--nextPart2338276.Br8ZInOmSc
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a lot of student that does not use correctly getsockname in case of 
dual stack. 

May be this kind of discussion should be factorized in  sockaddr_storage (the 
historical note particularly).

i suppose the same should be done for getpeername

I think a safe programming example may be given that accept a socket as stdin 
and print information on it. Using socat it could be simple to test. maybe 
forcing ENOTSUPP if *addr > sizeof(sockadd_storage)

Regards

Bastien
--nextPart2338276.Br8ZInOmSc
Content-Disposition: attachment;
 filename="0001-Document-use-of-struct-sockaddr_storage-in-getsockna.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="unicode-2-0-utf-8";
 name="0001-Document-use-of-struct-sockaddr_storage-in-getsockna.patch"

From 0afb3ad23f8ea09331f21a377e3ad19c44e4df18 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Bastien=20Roucari=C3=A8s?= <rouca@debian.org>
Date: Tue, 17 Jan 2023 10:07:43 +0000
Subject: [PATCH] Document use of struct sockaddr_storage in getsockname

Document:
- storage requierement
- future compatibility
---
 man2/getsockname.2 | 56 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/man2/getsockname.2 b/man2/getsockname.2
index e6e8980c9..5914c9e12 100644
--- a/man2/getsockname.2
+++ b/man2/getsockname.2
@@ -39,6 +39,17 @@ The returned address is truncated if the buffer provided is too small;
 in this case,
 .I addrlen
 will return a value greater than was supplied to the call.
+.PP
+For greater portability
+.I addr
+should point to a structure of type
+.I sockaddr_storage.
+.I sockaddr_storage
+structure is large enough to hold any of the other
+.I sockaddr_*
+variants and always well aligned. On return, it should be cast to the correct
+.I sockaddr_*
+type, according to the current protocol family, given by the member ss_family.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
@@ -80,10 +91,55 @@ For background on the
 .I socklen_t
 type, see
 .BR accept (2).
+.PP
+Security and portability wise, use of
+.I struct sockaddr_storage
+type as
+.I addr
+and
+.I addrlen
+set to
+.BI "sizeof(struct sockaddr_storage)"
+is strongly encouraged. Particularly this usage avoid bugs in dual stack IPv4+IPv6 configuration.
+.PP
+Historical use of
+.I addr
+requires one to use a structure specific to the protocol family in use,
+such as
+.I sockaddr_in
+(AF_INET or IPv4),
+.I sockaddr_in6
+(AF_INET6 or IPv6), or
+.I sockaddr_un
+(AF_UNIX)
+cast to a
+.I (struct sockaddr *).
+The purpose of the
+.I struct sockaddr *
+type
+is purely to allow casting of  domain-specific  socket  address  types  to  a
+"generic" type, so as to avoid compiler warnings about type mismatches in calls to the sockets API.
+Nevertheless,
+. I struct sockaddr *
+is too small to hold newer protocol address (for instance IPv6) and not always well aligned.
+.PP
+Even if
+.I sockaddr_storage
+type is large enough at compilation time to hold any of the
+.I sockaddr_*
+variants known by the library,
+this guarantee will not hold for future. Newer protocol may need an increase of
+.I sockaddr_storage
+size or alignement requirement, and safe program should always runtime check if returned
+.I addr
+is smaller or equal to compile time
+.BI "sizeof(struct sockaddr_storage)"
+size.
 .SH SEE ALSO
 .BR bind (2),
 .BR socket (2),
 .BR getifaddrs (3),
+.BR sockaddr_storage (3type),
 .BR ip (7),
 .BR socket (7),
 .BR unix (7)
-- 
2.39.0


--nextPart2338276.Br8ZInOmSc--

--nextPart1932131.Cvsq4nNeXK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPGds8ACgkQADoaLapB
CF82nw//YEv7fbqrguCFOqA2rcjkaH1hZYQV8Wg9JhVufufAWb5NPiap/SrvNrRn
zr+02jftqp7gi+/iHVBg9nAvZTDWIdMYfK4hQnEcovUkJrYCtjphYMoFTru7az74
jIu68X1R+dLowIWFs0PYcmuVUJgl6Esukr5cUme3MLCzumzC+Uoxl5/0ACpeeMQ8
TXMx3GagjAtJQzdV5TugGEcKXGHc26fDLOJAMyaFrnh3RVfZqqSTKHv9QDG/3oOu
CTQKS1wNeeJFZuLZPE4/sm4lRReSV2tL3n9PlVBePUb1eKfVCKrWUdcfqdkav9m9
/5l4Ye+qV/oCoCg7L9/C72QQEX3zIAsQ0uX5Fty3NPA2BgrRitU77qBHZBeJ77TT
WJohaXyapKcnhM2ShaoOtfi4OEsHqmFBwWDCsdVr7+8gwW46wmECEHwaMCBN9nTN
WNSgq0WuFmZFRdwL4m403SVf/HYVgG5tffNivE+yQMEjmo/np4leFtDEB1xrqp6/
axvXyhEClYh34u+bydBA+OiiUSBVm25BOCP6ZsxbK1plJgwjT786seqJtvENogOx
/a0tNswCpsNbsBA6extDxTneYCZDVBd6rqc6Bd84J2K5ccJ24hooV4DWEMtN0tu4
98IExu8e2bpMSVNXJENsOCUsV92mmSuHJ/VulbpxUSgZQrKd1BQ=
=aTv5
-----END PGP SIGNATURE-----

--nextPart1932131.Cvsq4nNeXK--

