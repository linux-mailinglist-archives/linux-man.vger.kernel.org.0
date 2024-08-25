Return-Path: <linux-man+bounces-1700-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8845D95E312
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 13:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFF301F21419
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 11:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE94713D28C;
	Sun, 25 Aug 2024 11:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b="quvyi+IM"
X-Original-To: linux-man@vger.kernel.org
Received: from astute-arianrhow.relay-egress.a.mail.umich.edu (relay-egress-host.us-east-2.a.mail.umich.edu [18.217.159.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08896EAD2
	for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 11:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.217.159.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724585557; cv=none; b=nKGIguXjSFkSHVt1RjvWRGgCkdMDQw/z+OJfNNw4XxJXzLg7bXFXkoyDIwR2RQS6fuLhDkESTuv9oI2LVz71zplrAUr36Nsgabq79XHvy/cdvRSnx07OeHu9psaM6dEpXvPImt7LdRh5YI7FmGxVdHQ8xgwKSp+mg7sgOBNIS3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724585557; c=relaxed/simple;
	bh=aXvGp5gZAPuWAoQxs8PwAi6JjlBeBjvM9grXVMPIUgc=;
	h=To:cc:From:Subject:In-reply-to:References:MIME-Version:
	 Content-Type:Date:Message-ID; b=NFrFjWwIa8iyvPyN4Tr9e4WfqWzZyROo+9sQ/llE2oDK+hYT1cxeoB/8xsXlJ2zGsqxt9jszFatJlX9Qnh9HSDypswK7cnTSoE5LQDwhp9coggsJJBEhFHynQAOyfmkZ0bGLfbTqCM7mEsQ/nzTI6xd9221DMycF3nnBOwf6GcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu; spf=pass smtp.mailfrom=umich.edu; dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b=quvyi+IM; arc=none smtp.client-ip=18.217.159.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=umich.edu
Received: from motivated-ceasg.authn-relay.a.mail.umich.edu (ip-10-0-73-220.us-east-2.compute.internal [10.0.73.220])
	by astute-arianrhow.relay-egress.a.mail.umich.edu with ESMTPS
	id 66CB158F.10C11EC9.3069A32C.2676213;
	Sun, 25 Aug 2024 07:29:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umich.edu;
	s=relay-0; t=1724585358;
	bh=JGr3jS7zeRsTB+X9XDn2ZdUi8y8i4DOd0eD929SChf0=;
	h=To:cc:From:Subject:In-reply-to:References:Date;
	b=quvyi+IM3UWbzq3xhOy0nfQ05YvKMdwV8H1dtce/e3TOWeB4Dxl9AFhN3533azCeb
	 aG097pl+E4bhLAMdZQDnvjOlhLU4aySn+3g6cBmlRuaCoBrjIdddFoOercsJVxF3xn
	 Y2f28POL64FctIShCeLnZWvga81DqECywWMBdArLO+tbTwFRAGyjQZ5S7r3O4MecKD
	 pHWIMbJ8kZFm/MrfFSxY0IGiVgXAlEReEhYjxxxfp5oqpr+xA26gFFx+ZVt2HLOwHd
	 CwDXMcamQE3TmID6hS6mLFI8MIGTso2OGUNPe5TuXX6GRKEv4s7i9lIOE8eWIh6f/r
	 HgmZ87XS1kZaA==
Authentication-Results: motivated-ceasg.authn-relay.a.mail.umich.edu; 
	iprev=fail policy.iprev=85.108.143.146 (Mismatch);
	auth=pass smtp.auth=minshall
Received: from localhost (Mismatch [85.108.143.146])
	by motivated-ceasg.authn-relay.a.mail.umich.edu with ESMTPSA
	id 66CB158D.25BA18E1.2834347D.880289;
	Sun, 25 Aug 2024 07:29:18 -0400
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
From: Greg Minshall <minshall@umich.edu>
Subject: Re: getaddrinfo_a man page: add notification example?
In-reply-to: <4vdd7x3bdhpomg5epf4huwbdsytvgd2qqgohyavpsjmqgwperv@tx2ytsol5ymv>
References: <728184.1724230207@archlinux> <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj> <863308.1724581040@archlinux> <4vdd7x3bdhpomg5epf4huwbdsytvgd2qqgohyavpsjmqgwperv@tx2ytsol5ymv>
Comments: In-reply-to Alejandro Colomar <alx@kernel.org>
   message dated "Sun, 25 Aug 2024 12:48:14 +0200."
X-Mailer: MH-E 8.6+git; nmh 1.8; Emacs 31.0.50
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <864873.1724585353.1@archlinux>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 25 Aug 2024 14:29:13 +0300
Message-ID: <864874.1724585353@archlinux>

Alex,

> Would you mind sending the extracted files?  That way I can comment on
> those directly.

here you go.

cheers, Greg


----

#define _GNU_SOURCE
#include <assert.h>
#include <err.h>
#include <netdb.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CALLOC(n, type)  ((type *) calloc(n, sizeof(type)))

#define REALLOCF(ptr, n, type)                                          \
({                                                                      \
    static_assert(__builtin_types_compatible_p(typeof(ptr), type *));   \
                                                                        \
    (type *) reallocarrayf(ptr, n, sizeof(type));                       \
})

static struct gaicb **reqs =3D NULL;
static size_t nreqs =3D 0;
/* default is "no notification" ('n') */
static char notification =3D 'n';

/* forward declaration for callback routines */
static void list_requests(void);


static inline void *
reallocarrayf(void *p, size_t nmemb, size_t size)
{
    void  *q;

    q =3D reallocarray(p, nmemb, size);
    if (q =3D=3D NULL && nmemb !=3D 0 && size !=3D 0)
        free(p);
    return q;
}

static char *
getcmd(void)
{
    static char buf[256];

    fputs("> ", stdout); fflush(stdout);
    if (fgets(buf, sizeof(buf), stdin) =3D=3D NULL)
        return NULL;

    if (buf[strlen(buf) - 1] =3D=3D '\n')
        buf[strlen(buf) - 1] =3D 0;

    return buf;
}

/* Set notification type: none (default), signal, callback */
static void
notification_type(void)
{
    char *type =3D strtok(NULL, " ");

    switch (type[0]) {
    case 'c':
    case 'n':
    case 's':
        notification =3D type[0];
        break;
    default:
        fprintf(stderr, "Bad type: '%c' (expecting 'c', 's', or 'n')\n", t=
ype[0]);
        break;
    }
}

/* callback routine for signal notifications */

static void
signal_handler(int signo) {
    fprintf(stdout, "notified by signal\n");
    list_requests();
    fprintf(stdout, "> ");
    fflush(stdout);
}

/* callback routine for thread/callback notifications */

static void
callback_handler(union sigval sev_value) {
    fprintf(stdout, "notified by callback\n");
    list_requests();
    fprintf(stdout, "> ");
    fflush(stdout);
}

/* Add requests for specified hostnames. */
static void
add_requests(void)
{
    static struct sigevent senull; /* static, so initialized to zero */
    static struct sigaction sanull; /* static, so intitialized to zero */
    struct sigevent se =3D senull;
    struct sigaction sa =3D sanull;
    size_t nreqs_base =3D nreqs;
    char *host;
    int ret;

    while ((host =3D strtok(NULL, " "))) {
        nreqs++;
        reqs =3D REALLOCF(reqs, nreqs, struct gaicb *);
        if (reqs =3D=3D NULL)
            err(EXIT_FAILURE, "reallocf");

        reqs[nreqs - 1] =3D CALLOC(1, struct gaicb);
        if (reqs[nreqs - 1] =3D=3D NULL)
            err(EXIT_FAILURE, "calloc");

        reqs[nreqs - 1]->ar_name =3D strdup(host);
    }

    switch (notification) {
    case 'c':
        /* notify via a callback */
        se.sigev_notify =3D SIGEV_THREAD;
        se.sigev_notify_function =3D callback_handler;
        break;
    case 'n':
        /* nothing to do */
        break;
    case 's':
        se.sigev_notify =3D SIGEV_SIGNAL;
        se.sigev_signo =3D SIGUSR1;
        sa.sa_handler =3D signal_handler;
        /* set SA_RESTART so read(2) in main doesn't get an EINTR */
        sa.sa_flags =3D SA_RESTART;
        ret =3D sigaction(SIGUSR1, &sa, NULL);
        if (ret) {
            err(EXIT_FAILURE, "sigaction");
        }
        break;
    default:
        fprintf(stderr, "program error: `notification` not one of [cns]: %=
c\n",
                notification);
        exit(4);
    }

    /* Queue nreqs_base..nreqs requests. */

    ret =3D getaddrinfo_a(GAI_NOWAIT, &reqs[nreqs_base],
                        nreqs - nreqs_base, notification =3D=3D 'n' ? NULL=
 : &se);
    if (ret) {
        fprintf(stderr, "getaddrinfo_a() failed: %s\n",
                gai_strerror(ret));
        exit(EXIT_FAILURE);
    }
}

/* Wait until at least one of specified requests completes. */
static void
wait_requests(void)
{
    char *id;
    int ret;
    size_t n;
    struct gaicb const **wait_reqs;

    wait_reqs =3D CALLOC(nreqs, const struct gaicb *);
    if (wait_reqs =3D=3D NULL)
        err(EXIT_FAILURE, "calloc");

                /* NULL elements are ignored by gai_suspend(). */

    while ((id =3D strtok(NULL, " ")) !=3D NULL) {
        n =3D atoi(id);

        if (n >=3D nreqs) {
            printf("Bad request number: %s\n", id);
            return;
        }

        wait_reqs[n] =3D reqs[n];
    }

    ret =3D gai_suspend(wait_reqs, nreqs, NULL);
    if (ret) {
        printf("gai_suspend(): %s\n", gai_strerror(ret));
        return;
    }

    for (size_t i =3D 0; i < nreqs; i++) {
        if (wait_reqs[i] =3D=3D NULL)
            continue;

        ret =3D gai_error(reqs[i]);
        if (ret =3D=3D EAI_INPROGRESS)
            continue;

        printf("[%02zu] %s: %s\n", i, reqs[i]->ar_name,
               ret =3D=3D 0 ? "Finished" : gai_strerror(ret));
    }
}

/* Cancel specified requests. */
static void
cancel_requests(void)
{
    char *id;
    int ret;
    size_t n;

    while ((id =3D strtok(NULL, " ")) !=3D NULL) {
        n =3D atoi(id);

        if (n >=3D nreqs) {
            printf("Bad request number: %s\n", id);
            return;
        }

        ret =3D gai_cancel(reqs[n]);
        printf("[%s] %s: %s\n", id, reqs[atoi(id)]->ar_name,
               gai_strerror(ret));
    }
}

/* List all requests. */
static void
list_requests(void)
{
    int ret;
    char host[NI_MAXHOST];
    struct addrinfo *res;

    for (size_t i =3D 0; i < nreqs; i++) {
        printf("[%02zu] %s: ", i, reqs[i]->ar_name);
        ret =3D gai_error(reqs[i]);

        if (!ret) {
            res =3D reqs[i]->ar_result;

            ret =3D getnameinfo(res->ai_addr, res->ai_addrlen,
                              host, sizeof(host),
                              NULL, 0, NI_NUMERICHOST);
            if (ret) {
                fprintf(stderr, "getnameinfo() failed: %s\n",
                        gai_strerror(ret));
                exit(EXIT_FAILURE);
            }
            puts(host);
        } else {
            puts(gai_strerror(ret));
        }
    }
}

int
main(void)
{
    char *cmdline;
    char *cmd;

    while ((cmdline =3D getcmd()) !=3D NULL) {
        cmd =3D strtok(cmdline, " ");

        if (cmd =3D=3D NULL) {
            list_requests();
        } else {
            switch (cmd[0]) {
            case 'a':
                add_requests();
                break;
            case 'w':
                wait_requests();
                break;
            case 'c':
                cancel_requests();
                break;
            case 'l':
                list_requests();
                break;
            case 'n':
                notification_type();
                break;
            default:
                fprintf(stderr, "Bad command: %c\n", cmd[0]);
                break;
            }
        }
    }
    exit(EXIT_SUCCESS);
}

