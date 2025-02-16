Return-Path: <linux-man+bounces-2446-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6D1A37245
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 07:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 986543AEE16
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 06:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E70813CFA6;
	Sun, 16 Feb 2025 06:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="Hg9npfTp"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFCE86344
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 06:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739686757; cv=pass; b=u8UEshG4qmaPUyiT5+h5MZsAxDbVxJQLR94EK/8KvgD0fqn7sWNJWkvhSr3sxPzzFVPR59ki6JmmsF7qbSG0qx6e0U8Zzq5dMy/JY/U7C4NCNLzdlCjsk5M3B4eeD+lFWJtYYq4MErRnjKWFHe2GKadxWoPW9lFnOOQv2GbRDCI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739686757; c=relaxed/simple;
	bh=JD0q922B1lamPaUux2JcfE5OsrJQ3MRBsh9x1iwdtjI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JXaLMRIRPWVaG8BSX7SW+FTxTsMTM01zcNX5jnLegupv35zKpybxOo4dbGcIyxBCZau01cXtDoNE2ioxxe/4Xbich3PubEk89HbMCeDGJJ25cKspBy+Q/ccqykm24KNSSbEjsKTZITEO/6c1HNBf5aYZ9JwE0HKSqZQOrkMpf68=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=Hg9npfTp; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1739686747; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=f1cinRG9tVd0GS3Zmwx8sobKUI7VU8pPDYMJBIuZuxcHoRvTODI/emFfD4wlehFNouKV2+lSVwJZ2dQyImlhhgxVnU2Wel3XGHqRRI7/By/Em4uLWlcQE/O+9w8VnC9Xdz7QQnTxs+5pzq3+kpK+wSaZriXIm+4A2HSQZnnwtos=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739686747; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BV8P5TGT+9HLWd4WeLr+BUPhs/dLC/qFOoxiAlQ6d+U=; 
	b=K/6wMucFxJPuB1n2n70YqQzhLl+JSIHTiRiioW8Ff8upJIcblBSRUtu3VRdaywZ+i3RnC8B2ErltNSP5I+IYEqbcdkAs5kbWfkoeIpcbfsp6pPg3SNEKYQETf4aoTCTqGQrlfEOaZaP+D32iWzFYvJSrrEebomLILXAD4IA1L6g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739686747;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=BV8P5TGT+9HLWd4WeLr+BUPhs/dLC/qFOoxiAlQ6d+U=;
	b=Hg9npfTpHEsJtjpP9vLQ1SSPfk2q4woxmav/0GMO7xN2lwsA61BXvGJPrDPMFLIL
	tDRIDq1X7rYIWt5Kh/ECuZEsIdtpvaVzljXlrIRZPedRvavk482oP/1INWSv3/LUZkZ
	z/1LPF8eaIJbnH4TzsLSzsOlWklLCcbkd9TogD2E=
Received: by mx.zohomail.com with SMTPS id 1739686745039822.4617161271377;
	Sat, 15 Feb 2025 22:19:05 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: safinaskar@zohomail.com,
	Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2] man/man3/getcwd.3: say more clear that syscall can return "(unreachable)", but modern glibc wrapper cannot
Date: Sun, 16 Feb 2025 06:18:28 +0000
Message-Id: <20250216061828.2277971-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214125023.2798287-1-safinaskar@zohomail.com>
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122792cff0ee4bbc292bd010beef0000fee2e45314a82f3897915b317f403dff017f5711bba300158f:zu08011227efda02d84ab8e3b8cc737a42000037558aaef01f70ad9311acba22eb09c434995b0c4c4aa281f1:rf0801122cf17ffd1d0b18983e35eec47d000023056a11eb4cedea8107336535358e5629cd2cf038edf0c612d3a495d559:ZohoMail
X-ZohoMailClient: External

I verified using expirement that modern glibc wrapper getcwd actually never returns "(unreachable)".
Also I have read modern glibc sources for all 3 functions documented here.
All they don't return "(unreachable)".
Also I changed "pathname" to "pathnames".

Now let me describe my expirement. I compiled this C source:

===
#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>

int
main (void)
{
  char buf[1000];
  if(syscall(SYS_getcwd, buf, sizeof(buf)) == -1)
    {
      perror ("SYS_getcwd");
    }
  else
    {
      printf ("SYS_getcwd: %s\n", buf);
    }
  if(getcwd(buf, sizeof(buf)) == NULL)
    {
      perror ("getcwd");
    }
  else
    {
      printf ("getcwd: %s\n", buf);
    }
  return 0;
}
===

to a binary /tmp/a and run the following command:

$ sudo unshare --mount bash -c 'set -e; mkdir /tmp/dir; mount -t tmpfs tmpfs /tmp/dir; cd /tmp/dir; umount -l .; /tmp/a'

The output was:

SYS_getcwd: (unreachable)/
getcwd: No such file or directory

Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---

Changes since v1:
- I added that old glibc versions are buggy, too
- Added sources for my expirement to commit message (and did small tweaks to commit message)

 man/man3/getcwd.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
index 685585a60..97e3c766f 100644
--- a/man/man3/getcwd.3
+++ b/man/man3/getcwd.3
@@ -245,8 +245,11 @@ process (e.g., because the process set a new filesystem root using
 without changing its current directory into the new root).
 Such behavior can also be caused by an unprivileged user by changing
 the current directory into another mount namespace.
-When dealing with pathname from untrusted sources, callers of the
-functions described in this page
+When dealing with pathnames from untrusted sources, callers of the
+functions described in this page (until glibc 2.27)
+or raw
+.BR getcwd ()
+system call
 should consider checking whether the returned pathname starts
 with '/' or '(' to avoid misinterpreting an unreachable path
 as a relative pathname.
-- 
2.39.5


