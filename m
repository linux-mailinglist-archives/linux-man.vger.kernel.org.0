Return-Path: <linux-man+bounces-1698-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D83A095E2F1
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 12:19:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 021711C20CA7
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 10:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58BEE74429;
	Sun, 25 Aug 2024 10:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b="a1dOGc5L"
X-Original-To: linux-man@vger.kernel.org
Received: from sincere-pwyll.relay-egress.a.mail.umich.edu (relay-egress-host.us-east-2.a.mail.umich.edu [18.219.209.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6867E179A3
	for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 10:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.219.209.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724581154; cv=none; b=noiisRH0JN3JRnLjZIJtRJX6tWDfgrag/A+FG+7e4i+DzbGOXuUhuFneS+eF/um7BXfIUaf2wCVpBVh7vAwlu/EIDBXebslT3pmeflMFpNd2wcOp6nHGTa9MFxBZwBKBzyevNvLh2ckyABTGFTYwfy8yW0e0Os40I045JHzw2WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724581154; c=relaxed/simple;
	bh=+YdtK4Vm0j4dGqBPZpn/VQ8kNO3KpTESPdTtf16BoLw=;
	h=To:cc:From:Subject:In-reply-to:References:MIME-Version:
	 Content-Type:Date:Message-ID; b=ayecogGOAqaCFwSjoLtl4fHbUTT9WSQ20CO6qm7kW9Dxz3WrbBiAz3eBp/Nbd2TMwKcF97TfmlqXi5jR+gvkE+hpqWiOnM9tXCwWLl8Yt/yHdQHe/0sZ9jeDr2PDpN8S+ubRzffo0ucfbTD3nILpW++FPaCRWUpx1hp5pm3ssK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu; spf=pass smtp.mailfrom=umich.edu; dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b=a1dOGc5L; arc=none smtp.client-ip=18.219.209.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=umich.edu
Received: from motivated-ceasg.authn-relay.a.mail.umich.edu (ip-10-0-73-220.us-east-2.compute.internal [10.0.73.220])
	by sincere-pwyll.relay-egress.a.mail.umich.edu with ESMTPS
	id 66CB04B6.1E0EF93F.6D061E1C.1390233;
	Sun, 25 Aug 2024 06:17:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umich.edu;
	s=relay-0; t=1724581046;
	bh=JzszxoNfFSOIwCQdyxqK9NPc47og9EhtvClsNtsJIz0=;
	h=To:cc:From:Subject:In-reply-to:References:Date;
	b=a1dOGc5LYFk9YhsiFE5ObwlFbXy+3c4dS1/oV7PNqgzspYQnCxfgE964d1wmNTC7P
	 BrlgSD2YCNSqqHcJOrbT7+MKFcpNb9icCwIHcCDAZxxg7D3Rdl0D69AUkw9zpMiA39
	 CE9FQ1L7VE9b961a/eZtPrJDUujaJnucajsFtgpHjlIXIhMcY9m0RXi2CeW+VK7xjO
	 bUErXNk1/KBysemiR8bthtAKke7jCwa0ZgwDFXJxCKI+2vh5j5xdHaNR7OeHyZOrI6
	 BgxFcTecJ9OuoD5HxuL4lFSvm+aYcKpxdNMWWy8pHK2nhAySGgfGAwRMJlafy/dtuw
	 oiNWHDSgICDCA==
Authentication-Results: motivated-ceasg.authn-relay.a.mail.umich.edu; 
	iprev=fail policy.iprev=85.108.143.146 (Mismatch);
	auth=pass smtp.auth=minshall
Received: from localhost (Mismatch [85.108.143.146])
	by motivated-ceasg.authn-relay.a.mail.umich.edu with ESMTPSA
	id 66CB04B4.38D89F36.6DE26BC8.839669;
	Sun, 25 Aug 2024 06:17:25 -0400
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
From: Greg Minshall <minshall@umich.edu>
Subject: Re: getaddrinfo_a man page: add notification example?
In-reply-to: <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj>
References: <728184.1724230207@archlinux> <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj>
Comments: In-reply-to Alejandro Colomar <alx@kernel.org>
   message dated "Wed, 21 Aug 2024 12:36:14 +0200."
X-Mailer: MH-E 8.6+git; nmh 1.8; Emacs 31.0.50
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
Date: Sun, 25 Aug 2024 13:17:20 +0300
Message-ID: <863308.1724581040@archlinux>

--=-=-=
Content-Type: text/plain

Alejandro,

here is a shar of an extension of the current example to one that
includes the ability to receive notifications.  (note, this is just the
source, *not* embedded in the man page.)  let me know if you'd like it
packaged differently.

one design choice i made was to have the callback handlers print out a
message announcing themselves, and then call `list_requests` to show the
status.  they could not announce themselves, or not call
`list_requests`, but presumably should do at least one (otherwise, how's
the user to know anything happened?).  i've chosen to do both.

anyway, any comments or requests you'd like me to change, please let me
know.  (feel free to change whatever you or anyone else would like to
change -- you own it!)

if there are any licensing issues and you need me to sign a release, let
me know.

again, thanks for all the man pages.

cheers, Greg


--=-=-=
Content-Type: text/n3
Content-Disposition: inline; filename=manpage-like-gai.shar

#!/bin/sh
# This is a shell archive (produced by GNU sharutils 4.15.2).
# To extract the files from this archive, save it to some FILE, remove
# everything before the '#!/bin/sh' line above, then type 'sh FILE'.
#
lock_dir=_sh862790
# Made on 2024-08-25 13:04 +03 by <minshall@archlinux>.
# Source directory was '/home/minshall/work/2024/misc/getaddrinfo_a'.
#
# Existing files will *not* be overwritten, unless '-c' is specified.
#
# This shar contains:
# length mode       name
# ------ ---------- ------------------------------------------
#   6889 -rw-rw-r-- manpage-like-gai.c
#
MD5SUM=${MD5SUM-md5sum}
f=`${MD5SUM} --version | egrep '^md5sum .*(core|text)utils'`
test -n "${f}" && md5check=true || md5check=false
${md5check} || \
  echo 'Note: not verifying md5sums.  Consider installing GNU coreutils.'
if test "X$1" = "X-c"
then keep_file=''
else keep_file=true
fi
echo=echo
save_IFS="${IFS}"
IFS="${IFS}:"
gettext_dir=
locale_dir=
set_echo=false

for dir in $PATH
do
  if test -f $dir/gettext \
     && ($dir/gettext --version >/dev/null 2>&1)
  then
    case `$dir/gettext --version 2>&1 | sed 1q` in
      *GNU*) gettext_dir=$dir
      set_echo=true
      break ;;
    esac
  fi
done

if ${set_echo}
then
  set_echo=false
  for dir in $PATH
  do
    if test -f $dir/shar \
       && ($dir/shar --print-text-domain-dir >/dev/null 2>&1)
    then
      locale_dir=`$dir/shar --print-text-domain-dir`
      set_echo=true
      break
    fi
  done

  if ${set_echo}
  then
    TEXTDOMAINDIR=$locale_dir
    export TEXTDOMAINDIR
    TEXTDOMAIN=sharutils
    export TEXTDOMAIN
    echo="$gettext_dir/gettext -s"
  fi
fi
IFS="$save_IFS"
if (echo "testing\c"; echo 1,2,3) | grep c >/dev/null
then if (echo -n test; echo 1,2,3) | grep n >/dev/null
     then shar_n= shar_c='
'
     else shar_n=-n shar_c= ; fi
else shar_n= shar_c='\c' ; fi
f=shar-touch.$$
st1=200112312359.59
st2=123123592001.59
st2tr=123123592001.5 # old SysV 14-char limit
st3=1231235901

if   touch -am -t ${st1} ${f} >/dev/null 2>&1 && \
     test ! -f ${st1} && test -f ${f}; then
  shar_touch='touch -am -t $1$2$3$4$5$6.$7 "$8"'

elif touch -am ${st2} ${f} >/dev/null 2>&1 && \
     test ! -f ${st2} && test ! -f ${st2tr} && test -f ${f}; then
  shar_touch='touch -am $3$4$5$6$1$2.$7 "$8"'

elif touch -am ${st3} ${f} >/dev/null 2>&1 && \
     test ! -f ${st3} && test -f ${f}; then
  shar_touch='touch -am $3$4$5$6$2 "$8"'

else
  shar_touch=:
  echo
  ${echo} 'WARNING: not restoring timestamps.  Consider getting and
installing GNU '\''touch'\'', distributed in GNU coreutils...'
  echo
fi
rm -f ${st1} ${st2} ${st2tr} ${st3} ${f}
#
if test ! -d ${lock_dir} ; then :
else ${echo} "lock directory ${lock_dir} exists"
     exit 1
fi
if mkdir ${lock_dir}
then ${echo} "x - created lock directory ${lock_dir}."
else ${echo} "x - failed to create lock directory ${lock_dir}."
     exit 1
fi
# ============= manpage-like-gai.c ==============
if test -n "${keep_file}" && test -f 'manpage-like-gai.c'
then
${echo} "x - SKIPPING manpage-like-gai.c (file already exists)"

else
${echo} "x - extracting manpage-like-gai.c (text)"
  sed 's/^X//' << 'SHAR_EOF' > 'manpage-like-gai.c' &&
#define _GNU_SOURCE
#include <assert.h>
#include <err.h>
#include <netdb.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
X
#define CALLOC(n, type)  ((type *) calloc(n, sizeof(type)))
X
#define REALLOCF(ptr, n, type)                                          \
({                                                                      \
X    static_assert(__builtin_types_compatible_p(typeof(ptr), type *));   \
X                                                                        \
X    (type *) reallocarrayf(ptr, n, sizeof(type));                       \
})
X
static struct gaicb **reqs = NULL;
static size_t nreqs = 0;
/* default is "no notification" ('n') */
static char notification = 'n';
X
/* forward declaration for callback routines */
static void list_requests(void);
X
X
static inline void *
reallocarrayf(void *p, size_t nmemb, size_t size)
{
X    void  *q;
X
X    q = reallocarray(p, nmemb, size);
X    if (q == NULL && nmemb != 0 && size != 0)
X        free(p);
X    return q;
}
X
static char *
getcmd(void)
{
X    static char buf[256];
X
X    fputs("> ", stdout); fflush(stdout);
X    if (fgets(buf, sizeof(buf), stdin) == NULL)
X        return NULL;
X
X    if (buf[strlen(buf) - 1] == '\n')
X        buf[strlen(buf) - 1] = 0;
X
X    return buf;
}
X
/* Set notification type: none (default), signal, callback */
static void
notification_type(void)
{
X    char *type = strtok(NULL, " ");
X
X    switch (type[0]) {
X    case 'c':
X    case 'n':
X    case 's':
X        notification = type[0];
X        break;
X    default:
X        fprintf(stderr, "Bad type: '%c' (expecting 'c', 's', or 'n')\n", type[0]);
X        break;
X    }
}
X
/* callback routine for signal notifications */
X
static void
signal_handler(int signo) {
X    fprintf(stdout, "notified by signal\n");
X    list_requests();
X    fprintf(stdout, "> ");
X    fflush(stdout);
}
X
/* callback routine for thread/callback notifications */
X
static void
callback_handler(union sigval sev_value) {
X    fprintf(stdout, "notified by callback\n");
X    list_requests();
X    fprintf(stdout, "> ");
X    fflush(stdout);
}
X
/* Add requests for specified hostnames. */
static void
add_requests(void)
{
X    static struct sigevent senull; /* static, so initialized to zero */
X    static struct sigaction sanull; /* static, so intitialized to zero */
X    struct sigevent se = senull;
X    struct sigaction sa = sanull;
X    size_t nreqs_base = nreqs;
X    char *host;
X    int ret;
X
X    while ((host = strtok(NULL, " "))) {
X        nreqs++;
X        reqs = REALLOCF(reqs, nreqs, struct gaicb *);
X        if (reqs == NULL)
X            err(EXIT_FAILURE, "reallocf");
X
X        reqs[nreqs - 1] = CALLOC(1, struct gaicb);
X        if (reqs[nreqs - 1] == NULL)
X            err(EXIT_FAILURE, "calloc");
X
X        reqs[nreqs - 1]->ar_name = strdup(host);
X    }
X
X    switch (notification) {
X    case 'c':
X        /* notify via a callback */
X        se.sigev_notify = SIGEV_THREAD;
X        se.sigev_notify_function = callback_handler;
X        break;
X    case 'n':
X        /* nothing to do */
X        break;
X    case 's':
X        se.sigev_notify = SIGEV_SIGNAL;
X        se.sigev_signo = SIGUSR1;
X        sa.sa_handler = signal_handler;
X        /* set SA_RESTART so read(2) in main doesn't get an EINTR */
X        sa.sa_flags = SA_RESTART;
X        ret = sigaction(SIGUSR1, &sa, NULL);
X        if (ret) {
X            err(EXIT_FAILURE, "sigaction");
X        }
X        break;
X    default:
X        fprintf(stderr, "program error: `notification` not one of [cns]: %c\n",
X                notification);
X        exit(4);
X    }
X
X    /* Queue nreqs_base..nreqs requests. */
X
X    ret = getaddrinfo_a(GAI_NOWAIT, &reqs[nreqs_base],
X                        nreqs - nreqs_base, notification == 'n' ? NULL : &se);
X    if (ret) {
X        fprintf(stderr, "getaddrinfo_a() failed: %s\n",
X                gai_strerror(ret));
X        exit(EXIT_FAILURE);
X    }
}
X
/* Wait until at least one of specified requests completes. */
static void
wait_requests(void)
{
X    char *id;
X    int ret;
X    size_t n;
X    struct gaicb const **wait_reqs;
X
X    wait_reqs = CALLOC(nreqs, const struct gaicb *);
X    if (wait_reqs == NULL)
X        err(EXIT_FAILURE, "calloc");
X
X                /* NULL elements are ignored by gai_suspend(). */
X
X    while ((id = strtok(NULL, " ")) != NULL) {
X        n = atoi(id);
X
X        if (n >= nreqs) {
X            printf("Bad request number: %s\n", id);
X            return;
X        }
X
X        wait_reqs[n] = reqs[n];
X    }
X
X    ret = gai_suspend(wait_reqs, nreqs, NULL);
X    if (ret) {
X        printf("gai_suspend(): %s\n", gai_strerror(ret));
X        return;
X    }
X
X    for (size_t i = 0; i < nreqs; i++) {
X        if (wait_reqs[i] == NULL)
X            continue;
X
X        ret = gai_error(reqs[i]);
X        if (ret == EAI_INPROGRESS)
X            continue;
X
X        printf("[%02zu] %s: %s\n", i, reqs[i]->ar_name,
X               ret == 0 ? "Finished" : gai_strerror(ret));
X    }
}
X
/* Cancel specified requests. */
static void
cancel_requests(void)
{
X    char *id;
X    int ret;
X    size_t n;
X
X    while ((id = strtok(NULL, " ")) != NULL) {
X        n = atoi(id);
X
X        if (n >= nreqs) {
X            printf("Bad request number: %s\n", id);
X            return;
X        }
X
X        ret = gai_cancel(reqs[n]);
X        printf("[%s] %s: %s\n", id, reqs[atoi(id)]->ar_name,
X               gai_strerror(ret));
X    }
}
X
/* List all requests. */
static void
list_requests(void)
{
X    int ret;
X    char host[NI_MAXHOST];
X    struct addrinfo *res;
X
X    for (size_t i = 0; i < nreqs; i++) {
X        printf("[%02zu] %s: ", i, reqs[i]->ar_name);
X        ret = gai_error(reqs[i]);
X
X        if (!ret) {
X            res = reqs[i]->ar_result;
X
X            ret = getnameinfo(res->ai_addr, res->ai_addrlen,
X                              host, sizeof(host),
X                              NULL, 0, NI_NUMERICHOST);
X            if (ret) {
X                fprintf(stderr, "getnameinfo() failed: %s\n",
X                        gai_strerror(ret));
X                exit(EXIT_FAILURE);
X            }
X            puts(host);
X        } else {
X            puts(gai_strerror(ret));
X        }
X    }
}
X
int
main(void)
{
X    char *cmdline;
X    char *cmd;
X
X    while ((cmdline = getcmd()) != NULL) {
X        cmd = strtok(cmdline, " ");
X
X        if (cmd == NULL) {
X            list_requests();
X        } else {
X            switch (cmd[0]) {
X            case 'a':
X                add_requests();
X                break;
X            case 'w':
X                wait_requests();
X                break;
X            case 'c':
X                cancel_requests();
X                break;
X            case 'l':
X                list_requests();
X                break;
X            case 'n':
X                notification_type();
X                break;
X            default:
X                fprintf(stderr, "Bad command: %c\n", cmd[0]);
X                break;
X            }
X        }
X    }
X    exit(EXIT_SUCCESS);
}
SHAR_EOF
  (set 20 24 08 25 12 59 39 'manpage-like-gai.c'
   eval "${shar_touch}") && \
  chmod 0664 'manpage-like-gai.c'
if test $? -ne 0
then ${echo} "restore of manpage-like-gai.c failed"
fi
  if ${md5check}
  then (
       ${MD5SUM} -c >/dev/null 2>&1 || ${echo} 'manpage-like-gai.c': 'MD5 check failed'
       ) << \SHAR_EOF
1bfd1ccd4300c23092705380177c85ea  manpage-like-gai.c
SHAR_EOF

else
test `LC_ALL=C wc -c < 'manpage-like-gai.c'` -ne 6889 && \
  ${echo} "restoration warning:  size of 'manpage-like-gai.c' is not 6889"
  fi
fi
if rm -fr ${lock_dir}
then ${echo} "x - removed lock directory ${lock_dir}."
else ${echo} "x - failed to remove lock directory ${lock_dir}."
     exit 1
fi
exit 0

--=-=-=--

