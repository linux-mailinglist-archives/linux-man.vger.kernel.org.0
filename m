Return-Path: <linux-man+bounces-1787-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B225996C6A
	for <lists+linux-man@lfdr.de>; Wed,  9 Oct 2024 15:42:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22C84284B18
	for <lists+linux-man@lfdr.de>; Wed,  9 Oct 2024 13:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AF91990C8;
	Wed,  9 Oct 2024 13:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b="00QISTgS";
	dkim=pass (1024-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b="d4VRtwVL"
X-Original-To: linux-man@vger.kernel.org
Received: from vps3.jankratochvil.net (vps3.jankratochvil.net [45.136.17.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FFCCA5B
	for <linux-man@vger.kernel.org>; Wed,  9 Oct 2024 13:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.136.17.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728481333; cv=none; b=JXWCmowzDn0V2PQIkaj7ylK6DO8HweEOcCZ9ZZGKrQQsoS38GL5WdoZ28yVqwN1YiiugY+mWbYtsM5yqY6KQt8dWnXlKiK8G+GDubZ8dRuWufgyx2xFHqp+y8JqEBTScZqYk5I/Ie85YuNeKsxG85xvwgxd0GoP9GBb3KqJ3Kw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728481333; c=relaxed/simple;
	bh=haEKYtudWMh2OnCB8I3Rc3cZEwiAuWNGiBi/SWfFm6s=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Yk2KOGCprEGFxxz6vKQYKiYJYpaKp1KN16npf9mcP+7XgDiHl2iehSPIhirdWy90TqNzm0TWXzndrmNeIJUVJvJWO6J6K0kLsgK2aFe9egTQU+zFrGkKufUkQmA3yIkVhxVUjcL4yn2tngJPmPwakKc8kpci0STUBT+sV8l4iIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jankratochvil.net; spf=pass smtp.mailfrom=jankratochvil.net; dkim=fail (0-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b=00QISTgS reason="key not found in DNS"; dkim=pass (1024-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b=d4VRtwVL; arc=none smtp.client-ip=45.136.17.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jankratochvil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jankratochvil.net
Received: from host2.jankratochvil.net (host2vpn [192.168.92.2])
	by vps3.jankratochvil.net (8.16.1/8.16.1) with ESMTPS id 499CrO453053350
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 9 Oct 2024 14:53:26 +0200
DKIM-Filter: OpenDKIM Filter v2.11.0 vps3.jankratochvil.net 499CrO453053350
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jankratochvil.net;
	s=202405; t=1728478406;
	bh=K1zSAnU0o2hiD3MrpsIU1F/8w86mQRbZdjA88cyuhEQ=;
	h=Date:From:To:Cc:Subject:From;
	b=00QISTgSFEQcdfPXGscMh77io6pbNq+SkSgLE/LgRvyKmwTap1Kb+aEOjmHPYVMUH
	 R3Xf+eRstoe8vkmeMMWc45N9xlPXVXEscAnUhGn0def1k0Cd9xE6g/oeJFX1VjNTCB
	 bYEYJVKNBZCkwUoOuvxhRjp4+KMHvLEnSHHkL1Fg=
Received: from host2.jankratochvil.net (localhost [127.0.0.1])
	by host2.jankratochvil.net (8.18.1/8.18.1) with ESMTPS id 499CrNWd922652
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 9 Oct 2024 20:53:23 +0800
DKIM-Filter: OpenDKIM Filter v2.11.0 host2.jankratochvil.net 499CrNWd922652
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jankratochvil.net;
	s=default; t=1728478403;
	bh=K1zSAnU0o2hiD3MrpsIU1F/8w86mQRbZdjA88cyuhEQ=;
	h=Date:From:To:Cc:Subject:From;
	b=d4VRtwVLicyVUTBDpHc3HvrHC86ekeDFvILpeKmQ6+UKBmLEjuan6SUdu+zX1MLDy
	 9X2AeT2hFdeVGUKoXKaeMMIF/aEEwqVjVUZQhZBUc9xT4DSP8U6gmP2wStj0/i7ozF
	 a4my5HRKnCOkqhB8yC51PDXg0Dst7WoqfYqIC8+0=
Received: (from lace@localhost)
	by host2.jankratochvil.net (8.18.1/8.18.1/Submit) id 499CrMHc922647;
	Wed, 9 Oct 2024 20:53:22 +0800
Date: Wed, 9 Oct 2024 20:53:22 +0800
From: Jan Kratochvil <jan@jankratochvil.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [patch] pthread_cond_wait and pthread_cond_timedwait can also return
 EPERM
Message-ID: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="p/btWwP8yB5OWKpV"
Content-Disposition: inline
User-Agent: Mutt/2.2.12 (2023-09-09)


--p/btWwP8yB5OWKpV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

pthread_cond_wait and pthread_cond_timedwait can also return EPERM

Attached a reproducer.

I did not test the EINTR case but it looks logical to me.

Signed-off-by: Jan Kratochvil <jan@jankratochvil.net>

--p/btWwP8yB5OWKpV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="wait.c"

#define _GNU_SOURCE
#include <pthread.h>
#include <assert.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
int main(void) {
//  pthread_mutex_t mut = PTHREAD_MUTEX_INITIALIZER; // not reproducible
  pthread_mutex_t mut = PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP;
  pthread_cond_t cond = PTHREAD_COND_INITIALIZER;
  int err;
//  err=pthread_mutex_lock(&mut);
//  assert(!err);
  err=pthread_cond_wait(&cond, &mut);
  if (err) {
    printf("%d=%s\n",err,strerror(err));
    return 1;
  }
  return 0;
}

--p/btWwP8yB5OWKpV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline; filename="pthread_cond_init.3.patch"

diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 42e7eac..6e21b54 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -141,15 +141,28 @@ and a non-zero error code on error.
 .
 .SH ERRORS
 \fBpthread_cond_init\fP,
-\fBpthread_cond_signal\fP,
-\fBpthread_cond_broadcast\fP,
-and \fBpthread_cond_wait\fP
+\fBpthread_cond_signal\fP
+and \fBpthread_cond_broadcast\fP,
 never return an error code.
 .P
+The \fBpthread_cond_wait\fP function returns
+the following error codes on error:
+.RS
+.TP
+\fBEPERM\fP
+\fBmutex\fP is not locked.
+.TP
+\fBEINTR\fP
+\fBpthread_cond_wait\fP was interrupted by a signal.
+.RE
+.P
 The \fBpthread_cond_timedwait\fP function returns
 the following error codes on error:
 .RS
 .TP
+\fBEPERM\fP
+\fBmutex\fP is not locked.
+.TP
 \fBETIMEDOUT\fP
 The condition variable was not signaled
 until the timeout specified by \fIabstime\fP.

--p/btWwP8yB5OWKpV--

