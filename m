Return-Path: <linux-man+bounces-2187-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8B49FFFAC
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 20:52:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81E6C188412D
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 19:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7791C1B4148;
	Thu,  2 Jan 2025 19:52:32 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta40.uswest2.a.cloudfilter.net (omta40.uswest2.a.cloudfilter.net [35.89.44.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D287E0E4
	for <linux-man@vger.kernel.org>; Thu,  2 Jan 2025 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735847552; cv=none; b=rQI5KSuyLdia7kCZp4WcbpsaGbMriocGE3TL6Rq1EiQ4BKD8uF5RYgTP07HXL7rqgO5yiHPS6yBU6Q+dafGatzvuQ5NmsxBvBE0VugFqXQQHt/JE/VIPHY2vTJFj0tP2O7yUCaLbwXW51LgW5E2hO/l50lDtfUuEk+idrkef01o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735847552; c=relaxed/simple;
	bh=Lc8p68kWHGU4hRsqT3Mq9VdNYCxbA9oAvG7k1HPM9zs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Era/vU+1WVTpunp8Ci39RPHSbu935Ad7b7x6l4SOv9Jrk8YRvLMOLv5TteQkadzEQadDFiA36ref/+JaqjhUdx56LWyuIcTx5FUktlNJBsnOb2O59WIxGIGlkJSh/pFAAwe6u9vbYXFwoOV/8RnOJR794ihw8X/5aa4oy4OvswU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=35.89.44.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTPS
	id T5oytbZROvH7lTRDatqwuE; Thu, 02 Jan 2025 19:50:54 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id TRDZtn4I7N0LRTRDZtV0xB; Thu, 02 Jan 2025 19:50:53 +0000
X-Authority-Analysis: v=2.4 cv=erfZzJpX c=1 sm=1 tr=0 ts=6776ee1d
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=uZvujYp8AAAA:8 a=VGZVzwQjAAAA:8
 a=lwEAhfxeTrVV1UioUaQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3eePDBu08rcA:10 a=SLzB8X_8jTLwj6mN0q5r:22 a=7KbCETwRv5F4J-amU3zH:22
 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:55504 helo=localhost)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1tTRDY-000Oja-13;
	Thu, 02 Jan 2025 13:50:52 -0600
Date: Thu, 2 Jan 2025 20:50:17 +0100
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florian Weimer <fweimer@redhat.com>, mtk.manpages@gmail.com,
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
Message-ID: <Z3bt-bQIIdWPEHgl@comp..>
References: <Z3W_qgawqyEB-QrA@comp..>
 <ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
 <87ikqxee2y.fsf@oldenburg.str.redhat.com>
 <akntzhpuou75xnct7ymvajyqerfd5vpumzpjjqw3wbqyz67nri@grdc4nyaspkw>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <akntzhpuou75xnct7ymvajyqerfd5vpumzpjjqw3wbqyz67nri@grdc4nyaspkw>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.77.246.87
X-Source-L: No
X-Exim-ID: 1tTRDY-000Oja-13
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost) [89.77.246.87]:55504
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 2
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKFWJn+uNczvox00Oym5xHXfoU/sYQIonZZJCA3KG+TUUZO5CvMixTZYmv6007CzQaqRvP++MsVGIQl/ujnUHxCBdnTFO0ANUKH3GuT4X/yLqDjI+Hi4
 9g6KCp3gap4WuEW94n+D6yW+KftX/D0lZc/l0Zrf/FAWcENO4hKnQ1WdiFh9ysjOiOCF0jSegesKIamy5oxWAZamBV1YglkQMcw=

On Thu, Jan 02, 2025 at 01:19:38AM +0100, Alejandro Colomar wrote:
> [CC += libc-help]
>
> Hi Arkadiusz,
>
> On Wed, Jan 01, 2025 at 11:20:26PM +0100, Arkadiusz Drabczyk wrote:
> > In man/man7/signal.7 it says:
> >
> > > If a blocked call to one of the following interfaces is interrupted
> > > by a signal handler, then the call is automatically restarted after
> > > the signal handler returns if the SA_RESTART flag was used;
> > > otherwise the call fails with the error EINTR:
> > > (...)
> > > • pthread_mutex_lock(3), pthread_cond_wait(3), and related APIs.
> >
> > I don't understand this, in my experiments neither
> > pthread_mutex_lock() nor pthread_cond_wait() return EINTR even if
> > signal handler was installed without using SA_RESTART flag.
>
> Please show some minimal examples if you can.

Here is the minimal example for pthread_mutex_lock() with all checks:

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>
#include <stdint.h>

pthread_mutex_t m;

void handle_sigint(int sig)
{
	(void)sig;
	write(STDOUT_FILENO, "SIGINT", 6);
}

void *example_thread(void *arg)
{
	(void)arg;
	int ret = pthread_mutex_lock(&m);
	if (ret) {
		fprintf(stderr, "pthread_mutex_lock: %s\n", strerror(ret));
		return NULL;
	}
	puts("Mutex acquired in thread");
	sleep(3600);
	ret = pthread_mutex_unlock(&m);
	if (ret)
		fprintf(stderr, "pthread_mutex_unlock: %s\n", strerror(ret));

	return NULL;
}

int main(void)
{
	struct sigaction sa;
	pthread_t thread;
	int ret = 0;
	int main_ret = 0;
	int destroy_mutex = 1;

	sa.sa_handler = handle_sigint;
	sa.sa_flags = 0;
	sigemptyset(&sa.sa_mask);

	if (sigaction(SIGINT, &sa, NULL) == -1) {
		perror("sigaction");
		return EXIT_FAILURE;
	}

	pthread_mutex_init(&m, NULL);

	ret = pthread_create(&thread, NULL, example_thread, NULL);
	if (ret) {
		fprintf(stderr, "pthread_create: %s\n", strerror(ret));
		main_ret = ret;
		goto out;
	}

	sleep(3);
	printf("Wait for mutex in main thread, send INT to process %jd now\n", (intmax_t) getpid());
	ret = pthread_mutex_lock(&m);
	if (ret) {
		fprintf(stderr, "pthread_mutex_lock: %s\n", strerror(ret));
		main_ret = ret;
		goto join;
	}

	puts("Got mutex in main thread");

	ret = pthread_mutex_unlock(&m);
	if (ret) {
	   fprintf(stderr, "pthread_mutex_unlock: %s\n", strerror(ret));
	   main_ret = ret;
	   destroy_mutex = 0;
	   goto join;
	}

 join:
	ret = pthread_join(thread, NULL);
	if (ret) {
		fprintf(stderr, "pthread_join: %s\n", strerror(ret));
		return EXIT_FAILURE;
	}

 out:
	if (destroy_mutex) {
		ret = pthread_mutex_destroy(&m);
		if (ret) {
			fprintf(stderr, "pthread_mutex_destroy: %s\n",
				strerror(ret));
			return EXIT_FAILURE;
		}
	}
	return main_ret;
}

> Arkadiusz, would you do the honours writing a patch?  Should I?

I could do that but there is one more problem here - most pthread
manpages mention EINTR only to say that they don't return it except
pthread_cond_init.3:

$ find . -name "*pthread*" -print0 | xargs -0 grep EINTR
./man/man3/pthread_atfork.3:.BR EINTR .
./man/man3/pthread_tryjoin_np.3:.BR EINTR .
./man/man3/pthread_cond_init.3:\fBEINTR\fP
./man/man7/pthreads.7:.BR EINTR .

that says:

> EINTR  pthread_cond_timedwait was interrupted by a signal.

It's hard to say if it ever really worked like that because in
man/man7/pthreads.7 it says that no EINTR has been the requirement
since 2001:

> Most pthreads functions return 0 on success, and an error number on
> failure.  The error numbers that can be returned have the same meaning
> as the error numbers returned in errno by conventional system calls
> and C library functions.  Note that the pthreads functions do not set
> errno.  For each of the pthreads functions that can return an error,
> POSIX.1-2001 specifies that the function can never fail with the error
> EINTR.

Today POSIX still says that pthread_cond_timedwait() cannot return
EINTR
https://pubs.opengroup.org/onlinepubs/9799919799/functions/pthread_cond_clockwait.html
and in my experiments it really doesn't, both with glibc and musl.

pthread_cond_init.3 has been added in 1998 under linuxthread/
directory, maybe the behavior specified by POSIX was different than
the initial design but OTOH it's quite surprising that no one noticed
the bug for so many years, I wonder how many people still check for
EINTR in pthread_cond_timedwait even though it's not necessary (but
harmless).

So I was thinking that "pthread_mutex_lock(3), pthread_cond_wait(3),
and related APIs." line could be completely removed from signal.7
because there is no pthread API that would return EINTR and EINTR
should be removed from the list of valid error codes in
pthread_cond_init.3. Does it sound good?

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

