Return-Path: <linux-man+bounces-1791-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B562E99854A
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 13:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C68671C2384D
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 11:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BFCA1C2454;
	Thu, 10 Oct 2024 11:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b="WzXkut2b";
	dkim=pass (1024-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b="kPWS3A7e"
X-Original-To: linux-man@vger.kernel.org
Received: from vps3.jankratochvil.net (vps3.jankratochvil.net [45.136.17.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532F41C32F1
	for <linux-man@vger.kernel.org>; Thu, 10 Oct 2024 11:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.136.17.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728560802; cv=none; b=snlpnXl2xvvcSATSdLpZDwmjc5B7dHBwW4ZFZi+eJKbau9KRRXb/jxSG2vgYnLVGUPoEiBU7I5fCjL4FQf1ApKOGCJ+CmVMChlxTwSsAZrCTcwEuA8xnlJT0G1q+8JVaq2rBmoGKqhA2AmArKVWQmd8Z4Tl4V31CNEs9ltJ3520=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728560802; c=relaxed/simple;
	bh=rX1traPMkpgDp8hy3O7Mqd7SgoKAZWkuYHm6DzqPE7I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V+yeGcLUsh+r9VXzS56VlMAhAB4O1Oy1wPPLmGDL6x2ryRvcljc+M4Efbqam+xVowJDdNBAeAvI9cHhlrOYi1108SSrrFFN25yMHCD9n8+MX3TgFhiOFbJk5mhjkUCzZq8zWc0vV7yykfYGgZeuwqe9Fg3gtakZ/mzvPKnmuHdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jankratochvil.net; spf=pass smtp.mailfrom=jankratochvil.net; dkim=fail (0-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b=WzXkut2b reason="key not found in DNS"; dkim=pass (1024-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b=kPWS3A7e; arc=none smtp.client-ip=45.136.17.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jankratochvil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jankratochvil.net
Received: from host2.jankratochvil.net (host2vpn [192.168.92.2])
	by vps3.jankratochvil.net (8.16.1/8.16.1) with ESMTPS id 49ABkMHc3451049
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 13:46:25 +0200
DKIM-Filter: OpenDKIM Filter v2.11.0 vps3.jankratochvil.net 49ABkMHc3451049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jankratochvil.net;
	s=202405; t=1728560786;
	bh=TP13f1aNvRMtpbg+XnyZTTfRQbMfqKT3bzpBlfScfn8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WzXkut2bqsE7SCWqogdXbssrYdnf33FGxEgmyfPQz6gXR0dZxjjU5JudwVJfr+TJI
	 J/EAybtZ2CWGg1IQ76a2sAgxl8JXTHZ48ZR6yrsYVLjkgF4af4Z3GTJuoS1K7WtOIz
	 xhEZ8dBhXU6aMVSzb8puqHT57+/uKbw7pubewZcw=
Received: from host2.jankratochvil.net (localhost [127.0.0.1])
	by host2.jankratochvil.net (8.18.1/8.18.1) with ESMTPS id 49ABkLQm3628997
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 19:46:21 +0800
DKIM-Filter: OpenDKIM Filter v2.11.0 host2.jankratochvil.net 49ABkLQm3628997
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jankratochvil.net;
	s=default; t=1728560782;
	bh=TP13f1aNvRMtpbg+XnyZTTfRQbMfqKT3bzpBlfScfn8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kPWS3A7eImMz1do/pExltCE12iWguh1Lvh85sS07FS6U6rp3TjHIglbPYftp+ATY3
	 2vE+W+hmRyJ8xkHc/3VLl8z7qxWReN9Ca/FSKAFPV/P6qOx175jVPf5pEHMORICtIZ
	 9uI+KwOJt3eaJ7jcaxbWNAIovPZQ3TfWh0YYvC2U=
Received: (from lace@localhost)
	by host2.jankratochvil.net (8.18.1/8.18.1/Submit) id 49ABkIBT3628995;
	Thu, 10 Oct 2024 19:46:18 +0800
Date: Thu, 10 Oct 2024 19:46:18 +0800
From: Jan Kratochvil <jan@jankratochvil.net>
To: Florian Weimer <fw@deneb.enyo.de>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [patch] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERMignalignal
Message-ID: <Zwe-ipF5N82CTN64@host2.jankratochvil.net>
References: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net>
 <8734l4fdt8.fsf@mid.deneb.enyo.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Gr3DJ55GXiBeYwu2"
Content-Disposition: inline
In-Reply-To: <8734l4fdt8.fsf@mid.deneb.enyo.de>
User-Agent: Mutt/2.2.12 (2023-09-09)


--Gr3DJ55GXiBeYwu2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 10 Oct 2024 18:32:51 +0800, Florian Weimer wrote:
> * Jan Kratochvil:
> 
> > +\fBEINTR\fP
> > +\fBpthread_cond_wait\fP was interrupted by a signal.
> > +.RE
> 
> POSIX specifically disallows returning EINTR.  Applications cannot
> expect that pthread_cond_wait returns upon delivery of a signal.  Such
> a return is only possible due to the general allowance for spurious
> wakeups, and must result in a zero result.

OK, I agree when I tried that. So I have removed this part.

But then I believe the EINTR presence at pthread_cond_timedwait documentation
is also wrong (I did not change that in this patch) as I could not reproduce
the EINTR (attached).


Jan


Signed-off-by: Jan Kratochvil <jan@jankratochvil.net>

--Gr3DJ55GXiBeYwu2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline; filename="pthread_cond_init.3.patch"

diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 42e7eac..fa4c6f6 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -141,15 +141,25 @@ and a non-zero error code on error.
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

--Gr3DJ55GXiBeYwu2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="wait2.c"

/*
clang -o wait2 wait2.c -Wall -g;./wait2&p=$!;sleep 0.1;kill -USR1 $p;wait $p
[1] 3574450
signal
110=Connection timed out
[1]+  Exit 1                  ./wait2
*/
#define _GNU_SOURCE
#include <pthread.h>
#include <assert.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <signal.h>
#include <sys/time.h>
static void sig(int signo) {
  puts("signal");
}
int main(void) {
  setbuf(stdout,NULL);
  struct sigaction sa;
  memset(&sa,0,sizeof(sa));
  sa.sa_handler=sig;
  int err;
  err=sigaction(SIGUSR1,&sa,NULL);
  assert(!err);
//  pthread_mutex_t mut = PTHREAD_MUTEX_INITIALIZER; // not reproducible
  pthread_mutex_t mut = PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP;
  pthread_cond_t cond = PTHREAD_COND_INITIALIZER;
  err=pthread_mutex_lock(&mut);
  assert(!err);
  struct timeval tv;
  err=gettimeofday(&tv,NULL/*tz*/);
  assert(!err);
  struct timespec ts;
  ts.tv_sec=tv.tv_sec;
  ts.tv_nsec=tv.tv_usec*1000;
  ts.tv_sec++;
  err=pthread_cond_timedwait(&cond, &mut, &ts);
  if (err) {
    printf("%d=%s\n",err,strerror(err));
    return 1;
  }
  return 0;
}

--Gr3DJ55GXiBeYwu2--

